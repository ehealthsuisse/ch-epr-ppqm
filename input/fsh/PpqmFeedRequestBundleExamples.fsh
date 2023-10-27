Instance: PpqmFeedRequestBundleAdd
InstanceOf: PpqmFeedRequestBundle
Title: "PPQm Feed Request Bundle for HTTP method POST -- add new policy sets"
Description: "PPQm Feed Request Bundle for HTTP method POST -- add new policy sets"
Usage: #example
* type = http://hl7.org/fhir/bundle-type#transaction
* entry[+].request.method = #POST 
* entry[=].request.url = "Consent" 
* entry[=].resource = Template201Consent
* entry[+].request.method = #POST 
* entry[=].request.url = "Consent" 
* entry[=].resource = Template202Consent
* entry[+].request.method = #POST 
* entry[=].request.url = "Consent" 
* entry[=].resource = Template203Consent

Instance: PpqmFeedRequestBundleUpdate
InstanceOf: PpqmFeedRequestBundle
Title: "PPQm Feed Request Bundle for HTTP method PUT -- conditionally add/update policy sets"
Description: "PPQm Feed Request Bundle for HTTP method PUT -- conditionally add/update policy sets"
Usage: #example
* type = http://hl7.org/fhir/bundle-type#transaction
* entry[+].request.method = #PUT
* entry[=].request.url = "Consent?identifier=urn:uuid:f1e1ed8e-0582-4e47-a76e-5e8f6cc0908f" 
* entry[=].resource = Template301Consent
* entry[+].request.method = #PUT 
* entry[=].request.url = "Consent?identifier=urn:uuid:c23c862a-b297-43c7-875b-d933982c9756" 
* entry[=].resource = Template302Consent
* entry[+].request.method = #PUT 
* entry[=].request.url = "Consent?identifier=urn:uuid:f663289d-4cc4-41d7-a01d-213e18e1f722" 
* entry[=].resource = Template303Consent

Instance: PpqmFeedRequestBundleDelete
InstanceOf: PpqmFeedRequestBundle
Title: "PPQm Feed Request Bundle for HTTP method DELETE -- delete policy sets"
Description: "PPQm Feed Request Bundle for HTTP method DELETE -- delete policy sets"
Usage: #example
* type = http://hl7.org/fhir/bundle-type#transaction
* entry[+].request.method = #DELETE
* entry[=].request.url = "Consent?identifier=urn:uuid:f1e1ed8e-0582-4e47-a76e-5e8f6cc0908f" 
* entry[+].request.method = #DELETE 
* entry[=].request.url = "Consent?identifier=urn:uuid:c23c862a-b297-43c7-875b-d933982c9756" 
* entry[+].request.method = #DELETE
* entry[=].request.url = "Consent?identifier=urn:uuid:f663289d-4cc4-41d7-a01d-213e18e1f722" 

Instance: PpqmFeedResponseBundle
InstanceOf: Bundle
Title: "PPQm Feed Response Bundle"
Description: "PPQm Feed Response Bundle"
Usage: #example
* id = "6de90529-3baa-4157-9bef-e945363b2c39"
* type = http://hl7.org/fhir/bundle-type#transaction-response
* link[+].relation = "self"
* link[=].url = "http://localhost:8999/fhir"
* entry[+].fullUrl = "http://localhost:8999/fhir/Consent/a0336005-dfb6-4b57-a904-d9172d112535"
* entry[=].response.status = "201 Created"
* entry[+].fullUrl = "http://localhost:8999/fhir/Consent/d0e1c5b1-fbc9-48e1-a677-75ea2ef69fae"
* entry[=].response.status = "201 Created"
* entry[+].fullUrl = "http://localhost:8999/fhir/Consent/05460feb-62bb-49eb-aa16-fbe3baa2785a"
* entry[=].response.status = "201 Created"
