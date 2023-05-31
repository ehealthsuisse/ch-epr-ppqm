Instance: Template201Consent
InstanceOf: PpqmConsent
Title: "PpqmConsent for template 201 -- Full access for the patient"
Description: "PpqmConsent for template 201 -- Full access for the patient"
Usage: #example
* text.status = #empty
* text.div = "<div xmlns='http://www.w3.org/1999/xhtml'><p>Template 201 - Full access for the patient</p></div>"
* identifier[policySetId].value = "urn:uuid:57ab9b0d-7d97-4d85-9e4b-02bc7c939ad9"
* identifier[templateId].value = "201"
* status = #active
* scope.coding = #patient-privacy
* category.coding = #INFA
* patient.identifier.system = "urn:oid:2.16.756.5.30.1.127.3.10.3"
* patient.identifier.value = "123456789012345678"
* policyRule.coding = $URI#urn:e-health-suisse:2015:policies:access-level:full
* provision.actor.role.coding = #PAT
* provision.actor.reference.identifier.type.coding = $URI#urn:e-health-suisse:2015:epr-spid
* provision.actor.reference.identifier.value = "123456789012345678"


Instance: Template202Consent
InstanceOf: PpqmConsent
Title: "PpqmConsent for template 202 -- Access in emergency mode"
Description: "PpqmConsent for template 202 -- Access in emergency mode"
Usage: #example
* text.status = #empty
* text.div = "<div xmlns='http://www.w3.org/1999/xhtml'><p>Template 202 - Access in emergency mode</p></div>"
* identifier[policySetId].value = "urn:uuid:bf6c1fb6-2eb9-49ad-b96b-1a4ac55fc7bd"
* identifier[templateId].value = "202"
* status = #active
* scope.coding = #patient-privacy
* category.coding = #INFA
* patient.identifier.system = "urn:oid:2.16.756.5.30.1.127.3.10.3"
* patient.identifier.value = "123456789012345678"
* policyRule.coding = $URI#urn:e-health-suisse:2015:policies:access-level:normal
* provision.actor.role.coding = #HCP
* provision.actor.reference.display = "all"
* provision.purpose = ChEhealthCodesystemPurposeOfUse#EMER


Instance: Template203Consent
InstanceOf: PpqmConsent
Title: "PpqmConsent for template 203 -- Default provide level"
Description: "PpqmConsent for template 203 -- Default provide level"
Usage: #example
* text.status = #empty
* text.div = "<div xmlns='http://www.w3.org/1999/xhtml'><p>Template 203 - Default provide level</p></div>"
* identifier[policySetId].value = "urn:uuid:710e4211-d431-430b-a849-1d689e74e4c2"
* identifier[templateId].value = "203"
* status = #active
* scope.coding = #patient-privacy
* category.coding = #INFA
* patient.identifier.system = "urn:oid:2.16.756.5.30.1.127.3.10.3"
* patient.identifier.value = "123456789012345678"
* policyRule.coding = $URI#urn:e-health-suisse:2015:policies:provide-level:restricted
* provision.actor.role.coding = #HCP
* provision.actor.reference.display = "all"
* provision.purpose[0] = ChEhealthCodesystemPurposeOfUse#NORM
* provision.purpose[1] = ChEhealthCodesystemPurposeOfUse#AUTO
* provision.purpose[2] = ExtendedEprPurposeOfUse#DICOM_AUTO


Instance: Template301Consent
InstanceOf: PpqmConsent
Title: "PpqmConsent for template 301 -- Access level for a healthcare professional"
Description: "PpqmConsent for template 301 -- Access level for a healthcare professional"
Usage: #example
* text.status = #empty
* text.div = "<div xmlns='http://www.w3.org/1999/xhtml'><p>Template 301 - Access level for a healthcare professional</p></div>"
* identifier[policySetId].value = "urn:uuid:f1e1ed8e-0582-4e47-a76e-5e8f6cc0908f"
* identifier[templateId].value = "301"
* status = #active
* scope.coding = #patient-privacy
* category.coding = #INFA
* patient.identifier.system = "urn:oid:2.16.756.5.30.1.127.3.10.3"
* patient.identifier.value = "123456789012345678"
* policyRule.coding = $URI#urn:e-health-suisse:2015:policies:access-level:delegation-and-normal
* provision.period.end = "2022-02-15"
* provision.actor.role.coding = #HCP
* provision.actor.reference.identifier.type.coding = $URI#urn:gs1:gln
* provision.actor.reference.identifier.value = "9876543210987"
* provision.purpose[0] = ChEhealthCodesystemPurposeOfUse#NORM


Instance: Template302Consent
InstanceOf: PpqmConsent
Title: "PpqmConsent for template 302 -- Access level for a group of healthcare professionals"
Description: "PpqmConsent for template 302 -- Access level for a group of healthcare professionals"
Usage: #example
* text.status = #empty
* text.div = "<div xmlns='http://www.w3.org/1999/xhtml'><p>Template 302 -- Access level for a group of healthcare professionals</p></div>"
* identifier[policySetId].value = "urn:uuid:c23c862a-b297-43c7-875b-d933982c9756"
* identifier[templateId].value = "302"
* status = #active
* scope.coding = #patient-privacy
* category.coding = #INFA
* patient.identifier.system = "urn:oid:2.16.756.5.30.1.127.3.10.3"
* patient.identifier.value = "123456789012345678"
* policyRule.coding = $URI#urn:e-health-suisse:2015:policies:access-level:restricted
* provision.period.start = "2022-02-01"
* provision.period.end = "2022-02-15"
* provision.actor.role.coding = #HCP
* provision.actor.reference.identifier.type.coding = $URI#urn:oasis:names:tc:xspa:1.0:subject:organization-id
* provision.actor.reference.identifier.value = "urn:oid:1.2.3.4.5"
* provision.purpose[0] = ChEhealthCodesystemPurposeOfUse#NORM


Instance: Template303Consent
InstanceOf: PpqmConsent
Title: "PpqmConsent for template 303 -- Full access for a representative"
Description: "PpqmConsent for template 303 -- Full access for a representative"
Usage: #example
* text.status = #empty
* text.div = "<div xmlns='http://www.w3.org/1999/xhtml'><p>Template 303 - Full access for a representative</p></div>"
* identifier[policySetId].value = "urn:uuid:f663289d-4cc4-41d7-a01d-213e18e1f722"
* identifier[templateId].value = "303"
* status = #active
* scope.coding = #patient-privacy
* category.coding = #INFA
* patient.identifier.system = "urn:oid:2.16.756.5.30.1.127.3.10.3"
* patient.identifier.value = "123456789012345678"
* policyRule.coding = $URI#urn:e-health-suisse:2015:policies:access-level:full
* provision.actor.role.coding = #REP
* provision.actor.reference.identifier.type.coding = $URI#urn:e-health-suisse:representative-id
* provision.actor.reference.identifier.value = "representative12345"
