All significant changes to this FHIR implementation guide will be documented on this page.

### Version 2.0.0 (tbd)

* Added examples of request and response bundles.
* Created separate tabs on the HTML page.
* Changed IG name to be suitable as an identifier.
* Considered changes in the official EPR policy stack.
* Dropped code systems `EprActorNameQualifier`, `EprOrganizationIdQualifier`, and `EprReferencedPolicySet` in favor of `urn:ietf:rfc:3986`.
* Provided links to CH:PPQ specification and official EPR policy stack ([#21](https://github.com/ehealthsuisse/ch-epr-ppqm/issues/21), [#22](https://github.com/ehealthsuisse/ch-epr-ppqm/issues/22), [#24](https://github.com/ehealthsuisse/ch-epr-ppqm/issues/24)).
* Renamed profile `PpqmRequestBundle` to `PpqmFeedRequestBundle` ([#23](https://github.com/ehealthsuisse/ch-epr-ppqm/issues/23)).
* Renamed profile `PpqmResponseBundle` to `PpqmRetrieveRequestBundle` ([#23](https://github.com/ehealthsuisse/ch-epr-ppqm/issues/23)).
* Do not use the `MustSupport` flag ([#25](https://github.com/ehealthsuisse/ch-epr-ppqm/issues/25)).
* Created an example of PPQ-4 response bundle ([#26](https://github.com/ehealthsuisse/ch-epr-ppqm/issues/26))
* Fixed bundle type in UML diagram ([#27](https://github.com/ehealthsuisse/ch-epr-ppqm/issues/27)).

### Version 0.2.0 (16-Mar-2022)

Extended human-readable descriptions.

### Version 0.1.0 (11-Feb-2022)

Initial version.
