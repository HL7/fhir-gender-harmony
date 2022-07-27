

<span style="font-size:1.1em;">**Balloters**<br/>
This universal-realm implementation guide describes the changes incorporated in Hl7 product family specifications that can be used to align with the logical Gender Harmony model published in 2021. To accomplish that cross-paradigm goal, the guide provides:<br/>
1 Introductory and background information, much drawn from previously published material.,<br/>
2 An overview on some of the design decisions that led to specific choices in modeling approach.<br/>
3 Separate discussions for each of FHIR, V2x, and CDA product family enhancements that are intended to provide a consistent alignment with the Gender Harmony (GH) logical model, noting that the initial 2021 model has had some minor improvements based upon our work done after the initial publication.<br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A The CDA templates are balloted as Standard for Trial Use (STU) on the normative track<br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;B The remaining content of this IG is balloted Informative.<br/>
4 Specified terminology artifacts that are used in all product families.<br/>
5 Examples that illustrate how to use the product family-specific enhancements in consistent ways to meet a use case. <br/></span>
{:.stu-note}
 

<span style="font-size:1.1em;">**Conformance testable content**<br/>
Of the information provided within this initial version of guide, only the CDA templates [link] described in this guide are conformance testable and therefore the CDA template content in this guide is Standard for Trial Use (STU) to normative track. The Version 2 Gender Harmony Normative material is conformance testable, but while that specification is discussed in this guide, the conformance testable material is in the official V2.9.1 ballot found elsewhere, and the material is this guide is additional informative content. All new FHIR enhancements to support Gender Harmony modeling are changes to FHIR included in the R5 FHIR core specification described in the separate R5 FHIR ballot specification and all comments on the extensions and the related terminology must be made on the FHIR R5 ballot, not on this ballot. Each GH FHIR enhancement, except Name To Use, is an extension in the core FHIR specification. Guidance on the use of these extensions is the focus on this guide. If the community would like conformance-testable FHIR profiles that ensure use of the new extensions, ballot comments clarifying the need and requirements for those profiles should be provided on this implementation guide.<br/>
The approaches in data exchange discussed in this guide expand HL7 best practices to assist organizations that adapt and extend FHIR profiles and implementation guides in their jurisdictions (e.g., US, Canada) to meet business and regulatory requirements. We look forward to implementers embracing the approaches outlined. <br/></span>
{:.stu-note}

### Overview

<img src="rainbow-1445337690d8q.png" width="100%" />

The FHIR profiles and extensions in this implementation guide are intended to
fill gaps in current implementations of HL7 Version 2 and RESTful APIs currently
available to implementers. This implementation guide expands FHIR best practices
to assist organizations that adapt and extend FHIR profiles and implementation
guides required in their jurisdictions (e.g. US, Canada) to apply them to
locally-applicable requirements that meet their stakeholders business needs.
Currently there are several US Realm projects that need to use, manage, and collect information about gender identity and sex using information provided by patients. 
This specification also identifies code systems and terminology gaps that
require require subsequent change proposals to LOINC and SNOMED CT consistent
with the requirements summarized in the use cases.

### Background

FHIR-29673-gender-harmony-updates



Health care is increasingly turning to technology to help improve systems and processes to benefit patients and their health. Ongoing efforts supported by governing agencies and standards committees are responding to the demonstrated need through standards that allow for seamless integration of patient information between systems.

It is imperative that both sex and gender vocabulary be formally integrated into clinical care because they are not interchangeable. Both influence health outcomes. Gender-marginalized individuals1 face significant barriers to adequate and culturally responsive healthcare, leading to numerous health disparities. By adopting structured data sets, agnostic systems will be better equipped to transmit (share) and accept data elements that will improve the accuracy of patient information. Furthermore, standardizing data enables information to be combined with other data sources used to evaluate clinical outcomes. While data collection and documentation are critical factors in clinical decision-making, these new data will also promote important dialogue between clinicians and patients. Ultimately, this will assist with improved quality of care, reduced clinician burden and less fragmentation of a person’s clinical record.

Currently, it is common that a single data element is used to capture both sex and gender information, often assuming these two items are one unified idea. This specification challenges that notion and proposes that independent consideration of sex and gender, and the assessment of their differences promotes the health of women, men, and people of diverse gender identities of all ages, avoiding systematic errors that generate results with a low validity (if any) in clinical studies [78]. This model describes an approach that can improve data accuracy for sex and gender information in health care systems.

### Scope
#### In-Scope
The consultative process that has produced this HL7 informative specification reflects clinical end user needs on balance with contributors from 2SLGBTQIA+2 organizations such as Fenway Health and active participants with lived experience from the United States and Canada. Vendors were included from Japan, Germany, India, and the United States.

The proposed model essentially outlines a series of specific “context of use definitions” of sex and gender types and outlines required information for each potential use-based collection of specified sex and or gender codes. The sex and gender types we have included illustrate how sex- gender codes, when captured in a prescribed context, clarify the capture of patient clinical information. Some of the noted contexts of use may represent single or multiple information sources such as chromosomal allosomes, genotype, hormone levels, secondary sex characteristics, desired perception, surgical status or planned outcome, organ function, etc. It is clear that a single patient may have multiple different codes properly represent them when capturing multiple sex- gender types.

As a result, the in-scope core list of specific gender and sex use-contexts described by the specification, are as follows:

|1. Gender Identity (GI)|
|2. Sex for Clinical Use (SFCU)|
|3. Recorded Sex and Gender|
|4. Name to Use|
|5. Pronouns|

