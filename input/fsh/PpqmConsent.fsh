Profile: PpqmConsent
Parent: Consent
Id: PpqmConsent
Title: "PpqmConsent"
Description: "Swiss EPR Policy Set as a Consent"

* obeys ch-epr-ppqm-template-structure

* identifier ^slicing.discriminator.type    = #pattern
* identifier ^slicing.discriminator.path    = "type.coding"
* identifier ^slicing.rules                 = #open
* identifier ^slicing.description           = "PpqmConsent Identifiers"
* identifier ^slicing.ordered               = false

* identifier contains
    policySetId 1..1 and
    templateId  1..1

* identifier[policySetId]               ^short = "UUID of the Policy Set"
* identifier[policySetId].use           0..0 
* identifier[policySetId].type          1..1 
* identifier[policySetId].type.coding   1..1
* identifier[policySetId].type.coding   = PpqmConsentIdentifierType#policySetId
* identifier[policySetId].system        0..0 
* identifier[policySetId].value         1..1 
* identifier[policySetId].value         ^short = "UUID of the policy set in URN format"
* identifier[policySetId].value         obeys ch-epr-ppqm-uuid-format
* identifier[policySetId].period        0..0 
* identifier[policySetId].assigner      0..0

* identifier[templateId]                ^short = "Template ID of the policy set"
* identifier[templateId].use            0..0 
* identifier[templateId].type           1..1 
* identifier[templateId].type.coding    1..1
* identifier[templateId].type.coding    = PpqmConsentIdentifierType#templateId
* identifier[templateId].system         0..0 
* identifier[templateId].value          1..1 
* identifier[templateId].value          ^short = "Template ID of the policy set"
* identifier[templateId].value          from PpqmPolicySetTemplateId (required)
* identifier[templateId].period         0..0 
* identifier[templateId].assigner       0..0


* status        = #active
* status ^short = "Fixed status value"

* scope         = http://terminology.hl7.org/CodeSystem/consentscope#patient-privacy
* scope ^short  = "Fixed scope value"
* scope.coding  1..1

* category          1..1
* category          = http://terminology.hl7.org/CodeSystem/v3-ActCode#INFA
* category          ^short = "Fixed category value"
* category.coding   1..1

* patient                       1..1
* patient.reference             0..0
* patient.type                  0..0
* patient.identifier            1..1 
* patient.identifier.use        0..0 
* patient.identifier.type       0..0 
* patient.identifier.system     1..1 
* patient.identifier.system     = "urn:oid:2.16.756.5.30.1.127.3.10.3"
* patient.identifier.value      1..1
* patient.identifier.value      ^short = "EPR-SPID of the patient (18 digits)"
* patient.identifier.value      obeys ch-epr-ppqm-epr-spid-format
* patient.identifier.period     0..0 
* patient.identifier.assigner   0..0
* patient.display               0..0

* dateTime      0..0

* performer     0..0

* organization  0..0

* source[x]     0..0

* policy        0..0

* policyRule                      1..1 
* policyRule                      ^short = "ID of the referenced basis policy set"
* policyRule.coding               1..1
* policyRule.coding               from PpqmReferencedPolicySet (required)
* policyRule.coding.version       0..0
* policyRule.coding.code          1..1
* policyRule.coding.system        1..1 
* policyRule.coding.display       0..1
* policyRule.coding.userSelected  0..0
* policyRule.text                 0..1

* verification 0..0

* provision                 1..1
* provision.type            0..0
* provision.period          0..1
* provision.period.start    0..1 
* provision.period.start    ^short = "Start date of the policy set validity, yyyy-mm-dd"
* provision.period.start    obeys ch-epr-ppqm-date-format
* provision.period.end      1..1 
* provision.period.end      ^short = "End date of the policy set validity, yyyy-mm-dd"
* provision.period.end      obeys ch-epr-ppqm-date-format

* provision.actor                       1..1
* provision.actor.role                  1..1 
* provision.actor.role                  from http://fhir.ch/ig/ch-epr-term/ValueSet/EprRole (required)
* provision.actor.role.coding.system    1..1
* provision.actor.role.coding.system    = "urn:oid:2.16.756.5.30.1.127.3.10.6"
* provision.actor.role.coding.code      1..1
* provision.actor.role.coding.code      ^short = "EPR actor role code"

