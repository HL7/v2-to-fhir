This folder contains test data for a variety of HL7 V2 messages.  It is organized into subfolders by message type, e.g., 
ADT, MDM, ORU, SIU and VXU.  Files in this folder hierarchy are test inputs.

The naming convention for files in this folder is trigger-mnemonic-v#.#\[.#\].{txt|xml}

Trigger represents the three character trigger event, e.g., A01, R01, T02, et cetera.
The mnemonic portion describes the content briefly as an aid to what the test case represents.

The v#.#.# portion identifies the HL7 Version number of the message.

Files with the .txt extension represent messages in ER7 encoding (pipes and hats), but can use normal line termination
characters as they will be read and translated into correct ER7 syntax regardless of line endings.  Files with the .xml
extension represent these messages translated into the official HL7 XML schema for the version specified.

If two messages exist with the same trigger and version #, then they should simply be different 
encodings of the same message content.  If version # differs, the content might also differ.  Each 
folder should contain a README.md file that describes the general content of the folder in a simple 
table.


Filename                      |Description
------------------------------|-------------------------------------------------------
R01-singlenmlab-v2.3.1.xml    |This is a single lab with a single numeric observation
R01-singlenmlab-v2.3.1.txt    |This is a single lab with a single numeric observation
R01-singlecdlab-v2.3.1.txt    |This is a single lab with a single coded observation
R01-multiobs-1obr-v2.3.1.txt  |This is a multi valued test with a single OBR segment
R01-multiobs-andobr-v2.3.1.xml|This is a multi valued test with multiple OBR segments 

... Et cetera.  This file essential describes the "test cases" represented by each message in the folder.
In some cases, there may not be an xml or txt version of the message.

