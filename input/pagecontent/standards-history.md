<!-- Updates based on Jira tickets 
Date             Jira ticket        Updated by                   Comment
-->


## History of Sex and Gender in HL7 Standards
### HL7v2 History

1. In HL7v2 2.3.1:
   * The PID-8 field was labeled as “Sex” 
   * The field definition was “This field contains the patient’s sex”.
   * Table 0001 was introduced with values for F, M, O, and U.  This table did not have a formal Value Set definition, or include definitions for the codes.
2. In HL7 v2.4:
   * The name of the PID-8 field was updated to be “Administrative Sex”.  
   * The field definition remained “This field contains the patient’s sex”.
   * Table 0001 was updated to include A-Ambiguous and N-Not applicable, but the table still had no formal Value Set definition.
3. In HL7 v2.7:
   * Chapter 2C was introduced for Code Tables, but no substantive changes were made to the sex codes or their definitions.
4. In HL7 v2.9:
   * The 0001 table was updated to identify a Concept Domain, Code System, and Value Set.
   * The Value Set was given a definition of “Concepts specifying a patient's sex for administrative purposes.”
   * A new code was added for X-Non-Binary.  This code included a usage note indicating that it was for jurisdictional use, and was driven by reporting requirements of some states in the US.  This was intentionally a stop-gap measure.  The HL7 meeting which added X-Non-Binary to table 0001 was the same meeting that initiated the Gender Harmony Project!

### HL7v3 History
1. HL7v3 adopted Administrative Gender as a concept.

### FHIR History
1. In FHIR DSTU1
   * A [Patient.gender property](https://hl7.org/fhir/DSTU1/patient-definitions.html#Patient.gender) was included with a definition, requirements, and comments.
   * Patient.gender was mapped to PID-8 in the [Mappings for HL7v2](https://hl7.org/fhir/DSTU1/patient-mappings.html#http://hl7.org/v2).
2. In FHIR DSTU2:
   * Addtional [Patient.gender comments](http://hl7.org/fhir/DSTU2/patient-definitions.html#Patient.gender) were added suggesting the use of Observations (when available) rather than Patient.gender for clinical decision support.
3. In FHIR STU3:
   * The [Patient Gender section](http://hl7.org/fhir/STU3/patient.html#gender) was added with some guidance on representing patient gender.
4. In FHIR R4:
   * The [Patient Gender section](https://hl7.org/fhir/R4/patient.html#gender) was updated and renamed to include more guidance based on an increased volume of feedback from the community.
   * The [patient-genderIdentity](https://hl7.org/fhir/R4/extension-patient-genderidentity.html) extension was added to the core FHIR spec.
5. In FHIR R5:
   * The [Patient Sex and Gender section](https://hl7.org/fhir/patient.html#gender) was updated to align with the Gender Harmony project. 
   * The patient-genderIdentity extension was retired in favor of the [individual-genderIdentity](http://hl7.org/fhir/extensions/StructureDefinition-individual-genderIdentity.html) extension to account for Practitioner and other individuals.
   * The [patient-sexParameterForClinicalUse](http://hl7.org/fhir/extensions/StructureDefinition-patient-sexParameterForClinicalUse.html) extension was added.
   * The [individual-pronouns](http://hl7.org/fhir/extensions/StructureDefinition-individual-pronouns.html) extension was added.
   * The [individual-recordedSexOrGender](http://hl7.org/fhir/extensions/StructureDefinition-individual-recordedSexOrGender.html) extension was added.