* provision.actor.reference                                     1..1 
* provision.actor.reference.reference                           0..0
* provision.actor.reference.type                                0..0
* provision.actor.reference.identifier                          0..1 
* provision.actor.reference.identifier                          ^short = "This element is present only in policy sets which reference a particular healthcare professional, group of healthcare professionals, patient, or representative"
* provision.actor.reference.identifier.use                      0..0
* provision.actor.reference.identifier.type                     1..1
* provision.actor.reference.identifier.type.coding              1..1
* provision.actor.reference.identifier.type.coding              from PpqmActorIdentifierType (required)
* provision.actor.reference.identifier.type.coding.system       1..1
* provision.actor.reference.identifier.type.coding.version      0..0
* provision.actor.reference.identifier.type.coding.code         1..1
* provision.actor.reference.identifier.type.coding.code         ^short = "Actor identifier type code (name qualifier)"
* provision.actor.reference.identifier.type.coding.display      0..1
* provision.actor.reference.identifier.type.coding.userSelected 0..0
* provision.actor.reference.identifier.type.text                0..0
* provision.actor.reference.identifier.value                    1..1
* provision.actor.reference.identifier.value                    ^short = "ID of an healthcare professional, group of healthcare professionals, patient, or representative"
* provision.actor.reference.identifier.period                   0..0
* provision.actor.reference.identifier.assigner                 0..0

* provision.actor.reference.display 0..1 
* provision.actor.reference.display ^short = "This element is present only in policy sets which reference indefinite sets of actors"

* provision.action          0..0
* provision.securityLabel   0..0
* provision.purpose         0..* 
* provision.purpose         from http://fhir.ch/ig/ch-epr-term/ValueSet/EprPurposeOfUse (required)
* provision.purpose.system  1..1
* provision.purpose.system  = "urn:oid:2.16.756.5.30.1.127.3.10.5" 
* provision.purpose.code    1..1
* provision.class           0..0
* provision.code            0..0
* provision.dataPeriod      0..0
* provision.data            0..0
* provision.provision       0..0


Invariant:      ch-epr-ppqm-uuid-format
Description:    "The policy set ID must be a UUID in URN format"
Expression:     "lower().matches('^urn:uuid:[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}$')"
Severity:       #error

Invariant:      ch-epr-ppqm-epr-spid-format
Description:    "The patient ID must be an EPR-SPID"
Expression:     "matches('^[0-9]{18}$')"
Severity:       #error

Invariant:      ch-epr-ppqm-date-format
Description:    "Timestamp must have precision of days, i.e. not contain the time part"
Expression:     "toString().matches('^[0-9]{4}-[0-9]{2}-[0-9]{2}$')"
Severity:       #error

