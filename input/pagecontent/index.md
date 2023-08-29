<!-- Updates based on Jira tickets 
Date             Jira ticket        Updated by                   Comment
2023-06-16       OTHER-2561         Joanie Harper                Fixed three instances of guide/ per the Jira ticket https://jira.hl7.org/browse/OTHER-2561
2023-06-19       OTHER-2562         RCM                          Improved formatting of In-scope section. fixed wording on CDA section https://jira.hl7.org/browse/OTHER-2562
2023-06-20       OTHER-2562         Rob M                        Added to out of scope   https://jira.hl7.org/browse/OTHER-2528
2023-07-26		 OTHER-2570			Carol Macumber				 Standardized the use of "Gender Harmony initial informative specification"  when referring to initial specification
2023-07-31       OTHER-2594         Joanie Harper                Update the "Our Goal" section per the Jira ticket https://jira.hl7.org/browse/OTHER-2594
2023-07-31       OTHER-2564         Joanie Harper                Added links for DICOM and X12 to "Vendors" section per the Jira ticket https://jira.hl7.org/browse/OTHER-2564
2023-07-31       OTHER-2421         Joanie Harper                Update the first sentence of the "Vendors" section per the Jira ticket https://jira.hl7.org/browse/OTHER-2421
2023-07-31       OTHER-2515         Joanie Harper                Update the name of the "Vendors" section to "HIT System solution providers" per the Jira ticket https://jira.hl7.org/browse/OTHER-2515
2023-08-20       OTHER-2602         Rob McClure                  Remove Notes to balloters
2023-08-21       OTHER-2532         Joanie Harper                Added links to the model page for the items that are In Scope
2023-08-25       OTHER-2560         Sean Muir                    Improve footnote notation - used MD based footnote syntax
2023-08-29			none			Rob McClure					Clarified that this guide supersedes the original model
-->



 
<img style="vertical-align: top;" src="rainbowhands.png" width="100%" /> 

