Mapping: PpqmConsentToXacml20PolicySet
Source: PpqmConsent
Target: "http://docs.oasis-open.org/xacml/2.0"
Title: "CH:PPQ XACML 2.0 Policy Set"
Id: ppqm-consent-xacml20-mapping

* -> "PolicySet"

* identifier.value -> "/PolicySet/@PolicySetId"

* patient.identifier.system -> "/PolicySet/Target/Resources/Resource/ResourceMatch/AttributeValue/InstanceIdentifier/@root"
* patient.identifier.value  -> "/PolicySet/Target/Resources/Resource/ResourceMatch/AttributeValue/InstanceIdentifier/@extension"

* policyRule.coding.code -> "/PolicySet/PolicySetIdReference"

* provision.period.start -> "/PolicySet/Target/Environments/Environment/EnvironmentMatch[@MatchId='urn:oasis:names:tc:xacml:1.0:function:date-less-than-or-equal']/AtributeValue"
* provision.period.end   -> "/PolicySet/Target/Environments/Environment/EnvironmentMatch[@MatchId='urn:oasis:names:tc:xacml:1.0:function:date-greater-than-or-equal']/AtributeValue"

* provision.actor.role.coding.system -> "/PolicySet/Target/Subjects/Subject/SubjectMatch[SubjectAttributeDesignator/@AttributeId='urn:oasis:names:tc:xacml:2.0:subject:role']/AttributeValue/CodedValue/@codeSystem"
* provision.actor.role.coding.code   -> "/PolicySet/Target/Subjects/Subject/SubjectMatch[SubjectAttributeDesignator/@AttributeId='urn:oasis:names:tc:xacml:2.0:subject:role']/AttributeValue/CodedValue/@code"

* provision.actor.reference.identifier.type.coding.code -> "/PolicySet/Target/Subjects/Subject/SubjectMatch[SubjectAttributeDesignator/@AttributeId='urn:oasis:names:tc:xacml:1.0:subject:subject-id-qualifier']/AttributeValue" "if NOT equal to 'urn:oasis:names:tc:xspa:1.0:subject:organization-id'"
* provision.actor.reference.identifier.value            -> "/PolicySet/Target/Subjects/Subject/SubjectMatch[SubjectAttributeDesignator/@AttributeId='urn:oasis:names:tc:xacml:1.0:subject:subject-id']/AttributeValue"           "if identifier.type is NOT equal to 'urn:oasis:names:tc:xspa:1.0:subject:organization-id'"
* provision.actor.reference.identifier.value            -> "/PolicySet/Target/Subjects/Subject/SubjectMatch[SubjectAttributeDesignator/@AttributeId='urn:oasis:names:tc:xspa:1.0:subject:organization-id']/AttributeValue"       "if identifier.type is equal to 'urn:oasis:names:tc:xspa:1.0:subject:organization-id'"

* provision.purpose.system -> "/PolicySet/Target/Subjects/Subject/SubjectMatch[SubjectAttributeDesignator/@AttributeId='urn:oasis:names:tc:xspa:1.0:subject:purposeofuse']/AttributeValue/CodedValue/@codeSystem"
* provision.purpose.code   -> "/PolicySet/Target/Subjects/Subject/SubjectMatch[SubjectAttributeDesignator/@AttributeId='urn:oasis:names:tc:xspa:1.0:subject:purposeofuse']/AttributeValue/CodedValue/@code"





















