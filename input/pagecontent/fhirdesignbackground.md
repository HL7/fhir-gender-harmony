<!-- Updates based on Jira tickets 
Date             Jira ticket        Updated by                   Comment
2023-06-29       OTHER-2558         Cooper Thompson              Split design background into a separate page, independent of the guidance page.
2023-07-13       OTHER-2618         Cooper Thompson              Added a link to the R4 SPCU backport extension.
2023-08-14       OTHER-2633         Joanie Harper                Move phrase from Disadvantages column to advantages column per the Jira ticket
2023-08-14       OTHER-2610         Joanie Harper                Updated text per the Jira ticket
2023-08-16       OTHER-2579         MaryKay McDaniel             Added (SPCU) in line 36 for consistency across pages, i.e., 1st time include 
2023-08-23      OTHER-2618 and related  Rob McClure             Changed Final section on backwards compatibility
2023-08-23      OTHER 2525          Rob McClure                 Change already made to RSG definition so no update for this
2023-08-25      OTHER-2602                Carol Macumber                Removing "Note to balloters"
2023-08-27		OTHER-2613			Carol Macumber	Added clarification that additional authorization being required for SPCU Profile on Observation may be considered advantagous in some scenarios per OTHER 2613 
-->

# Background and Rationale for FHIR design approach
There were several options considered when representing these sex and gender concepts in FHIR:
* Add new properties in the relevant resources
* Create extensions in the relevant resources
* Create a profile on Observation

<style>
table, th, td {
  border: 1px solid black;
}
</style>
|Option|Advantages|Disadvantages|
|---|---|---|
|Property on resources|1. Easily discoverable in the specification<br />2. Establishes the properties as first-class data elements.|1. Requires an alternative approach for pre-adoption in prior versions of FHIR.<br />2. For the Patient resource, which is Normative, a change such as this requires additional implementer and standards community acceptance/review processes.|
|Extension on resources|1. The extension may be directly pre-adopted in prior versions of FHIR.<br />2. The extension can be defined in one location and applied to many resources, rather than having to copy and maintain an identical structure on many related resources.<br />3. We may consider changing the extension to a property in future versions of FHIR.<br />4. Avoids problems with changing normative content.| 1. Extensions are somewhat hidden, so are moderately difficult for implementers to discover.|
|Profile of Observation| 1. Enables collecting a broad set of metadata about the property. However, it is not expected that the metadata Observation enables is necessary or useful for most use cases.<br />2. Aligns with sexual orientation profile.<br />3. Avoids problems with changing normative content.|1. Observation profiles are somewhat hidden, so are moderately difficult for implementers to discover.<br />2. Clients would require additional authorization scopes to access demographic data. For servers that provide only resource-level scopes, patients may not wish to share an Observation just to grant access to Gender Identity, when it would also grant access to labs, vitals, etc. Note: it may not always be viewed as a disadvantage for systems to require additional authorization. Rather, it may be desired in some scenarios|

When creating the FHIR extensions, there were several proposed changes to the logical model that were identified. We chose to apply those changes to FHIR structures so that we can solicit feedback via the ballot. As a result of the FHIR R5 and this Gender Harmony Cross Paradigm IG ballot, any resulting required changes to the logical model have been made.

#### Explicit Decisions:
**Gender Identity: extension**

*Context:* This extension is available on all "person" type resources, which includes Patient, RelatedPerson, Person, and Practitioner. It is not included on PractitionerRole, as PractitionerRole refers to Practitioner for demographics.

**Sex Parameter for Clinical Use: extension**

*Note*: The Sex Parameter for Clinical Use (SFCU) concept was formerly known as Sex for Clinical Use.

*Context:* The Sex Parameter for Clinical Use extension is available on all FHIR resource types; however, it is intended for use on clinical resource types (e.g., DiagnosticReport, Observation), and enclosing contextual resources (e.g., Encounter, EpisodeOfCare, Patient). We considered limiting the extension only to the resources we expect it to be used on, however there will likely be resources we incorrectly excluded, and new resources created to which it could apply, so we opted to allow it to all resources, understanding that it would not be applicable for many resource types.

Structure: We considered two structural options for this extension:

1) An extension applied to a contextual resource with the Sex for Clinical Use value in-line.
2) An extension applied to a contextual resource with a reference to an Observation documenting the Sex Parameter for Clinical Use value.

We opted to include the Sex Parameter for Clinical Use value in-line rather than as a reference to Observation after discussion on tradeoffs between two options.  We felt that the in-line option was simpler while being sufficiently expressive.  An extension with a reference to Observation allows for the expression of complex metadata associated with the value, however we expect the need for that complex metadata would be sufficiently rare to not outweigh the benefits of the simpler in-line extension option.  Note that the [patient-sexParameterForClinicalUse](http://hl7.org/fhir/extensions/StructureDefinition-patient-sexParameterForClinicalUse.html) extension does include a supportingInfo property which may reference supporting clinical observations.

**Recorded Sex and Gender: extension**

The [Patient Gender and Sex section](https://hl7.org/fhir/R5/patient.html#gender) describes considerations for exchanging Recorded Sex and Gender concepts. The Recorded Sex and Gender extension is provided as option only when a use-case specific property or extension is not practical.

*Context:* This extension is available on all "person" type resources, which includes Patient, RelatedPerson, Person, and Practitioner. It is not included on PractitionerRole, as PractitionerRole refers to Practitioner for demographics.

**Pronouns: extension**

*Context:* This extension is available on all "person" type resources, which includes Patient, RelatedPerson, Person, and Practitioner. It is not included on PractitionerRole, as PractitionerRole refers to Practitioner for demographics.

**Name to Use: Guidance on HumanName datatype**

The Gender Harmony project has agreed that to represent the Name To Use when addressing an individual, the datatype HumanName.use = "usual" should be used.

### Backwards Compatibility for FHIR versions:

One of the benefits to using extensions in [FHIR R5](https://hl7.org/fhir/R5/) is that they can be easily backported to prior versions. Implementers may use any of the new standard extensions in R5 in prior versions of FHIR. This is further discussed in the [Version Management Policy](https://hl7.org/fhir/r5/versions.html#extensions) of the R5 documentation.

However, the [patient-sexParameterForClinicalUse](http://hl7.org/fhir/extensions/StructureDefinition-patient-sexParameterForClinicalUse.html), and the [individual-recordedSexOrGender](http://hl7.org/fhir/StructureDefinition/individual-recordedSexOrGender) extensions make use of the CodeableReference datatype, which was added in R5. Further analysis of the implications for backporting this datatype resulted in improvements to the FHIR publisher and validator so that any [FHIR R4](https://hl7.org/fhir/R4B) guide that creates a dependency on one of the R5 extensions will have the agreed upon R4 structure for this datatype inserted into the R4 representation of the extension. In other words the FHIR publisher provides a datatype conversion that is independent of our R5 extensions so that they will work in any R4 implementation.
