
 
<img style="vertical-align: top;" src="rainbowhands.png" width="100%" /> 

# Introduction and balloter notes
This universal-realm implementation guide describes the changes incorporated in Hl7 product family specifications that can be used to align with the logical Gender Harmony model [published in 2021](http://www.hl7.org/implement/standards/product_brief.cfm?product_id=564). Through the content of this guide, and the other ballots referenced in this guide that provide key normative track content (the V2 specification and the FHIR R5 core content), this guide provides definative guidance on how to exchange cliinical sex and gender afirming information using Hl7 models. We also provide examples that align with that guidance.

To accomplish that cross-paradigm goal, the guide provides:
- Introductory and background information, much drawn from previously published material.
- An overview on some of the design decisions that led to specific choices in modeling approach.
- Separate discussions for each of FHIR, V2x, and CDA product family enhancements that are intended to provide a consistent alignment with the Gender Harmony (GH) logical model, noting that the initial 2021 model has had some minor improvements based upon our work done after the initial publication.
  - The CDA templates are balloted as **Standard for Trial Use (STU) on the normative track**
  - The remaining content of this IG is balloted **Informative**.
- Value sets and code systems needed for the GH model artifacts.
  - Specified Note that the same terminology artifacts that are used in all product families. The value sets and code systems used are defined in the FHIR core R5 specification, bound to the GH extensions. The terminology is **not** defined in this guide. Please review the terminology and comment on the content in the FHIR R5 ballot.
- Examples that illustrate how to use the product family-specific enhancements in consistent ways to meet a use case.

## Conformance testable content

Of the information provided within this initial version of guide, only the CDA templates described in this guide are conformance testable and therefore the CDA template content in this guide is **Standard for Trial Use (STU)** to normative track. The Version 2 Gender Harmony **Normative** material **is conformance testable**, but while that specification is discussed in this guide, the conformance testable material is in the official V2.9.1 ballot found elsewhere, and the material is this guide is additional informative content. All new FHIR enhancements to support Gender Harmony modeling are changes to FHIR included in the R5 FHIR core specification described in the separate R5 FHIR ballot specification and all comments on the extensions and the related terminology **must be made on the FHIR R5 ballot**, not on this ballot. Each GH FHIR enhancement, except Name To Use, is an extension in the core FHIR specification. Guidance on the use of these extensions is the focus on this guide. If the community would like conformance-testable FHIR profiles that ensure use of the new extensions, ballot comments clarifying the need and requirements for those profiles should be provided on this implementation guide.

The approaches in data exchange discussed in this guide expand HL7 best practices to assist organizations that adapt and extend FHIR profiles and implementation guides in their jurisdictions (e.g., US, Canada) to meet business and regulatory requirements. We look forward to implementers embracing the approaches outlined.

## Background

As described in the original Gender Harmony logical model specification:

> Health care is increasingly turning to technology to help improve systems and processes to benefit patients and their health. Ongoing efforts supported by governing agencies and standards committees are responding to the demonstrated need through standards that allow for seamless integration of patient information between systems.

> It is imperative that both sex and gender vocabulary be formally integrated into clinical care because they are not interchangeable. Both influence health outcomes. Gender-marginalized individuals [(fn1)](#fn1)  face significant barriers to adequate and culturally responsive healthcare, leading to numerous health disparities. By adopting structured data sets, agnostic systems will be better equipped to transmit (share) and accept data elements that will improve the accuracy of patient information. Furthermore, standardizing data enables information to be combined with other data sources used to evaluate clinical outcomes. While data collection and documentation are critical factors in clinical decision-making, these new data will also promote important dialogue between clinicians and patients. Ultimately, this will assist with improved quality of care, reduced clinician burden and less fragmentation of a person&#39;s clinical record.

Currently, it is common that a single data element is used to capture both sex and gender information, often assuming these two items are one unified idea. This specification describes the specific data elements to be used for independent consideration of sex and gender, and the assessment of their differences promotes the health of women, men, and people of diverse gender identities of all age. Implementing these changes can improve data accuracy for sex and gender information in health care systems.

## Scope

### In-Scope

The consultative process that has produced this HL7 guide continues the work of the initial GH project and reflects clinical end user needs on balance with contributors from 2SLGBTQIA+ [(fn2)](#fn2) organizations such as Fenway Health and active participants with lived experience from the United States and Canada. Vendors were included from Japan, Germany, India, and the United States.

The in-scope core list of specific gender and sex use-data elements described by the specification, are as follows:
1. Gender Identity (GI)
1. Sex for Clinical Use (SFCU)
1. Recorded Sex and Gender (RSG)
1. Pronouns 
1. Name to Use

This guide builds upon the prior GH logical model by providing HL7 product family specific additions that define how to send the information noted above in:
1. FHIR
    1. The FHIR core additions needed to support the GH model *are not defined in this guide/*, instead they are found in the R5 FHIR Core ballot.
    1. This guide contains:
        1. Informative description of the FHIR additions
        1. A discussion of design decisions that led to the chosen approach
        1. A discussion of how to "pre-adopt" the R5 extensions into implementations prior versions of FHIR
        1. Detailed FHIR examples based upin a common set of uses cases
1. V2
    1. The new V2 segments needed to support the GH model *are not defined in this guide/*, instead they are found in the V2.9.1 ballot.
    1. This guide contains:
        1. Informative description of the V2 segment additions
        1. A discussion of design decisions that led to the chosen approach
        1. A discussion of how to "pre-adopt" the new v2.9.1 segments into implementations using prior version of V2
        1. Detailed V2 examples based upin a common set of uses cases
1. CDA
    1. The new CDA entry templates needed to support the GH model *are defined within this guide/*.
    1. This guide contains:
        1. The STU definition of entry templates to be used for the in-scope items noted above.
        1. A discussion of design decisions that led to the chosen approach
        1. A discussion of how to include the new entry templates into current CDA-based implementations, including C-CDA
        1. Detailed CDA examples based upin a common set of uses cases
1. Terminology artifacts
    1. Value sets and code systems needed for these artifacts are defined in the FHIR R5 ballot and are used consistantly across all product families.
    1. Given the constraint in CDA to *not include* null-flavor codes within the "clinical content" value sets, the CDA entry templates bind to value sets that do not contain null-value concepts. Those "core" value sets are then used to create the complete value set used elswhere. 

The guide contains illustrative use cases and linked examples that exchange the same use-case patient information, but each using the proper new product-family-specfic artifacts. 
### Out-of-Scope

The Gender Harmony Project considered other data elements or attributes for the specification but has deferred those for future consideration because these categories did not meet the rigor necessary for Balloting at the present time. Work reserved for future consideration include:
1. Defining or modeling the representation of patient sexual orientation. 
1. Titles, Honorifics and/or Salutations.
1. Representations of the provenance and qualifications needed for the collection of sex and gender identity information.

## Intended Audience

### Government / Regulatory

Regulatory, legal and research organizations have a vested interest in a consistent approach to documenting sex, gender and related information not only for patient care purposes (primary/acute/tertiary care, lab/diagnostics, allied health, ADT/administration, insured/payor, etc.) but also for a wide range of research, social service integration, public health, population health, epidemiology, cancer staging and registry, and national/international medical record exchange purposes.

### Standards Development Organizations (SDO)

Messaging and interchange standards developers and standardized terminology organizations play a role in implementing guidance around distinguishing, capturing, and sharing gender and sex information. Having all of these organizations subscribe to the guidance in this specification will assist to bridge the gap between technology and implementation requirements. 

### Vendors

All the sex and gender information described in this document requires engaged review and implementation support from all EHR system vendors to have a meaningful impact on patient care and clinical interactions. By including guidance for v2, FHIR, CDA, and working closely with DICOM, X12, and others, we hope to enable adoption of the Gender Harmony approach across the vendor spectrum. Vendors are encouraged to incorporate the intent of the specification into the end-user workflow.

### Researchers

Demographic information that identifies male/men or female/women participants is a core segmentation in study design. It is clear that the historical binary approach to sex and gender data capture has affected gender and sex analysis and reporting. Some research studies refer to this cohort variable as sex, some refer to it as gender. Though the notion of sex is recognized implicitly as an important factor in clinical research, more work is needed to standardize the way sex and gender are reported and elucidate the way these characteristics function independently and together to influence health and health care. Incorporating clear distinctions between sex and gender using the approach noted in this guide will help ensure more accurate and precise data analysis.

## Current State

For an analysis of the current state of sex and gender representation we encourge the reader to review the material included in the [Gender Harmony model published in 2021](http://www.hl7.org/implement/standards/product_brief.cfm?product_id=564). 

Of particular note in HL7 models is the use of "Administrative Gender/Sex" as a core data element for sex or gender exchange. Given the lack of clarity and consistency in the use of this "administrative" element, and the lack of a well established clinical value of use for all populations, there has been inconsistency in understanding and significant cooncern regard proper patient care. This guide exists to improve upon that. 

<!-- ### In V2 
PID-8 is "Sex" and is defined as

```
This field contains the patient's sex. Refer to User-defined Table 0001 - Administrative Sex for suggested values.
```
This is often descrbed as a value used to determine what bed to assign the patient. Given that this element is the only sex or gender element and has been in use from the initial V2 standard, it has carried any information used for clinical sex, gender, or any other sex/gender related information. It therefore has not had a stable or consistent meaning.

### In FHIR
The patient.gender element in the Patient resource is defined as
```
Administrative Gender - the gender that the patient is considered to have for administration and record keeping purposes.
```
FHIR kept the single element approach used by V2 and therefore also forced implementers to use this one field to represent clinical sex, gendder, or any other sex-related information needed. 

### In CDA
TBD -->

#### FootNote(s)
##### fn1
<sup>A grouping term describing individuals who experience gender marginalization, meaning those individuals who belong to gender-related groups who are, or have been, systematically oppressed. Another term which is used to the same effect is people of marginalized genders.</sup>

##### fn2
<sup>Typically, this initialism is taken as meaning Two-Spirit, lesbian, gay, bisexual, trans, questioning/queer, intersex, and asexual/aromantic/agender, and other umbrella sexual- and gender-marginalized groups (“+”), dependent on socio-cultural factors. This initialism (or any number of different initialisms) may be used differently by other individuals or groups at different times. Additionally, the term “queer” may be considered offensive by some individuals. The 2SLGBTQIA+ community is not a monolith.</sup>