### Introduction

This Implementation Guide is a part of the Swiss EPR specifications and contains definitions necessary 
for the Swiss national integration profile 
["Privacy Policy Query for Mobile"](https://www.e-health-suisse.ch/technik-semantik/epd-projectathon/programmierhilfen-epd/relevante-spezifikationen.html) 
(CH:PPQm).  The goal of this profile is to provide a possibility to manage privacy policies using a lightweight 
technology stack suitable for mobile devices &mdash; as opposed to the classic CH:PPQ which is based 
on XACML 2.0 and SAML 2.0.

The CH:PPQm specification is based on:
* [HL7 FHIR (R) standard Release 4](http://hl7.org/fhir/R4) &mdash; for basis definitions
* [CH EPR Term Implementation Guide](http://fhir.ch/ig/ch-epr-term) &mdash; for Swiss EPR coding systems and value sets
* [CH EPR mHealth Implementation Guide](http://fhir.ch/ig/ch-epr-mhealth) &mdash; for RESTful ATNA and IUA profiles

In CH:PPQm, EPR privacy policies are represented as [PpqmConsent](StructureDefinition-PpqmConsent.html)
resources, whose structure resembles the EPR flavor of XACML 2.0 Policy Set and obeys the same logical constraints.

### Actors and Transactions

The CH:PPQm profile defines the following actors and transactions:

<div>{% include actors.svg %}</div>

Thereby, the Policy Repository is a component of an EPR reference community's central IT infrastructure.
The Policy Source and Policy Consumer are the actors to be implemented in mobile clients.

To create, update, or delete _single_ policies 
([PpqmConsent](StructureDefinition-PpqmConsent.html) resources) 
in the Policy Repository, a mobile client may use the __Mobile Privacy Policy Feed__ transaction (PPQ-3):

![PPQ-3 sequence diagram](assets/images/PPQ-3.svg "PPQ-3 sequence diagram")

To manipulate policies _groupwise_, the __Mobile Privacy Policy Bundle Feed__ transaction (PPQ-4) can be used:

![PPQ-4 sequence diagram](assets/images/PPQ-4.svg "PPQ-4 sequence diagram")

The request is a [PpqmRequestBundle](StructureDefinition-PpqmRequestBundle.html)
resource containing one or more [PpqmConsent](StructureDefinition-PpqmConsent.html)
resources (for add and update operations) or references to them (for the delete operation).

Read access to the Policy Repository is provided by the __Mobile Privacy Policy Retrieve__ transaction (PPQ-5):

![PPQ-5 sequence diagram](assets/images/PPQ-5.svg "PPQ-5 sequence diagram")

The response is a [PpqmResponseBundle](StructureDefinition-PpqmResponseBundle.html)
resource containing zero or more [PpqmConsent](StructureDefinition-PpqmConsent.html)
resources.

### Further Aspects

In order to provide interoperability between CH:PPQ and CH:PPQm, the CH:PPQm integration profile defines
transformation rules between XACML 2.0 Policy Sets and 
[PpqmConsent](StructureDefinition-PpqmConsent.html) resources.
