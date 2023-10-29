Profile: PpqmFeedRequestBundle
Parent: Bundle
Id: PpqmFeedRequestBundle
Title: "PpqmFeedRequestBundle"
Description: "Bundle for Mobile Privacy Policy Bundle Feed requests"

* obeys ch-epr-ppqm-method-equality


* type  = http://hl7.org/fhir/bundle-type#transaction

* entry             1..*
* entry             obeys ch-epr-ppqm-constistent-ids
* entry.resource    only PpqmConsent

* entry.request                 obeys ch-epr-ppqm-url-format
* entry.request.method          from PpqmFeedRequestHttpMethod (required)
* entry.request.ifNoneMatch     0..0
* entry.request.ifModifiedSince 0..0
* entry.request.ifMatch         0..0
* entry.request.ifNoneExist     0..0



Invariant:      ch-epr-ppqm-method-equality
Description:    "HTTP methods of all request shall be the same"
Expression:     "entry.request.method.distinct().count() = 1"
Severity:       #error

Invariant:      ch-epr-ppqm-url-format
Description:    "URL format shall suit the HTTP method"
Expression:     "(
                    (method = 'POST') and (url = 'Consent')
                ) or (
                    (method != 'POST') and url.startsWith('Consent?identifier=') and url.lower().matches('^consent\\\\?identifier=urn:uuid:[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}$')
                )"
Severity:       #error

Invariant:      ch-epr-ppqm-constistent-ids
Description:    "For PUT, policy set ID in the embedded resource shall be the same as in the entry URL"
Expression:     "(request.method != 'PUT') or (resource.identifier.where(
                    type.coding.exists((system = 'http://fhir.ch/ig/ch-epr-ppqm/CodeSystem/PpqmConsentIdentifierType') and (code = 'policySetId'))
                ).value.lower() = request.url.substring(19).lower())"       // 19 is the length of "Consent?identifier="
Severity:       #error
