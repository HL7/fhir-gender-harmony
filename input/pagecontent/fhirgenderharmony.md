<!-- Updates based on Jira tickets 
Date             Jira ticket        Updated by                   Comment
2023-06-14       OTHER-2629         Joanie Harper                Corrected typo in section 11.3 (3rd row, 2nd column).


-->


### Summary of FHIR artifacts
The [Patient Gender and Sex narrative](https://build.fhir.org/patient.html#gender) was updated to align with the Gender Harmony Project logical model.

An new Patient example was created which represents a transgender patient: [Transgender Person Example](https://build.fhir.org/patient-example-sex-and-gender.html).

Extensions were created or updated to align with the Gender Harmony Project logical model.
<style>
table, th, td {
  border: 1px solid black;
}
</style>
|**Concept**|**FHIR Artifact**|**Contexts of Use**|
|---|---|---|
|**Gender Identity**|[individual-genderIdentity](https://build.fhir.org/extension-individual-genderidentity.html)|Patient, RelatedPerson, Person, and Practitioner|
|**Sex for Clinical Use**|[patient-sexForClinicalUse](https://build.fhir.org/extension-patient-sexforclinicaluse.html)|All Resource types|
|**Pronouns**|[individual-pronouns](https://build.fhir.org/extension-individual-pronouns.html)|Patient, RelatedPerson, Person, and Practitioner|
|**Recorded Sex orGender**|[individual-recordedSexOrGender](https://build.fhir.org/extension-individual-recordedsexorgender.html)|Patient, RelatedPerson, Person, and Practitioner|

### Guidance on use of Sex and Gender artifacts
We recognize that there are many systems that rely on a single patient-level Administrative Gender (a.k.a. Administrative Sex) concept communicated in Patient.gender.  Today, this semantically vague Patient.gender property is used to address a wide range of use cases, from identifying appropriate reference ranges for lab tests to performing patient matching when submitting claims to insurance companies. 

Systems are encouraged to use the new standard extensions to communicate semantically precise sex and gender concepts.  Patient.gender is retained for backwards compatibility.

For systems that cannot immediately transition to the new semantically precise standard extensions, and must use Patient.gender for specific use cases like identifying reference ranges for lab tests, it is important to coordinate with your trading partners to ensure that they understand how you are using the property.  This coordination prevents issues where (for example) a sender is populating Patient.gender for administrative or social purposes, but a recipient is using it for clinical purposes.
### Background and Rationale for FHIR design approach
There were several options considered when representing these sex and gender concepts in FHIR:

- Add new properties in the relevant resources
- Create extensions in the relevant resources
- Create a profile on Observation

<style>
table, th, td {
  border: 1px solid black;
}
</style>
|Option|Advantages|Disadvantages|
|---|---|---|
|Property on resources|1. Easily discoverable in the specification<br />2. Establishes the properties as first-class data elements.|1. Requires an alternative approach for pre-adoption in prior versions of FHIR.<br />2. For Patient, additional processes for the change are required to make updates to the normative resource.</p>|
|Extension on resources|1. The extension may be directly pre-adopted in prior versions of FHIR.<br />2. The extension can be defined in one location and applied to many resources, rather than having to copy and maintain an identical structure on many related resources.<br />3. We may consider changing the extension to a property in future versions of FHIR.| 1. Extensions are somewhat hidden, so are moderately difficult for implementers to discover<br />2. Avoids problems with changing normative content.|
|Profile of Observation| 1. Enables collecting a broad set of metadata about the property. However, it is not expected that the metadata Observation enables is necessary or useful for most use cases.<br />2. Aligns with sexual orientation profile.|1. Observation profiles are somewhat hidden, so are moderately difficult for implementers to discover.<br />2. Avoids problems with changing normative content.<br />3. Clients would require additional authorization scopes to access demographic data. For servers that provide only resource-level scopes, patients may not want to share Observation just to grant access to gender identity, when it would also grant access to labs, vitals, etc.</p>|


<div class="note-to-balloters">When creating the FHIR extensions, there were several proposed changes to the logical model that were identified. We chose to apply those changes to FHIR structures so that we can solicit feedback via the ballot.  After those changes have been balloted, we will go back and apply those changes to the logical model.</div>

#### Explicit Decisions:
**Gender Identity: extension**

*Context:* This extension is available on all “person” type resources, which includes Patient, RelatedPerson, Person, and Practitioner. It is not included on PracitionerRole, as PractitionerRole refers to Practitioner for demographics.

**Sex for Clinical Use: extension**

*Context:* The Sex for Clinical Use extension is available on all FHIR resource types; however, it is intended for use on clinical resource types (e.g., DiagnosticReport, Observation), and enclosing contextual resources (e.g., Encounter, EpisodeOfCare, Patient). We considered limiting the extension only to the resources we expect it to be used on, however there will likely be resources we incorrectly excluded, and new resources created to which it could apply, so we opted to allow it to all resources, understanding that it would not be applicable for many resource types.

Structure: We considered two structural options for this extension:

1) An extension applied to a contextual resource with the Sex for Clinical Use value in-line.
1) An extension applied to a contextual resource with a reference to an Observation documenting the Sex for Clinical Use value.

We opted to include the Sex for Clinical Use value in-line rather than as a reference to Observation after discussion on tradeoffs between two options.  We felt that the in-line option was simpler while being sufficiently expressive.  An extension with a reference to Observation allows for the expression of complex metadata associated with the value, however we expect the need for that complex metadata would be sufficiently rare to not outweigh the benefits of the simpler in-line extension option.

**Note to balloters**: Input on the approach of an extension with an in-line value vs. an extension with a reference to an Observation is appreciated.

**Recorded Sex and Gender: extension**

The [Patient Gender and Sex section](https://build.fhir.org/patient.html#gender) describes considerations for exchanging Recorded Sex and Gender concepts. The Recorded Sex and Gender extension is provided as option only when a use-case specific property or extension is not practical.

*Context:* This extension is available on all “person” type resources, which includes Patient, RelatedPerson, Person, and Practitioner. It is not included on PracitionerRole, as PractitionerRole refers to Practitioner for demographics.

**Note to balloters**: Carefully review the guidance [Patient Gender and Sex section,](https://build.fhir.org/patient.html#gender) including the comments about how to represent Sex Assigned at Birth (Birth Sex) and Legal Sex.

**Pronouns: extension**

*Context:* This extension is available on all “person” type resources, which includes Patient, RelatedPerson, Person, and Practitioner. It is not included on PracitionerRole, as PractitionerRole refers to Practitioner for demographics.

**Name to Use: Guidance on HumanName datatype**

The Gender Harmony project has agreed that to represent the Name To Use when addressing an individual, the datatype HumanName.use = “usual” should be used.

### Backwards Compatibility:

One of the benefits to using extensions in R5 is that they can be easily backported to prior versions. Implementers may use any of the new standard extensions in R5 in prior versions of FHIR.

For gender identity, there are several extensions that exist:

- **patient-genderIdentity**:  This extension is available in versions of FHIR prior to R5. In R5, it was replaced by individual-genderIdentity, as the scope of gender identity includes non-patient persons such as practitioners.

- **individual-genderIdentity**: This extension replaced patient-genderIdentity, and is available in R5. In addition to expanding the scope to individuals other than the patient, it also added support for metadata such as a period of applicability and a comment.

- **us-core-genderIdentity**: This extension was created by US Core to meet US-specific value set requirements which were not satisfied by the R4 patient-genderIdentity extension.

For R4 implementations in the US that require conformance to US Core, our current recommendation is to use the us-core-genderIdentity extension to maintain consistency within the US implementer community. The patient-genderIdentity and individual-genderIdentity extensions may be supported simultaneously, so servers may consider supporting all three extensions and the associated value sets to ensure clients have access to their preferred extension. 

For R5 implementations, our recommendation is to use the individual-genderIdentity extension.

In the US, Sex assigned at Birth is part of the USCDIv1. There are two extensions that may be considered for communicating this concept:

- **us-core-birthsex**: This extension was created by US Core to meet US-specific requirements.

- **individual-recordedSexOrGender**: This extension was created by the Gender Harmony Project as a generic option for recording any sex or gender concept that does not have a more specific field or extension.

For R4 implementations in the US that require conformance to US Core, our recommendation is to use the us-core-birthsex extension to maintain consistency within the US implementer community for exchanging the Sex assigned at Birth concept.

For R5 implementations, our recommendation is to work with your jurisdiction-specific or use-case specific implementation guide authors to define jurisdiction or use-case specific extensions for any concept that can be categorized as a recorded sex and gender, including sex assigned at birth. We only recommend using the individual-recordedSexOrGender extension in the case where creating a use-case specific extension or property is not practical.