Invariant:      ch-epr-ppqm-template-structure
Description:    "The resource shall correspond to one of official policy set templates"
Expression:     "(
                    identifier.exists(type.coding.exists((system = 'http://fhir.ch/ig/ch-epr-ppqm/CodeSystem/PpqmConsentIdentifierType') and (code = 'templateId')) and (value = '201')) and 
                    (policyRule[0].coding.code = 'urn:e-health-suisse:2015:policies:access-level:full') and 
                    provision[0].period.empty() and 
                    (provision[0].actor.role.coding.code = 'PAT') and 
                    (provision[0].actor.reference.identifier.type.coding.code = 'urn:e-health-suisse:2015:epr-spid') and 
                    provision[0].actor.reference.identifier.value.matches('^[0-9]{18}$') and 
                    provision[0].actor.reference.display.empty() and 
                    provision[0].purpose.empty() and 
                    (provision[0].actor.reference.identifier[0].value = patient.identifier.value)
                ) or (
                    identifier.exists(type.coding.exists((system = 'http://fhir.ch/ig/ch-epr-ppqm/CodeSystem/PpqmConsentIdentifierType') and (code = 'templateId')) and (value = '202')) and 
                    (
                        (policyRule[0].coding.code = 'urn:e-health-suisse:2015:policies:access-level:normal') or 
                        (policyRule[0].coding.code = 'urn:e-health-suisse:2015:policies:access-level:restricted')
                    ) and 
                    provision[0].period.empty() and 
                    (provision[0].actor.role.coding.code = 'HCP') and 
                    provision[0].actor.reference.identifier.empty() and 
                    (provision[0].actor.reference.display = 'all') and
                    (provision[0].purpose.count() = 1) and 
                    (provision[0].purpose.code = 'EMER')
                ) or (
                    identifier.exists(type.coding.exists((system = 'http://fhir.ch/ig/ch-epr-ppqm/CodeSystem/PpqmConsentIdentifierType') and (code = 'templateId')) and (value = '203')) and 
                    (
                        (policyRule[0].coding.code = 'urn:e-health-suisse:2015:policies:provide-level:normal') or 
                        (policyRule[0].coding.code = 'urn:e-health-suisse:2015:policies:provide-level:restricted')
                    ) and 
                    provision[0].period.empty() and 
                    (provision[0].actor.role.coding.code = 'HCP') and 
                    provision[0].actor.reference.identifier.empty() and 
                    (provision[0].actor.reference.display = 'all') and
                    (provision[0].purpose.count() = 3) and 
                    (provision[0].purpose.exists(code = 'NORM')) and
                    (provision[0].purpose.exists(code = 'AUTO')) and 
                    (provision[0].purpose.exists(code = 'DICOM_AUTO'))
                ) or (
                    identifier.exists(type.coding.exists((system = 'http://fhir.ch/ig/ch-epr-ppqm/CodeSystem/PpqmConsentIdentifierType') and (code = 'templateId')) and (value = '301')) and 
                    (
                        (policyRule[0].coding.code = 'urn:e-health-suisse:2015:policies:access-level:normal') or 
                        (policyRule[0].coding.code = 'urn:e-health-suisse:2015:policies:access-level:restricted') or
                        (policyRule[0].coding.code = 'urn:e-health-suisse:2015:policies:access-level:delegation-and-normal') or 
                        (policyRule[0].coding.code = 'urn:e-health-suisse:2015:policies:access-level:delegation-and-restricted') or
                        (policyRule[0].coding.code = 'urn:e-health-suisse:2015:policies:exclusion-list')
                    ) and 
                    (policyRule.coding.code.contains('delegation').empty() or provision.period.end.exists()) and
                    (provision[0].actor.role.coding.code = 'HCP') and 
                    (provision[0].actor.reference.identifier.type.coding.code = 'urn:gs1:gln') and 
                    provision[0].actor.reference.identifier.value.matches('^[0-9]{13}$') and 
                    provision[0].actor.reference.display.empty() and
                    (provision[0].purpose.count() = 1) and 
                    (provision[0].purpose.code = 'NORM')
                ) or (
                    identifier.exists(type.coding.exists((system = 'http://fhir.ch/ig/ch-epr-ppqm/CodeSystem/PpqmConsentIdentifierType') and (code = 'templateId')) and (value = '302')) and 
                    (
                        (policyRule[0].coding.code = 'urn:e-health-suisse:2015:policies:access-level:normal') or 
                        (policyRule[0].coding.code = 'urn:e-health-suisse:2015:policies:access-level:restricted')
                    ) and 
                    provision[0].period.end.exists() and 
                    (provision[0].actor.role.coding.code = 'HCP') and 
                    (provision[0].actor.reference.identifier.type.coding.code = 'urn:oasis:names:tc:xspa:1.0:subject:organization-id') and 
                    provision[0].actor.reference.identifier.value.lower().matches('^urn:oid:([0-2])((\\\\.0)|(\\\\.[1-9][0-9]*))*$') and 
                    provision[0].actor.reference.display.empty() and 
                    (provision[0].purpose.count() = 1) and 
                    (provision[0].purpose.code = 'NORM')
                ) or (
                    identifier.exists(type.coding.exists((system = 'http://fhir.ch/ig/ch-epr-ppqm/CodeSystem/PpqmConsentIdentifierType') and (code = 'templateId')) and (value = '303')) and 
                    (policyRule[0].coding.code = 'urn:e-health-suisse:2015:policies:access-level:full') and 
                    provision[0].period.empty() and 
                    (provision[0].actor.role.coding.code = 'REP') and 
                    (provision[0].actor.reference.identifier.type.coding.code = 'urn:e-health-suisse:representative-id') and 
                    provision[0].actor.reference.identifier.value.matches('^\\\\S+$') and 
                    provision[0].actor.reference.display.empty() and 
                    provision[0].purpose.empty()
                )"
Severity:       #error
