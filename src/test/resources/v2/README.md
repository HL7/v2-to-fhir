This folder contains test data for a variety of HL7 V2 messages.  It is organized into subfolders by message type, e.g., 
ADT, MDM, ORU, SIU and VXU.  Files in this folder hierarchy are test inputs.

The naming convention for files in this folder is trigger_###_mnemonic_v#-#-#.{txt|xml}

Trigger represents the three character trigger event, e.g., A01, R01, T02, et cetera.
The ### is a three digit sequence number ordering the messages.
The mnemonic portion describes the content briefly as an aid to what the test case represents.  Think of the three digit
sequence number as the "code" and the mnemonic as the display name.  That is to say, there shouldn't be different
test files that share the same three digit sequence number.

The v#-#-# portion identifies the HL7 Version number of the message.

Files with the .txt extension represent messages in ER7 encoding (pipes and hats), but can use normal line termination
characters as they will be read and translated into correct ER7 syntax regardless of line endings.  Files with the .xml
extension represent these messages translated into the official HL7 XML schema for the version specified.

If two messages exist with the same trigger, sequence, and version #, then they should simply be different encodings of the same message content.  If version # differs, the content might also differ.  Each folder should contain a README.md file
that describes the general content of the folder in a simple table.

|Filename                   |Description
------------------------------------------
|R01_000_singlenmlab_v2-3-1     |This is a single lab with a single numeric observation
|R01_001_singlecdlab_v2-3-1     |This is a single lab with a single coded observation
|R01_002_multiobs-1obr_v2-3-1   |This is a multi valued test with a single OBR segment
|R01_003_multiobs-andobr_v2-3-1 |This is a multi valued test with multiple OBR segments 

... Et cetera.  This file essential describes the "test cases" represented by each message in the folder.
It isn't essential to describe both the .xml and .txt version of the message, so don't include
the extension in the filename column.

