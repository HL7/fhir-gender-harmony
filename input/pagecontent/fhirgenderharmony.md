<!-- Updates based on Jira tickets 
Date             Jira ticket        Updated by                   Comment
2023-06-14       OTHER-2629         Joanie Harper                Corrected typo in section 11.3 (3rd row, 2nd column) per Jira ticket https://jira.hl7.org/browse/OTHER-2629
2023-06-14       OTHER-2411         Joanie Harper                Corrected "An new" to "A new" per Jira ticket  https://jira.hl7.org/browse/OTHER-2411
2023-06-14       OTHER-2616         Joanie Harper                Updated second option to 2) per Jira ticket https://jira.hl7.org/browse/OTHER-2616
2023-06-29       OTHER-2558         Cooper Thompson              Split design background into a new document.  Updated FHIR guidance with much more detail.
-->


## Summary of FHIR artifacts
The [Patient Gender and Sex](https://hl7.org/fhir/R5/patient.html#gender) narrative provides a high-level overview of the different sex and gender concepts that may be relevant for exchange.  Additionally, the [Transgender Person Example](https://hl7.org/fhir/R5/patient-example-sex-and-gender.html) provides an example of how sex and gender concepts may be exchanged for a transgender patient.
There are [several extensions](http://hl7.org/fhir/extensions/extensions-Patient.html) that may be used to exchange the sex and gender concepts defined by the Gender Harmony implementation guide.  These are available as standard extensions in the FHIR extensions implementation guide, however, relevant guidance and recommendations on when and how to use these extensions is included in this Gender Harmony Implementation Guide.


<style>
table, th, td {
  border: 1px solid black;
}
</style>
| **Concept** | **FHIR Artifact** | **Contexts of Use** |
| -------- | -------- | -------- |
| Gender Identity     | [individual-genderIdentity](http://hl7.org/fhir/extensions/StructureDefinition-individual-genderIdentity.html)     | Patient, RelatedPerson, Person, Practitioner, and PractitionerRole     |
| Sex Parameter for Clinical Use     | [patient-sexParameterForClinicalUse](http://hl7.org/fhir/extensions/StructureDefinition-patient-sexParameterForClinicalUse.html)     | All Resource types     |
| Pronouns     | [individual-pronouns](http://hl7.org/fhir/extensions/StructureDefinition-individual-pronouns.html)     | Patient, RelatedPerson, Person, and Practitioner     |
| Gender      | [individual-recordedSexOrGender](http://hl7.org/fhir/extensions/StructureDefinition-individual-recordedSexOrGender.html)     | Patient, RelatedPerson, Person, and Practitioner     |


## General Guidance Sex and Gender
We recognize that there are many systems that rely on a single patient-level Administrative Gender (a.k.a. Administrative Sex) concept communicated in Patient.gender. Today, this semantically vague Patient.gender property is used to address a wide range of use cases, from identifying appropriate reference ranges for lab tests to performing patient matching when submitting claims to insurance companies.

Systems are encouraged to use the new standard extensions to communicate semantically precise sex and gender concepts. Patient.gender is retained for backwards compatibility.

For systems that cannot immediately transition to the new semantically precise concepts and must use Patient.gender for specific use cases like identifying reference ranges for lab tests, it is important to coordinate with your trading partners to ensure that they understand how you are using the property. This coordination prevents issues where (for example) a sender is populating Patient.gender for administrative or social purposes, but a recipient is using it for clinical purposes.

## Exchanging Gender Identity
There are several options for exchanging gender identity in FHIR. Which option is appropriate may vary by use case, jurisdiction, or other business requirements.  The two primary options are extensions or Observations.

### Using Extensions for Gender Identity
Using an extension on Patient, or the other "person" resources like Practitioner or RelatedPerson, for communicating gender identity has several considerations:

* Gender Identity is often used and managed in the same ways as other demographics such as name and address, which are communicated in the relevant resources (Patient, Practitioner, RelatedPerson).
* When using SMART App Launch, users would grant access to the Patient, Practitioner, or RelatedPerson [SMART scopes](http://hl7.org/fhir/smart-app-launch/scopes-and-launch-context.html#scopes-for-requesting-fhir-resources), enabling access to gender identity as well as other demographics.
* Systems that do not support element-level authorizations (i.e., they only support resource-level authorization) will be unable to protect gender identity or any other sensitive demographics such as preferred names, pronouns, addresses, and phone numbers.
* If the method or actor documenting the gender identity is relevant, a Provenance resource using the targetElement extension may be used to document Provenance only for the genderIdentity value.
* The standard extension supports multiple gender identities, with relevant periods to account for a patient’s gender identity changing over time.

There are several extensions that exist for gender identity:
| Extension | Comment |
| -------- | -------- |
| [patient-genderIdentity](https://www.hl7.org/fhir/R4/extension-patient-genderidentity.html) | This extension is available in versions of FHIR prior to R5. In R5, it was replaced by individual-genderIdentity to enable the exchange of gender identity for  non-patient persons such as practitioners. |
| [individual-genderIdentity](http://hl7.org/fhir/extensions/StructureDefinition-individual-genderIdentity.html)     | This extension replaced the R4 patient-genderIdentity, and is available starting in R5. In addition to expanding the scope to individuals other than the patient, it also added support for metadata such as a period of applicability and a comment.     |
| [us-core-genderIdentity](http://hl7.org/fhir/us/core/STU5.0.1/StructureDefinition-us-core-genderIdentity.html) | This extension was created by US Core to meet US-specific value set requirements which were not satisfied by the R4 patient-genderIdentity extension. |


For FHIR R4 implementations in the US that require conformance to US Core, the recommendation is to use the [us-core-genderIdentity](http://hl7.org/fhir/us/core/STU5.0.1/StructureDefinition-us-core-genderIdentity.html) extension to maintain consistency within the US implementer community. The [patient-genderIdentity](https://www.hl7.org/fhir/R4/extension-patient-genderidentity.html) and [us-core-genderIdentity](http://hl7.org/fhir/us/core/STU5.0.1/StructureDefinition-us-core-genderIdentity.html) extensions may be supported simultaneously, so servers may consider supporting all three extensions and the associated value sets to ensure clients have access to their preferred extension.

For FHIR R5 implementations, our recommendation is to use the [individual-genderIdentity](http://hl7.org/fhir/extensions/StructureDefinition-individual-genderIdentity.html) extension.


### Using Observation for Gender Identity
Using an Observation resource for communicating gender identity has several considerations:
* When using SMART App Launch, users must authorize an additional scope (e.g., user/Observation.read).
  * SMART authorization servers may need to consider supporting granular scope so that users may authorize access to Gender Identity Observation resources, but not other Observation resources such as Labs or Vitals.
  * SMART authorization servers may need to consider how authorized scopes are granted for Observations describing different individuals (e.g. Patient vs. Practitioner) in the same integration, and how the scope of those authorizations are displayed to the end user performing the authorization.  For example, is the user granting access to all Gender Identity Observations that the user has access to (including Practitioner and RelatedPerson), or only those for the Patient?
  * Systems that only support resource-level authorization can protect gender identity information when necessary.
* If the method or actor documenting the gender identity is relevant, those may be recorded directly in the Observation resource, or in a Provenance resource associated with the Observation.
* Multiple Observation resources with appropriate effective periods may be used to communicate a patient’s changing gender identity over time.
* When using Observation to record the gender identity of a PractitionerRole or RelatedPerson, Observation.focus may be used.
* When using Observation to record the gender identity of a Patient or Practitioner, either Observation.subject or Observation.focus may be used.  For systems that also have a need to communicate gender identity for PractitionerRole or RelatedPerson, Observation.focus is recommended for consistency.  Systems that only have a need to exchange gender identity for Patient or Practitioner may use either Observation.subject or Observation.focus.


The Gravity Project has created a draft SDOHCC Observation Gender Identity profile.

**Both Gender Harmony and Gravity would like to solicit feedback on the approaches of using extensions vs. Observations for exchanging gender identity.**

### Handling Gender Identity in FHIR and CDA
FHIR supports two primary options for exchanging gender identity, as discussed above:
1. Extensions on patient
2. Observations about the patient

CDA has two options for exchanging gender identity:
1. Extensions on recordTarget
2. Observation templates

CDA and FHIR are aligned with regard to the *concept* of gender identity.  However, when determining which *structure* should be used, it is up to the implementer as to which may be used.  If an exchange involves mapping between FHIR and CDA, the implementer may determine which FHIR option would map to which CDA option. 

### Handling Gender Identity in FHIR and HL7v2
## Exchanging Pronouns
The individual-pronouns extension was added in FHIR R5 to support exchanging pronouns to use for Patients, Practitioners, RelatedPersons, and Persons.  Implementers who need to exchange pronouns in prior versions of FHIR are encouraged to pre-adopt the R5 extension.

## Exchanging Name to Use
The Name to Use for a person should be exchanged using the HumanName data type in the relevant resource, with a HumanName.use = "usual".

## Exchanging Recorded Sex and Gender
When evaluating when and how to exchange sex or gender concepts, consider whether Gender Identity or Sex Parameters for Clinical Use may be better for the relevant use case.  If those concepts are not appropriate or available, then the following approach for exchanging Recorded Sex or Gender may be used:
1. Determine which sex or gender concept is relevant for the jurisdiction and use case.
2. Determine the best way to exchange this information between systems. 

See the [guidance on Recorded Sex and Gender](#guidance-on-recorded-sex-and-gender) for additional considerations.

## Exchanging Sex Assigned at Birth
*Note: In the Gender Harmony logical model, Sex Assigned at Birth is considered a type of Recorded Sex or Gender.*

In the US, Sex Assigned at Birth is part of the USCDIv1.  US Core has established the us-core-birthsex extension to meet US-specific requirements.  For R4 implementations in the US that require conformance to US Core, our recommendation is to use the us-core-birthsex extension to maintain consistency within the US implementer community for exchanging the Sex assigned at Birth concept.


Outside the US, if your jurisdiction has a "Core" implementation guide, and that guide includes an extension for Sex Assigned at Birth, our recommendation is to use that extension to align with your jurisdiction's implementer community.

Otherwise, our recommendation is to work with your jurisdiction-specific or use-case specific implementation guide authors to define jurisdiction or use-case specific methods to exchange concepts that can be categorized as a recorded sex and gender, including sex assigned at birth. Refer to the guidance on exchanging Recorded Sex and Gender for considerations.

## Exchanging Administrative Sex or Gender
*Note: In the Gender Harmony logical model, Administrative Sex and Administrative Gender are considered types of Recorded Sex or Gender.* 

Administrative Sex and Administrative Gender have sometimes been used interchangeably.  Generally, Patient.gender may be used to exchange either Administrative Sex or Administrative Gender.  However, if a system differentiates between the two, Patient.gender may be used for Administrative Gender, and an extension or Observation may be used for Administrative Sex.  See <TODO Link> for considerations on whether an extension or Observation may best meet your needs.

## Exchanging Legal Sex or Gender
*Note: In the Gender Harmony logical model, Legal Sex and Legal Gender are considered types of Recorded Sex or Gender.   *

Legal Sex and Legal Gender have sometimes been used interchangeably.  Generally, Patient.gender may be used to exchange either Legal Sex or Legal Gender.  

TODO

## Exchanging Billing Sex
*Note: In the Gender Harmony logical model, Billing Sex is considered a type of Recorded Sex or Gender.*   

In some jurisdictions, including the US, payers may have an administrative sex on file they use to identify members or subscribers for insurance plans.  This may be distinct from the "Administrative Sex" historically used in medical systems for activities such as room or bed assignment.  To differentiate the two types of administrative sex, we use the term "Billing Sex" to refer to the sex used by payers for their administrative purposes.   Medical systems may interact with this billing sex in several ways:
* When collecting the member’s insurance information during registration,
* When performing eligibility checks to verify the patient is insured.
* When submitting claims to the payer.
* When performing patient matching during the exchange of member attribution lists.
* Etc.


In the FHIR Coverage resource, both Coverage.beneficiary and Coverage.subscriber refer to the Patient resource as the container for demographics about the beneficiary and subscriber respectively.   Similarly with Claim.patient. This implies that Patient.gender is an appropriate spot to document the Billing Sex.  However, in cases where the Billing Sex is different from the Administrative Sex used by the medical system for non-billing purposes, there may need to be multiple FHIR Patient resources used to represent a single individual.  For example:
* One Patient resource would have Patient.gender representing the Administrative Sex used by the medical system for patient identity matching, room and bed assignment, etc.  This Patient would be referenced by the various clinical resources.
* Another Patient resource would exist representing the same individual, but with Patient.gender representing the billing sex that is on file for a given insurance company.  This Patient would be referenced by Coverage.beneficiary, Coverage.subscriber, and Claim.patient.  If a patient has multiple coverages, and the different payers have different billing sex value son file for the patient, there may be more than one Patient resource for billing demographics.
* These patient resources may be linked using Patient.link with a link type of ‘seealso’.


## Exchanging Sex Parameters for Clinical Use
### Patient Level Sex Parameter for Clinical Use
Sex Parameters for Clinical Use (SPCU) may be used in specific clinical contexts, for example, when placing an order or when interpreting a result.  However, there are cases where having a context-free categorization of a patient can be useful, for example, when doing outreach for cervical cancer screening to patients for which you don't have access to any specific clinical information.  Or when you don't have access to the specific clinical information **yet**.
    
      
When using SPCU at a patient level, consider if any information is available suggesting that the patient is NOT male-typical or female-typical *across all clinical contexts*, then using **specified** as the patient-level SPCU is most appropriate, as that indicates that individuals or systems providing care should either use default behavior that is safe for both male and female populations, individually review treatment options with the patient, or carefully inspect comments and relevant observations before proceeding with treatment.   Additionally, consider if there are any risks related to patient care or equitable treatment when using a patient-level SPCU.  For example, when bifurcating a cohort based on a patient-context SPCU for research, carefully consider which groups may be inappropriately categorized.

### Contextual Sex Parameter for Clinical Use
A Sex Parameter for Clinical Use (SPCU) may be used in specific clinical contexts, for example, when placing an order or when interpreting a result.  In these contexts, consider whether using a categorization such as Sex Parameter for Clinical Use is sufficient, or if using a more specific clinical observation such as an Observation about the presense or absense of an organ is most appropriate.  If a categorization is sufficient, then the [patient-sexParameterForClinicalUse](http://hl7.org/fhir/extensions/StructureDefinition-patient-sexParameterForClinicalUse.html) extension may be added to the resource that best represents the context.  For example, if the context is a referral order or lab order, then the extension could be added to the ServiceRequest.
     

### Sex Parameter for Clinical Use vs. Ask at Order Entry Questions
In some clinical scenarios, such as ordering workflows, "Ask at Order Entry" (AOE) questions are commonly used for capturing a broad range of clinical context.  Examples may be unrelated to sex or gender concepts, such as "Has the patient fasted for 24 hours?", but some may overlap or be adjacent to sex or gender concepts, such as "Is the patient pregnant?" or "Does the patient have a prostate?".  

Clinical experts should consider whether an SPCU-level categorization is sufficient for the care being provided, or asking more specific questions is more appropriate.  If an SPCU-level categorization is sufficient, then the SPCU may be treated as a specific type of AOE. Systems may also consider using a patient-level SPCU to pre-populate the answer to an AOE, allowing clinicians to change the setting where appropriate.
    
In this case, you may choose to exchange the recorded answer along with the other relevant AOEs, for example, in OBX segments in HL7v2 or Observations in FHIR.  Or you may choose to communicate the recorded answer in the dedicated SPCU structures, for example, in GSP segments in HL7v2, or in the patient-SexParameterForClinicalUse extension in FHIR. 

Using the SPCU-specific structures does let you communicate additional supporting information if that is relevant, but it also requires that receiving systems support and inspect two different structures (e.g., OBX and GSP) to gather all the relevant information AOE information.  This is a tradeoff that should be considered when authoring a use-case specific IG, or when coordinating an approach with your trading partners.  
       

## Guidance Recorded Sex and Gender
The Gender Harmony Project defines a methodology for how to send Recorded Sex or Gender information.  This methodology involves two steps:
1. Determine which sex or gender concept is relevant for the jurisdiction and use case.
2. Determine the best way to exchange this information between systems.

When applying this methodology in FHIR, there are some considerations:
1. Determine which sex or gender concept is relevant for the jurisdiction and use case.  For example, you might identify concepts such as:
   * Sex Assigned at Birth
      * For clinical purposes, consider whether Sex Parameters for Clinical Use may more accurately represent the patient’s relevant clinical status.   
      * Sex Assigned at Birth may not reflect current clinical attributes of adults.
      * Understand that the Sex Assigned at Birth value in medical systems may not be the value recorded on the birth certificate at the time of birth due to operational and training issues around its collection.
   * Administrative Sex/Gender
      * For communication with a patient, consider whether Gender Identity may be more appropriate.
   * Legal Sex/Gender
   * Billing Sex/Gender
   * Etc.
2. Determine the best way to exchange this information between systems.  This could involve:
   * Using existing fields, such as Patient.gender
   * Creating jurisdiction or use case specific structures that are directly tied to the specific concept being exchanged, such as [us-core-birthsex](http://hl7.org/fhir/us/core/StructureDefinition-us-core-birthsex.html), ukcore-birthsex, or new jurisdictional or use case specific extensions
   * Using a generic structure such as the individual-recordedSexOrGender FHIR extension if available for the context in question or a FHIR Observation resource

### US Specific Guidance
In the US, Birth Sex (a.k.a. Sex Assigned at Birth) is part of the USCDIv1. There are two extensions that may be considered for communicating this concept:
* us-core-birthsex: This extension was created by US Core to meet US-specific requirements.
* individual-recordedSexOrGender: This extension was created by the Gender Harmony Project as a generic option for recording any sex or gender concept that does not have a more specific field or extension.

For R4 implementations in the US that require conformance to US Core, our recommendation is to use the us-core-birthsex extension to maintain consistency within the US implementer community for exchanging the Sex Assigned at Birth concept.

### General Guidance

For R4 or R5 implementations, our recommendation is to work with your jurisdiction-specific or use-case specific implementation guide authors to define jurisdiction or use-case specific extensions for any concept that can be categorized as a recorded sex and gender, including sex assigned at birth. We only recommend using the individual-recordedSexOrGender extension in the case where creating a use-case specific extension or property is not practical.
 