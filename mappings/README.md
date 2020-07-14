This folder contains CSV source files for all mapping tables.  These are downloaded by traversing links
in the [master table](https://docs.google.com/spreadsheets/d/1PaFYPSSq4oplTvw_4OgOn6h2Bs_CMvCAU9CqC4tPBgk/edit#gid=484860251)
and using File|Download|Comma-separate values (.csv - current sheet) in Google Sheets.

The easy way to download these is to use Convert

Download the Code System, Data Type, Message, and Segment tabs of the master list into
individual CSV files in the mappings folder.  Then download all the links to CSV files
using Convert as follows:

    java org.hl7.v2toFHIR.Convert -omappings "-dmappings/v2-to-FHIR Map Inventory - Code System.csv"
    java org.hl7.v2toFHIR.Convert -omappings "-dmappings/v2-to-FHIR Map Inventory - Data Type.csv"
    java org.hl7.v2toFHIR.Convert -omappings "-dmappings/v2-to-FHIR Map Inventory - Message.csv"
    java org.hl7.v2toFHIR.Convert -omappings "-dmappings/v2-to-FHIR Map Inventory - Segment.csv"

Note: To downlooad only those that are ready, change -d to -r in the above command.

Next, generate the mappings using Convert as follows:

    java org.hl7.v2toFHIR.Convert mappings