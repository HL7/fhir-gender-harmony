## FHIR Design

Options:
- Extensions in the relevant resources
- Base property in the relevant resources
- Profile on Observation
- Have two options (both extensions and Observations?)


### Explicit Decisions:
#### Gender Identity: extension
GI will be an extension on Patient, RelatedPerson, Person, and Practitioner for R5 as structured below.  Discussion on 2/7/2022.  Motion: Lorraine Constable / Rob McClure: 12-0-5
Sex for Clinical Use: in-line extension with solicitation of feedback
In-line extension on all the context resources
Extension on context resource referencing Observation 
Extension on Observation referencing context resource (not a good option - since you'd potentially get a lot of references from the SFCU observation)
Motion: Model SFCU as inline extension (on contextual resources) in R5 ballot and solicit feedback from the community on alternatives (specifically, profiles on Observation):  Lorraine Constable / Cooper Thompson: 14-0-4
Recorded Sex and Gender: 
Swiss-army knife extension on person resources
Observation profile
Motion: Model RSG as an in-line extension on the relevant resources.  Cooper Thompson / Marykay McDaniel: 15-0-1
Pronouns: in-line extension
Extension on person resources
Observation profile with reference to person resources (either focus or subject)
Motion: Pronouns will be modeled as a in-line standard extension on the relevant person resources.  Cooper Thompson / MaryKay McDaniel: 17-0-1
Sexual Orientation:  not being addressed 


### Pro/Con Analysis
Option 1: Extensions in the relevant resources

#### Pros:

Easy maintenance and consistency (same extension is used for all relevant resources).
Copying similar structures onto a resource is fine to start, but they can drift over time.
Backport to previous versions is identical to current version
More explicit control over the modeling
Easily accessible for operational systems (no reference resolution or searching required)
Avoid considerations due to Patient being normative
If we put it in a base property in R5, we make future changes in R6 difficult.
If we let it bake as an extension in R5, and consider a base property in R6, we can have higher confidence that we won't have to do crazy thing to avoid breaking changes
More easy to evolve these properties into base-property resources.
#### Cons:

Not as visible as base property for developers browsing the specification.


Other considerations

Some systems attempt to have resource-level access control granularity (discussion on sexual orientation).  This is already a broken security model, so I don't consider it a "con".


### Profile on Observation

#### Pros:

?? Observation = property allows property-level metadata (e.g. Provenance).  
I'm not sure we need property level metadata
If we do, then we probably need it for other demographics, in which case we need a more general way to attribute metadata to resource properties.
For sexual orientation, it aligns with where sexual history is captured (in Observations).  Similarly, social history is represented using Observation.
#### Cons:

Contextual SFCU would require extensions on some contextual resources to point to the relevant resources anyway.  Or context needs to be baked in to the Observation.
Making everything an Observation key/value pair waters down the data model.
Apps needing demographic-level info have to request Observation scopes (if using SMART).
Find-grained scopes would then be essential, so this would basically required SMARTv2 scopes?  It wouldn't work with SMART v1 unless the server had an alternate scope registration control.
This is mitigated by systems that have imposed non-standard resource scoping
Systems only providing administrative / demographic content need to implement Observation in addition to administrative resources.


https://chat.fhir.org/#narrow/stream/179166-implementers/topic/Patient.20--.20sexual.20orientation



Other considerations:

Some systems like Observation as it lets them apply access controls at the resource-level.  Doing resource-level access control seems like a major security and privacy issue, so I don't consider this a pro or a con.


### Base property in the relevant resources

#### Pros:

Easily discoverable for developers browsing the specification
Easily accessible for operational systems (no reference resolution or searching required)


#### Con:

Structures may diverge over time across resoruces
We'll need to work through normative issues with Patient


### Have two options (both extensions and Observations?)

####  Pros:

Ultimately flexibility - anyone  can choose whichever option they like
####  Cons:

Reduces interoperability: increases chance two systems aren't expecting the data in the same spot.
Proposed updates
For the purpose of this section, the term "person resources" refers to:  Patient, RelatedPerson, Person, and Practitioner.  PractitionerRole is intentionally excluded, as gender is not on that resource, and is instead discovered by following the reference to Practitioner.

## Gender Identity (Decision: extension)
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
