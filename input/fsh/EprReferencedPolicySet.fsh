CodeSystem: EprReferencedPolicySet
Id: EprReferencedPolicySet
Description: "IDs of basis policy sets to be referenced from patient policies"

* #urn:e-health-suisse:2015:policies:access-level:full                      "Full access"                       "Full access for a patient or a patient representative" 
* #urn:e-health-suisse:2015:policies:emergency-access-level:normal          "Emergency access normal"           "Read-only access to documents with confidentlality level NORMAL in emergency mode"
* #urn:e-health-suisse:2015:policies:emergency-access-level:restricted      "Emergency access normal"           "Read-only access to documents with confidentlality level NORMAL or RESTRICTED in emergency mode"
* #urn:e-health-suisse:2015:policies:provide-level:normal                   "Write normal"                      "Creation of new documents with confidentiality level not less than NORMAL"
* #urn:e-health-suisse:2015:policies:provide-level:restricted               "Write restricted"                  "Creation of new documents with confidentiality level not less than RESTRICTED"
* #urn:e-health-suisse:2015:policies:provide-level:secret                   "Write secret"                      "Creation of new documents with confidentiality level not less than SECRET"
* #urn:e-health-suisse:2015:policies:access-level:normal                    "Read normal"                       "Read access to documents with confidentiality level NORMAL"
* #urn:e-health-suisse:2015:policies:access-level:restricted                "Read restricted"                   "Read access to documents with confidentiality level NORMAL and RESTRICTED"
* #urn:e-health-suisse:2015:policies:access-level:delegation-and-normal     "Read normal with delegation"       "Read access to documents with confidentiality level NORMAL with the possibility to delegate it"
* #urn:e-health-suisse:2015:policies:access-level:delegation-and-restricted "Read restricted with delegation"   "Read access to documents with confidentiality level NORMAL and RESTRICTED with the possibility to delegate it"
* #urn:e-health-suisse:2015:policies:exclusion-list                         "Exclusion list"                    "Exclusion list, neither read nor write access is allowed"
