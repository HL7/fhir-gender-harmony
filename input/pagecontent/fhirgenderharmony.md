### FHIR Gender Harmony 

FHIR Basics
For those new to FHIR, the material below describes basic FHIR principles and gives guidance for reading FHIR specifications.

[FHIR overview](http://hl7.org/fhir/R4/overview.html)
[Developer’s introduction](http://hl7.org/fhir/R4/overview-dev.html)
[FHIR data types](http://hl7.org/fhir/R4/datatypes.html)
[Using codes](http://hl7.org/fhir/R4/terminologies.html)
[References between resources](http://hl7.org/fhir/R4/references.html)
[How to read resource & profile definitions](http://hl7.org/fhir/R4/formats.html)
[Base resource](http://hl7.org/fhir/R4/resource.html)
 

## Gender Identity  
GI will be an extension on Patient, RelatedPerson, Person, and Practitioner for R5 as structured below.  Discussion on 2/7/2022.  Motion: Lorraine Constable / Rob McClure: 12-0-5
There is an existing genderIdentity extension.  This extension is conceptually aligned with the Gender Harmony model already.  However, we will make a few updates:

Update the description in that extension to match with the definition in the model. 
Make this extension available on all the various person resources.
Add a period and comment as siblings to the existing CodableConcept (making this a complex extension)
We may update the example value set, but it will remain an example binding.


> genderIdentity 0..*  (BackboneElement-ish style Extension)
> 
> genderIdentity.value 1..1 CodableConcept GenderIdentity (preferred)
> 
> genderIdentity.period  0..1 Period
> 
> genderIdentity.comment 0..1  string



There is some discussion whether we should have GI on RelatedPerson / Person / Practitioner.  Depending on how those resources are used, sometimes GI is relevant, but in some cases GI is irrelevant and RSG is the relevant property (for example the subscriber on a Coverage would need the payer's RSG.



For the  value set, use:

asked-declined from https://build.fhir.org/codesystem-data-absent-reason.html
use other from null flavor
concepts will come from whatever code system we end up creating http://hl7.org/fhir/gender-identity
Sex for Clinical Use
A new extension will be created for SFCU. 

Description:  A categorization of a patient's sex derived from observable information (e.g., organ inventory, hormone lab test, genetic testing) that can be used for clinical purposes.  This categorization may be provided as an input for planned clinical care, or may be recorded on output documentation as a record of what value was actually used when providing that care.



This extension will be allowed on all resources.  We initially considered limiting this to specific list of resources (below).  When considering inclusion for both input and output of clinical care, we ended up adding this to enough resources that we opted to just put it on all resources.

The bolded resources are those that we want to get examples into R5 with the SFCU extension.

Include for sure:

Patient (PA)
ServiceRequest (O&O)
Observation (O&O)
MedicationRequest
Procedure
NutritionOrder
DiagnosticReport
ImagingStudy
ClinicalImpression
Specimen
CarePlan
Appointment
Encounter
EpisodeOfCare
Immunization
VisionPrescription
MedicationAdministration
MedicationUsage
MedicationDispense
ResearchSubject
Consider for inclusion:

DeviceDispense
DeviceRequest
DeviceUsage
Considered but not included:

Transport


Options include: 

#### Inline extensions

> sexForClinicalUse 0..*
> 
> sexForClinicalUse.value 1..1 CodableConcept SexForClinicalUse (Required)
> 
> sexForClinicalUse.period  0..1 Period
> 
> sexForClinicalUse.comment 0..1 string (Annotation?)
> 
> sexForClinicalUse.supportingInfo  0..*  Reference(Any)



#### Reference extension

> sexForClinicalUse  0..*  CodeableReference(Observation)



These are some examples for the two options (in-line extension and reference extension).  These are "notional" and not necessarily syntatically correct.

```xml
<Patient xmlns="http://hl7.org/fhir">
  <id value="sfcu-inline-extension"/>
  <extension url="http://hl7.org/fhir/us/core/StructureDefinition/sex-for-clincal-use">
    <valueCodeableConcept>    
      <coding> 
        <system value="http://todo-valueset-url-for-sfcu"/> 
        <code value="male"/> 
        <display value="Male"/> 
      </coding> 
    </valueCodeableConcept>    
  </extension>
  <active value="true"/>
  <name>
    <family value="Example"/>
    <given value="Child"/>
  </name>
  <gender value="male"/>
  <birthDate value="2016-01-15"/>  
</Patient>



<Patient xmlns="http://hl7.org/fhir">
  <id value="sfcu-reference-extension"/>
  <extension url="http://hl7.org/fhir/us/core/StructureDefinition/sex-for-clincal-use">
    <valueReference>
        <reference value="Observation/sfcu1"/> 
        <display value="Contextual Sex for Clincial Use for Patient X"/> 
    </valueReference>    
  </extension>
  <active value="true"/>
  <name>
    <family value="Example"/>
    <given value="Child"/>
  </name>
  <gender value="male"/>
  <birthDate value="2016-01-15"/>  
</Patient>
```

Recorded Sex and Gender
The gender property for the following resources will be updated (description/comment only) to indicate that these elements represent a recorded sex and gender and are explicitly not a gender identity of SFCU.  We will include a pointer to the SFCU extension for Patient.gender.  We will include pointers to the GI extension for these resources:

Patient.gender
Practitioner.gender
RelatedPerson.gender
Person.gender
Note: PractitionerRole does not have a gender.  Practitioner gender is discovered via the reference to Practitioner.



We will also create a swiss army knife extension for recording arbitrary recorded sex and gender concepts.  This extension would got on the person-type resources.

> recordedSexOrGender.value   1..1 CodeableConcept (Example)
> 
> recordedSexOrGender.type 0..1 CodeableConcept (Example) - Indicates what the sex or gender value is representing. 
> 
> recordedSexOrGender.acquisitionDate 0..1 dateTime - The date/time when the sex or gender value was first recorded in the system.
> 
> recordedSexOrGender.effectivePeriod 0..1 Period
> 
> recordedSexOrGender.sourceDocument  0..*  CodeableReference(DocumentReference)  (example binding to document source list (based on a 
> subset of https://www.hl7.org/fhir/identifier-registry.html?)). 
>
> recordedSexOrGender.jurisdiction  0..1 CodeableConcept - 
>
> recordedSexOrGender.comment 0..1 string



We can suggest that US Core move Birth Sex into the (new) standard recorded sex and gender extension.  Or possibly add a comment to their extension indicating that recordedSexOrGender is an alternate way of representing Birth Sex.

Name to Use (No Changes)
The current HumanName data type already supports various name types including usual and official.   "Name to use" aligns with the usual name type.  It does not seem like updates are needed.

## Pronouns
A new extension will be added for pronouns on all person resources.

> pronoun 0..*
>
> pronoun.value  1..1 CodeableConcept (preferred) (ValueSet TBD)
>
> pronoun.period 0..1 Period
>
> pronoun.comment  0..1 string

#### Questions:
**Question**: Should we add GI on PractitionerRole?  Do provider want to use different GIs in different roles?

**Answer**: Currently we are not considering this, but could do so if we get input that this would be useful.



**Question**: Should we do something special for patient-context SFCU?

**Answer**: No.  We'll have a single SFCU extension that can be added on all relevant contexts, including Patient.



**Question**: Should GI be a first class property instead of an extension?

**Answer**: This would be nice, if normative rules allow it (or can be made to allow it).



**Question**: Should we deprecate Patient.gender in favor of explicit properties?

**Answer**: Very likely not in R5.  We might possibly consider deprecating it in a future R6/R7 version.  Reuben Daniels was in favor of deprecating Patient.gender due to concerns with othering.  We'll have to balance the ideal vs. practical issues.



**Question**:  Should we promote / offer a swiss army knife for recorded sex and gender?

**Answer**: We will provide one, however it may not be surprising if adoption is low, as discretely capturing this information is not common.



**Question**:  Should the properties have a recorded-on dateTime?

**Answer**: Currently leaning toward "no", since you can infer that from resource history changes if necessary.  And we are not aware of any major use cases for this.  The primary use case for this information is getting the current value.



**Question**: What binding strength should we use for the genderIdentity value set?

**Answer**: TBD - currently proposed as Example, could consider Preferred.  




 {% include markdown-link-references.md %}