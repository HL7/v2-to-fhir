This folder contains CSV source files for all mapping tables.  These are downloaded by traversing links
in the [master table](https://docs.google.com/spreadsheets/d/1PaFYPSSq4oplTvw_4OgOn6h2Bs_CMvCAU9CqC4tPBgk/edit#gid=484860251)
and using File|Download|Comma-separate values (.csv - current sheet) in Google Sheets.

The easy way to download these is to use Convert

Download the Code System, Data Type, Message, and Segment tabs of the master list into
individual CSV files. Rename these files to .lst and put them in the mappings folder.

java org.hl7.v2toFHIR.Convert -omappings "-dmappings/v2-to-FHIR Map Inventory - Code System.lst"
java org.hl7.v2toFHIR.Convert -omappings "-dmappings/v2-to-FHIR Map Inventory - Data Type.lst"
java org.hl7.v2toFHIR.Convert -omappings "-dmappings/v2-to-FHIR Map Inventory - Message.lst"
java org.hl7.v2toFHIR.Convert -omappings "-dmappings/v2-to-FHIR Map Inventory - Segment.lst"
java org.hl7.v2toFHIR.Convert mappings