### Introduction
This universal-realm implementation guide describes the changes incorporated in HL7 product family specifications that are aligned with the [Gender Harmony initial informative specification](http://www.hl7.org/implement/standards/product_brief.cfm?product_id=564) published in 2021. Based upon ballot comments and participant feedback, this publication and the associated V2, CDA, and FHIR specifications include minor improvements when compared to the logical model described in the 2021 specification and is meant to supersede the 2021 guide. These changes are described in the [Model](model.html) section of this specification.

This implementation guide contains *Informative* content discussing the overall Gender Harmony Project (GHP) approach intended to provide definitive guidance on how to exchange clinical sex and gender affirming information using HL7 models. We also provide examples that align with that guidance. The content of this guide must be viewed as accompanying the gender harmony content within the product family-specific specifications found elsewhere. Each of these is described in more detail in other pages of this guide:
- [FHIR Core specification](fhirdesignbackground.html) - gender harmony defined extensions and value sets used by ***all*** specifications.
- [CDA](cdagenderharmony.html) - A companion pdf CDA template specification containing gender harmony-specific templates is published separately. When this guide was in ballot the CDA template pdf specification was embedded within this guide. It is now a distinct, separate specification.
- [V2](hl7V2genderharmony.html) - The V2.9.1 specification contains new segments used to convey gender harmony content. While not the preferred solution, the specification also describes how this information can be exchanged using existing V2x structures.

To accomplish our cross-paradigm goal, the guide provides:
- Introductory and background information, much drawn from previously published material.
- An overview on some of the design decisions that led to specific choices in modeling approach.
- Separate discussions for each of FHIR, V2x, and CDA product family enhancements that are intended to provide a consistent alignment with the Gender Harmony (GH)) logical model, noting that the final model used has had some minor improvements when compared to the initial 2021 model based upon our work done after the initial publication.
- The guide describes value sets and code systems needed for the GH model artifacts but does not define any of these artifacts. ALl value sets were initially specified as part of the FHIR work but all terminology artifacts are now published by HL7 at [**THO**](https://terminology.hl7.org/) (Terminology-HL7-Org).
- Examples that illustrate how to use the product family-specific enhancements in consistent ways to meet a use case.

Readers of this guide are encouraged to review the entire guide even if their particular focus is on one product family implementation. They are also encouraged to review the background material abstracted from the original Gender Harmony logical model publication provided in the [sex-gender background](background.html) section of this guide.

### Our Goal

As described in the original Gender Harmony logical model specification:

> Health care is increasingly turning to technology to help improve systems and processes to benefit patients and their health. Ongoing efforts supported by governing agencies and standards committees are responding to the demonstrated need through standards that allow for seamless integration of patient information between systems.

> It is imperative that both sex and gender vocabulary be formally integrated into clinical care because they are not interchangeable. Both influence health outcomes. Gender-marginalized individuals[^1] face significant barriers to adequate and culturally responsive healthcare, leading to numerous health disparities. By adopting structured data sets, agnostic systems will be better equipped to transmit (share) and accept data elements that will improve the accuracy of patient information. Furthermore, standardizing data enables information to be combined with other data sources used to evaluate clinical outcomes. While data collection and documentation are critical factors in clinical decision-making, these new data will also promote important dialogue between clinicians and patients. Ultimately, this will assist with improved quality of care, reduced clinician burden and less fragmentation of a person&#39;s clinical record.

Currently, it is common that a single data element is used to capture both sex and gender information, often assuming these two items are one unified idea. The goal of this specification is to firmly and irrevocably clarify that clinical sex characterization, where useful, is distinct from gender identity and when sharing of other sex or gender datums is important for interoperability, they be identified as a particular recorded sex or recorded gender. In addition, name to use and pronouns are critical information for affirming interactions. Central to the goal of this guide is to "harmonize" Hl7 standards and through that work we hope for consistency in clinical system representation of the specific data elements to be used for independent consideration of sex and gender.  The assessment of their differences promotes the health of women, men, and people of diverse gender identities of all age. Implementing these changes can improve data accuracy for sex and gender information in health care systems.

### Scope

#### In-Scope

The consultative process that has produced this HL7 guide continues the work of the initial GH project and reflects clinical end user needs on balance with contributors from 2SLGBTQIA+[^2] organizations such as Fenway Health and active participants with lived experience from the United States and Canada. Vendors were included from Japan, Germany, India, and the United States.

The in-scope core list of specific gender and sex use-data elements described by the specification, are as follows:
The in-scope core list of specific gender and sex use-data elements described by the specification, are as follows:
1. [Gender Identity (GI)](model.html#gender-identity-gi)
2. [Sex Parameter for Clinical Use (SPCU)](model.html#sex-parameter-for-clinical-use-spcu)
3. [Recorded Sex and Gender (RSG)](model.html#recorded-sex-or-gender-rsg)
4. [Pronouns](model.html#pronouns) 
5. [Name to Use](model.html#name-to-use-ntu)

This guide builds upon the [Gender Harmony initial informative specification](http://www.hl7.org/implement/standards/product_brief.cfm?product_id=564) by providing HL7 product family specific additions that define how to send the information noted above in:
##### FHIR
The FHIR core additions needed to support the GH model **are not** defined in this guide, instead they are found in FHIR R5 as extensions. See [FHIR Design Background](fhirdesignbackground.html)

This gender harmony guide contains:
1. Informative description of the FHIR additions.
2. A discussion of design decisions that led to the chosen approach.
3. A discussion of how to "pre-adopt" the R5 extensions into implementations of prior versions of FHIR.
4. Detailed FHIR examples based upon a common set of uses cases.
##### V2
The new V2 segments needed to support the GH model **are not** defined in this guide, instead they are found in the V2.9.1 specification.

This gender harmony guide contains:
1. Informative description of the V2 segment additions.
2. A discussion of design decisions that led to the chosen approach.
3. A discussion of how to "pre-adopt" the new v2.9.1 segments into implementations using prior version of V2.
4. Detailed V2 examples based upon a common set of uses cases.
##### CDA
The new CDA entry templates needed to support the GH model **are not** defined within this guide. Instead they are defined in the Describing Sex and Gender in CDA specification.

This gender harmony guide contains:
1. A general discuss of entry templates and how they may be used.
2. A discussion of design decisions that led to the chosen approach.
3. A discussion of how to include the new entry templates into current CDA-based implementations, including C-CDA.
4. Detailed CDA examples based upon a common set of uses cases.
##### Terminology artifacts
No terminology artifacts are defined in this guide. 

1. Value sets and code systems needed for these artifacts **are not** defined in this guide, they are published at [**THO**](https://terminology.hl7.org/) and are used consistently across all product families.
2. Traditionally CDA artifacts *do not include* null-flavor codes within the "clinical content" value sets. The CDA community is questioning the usefulness of separating clinical information of "unknown" or "asked but chose to not disclose" from the clinical content value sets and placing this into "null-flavor" segments. This guide has elected to follow this emerging approach and use the same value sets in the GH CDA templates as those used in the other product families. This harmonization of approach is an exciting alignment but does mean that our CDA templates contain values typically considered "null flavor" concepts.

##### Use Cases
The guide contains illustrative use cases and linked examples that exchange the same use-case patient information, but each using the proper new product-family-specific artifacts. 

#### Out-of-Scope

The Gender Harmony Project considered other data elements or attributes for the specification but has deferred those for consideration in other projects. These elements include:
1. Defining or modeling the representation of patient **sexual orientation**. Note the the V2.9.1 specification **does** include sexual orientation content. This guide considers the approach and value sets used in the V2.9.1 specification an excellent approach.
1. Titles, Honorifics and/or Salutations.
1. Representations of the provenance and qualifications needed for the collection of sex and gender identity information.
2. Privacy and Sensitivity of gender harmony related concepts. This topic is of vital importance for standards and implementations and while not addressed in this guide, we note that there is significant coverage of the negative outcomes when an individual's gender attributes are exposed (or used) incorrectly. We also note that there are sensitivity vocabulary in HL7 IGs that can be used to tag data that is "GENDER" sensitive. Additional work will be necessary to fully characterize how to best address this topic.

### Intended Audience

#### Government / Regulatory

Regulatory, legal and research organizations have a vested interest in a consistent approach to documenting sex, gender and related information not only for patient care purposes (primary/acute/tertiary care, lab/diagnostics, allied health, ADT/administration, insured/payor, etc.) but also for a wide range of research, social service integration, public health, population health, epidemiology, cancer staging and registry, and national/international medical record exchange purposes.

#### Standards Development Organizations (SDO)

Messaging and interchange standards developers and standardized terminology organizations play a role in implementing guidance around distinguishing, capturing, and sharing gender and sex information. Having all of these organizations subscribe to the guidance in this specification will assist to bridge the gap between technology and implementation requirements. 

#### HIT System solution providers

All the sex and gender information described in this document requires engaged review and implementation support from all HIT-system vendors (EHR, LIS, IS, governmental, etc.) to have a meaningful impact on patient care and clinical interactions. By including guidance for v2, FHIR, CDA, and working closely with [DICOM](https://www.dicomstandard.org/), [X12](https://x12.org/), and others, we hope to enable adoption of the Gender Harmony approach across the vendor spectrum. Vendors are encouraged to incorporate the intent of the specification into the end-user workflow.

#### Researchers

Demographic information that identifies male/men or female/women participants is a core segmentation in study design. It is clear that the historical binary approach to sex and gender data capture has affected gender and sex analysis and reporting. Some research studies refer to this cohort variable as sex, some refer to it as gender. Though the notion of sex is recognized implicitly as an important factor in clinical research, more work is needed to standardize the way sex and gender are reported and elucidate the way these characteristics function independently and together to influence health and health care. Incorporating clear distinctions between sex and gender using the approach noted in this guide will help ensure more accurate and precise data analysis.

### Current State

For an analysis of the current state of sex and gender representation we encourage the reader to review the material included in the [Gender Harmony model published in 2021](http://www.hl7.org/implement/standards/product_brief.cfm?product_id=564). 

Of particular note in HL7 models is the use of "Administrative Gender/Sex" as a core data element for sex or gender exchange. Given the lack of clarity and consistency in the use of this "administrative" element, and the lack of a well established clinical value of use for all populations, there has been inconsistency in understanding and significant concern regard proper patient care. This guide exists to improve upon that. 

### Implementation Guide Authorship

The material in this implementation guide is is crafted through the hard work and persistent determination of the [Gender Harmony project](http://hl7.me/GHP). It is a continuation of the work published in Phase 1 of this project, available [here](http://www.hl7.org/implement/standards/product_brief.cfm?product_id=564).

We are indebted to all members of the project, listed [here](https://confluence.hl7.org/display/VOC/Project+participants) who supported the creation of this implementation guide. In particular, the following organizations provided mission-critical administrative, technical and subject matter expertise for ballot resolution and publication: US Department of Veterans Affairs and Canada Health Infoway. 

#### Authors Of The Guide Content
- **Overall Authors and Editors**
    - Robert C. McClure, Carol Macumber, Robert Horn, Lorraine Constable, Clair Kronk, and Joanie Harper
- **V2 material**
    - Riki Merrick and Craig Newman
- **CDA**
    - Jay Lyle, Russel Ott, Gay Dolin, and Benjamin Flessner
- **FHIR**
    - Cooper Thompson
- **Use Cases**
    - Robert Horn, Steven Nichols, Riki Merrick, Cara Schlegel, and Joseph Bormel
- **Supporting Resources Provided by the Department of Veterans Affairs**
	- Dr. Jonathan Nebeker, National CMIO and Executive Director of Clinical Informatics and Data Management Office (CIDMO)
	- Steven Brown, MD, Director, CIDMO Knowledge-Based Systems (KBS)
	- Christopher Shawn, Director KBS Standards & Interoperability(S&I)
	- Javon Hyland, Deputy Program Manager, KBS S&I
	- Ioana Singureanu MsCS, FHL7, Technical Lead KBS S&I
	- Rhonna Clark, Associate Technical Lead KBS S&I
	- Matt Greene, Policy Lead KBS S&I
	- Mary Kay McDaniel, Project Facilitator, Cognitive Medical
	- Sean Muir, Project Facilitator, Cognitive Medical

### FootNote(s)

[^1]:A grouping term describing individuals who experience gender marginalization, meaning those individuals who belong to gender-related groups who are, or have been, systematically oppressed. Another term which is used to the same effect is people of marginalized genders.

[^2]:Typically, this initialism is taken as meaning Two-Spirit, lesbian, gay, bisexual, trans, questioning/queer, intersex, and asexual/aromantic/agender, and other umbrella sexual- and gender-marginalized groups (“+”), dependent on socio-cultural factors. This initialism (or any number of different initialisms) may be used differently by other individuals or groups at different times. Additionally, the term “queer” may be considered offensive by some individuals. The 2SLGBTQIA+ community is not a monolith.
