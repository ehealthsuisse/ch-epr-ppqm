Instance: PpqmRequestBundleAdd
InstanceOf: PpqmRequestBundle
Title: "PPQm Request Bundle for HTTP method POST -- add new policy sets"
Description: "PPQm Request Bundle for HTTP method POST -- add new policy sets"
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

Instance: PpqmRequestBundleUpdate
InstanceOf: PpqmRequestBundle
Title: "PPQm Request Bundle for HTTP method PUT -- conditionally add/update policy sets"
Description: "PPQm Request Bundle for HTTP method PUT -- conditionally add/update policy sets"
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

Instance: PpqmRequestBundleDelete
InstanceOf: PpqmRequestBundle
Title: "PPQm Request Bundle for HTTP method DELETE -- delete policy sets"
Description: "PPQm Request Bundle for HTTP method DELETE -- delete policy sets"
Usage: #example
* type = http://hl7.org/fhir/bundle-type#transaction
* entry[+].request.method = #DELETE
* entry[=].request.url = "Consent?identifier=urn:uuid:f1e1ed8e-0582-4e47-a76e-5e8f6cc0908f" 
* entry[+].request.method = #DELETE 
* entry[=].request.url = "Consent?identifier=urn:uuid:c23c862a-b297-43c7-875b-d933982c9756" 
* entry[+].request.method = #DELETE
* entry[=].request.url = "Consent?identifier=urn:uuid:f663289d-4cc4-41d7-a01d-213e18e1f722" 
