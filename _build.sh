#!/bin/bash

set -e

# Variables
dlurl="https://github.com/HL7/fhir-ig-publisher/releases/latest/download/publisher.jar"
publisher_jar="publisher.jar"
input_cache_path="$(pwd)/input-cache/"
skipPrompts=false
upper_path="../"
scriptdlroot="https://raw.githubusercontent.com/HL7/ig-publisher-scripts/main"
build_bat_url="${scriptdlroot}/_build.bat"
build_sh_url="${scriptdlroot}/_build.sh"

function check_jar_location() {
  if [ -f "${input_cache_path}${publisher_jar}" ]; then
    jar_location="${input_cache_path}${publisher_jar}"
    echo "Found publisher.jar in input-cache"
  elif [ -f "${upper_path}${publisher_jar}" ]; then
    jar_location="${upper_path}${publisher_jar}"
    echo "Found publisher.jar in parent folder"
  else
    jar_location="not_found"
    echo "publisher.jar not found in input-cache or parent folder"
  fi
}

function check_internet_connection() {
  if ping -c 1 tx.fhir.org &>/dev/null; then
    online=true
    echo "We're online and tx.fhir.org is available."
    latest_version=$(curl -s https://api.github.com/repos/HL7/fhir-ig-publisher/releases/latest | grep tag_name | cut -d'"' -f4)
  else
    online=false
    echo "We're offline or tx.fhir.org is unavailable."
  fi
}


function update_publisher() {
  echo "Publisher jar location: ${input_cache_path}${publisher_jar}"
  read -p "Download or update publisher.jar? (Y/N): " confirm
  if [[ "$confirm" =~ ^[Yy]$ ]]; then
    echo "Downloading latest publisher.jar (~200 MB)..."
    mkdir -p "$input_cache_path"
    curl -L "$dlurl" -o "${input_cache_path}${publisher_jar}"
  else
    echo "Skipped downloading publisher.jar"
  fi

  update_scripts_prompt
}


function update_scripts_prompt() {
  read -p "Update scripts (_build.bat and _build.sh)? (Y/N): " update_confirm
  if [[ "$update_confirm" =~ ^[Yy]$ ]]; then
    echo "Updating scripts..."
    curl -L "$build_bat_url" -o "_build.new.bat" && mv "_build.new.bat" "_build.bat"
    curl -L "$build_sh_url" -o "_build.new.sh" && mv "_build.new.sh" "_build.sh"
    chmod +x _build.sh
    echo "Scripts updated."
  else
    echo "Skipped updating scripts."
  fi
}


function build_ig() {
  if [ "$jar_location" != "not_found" ]; then
    args=()
    if [ "$online" = "false" ]; then
      args+=("-tx" "n/a")
    fi
    java -Dfile.encoding=UTF-8 -jar "$jar_location" -ig . "${args[@]}" "$@"
  else
    echo "publisher.jar not found. Please run update."
  fi
}


function build_nosushi() {
  if [ "$jar_location" != "not_found" ]; then
    java -Dfile.encoding=UTF-8 -jar "$jar_location" -ig . -no-sushi "$@"
  else
    echo "publisher.jar not found. Please run update."
  fi
}

function build_notx() {
  if [ "$jar_location" != "not_found" ]; then
    java -Dfile.encoding=UTF-8 -jar "$jar_location" -ig . -tx n/a "$@"
  else
    echo "publisher.jar not found. Please run update."
  fi
}

function jekyll_build() {
  echo "Running Jekyll build..."
  jekyll build -s temp/pages -d output
}

function cleanup() {
  echo "Cleaning up temp directories..."
  if [ -f "${input_cache_path}${publisher_jar}" ]; then
    mv "${input_cache_path}${publisher_jar}" ./
    rm -rf "${input_cache_path}"*
    mkdir -p "$input_cache_path"
    mv "$publisher_jar" "$input_cache_path"
  fi
  rm -rf ./output ./template ./temp
  echo "Cleanup complete."
}

check_jar_location
check_internet_connection

# Handle command-line argument or menu
case "$1" in
  update) update_publisher ;;
  build) build_ig ;;
  nosushi) build_nosushi ;;
  notx) build_notx ;;
  jekyll) jekyll_build ;;
  clean) cleanup ;;
  exit) exit 0 ;;
  *)
    # Compute default choice
    default_choice=2 # Build by default

    if [ "$jar_location" = "not_found" ]; then
      default_choice=1 # Download if jar is missing
    elif [ "$online" = "false" ]; then
      default_choice=4 # Offline build
    elif [ -n "$latest_version" ]; then
      current_version=$(java -jar "$jar_location" -v 2>/dev/null | tr -d '\r')
      if [ "$current_version" != "$latest_version" ]; then
        default_choice=1 # Offer update if newer version exists
      fi
    fi

    echo "---------------------------------------------"
    echo "Publisher: ${current_version:-unknown}; Latest: ${latest_version:-unknown}"
    echo "Publisher location: $jar_location"
    echo "Online: $online"
    echo "---------------------------------------------"
    echo
    echo "Please select an option:"
    echo "1) Download or update publisher"
    echo "2) Build IG"
    echo "3) Build IG without Sushi"
    echo "4) Build IG without TX server"
    echo "5) Jekyll build"
    echo "6) Cleanup temp directories"
    echo "0) Exit"
    echo

    # Read with timeout, but default if nothing entered
    echo -n "Choose an option [default: $default_choice]: "
    read -t 5 choice || choice="$default_choice"
    choice="${choice:-$default_choice}"
    echo "You selected: $choice"

    case "$choice" in
      1) update_publisher ;;
      2) build_ig ;;
      3) build_nosushi ;;
      4) build_notx ;;
      5) jekyll_build ;;
      6) cleanup ;;
      0) exit 0 ;;
      *) echo "Invalid option." ;;
    esac
  ;;

esac
