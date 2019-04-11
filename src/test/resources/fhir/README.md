This folder contains expected FHIR output data for a variety of HL7 V2 messages.  
It is organized into subfolders by message type, e.g., ADT, MDM, ORU, SIU and VXU.  
Files in this folder hierarchy are expected outputs from V2 messages.

The naming convention for files in this folder is trigger_###_mnemonic_v#-#-#.{json|xml}

See the README for the v2 folder for explaination of most of the name parts above, which
have the same meaning (because each test output should coorespond with one of the test inputs).

Consider these files to be the baseline expectations of a conversion process.

This is NOT where the actual test outputs will appear.  When unit tests are run, these will 
appear somewhere in the target folder on the machine running the tests.


