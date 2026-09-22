This folder contains CSV source files for all mapping tables.

## Refreshing the master inventory

The four master inventory files (`v2-to-FHIR Map Inventory - Code System.csv`,
`- Data Type.csv`, `- Message.csv`, `- Segment.csv`) are pulled directly from the
[master workbook](https://docs.google.com/spreadsheets/d/1yb1AJXyDsyCvLFb67UFtz6g4UeeKUoaUWp04tDxvg2E)
using Convert, rather than a manual File > Download > CSV export per tab:

    java -cp target\v2-to-fhir-jar-with-dependencies.jar org.hl7.v2tofhir.Convert -omappings -m

This overwrites the four inventory files in this folder with the current content of the
workbook's Message, Segment, Data Type, and Code System tabs.

## Downloading the linked artifact sheets

Download the CSV files linked from those four inventory files using Convert as follows:

    java -cp target\v2-to-fhir-jar-with-dependencies.jar org.hl7.v2tofhir.Convert -omappings "-dmappings/v2-to-FHIR Map Inventory - Code System.csv"
    java -cp target\v2-to-fhir-jar-with-dependencies.jar org.hl7.v2tofhir.Convert -omappings "-dmappings/v2-to-FHIR Map Inventory - Data Type.csv"
    java -cp target\v2-to-fhir-jar-with-dependencies.jar org.hl7.v2tofhir.Convert -omappings "-dmappings/v2-to-FHIR Map Inventory - Message.csv"
    java -cp target\v2-to-fhir-jar-with-dependencies.jar org.hl7.v2tofhir.Convert -omappings "-dmappings/v2-to-FHIR Map Inventory - Segment.csv"

Note: To download only those that are ready, change `-d` to `-r` in the above command.

`downloadsheets.cmd` and `get.cmd` run these same download steps for you against the
build jar and `target/classes`, respectively.

Next, generate the mappings using Convert as follows:

    java -cp target\v2-to-fhir-jar-with-dependencies.jar org.hl7.v2tofhir.Convert mappings