#### Out-of-Scope
The Gender Harmony Project considered other data elements or attributes for the specification but has deferred those for future consideration because these categories did not meet the rigor necessary for Balloting at the present time.
Work reserved for future consideration include:
● Titles, Honorifics and/or Salutations: in accordance with an accepted practice or style (see Public Works and Government Services Canada, Translation Services Style Guide). Examples include Mr., Mrs., Ms., Mx, Doctor, Engineer, Captain, etc.
● Defining or modeling the representation of patient sexual orientation, a future or future iteration of this group may convene separately to discuss such modeling.
● Specific changes in standards to directly align with the proposed abstract model noted in this specification. In particular for HL7, enhancements to FHIR resources should be undertaken after consideration of this proposal. Some suggestions are provided in the Implementation Guidance section.
● Representations of the provenance and qualifications needed for the collection of sex and gender identity information.

### Intended Audience
#### Government / Regulatory
Regulatory, legal and research organizations have a vested interest in a consistent approach to documenting sex, gender and related information not only for patient care purposes (primary/acute/tertiary care, lab/diagnostics, allied health, ADT/administration, insured/payor, etc.) but also for a wide range of research, social service integration, public health, population health, epidemiology, cancer staging and registry, and national/international medical record exchange purposes. “Sex And Gender Equity in Research (SAGER)” (77) discusses a wide range of such uses. Many of the other reports and articles in the Bibliography include reference to related regulatory purpose and use.

For example, the government of Australia has issued Guidelines on the Recognition of Sex and Gender (83) that will affect regulations and procedures accordingly once adopted. In the US, various federal and state agencies have projects proposed or started to update regulations and have provided guidance within the United States Core Data for Interoperability (USCDI) and the Interoperability Standards Advisory (ISA), whereas Canada, Germany and others have similar state, provincial, and national regulatory efforts underway.

Likewise, this HL7 informational model will be used by regulators to inform future development of communications and data modeling in other jurisdictions.

#### Standards Development Organizations (SDO)
Messaging and interchange standards developers (e.g., Integrating the Healthcare Enterprise (IHE), HL7 International) and standardized terminology organizations play a role in implementing guidance around distinguishing, capturing, and sharing gender and sex information. HL7 standards such as Fast Healthcare Interoperability Resources (FHIR®) define how information can be shared in a consistent manner. Standard clinical terminologies such as Systematized Nomenclature of Medicine (SNOMED) and Logical Observation Identifiers Names and Codes (LOINC) are often used to encode data via coded concepts.

Having all of these organizations subscribe to the guidance in this specification will assist to bridge the gap between technology and implementation requirements. As noted in the Out-of-Scope section, other HL7 International Work Groups are encouraged to review this guide to determine the impact of the recommendations on existing and proposed standards for consistency and to plan to integrate the new terminology, if/as necessary.

### Vendors
All the sex and gender information described in this document requires engaged review and implementation support from all EHR system vendors to have a meaningful impact on patient care and clinical interactions. We encourage adoption of the guidance into standard specifications such as HL7 v2, FHIR, C-CDA, DICOM, and NCPDP. Vendors are encouraged to incorporate the intent of the specification into the end-user workflow.

### Researchers
Demographic information that identifies male/men or female/women participants is a core segmentation in study design. It is clear that the historical binary approach to sex and gender data capture has affected gender and sex analysis and reporting (106). Some research studies refer to this cohort variable as sex, some refer to it as gender.
Though the notion of sex is recognized implicitly as an important factor in clinical research, more work is needed to standardize the way sex and gender are reported and elucidate the way these characteristics function independently and together to influence health and health care (77). The vocabulary in this guideline, once implemented, will go a long way towards facilitating this need and ensuring more accurate and precise data in the future.

### Current State
#### Developments in the Understanding of Sex and Gender
This document recognizes that numerous factors have changed understanding of sex- and gender- related concepts over the past century. There have been numerous paradigm shifts in the fields of science, medicine, and technology during the same period.

Medical practice today handles higher patient volumes than ever before. Developments in care for patients with variations in gender and sex characteristics require better record keeping and more intricate models regarding those characteristics. Cultural competence and awareness has become a crucial element in providing care services. These additions to this standard are necessary to communicate salient medical information.

#### United States Core Data for Interoperability (USCDI) and Interoperability Standards Advisory (ISA)
The United States Core Data for Interoperability (USCDI) is a standardized set of health data classes and constituent data elements for nationwide, interoperable health information exchange. Organized into Data Classes by common themes or use cases, Data Elements represent the most granular level at which a piece of data is exchanged.


● Within the Patient Demographics class, there is a single element entitled Birth Sex that must be coded in accordance with the HL7 Version 3 (V3) Standard, Value Sets for AdministrativeGender and NullFlavor—
F Female Female
Page 9 HL7 Informative Document: Gender Harmony - Modeling Sex and Gender Representation, R1 © 2021 Health Level Seven International. All rights reserved. August 2021
   
Coding Standard | USCDI | HL7 Version 3 (V3) Standard - Birth Sex
Concept Code | Head Code Defined Value Set
Print Name
Definition, Properties, Relationships
   
   M Male Male UNK Unknown nullFlavor
● Gender Identity, not included in USCDI V1, has been proposed for inclusion in the USCDI Patient Demographic class and is currently listed as USCDI Level 2. For additional information, please see the information posted on HealthIT.gov/Patient Demographics/Gender Identity.
The Interoperability Standards Advisory (ISA) “represents the model by which the Office of the National Coordinator for Health Information Technology (ONC) will coordinate the identification, assessment, and determination of "recognized" interoperability standards and implementation specifications for industry use to fulfill specific clinical health IT interoperability needs.”
● The ISA includes the “Sex at Birth, Sexual Orientation and Gender Identity” section with specific sub-sections on:
○ Representing Patient Gender Identity ○ Representing Patient Sex (At Birth)



{% include markdown-link-references.md %}