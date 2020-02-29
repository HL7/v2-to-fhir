Application.properties contains a list of page identifiers from which we can retrieve content using the Confluence
RESTful API.  For example:

https://confluence.hl7.org/rest/api/content/39159301?expand=body.storage

Will return a JSON document where body.storage.value is the XHTML content of the page

Pages contain links in the form: \<a href="https\://confluence.hl7.org/pages/viewpage.action?pageId=40730754"\>ADJ\</a\>
which can be extracted and parsed to find the children.  Yes, there should be confluence 
API to get the child page identifiers, but I cannot seem to get it to work, but I can 
parse the XML content.

This works to get the children of the Segment mapping page
https://confluence.hl7.org/rest/api/content/39159301?expand=children.page
Ids of children can be found in children.page.results[].id

This is another way.
https://confluence.hl7.org/rest/api/content?spaceKey=OO&title=Segment Mapping&expand=body.storage,children.page


To read these pages, we can just use some simple GSon code, (see https://stackoverflow.com/questions/4308554/simplest-way-to-read-json-from-a-url-in-java):

    String sURL = "https://confluence.hl7.org/rest/api/content/39159301?expand=children.page"; //just a string

    // Connect to the URL using java's native library
    URL url = new URL(sURL);
    URLConnection request = url.openConnection();
    request.connect();

    // Convert to a JSON object to print data
    JsonParser jp = new JsonParser(); //from gson
    JsonElement root = jp.parse(new InputStreamReader((InputStream) request.getContent())); //Convert the input stream to a json element
    JsonObject rootobj = root.getAsJsonObject(); //May be an array, may be an object. 

