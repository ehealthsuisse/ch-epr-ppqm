ValueSet: PpqmReferencedPolicySet
Title: "PPQm Referenced Policy Set"
Description: "IDs of basis policy sets that may be referenced from templates.  Note that this value set intentionally does not contain IDs of all policy sets contained in the official stack, see [documentation](https://github.com/ehealthsuisse/ch-epr-adr-ppq/blob/main/docs/Policies.md)"
* ^experimental = false

* $URI#urn:e-health-suisse:2015:policies:access-level:full                      "Full access"                     // "Full access for a patient or a patient representative" 
* $URI#urn:e-health-suisse:2015:policies:provide-level:normal                   "Write normal"                    // "Creation of new documents with confidentiality level not less than NORMAL"
* $URI#urn:e-health-suisse:2015:policies:provide-level:restricted               "Write restricted"                // "Creation of new documents with confidentiality level not less than RESTRICTED"
* $URI#urn:e-health-suisse:2015:policies:provide-level:secret                   "Write secret"                    // "Creation of new documents with confidentiality level not less than SECRET"
* $URI#urn:e-health-suisse:2015:policies:access-level:normal                    "Read normal"                     // "Read access to documents with confidentiality level NORMAL"
* $URI#urn:e-health-suisse:2015:policies:access-level:restricted                "Read restricted"                 // "Read access to documents with confidentiality level NORMAL and RESTRICTED"
* $URI#urn:e-health-suisse:2015:policies:access-level:delegation-and-normal     "Read normal with delegation"     // "Read access to documents with confidentiality level NORMAL with the possibility to delegate it"
* $URI#urn:e-health-suisse:2015:policies:access-level:delegation-and-restricted "Read restricted with delegation" // "Read access to documents with confidentiality level NORMAL and RESTRICTED with the possibility to delegate it"
* $URI#urn:e-health-suisse:2015:policies:exclusion-list                         "Exclusion list"                  // "Exclusion list, neither read nor write access is allowed"
