<!-- Updates based on Jira tickets 
Date             Jira ticket        Updated by                   Comment
2023-06-29       OTHER-2558         Cooper Thompson              Split design background into a separate page, independent of the guidance page.
2023-07-13       OTHER-2618         Cooper Thompson              Added a link to the R4 SPCU backport extension.
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
|Property on resources|1. Easily discoverable in the specification<br />2. Establishes the properties as first-class data elements.|1. Requires an alternative approach for pre-adoption in prior versions of FHIR.<br />2. For Patient, additional processes for the change are required to make updates to the normative resource.|
|Extension on resources|1. The extension may be directly pre-adopted in prior versions of FHIR.<br />2. The extension can be defined in one location and applied to many resources, rather than having to copy and maintain an identical structure on many related resources.<br />3. We may consider changing the extension to a property in future versions of FHIR.| 1. Extensions are somewhat hidden, so are moderately difficult for implementers to discover<br />2. Avoids problems with changing normative content.|
|Profile of Observation| 1. Enables collecting a broad set of metadata about the property. However, it is not expected that the metadata Observation enables is necessary or useful for most use cases.<br />2. Aligns with sexual orientation profile.|1. Observation profiles are somewhat hidden, so are moderately difficult for implementers to discover.<br />2. Avoids problems with changing normative content.<br />3. Clients would require additional authorization scopes to access demographic data. For servers that provide only resource-level scopes, patients may not wish to share Observation just to grant access to gender identity, when it would also grant access to labs, vitals, etc.|

When creating the FHIR extensions, there were several proposed changes to the logical model that were identified. We chose to apply those changes to FHIR structures so that we can solicit feedback via the ballot. After those changes have been balloted, we will go back and apply those changes to the logical model.

#### Explicit Decisions:
**Gender Identity: extension**

*Context:* This extension is available on all "person" type resources, which includes Patient, RelatedPerson, Person, and Practitioner. It is not included on PracitionerRole, as PractitionerRole refers to Practitioner for demographics.

**Sex Parameter for Clinical Use: extension**

*Note*: The Sex Parameter for Clinical Use concept was formerly known as Sex for Clincal Use.

*Context:* The Sex Parameter for Clinical Use extension is available on all FHIR resource types; however, it is intended for use on clinical resource types (e.g., DiagnosticReport, Observation), and enclosing contextual resources (e.g., Encounter, EpisodeOfCare, Patient). We considered limiting the extension only to the resources we expect it to be used on, however there will likely be resources we incorrectly excluded, and new resources created to which it could apply, so we opted to allow it to all resources, understanding that it would not be applicable for many resource types.

Structure: We considered two structural options for this extension:

1) An extension applied to a contextual resource with the Sex for Clinical Use value in-line.
2) An extension applied to a contextual resource with a reference to an Observation documenting the Sex Parameter for Clinical Use value.

We opted to include the Sex Parameter for Clinical Use value in-line rather than as a reference to Observation after discussion on tradeoffs between two options.  We felt that the in-line option was simpler while being sufficiently expressive.  An extension with a reference to Observation allows for the expression of complex metadata associated with the value, however we expect the need for that complex metadata would be sufficiently rare to not outweigh the benefits of the simpler in-line extension option.  Note that the [patient-sexParameterForClinicalUse](http://hl7.org/fhir/extensions/StructureDefinition-patient-sexParameterForClinicalUse.html) extension does include a supportingInfo property which may reference supporting clinical observations.

**Recorded Sex and Gender: extension**

The [Patient Gender and Sex section](https://hl7.org/fhir/R5/patient.html#gender) describes considerations for exchanging Recorded Sex and Gender concepts. The Recorded Sex and Gender extension is provided as option only when a use-case specific property or extension is not practical.

*Context:* This extension is available on all "person" type resources, which includes Patient, RelatedPerson, Person, and Practitioner. It is not included on PracitionerRole, as PractitionerRole refers to Practitioner for demographics.

**Pronouns: extension**

*Context:* This extension is available on all "person" type resources, which includes Patient, RelatedPerson, Person, and Practitioner. It is not included on PracitionerRole, as PractitionerRole refers to Practitioner for demographics.

**Name to Use: Guidance on HumanName datatype**

The Gender Harmony project has agreed that to represent the Name To Use when addressing an individual, the datatype HumanName.use = "usual" should be used.

### Backwards Compatibility:

One of the benefits to using extensions in R5 is that they can be easily backported to prior versions. Implementers may use any of the new standard extensions in R5 in prior versions of FHIR.

However, the [patient-sexParameterForClinicalUse](http://hl7.org/fhir/extensions/StructureDefinition-patient-sexParameterForClinicalUse.html) extension makes use of the CodeableReference data type, which was added in R5. In hindsight, we would have used R4 compatible data types to make this extension backportable to R4. However, given that this issue was discovered after the extension was published, we have created a separate [patient-sexParameterForClinicalUse-backport](http://hl7.org/fhir/extensions/StructureDefinition-patient-sexParameterForClinicalUse-backport.html) extension that may be used for versions prior to R5.
