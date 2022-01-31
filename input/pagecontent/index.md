
<style>
    table, th, td {
        border: 1px solid black;
        padding: 5px;
    }
</style>
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

#### FHIR
Section 8.1.7 of the HL7 FHIR Specification v.4.0.1 (R4 – Mixed Normative and STU) addresses representing Patient Gender and Sex in FHIR resources, and recognizes that many systems and organizations only provide for a single attribute to represent all aspects of a patient’s gender and sex. Documentation and interoperability considerations covered in the FHIR specification include various social and biological aspects, including Administrative Gender. As input to patient matching algorithms, Administrative Gender is often used to interoperate between systems that use a single generic property (patient.gender). Within FHIR, users should note that gender might not match the biological sex as determined by genetics or the individual's preferred identification. As there are other legitimate possibilities than male and female, systems providing decision support or enforcing business rules should ideally do this on the basis of Observations dealing with the specific sex or gender aspect of interest (anatomical, chromosomal, social, etc.) This stance is in-line with the recommendations made in this specification.

Context for use of additional elements, such as Clinical Sex, Clinical Gender, Gender Identity (GI), Sex Assigned at Birth (SAAB) and Legal Sex are also described to encapsulate a broader range of social and biological patient attributes across the health care spectrum. For further information, visit the HL7 FHIR Release 4/8.1 Resource Patient - Content web page.

#### DICOM
The existing DICOM model dates back to 1985 and earlier work. It was frozen and has remained unchanged since 1995. Imaging medical records from 1995 onward all use this model.
The DICOM model was originally specified to include a single mandatory field to capture Patient Sex with allowed values of Male, Female, Other and Unknown. The usage was not explicitly specified, but the implicit usage was Sex for Clinical Use. It is used in various places within DICOM, and by DICOM compliant equipment, to specify values for sex-linked characteristics. For example, it is used as input for Standard Update Value (SUV) computations in nuclear medicine and used as a parameter into patient dose sensitivity models for radiation dose reporting. These computations and models are based on statistical analysis of many patients and reflect the sex-linked characteristics of the studied populations.

Operationally, this field is initially populated either by hand or based on an order. The order is frequently conveyed by HL7 message. The inconsistency and confusion caused by having one field for multiple concepts (administrative sex, gender identity and sex for clinical use) leads to occasional inconsistency in the image results and reports created by DICOM equipment. It also leads to operators occasionally making changes to reflect the patient’s sex for clinical use that then cause downstream inconsistencies with HL7 systems that were using administrative sex or gender identity.

#### SNOMED International
SNOMED International created, then disbanded, a Sex and Gender Clinical Project Group. The project group gathered SMEs to provide advice on the current clinical and administrative needs for sex and gender terminology standards. The group was disbanded in May 2021 pending completion of the ISO analysis and this Gender Harmony project.

#### HL7 v2
HL7 v2 initially had a single field PID-8 Sex with user-defined values. In V2.4 (2000) this field was renamed to Administrative Sex in recognition that it was insufficient or inappropriate for conveying sex for clinical use. There are now several segments in HL7 v2 that support communicating administrative sex values for various actors. HL7 v2 defines PID-8 Administrative Sex for a patient, IN1-43 for the Insured’s Administrative Sex, GT1-9 for the Guarantor’s Administrative Sex, NK1-15 for the Next of Kin / Associated Party’s Administrative Sex, etc. It is widely recognized that the concept of Administrative Sex is not clearly defined and is very widely overloaded with other concepts in real-world implementations.

#### C-CDA / HL7 v3
HL7 took the v2 Administrative Sex attribute and renamed it Administrative Gender in v3, defining it as “the behavioral, cultural, or psychological traits typically associated with one sex”. It contained an explicit caveat that it was not for clinical use and was “a high-level classification [...] for the appropriate allocation of inpatient bed assignment.”

In actual implementation, primarily in CDA, this attribute was typically just transcribed from the v2 messaging PID-8 Administrative Sex field, with all its inherent ambiguities.

#### NCPDP
The National Council for Prescription Drug Programs (NCPDP) is an ANSI accredited SDO representing the pharmacy services industry. The NCPDP SCRIPT ERx standard is used in EHR systems. The current values under the standard, labeled Gender, are F (Female), M (Male), U (Unknown), and N (Non-binary).

owever, NCPDP is moving to include both Administrative Gender and Sex at Birth elements in its future state. NCPDP has identified a business need to identify when someone’s gender is different then their Sex Assigned at Birth (SAAB) to obtain medication without delay, in situations where gender mismatch edits may occur.

Currently, NCPDP has approved the field Sex Assigned at Birth (F32-W8) that will be used as an optional field in the event the Sex Assigned at Birth (if present) differs from the Patient Gender Code (305-C5), Gender Code (721-MD) or the current XML element Gender. For example, the Sex Assigned at Birth could be “Male” with the Gender/Patient Gender Code/Gender Code field “Female”.

Note: The NCPDP Gender Transition Task Group determined the Conditional Gender Code (C08- 4T), and Purchaser Gender Code (595-YY) were not applicable to patient matching. There was also an added element of “Reproductive Potential”.

#### X12
X12 is an ANSI accredited SDO that develops and maintains transactions based in electronic data interchange (EDI). Currently, all X12 transactions use the following values to classify the element Gender Code: F (Female), M (Male) and U (Unknown). The definition for this element is “Code indicating the sex of the individual,” X12 does not have separate fields for gender identity and has attempted to clarify reasoning behind the use of Unknown to represent nonbinary gender on claims as follows:
    “...the value of “U” is the appropriate option when the sender cannot explicitly select either “M” or “F”. While the description of value “U” is Unknown, in this case, Unknown only means that neither “M” nor “F” can be sent. The reason that neither “M” nor “F” can be sent is what is unknown. “U” does not necessarily mean that the gender is unknown to the sender.”
In a future state, X12 is considering expanding to the following available elements: F (Female), M (Male), I (Non-binary), T (Self-reported as transgender), A (Not provided), U (Unknown) and include the code notes:
    Code value A = when gender cannot be sent due to reporting restrictions
    Code value U = use when gender is unknown.
X12 is currently deliberating on this and will hold future votes in 2021 to address the need for additional code values for the DMG03 in future versions.

### Impact of Sex and Gender on Clinical Care
In 2016, The Report of the 2015 U.S. Transgender Survey which asked 27,715 self-identified transgender persons about their experiences in health care, noted that 33% had at least one negative experience with a health care provider related to being transgender, that 23% did not seek the health care they needed due to fear of mistreatment, and 33% did not go to a health care provider when they really needed to because they could not afford it (26,75).

As National LGBTQ Task Force Director Rea Carey noted:
    It is outrageous that basic health care is being denied to transgender and gender non-conforming people and that so much additional trauma is being caused by doctors instead of being resolved by doctors. The medical profession must take these data seriously and ensure that everyone in the medical care system knows how to provide transgender- sensitive medical care.

This pattern is not exclusive to the United States. Medical mistreatment and/or malpractice, as well as violence against transgender and gender-diverse persons is well documented in many countries including Argentina (72), Armenia (71), Bangladesh (27,30,70), Bosnia and Herzegovina (71), Brazil (71,72), Canada (32,33,34,72), Colombia (71), Dominican Republic (72), Egypt (71), France (70), Honduras (71), Hungary (70), India (28,29,31,71), Indonesia (71), Iran (71), Italy (70), Japan (70,71), Kazakhstan (71), Latvia (71), Malaysia (71), Mexico (72), Nepal (36), the Netherlands (71), Nigeria (71), Pakistan (31,71), Paraguay (72), Peru (72), Poland (70), Russia (71), Saudi Arabia (71), Serbia (70), Ukraine (35), and the United States (70,72), among others. Oftentimes, such mistreatment compounds with other kinds of mistreatment due to race, caste, socioeconomic status (SES), and disability among other things (26). Between 1 and 2 million U.S. Americans identify as transgender, nonbinary and/or gender-nonconforming (45), with at least 25 million persons identifying as such worldwide (44).

The situation for intersex individuals is not much better. Despite worldwide condemnation of intersex genital mutilation, the practice is still widespread and even hurts non-intersex (dyadic) persons, such as in the case of David Reimer. Reimer, known in medical circles as the patient involved in the “John/Joan” case, committed suicide in 2004 following years of abuse at the hands of medical professionals. Clinicians routinely lie to patients about their status as intersex, obfuscate clinical records, and promote practices which have been shown to have negative effects on patient mental health (46,47,50). As Australian intersex politician Tony Briffa noted in a 2013 inquiry: “If we are talking about coercion, doctors coerce families, parents, into believing by saying: ‘We need to remove these testes [or other sex organs] because it will make your child normal’”. Routine forced sterilization of transgender, gender-diverse, and intersex persons is still common in many countries (51,52,53,54).

Despite the “depathologization3” of homosexuality in the Diagnostic and Statistical Manual of Mental Disorders (DSM) in 1973, the movement to depathologize transgender persons has been slow, and receives pushback even today. Medical providers continue to add being transgender to problem lists and as diagnoses in multiple jurisdictions, under labels such as “gender identity disorder” (GID). GID was removed from the World Health Organization’s ICD listing in 2019. The LGBT rights director at Human Rights Watch, Graeme Reid noted that, “[t]he WHO’s removal of ‘gender identity disorder’ from its diagnostic manual will have a liberating effect on transgender people worldwide... Governments should swiftly reform national medical systems and laws that require that now officially outdated diagnosis.”

However, despite these calls to action, in the last ten years, transgender and intersex persons continue to report harassment and mistreatment in all areas of medical care: oncology, cardiology, geriatrics, pediatrics, psychiatry, primary care, emergency care, radiology, internal medicine,neurology, obstetrics, gynecology, pathology, surgery, and urology, to name a few (72,74). Transness still appears in problem lists, coded using antiquated terminology from ICD-9 and ICD-10 (and sometimes terminology which is even more antiquated). In some cases, this is performed because providers feel that there is nowhere else in the health record to codify that a patient is transgender, but other cases persevere even when patients specifically ask for it to be removed. This can seriously affect a transgender person’s life, as many jobs require that health records be released to employers or even publicly available for anyone to access. Many of these issues have led to significant morbidity and even patient death.

In 2016, the United Nations Programme on HIV/AIDS, alongside the World Health Organization (WHO) Global Health Workforce Alliance, launched the Agenda for Zero Discrimination in Health Care, highlighting the importance of respectful care which takes into account the values and concerns of marginalized groups, including those of transgender people (43). The agenda prioritized creation of health care frameworks for adequate monitoring and evaluation of health care systems to ensure accountability and monitor progress of health disparities in vulnerable populations, including transgender, gender-diverse, and intersex persons (47). US organizations like Fenway Health in Boston (84), Callen-Lorde in New York (85) and UCSF Trans Care in California (86) have developed programs and services for LGBTQIA+ communities, as Trans Care BC (87) and Rainbow Health in Ontario (88) have similarly in Canada.

Achievement of these goals in affected populations is not possible without an underlying, consistent structure for data collection. Such data are essential to addressing health disparities and have catalyzed initiatives to improve SOGI (sexual orientation and gender identity) data collection at the Institute of Medicine, the American Medical Association, the U.S. Centers for Disease Control and Prevention (CDC) (4), the Council of Europe (56), the United Nations Human Rights Office of the High Commissioner (57), ILGA-Europe (58), Stonewall (59), and numerous other organizations worldwide. Third gender categories have even been added in national censuses in India and Nepal (both starting in 2011), despite their removal from the 2020 U.S. Census.

Given that gender and sex-related data greatly impact individual care, it is critical that the health care community create data models that enhance understanding and collection of critical data such as organ inventories; culturally-specific health factors; surgical histories; hormonal histories; chromosomal makeup; interlocking demographic factors; individual experiences of discrimination (such as deadnaming or misgendering), sexual assault, and physical violence; differences in sexually transmitted diseases, cancers, cardiovascular diseases, and mental health conditions, all of which directly impact the health outcomes of transgender, intersex, and gender-diverse populations. Mixing up these data can result in situations of life or death. As former president of the World Professional Association for Transgender Health (WPATH), Jamison Green said: “By not actually addressing what kinds of variabilities exist in people’s sexual4 [sic] behaviors, we blind ourselves to potential solutions to these problems” (62).

Studies indicate that around 40% of transgender persons in the U.S. attempt suicide in their lifetime [26,103]. Afton Bradley at the Virginia League for Planned Parenthood noted in 2017 that there was a “dramatic reduction in those [suicide] attempts when people have access to affirmative care” (61). “We need SOGI data collection to develop effective interventions to reduce and eliminate these disparities,” Cahill and Makadon pointed out the same year, “... If they do not count us, we do not count” (1).

### Sex and Gender in Quality Measurement
Clinical quality measures traditionally evaluate performance using manually abstracted clinical and administrative data. Electronic clinical quality measures (eCQMs) evaluate performance using data extracted from electronic health records and/or digital health information technology (HIT) systems. Patient demographic information is often used simply to specify eCQM inclusion and/or exclusion criteria. As described in the Current State section, Gender and Sex are often represented in a single data element utilizing various coding standards and that inconsistency in data capture and implementation leads to downstream issues for quality measurement instruments and outcomes.

For example, the National Committee for Quality Assurance (NCQA) produces the Healthcare Effectiveness Data and Information Set (HEDIS). Approximately 191 million people are enrolled in plans that report HEDIS results, making it one of health care’s most widely used performance improvement tools. HEDIS covers six (6) domains of care utilization measures, including Child and Adolescent Well-Care Visits, Frequency of Selected Procedures, Identification of Alcohol and Other Drug Services, Mental Health Utilization, Antibiotic Utilization and Healthcare-Associated Infection (HAI) Standard Ratio. For all these measures, individuals with nonbinary gender are excluded from HEDIS utilization measures that currently require a specific gender (male or female). NCQA recognizes this as an issue and has stated that it “continues to track industry standards for nonbinary gender”. In other words, the guidance provided in this specification can help improve representation of nonbinary gender and therefore measurement.

### Sex and Gender Reporting in Payment for Care
Some EHR systems have already begun to suggest tests or workflows based on sex or gender data which is often inaccurate in describing the needs of transgender, gender-diverse, and intersex persons. For instance, a patient may need to switch their insurance “sex” for a procedure to avoid denial of coverage or to even be offered a procedure or test in the first place. Pharmacies may also have to administratively change “sex” for approvals for particular medications and then switch the “sex” back to avoid denial of coverage (per NCPDP page 11). In addition, providers may have to address dozens of automatically flagged lab results which are irrelevant to the patient but are nonetheless required due to compliance regulations (63).

Switching “sex” fields back and forth may trigger hundreds of new results or diagnostic warnings or messages, adding to the already significant issue of alert fatigue among medical providers. Further, clinicians may miss proper risk assessments based on whether the “correct” sex field is provided. For instance, a transgender woman who is marked as “male” may miss crucial breast cancer screenings, but a transgender woman who is marked as “female” may miss prostate cancer screenings. Only by including contextual data about gender identity, sex assigned at birth, organ inventories, hormone levels, and chromosomal makeup can these issues be sufficiently avoided.

### Sex and Gender Uses in Data Analysis
Storing and exchanging data in structured formats ensures that EHR and HIT systems are better equipped to notify health care teams of appropriate and preventive services, but this is not an end itself. It is critical to have standardized high-quality data in order to conduct data analysis to address health inequities. While there have been some scientific advancements, there continues to be a dearth of data and literature on health outcomes and experiences for transgender and gender diverse people. Many transgender and gender diverse people remain largely invisible to their care providers, face stigma, barriers to accessing care and related health disparities. Standardized data will facilitate information-sharing for clinical care, research, and public health interventions that can further reduce health care disparities in this underserved population.

There are striking disparities in accessing health services that correlate with gender identity, as well as race/ethnicity and other factors. It is important to consider the intersecting identities and experiences of transgender and gender diverse people, to understand the cumulative discrimination and health inequities this community faces. Intersectionality is a framework for describing the disparities and culminating impact a person or group of people are affected by. Sex for Clinical Use (SFCU) and gender identity with other demographic data can be used to evaluate service utilization and health outcomes for subpopulations.

Currently, data resides in disparate systems with varying degrees of accuracy, preventing information from being used to support meaningful analysis, data visualization and insight generation. The goal is to not only answer questions but advance insights that drive action. Combining self-reported data from patients with clinical observations around the notions of gender and sex allows for rapid and efficient evaluations of emerging trends with more detail than might otherwise be possible. Creating opportunities for increased data analysis can contribute to new approaches to managing care, informing policy and future interventions.

## Modeling Sex and Gender Representation
The World Health Organization (WHO) defines Sex as the “different biological and physiological characteristics of males and females, such as reproductive organs, chromosomes, hormones, etcetera” and Gender as the “socially constructed characteristics of women and men, such as norms, roles, and relationships of and between groups of women and men” (WHO, 2020.) In clinical practice however, there can be a multiplicity of contextual variants over a single time horizon, across multiple applications and/or institutions where clinicians, vendors and interface developers have been grappling to create their own electronic ‘work around’ specification(s) to meet local and/or internal needs.

The gender-marginalized community has health care requirements that demand improvements that will benefit all patients. This document provides structural and semantic guidance to vendors and interface developers to address these requirements.

The proposed model provides necessary constructs to more accurately capture sex and gender along with associated context of use. This framework is the necessary infrastructure, but it does not provide the specific changes in individual standards that are needed to concretely specify actual implementable structures. That work must be undertaken within the responsible standards work groups such as HL7 v2, FHIR, DICOM, etc.

### Contextual Definitions of Sex and Gender Identity
Each of the following sections is structured to align with the UML Model categories noted in Figure 1. Each of the sub-sections below provides a definition, description, usage notes (if applicable), cardinality, and attributes (with recommended terminology if applicable) for each in-scope context definition.

<img src="context_model_gender.png" alt="Context Model for Gender Identity and Sex" width="100%" />
*Figure 1 Context Model for Gender Identity and Sex*

#### Model Overview
The model introduces the attributes: Sex for Clinical Use (SFCU), Gender Identity, Recorded Sex or Gender, Pronouns, and Name to Use. These are attributes of a Person.

Gender Identity is provided to describe the identity or identities of the person. This is important in many social and cultural contexts. It might be missing, as for an infant, or multi-valued in some cultures and specific situations. The values are expected to reflect the variations found in different cultures and locations, so only a minimum value set is defined in the logical model. Local terminology may extend this value set. A partial list of possible extensions is available in [81].

The meaning, criteria, and implications of specific gender identities is defined by the local culture and society. This logical model does not specify meaning, criteria, or expected use of gender identity.

Sex For Clinical Use (SFCU) is provided for use in orders, observations, and other clinical uses. It can be highly contextual and allows specific considerations to be provided for potential automated uses and records. For example, a woman with polycystic ovary syndrome can be identified in a blood work order so that her unexpected hormone levels can be properly reported and not rejected as invalid results. A man with BRCA2 mutations can be identified so that a screening mammography order is properly performed. There are many other situations involving tumors, resections, congenital conditions (i.e., ovotestes), and transgender patients where SFCU can be used to provide information that is needed to perform a procedure properly. Many procedures need at least a “male” or “female” specification (e.g., for radiation shielding).  

An X-ray procedure to assess a possible broken arm is not affected by most sex-related characteristics. The SFCU will probably be chosen based on whether “male” or “female” radiation protection is appropriate for this patient, and no other unrelated patient characteristics need to be mentioned. In situations where there is no clinical impact, such as administrative activities, SFCU is not well defined and can be omitted. SFCU is not entirely new. Some medical communications protocols already accommodate a few specific characteristics, e.g., pregnancy status. SFCU provides a general extendable structure.

During the transition from old systems to new systems, and as medical technology and science evolve, the rules for SFCU selection and referenced clinical observations will change. This will usually be managed based on business partner agreements. Many current order fillers can only accept a single sex value and only understand certain clinical characteristics. This can be accommodated by the ordering system selecting the most appropriate SFCU and relevant observations. As technology changes these business rules may change, and the ordering systems are expected to accommodate changes to the order filling systems. The gender harmony model enables adaptation of old systems and new technologies.

In observations, SFCU is used to describe the specific contexts used in the observation. For example, the computation of glomerular filtration rate (GFR) based on blood chemistry uses formulas that are different for “male” and “female”. The SFCU for the GFR report can indicate which formula was used in the computation of that result. The expectation is that the patient level SFCU is the default value used in all observations in a report and have an individual SFCU for individual observations when that observation was performed using a different SFCU. This logical model does not cover the description of individual observations, but the SFCU attribute can be used.

Recorded Sex or Gender is provided to capture the possible sex or gender values that might be found in a medical record. These are typically from some sort of physical or electronic document that was provided to a medical provider. The rules for these documents have varied significantly over time and place, and the relationship to current Gender Identity or SFCU may be unclear. When a California driver’s license says “sex: X” or a birth certificate states “sex: male” this can be captured as a Recorded Sex or Gender element. The element includes source information so that the definition of “X” in a California driver’s license can be found if necessary. The Recorded Sex or Gender includes an internationally equivalent code to reduce the problems with unfamiliar sources. The original medical record source can provide an equivalent international code when it has one. Name to Use is included to improve the communications with the person. This is important in many situations. Some cultures have very long names, and expect that for all but mandatory legal situations, the person will use a more manageable name. When names are changed, whether for marriage or other reasons, there can be confusion. Different jurisdictions have different rules and processes for name changes, so there is often a mismatch that can be prolonged in difficult situations. The Name to Use enables care providers to use the name that is chosen by the person without needing to resolve complex administrative issues.

The (personal) pronoun is provided for the English speaking community. Use of the pronoun or pronouns chosen by the person is important for patient care and communications in English. The current logical model does not extend to other languages.

### Person
Definition: This is an abstract class to be mapped onto a concrete class in a specific standard or definition. The concrete class is expected to be a kind of person.
Usage Note: In FHIR a specific functional mapping might add attributes or modify existing attributes of the FHIR Patient Class. When used with standards that do not define classes, e.g., HL7 v2.x, this abstract Person class can be mapped into concrete changes to the standard.

Each of the Person sub-elements in the model describes a specific context of sex or gender information; in essence a sex and/or gender context type. Some of these types are multi-valued based in part on the need for independent, occasionally co-occurring, values that are specific to particular contexts of use within that type. The sensitivity of these situations heightens the importance of representing this data in a way that supports masking and access restrictions. The Sex for Clinical Use (SFCU) can also be affected by independent co-occurring contexts of use. Depending upon the procedure ordered, drug prescribed, or nature of a clinical report different SFCUs might be chosen. This can be reflected in the mapping chosen for a patient for specific clinical reasons. The medical record in an EHR system might have one set SFCU, and different specific selected SFCUs chosen for mapping to NCPDP for a drug prescription, to FHIR for an order, to HL7 v2.x for another order, and to DICOM for an imaging request. This will be especially common during the transition period when some systems have been upgraded and others have not.

The rules for these context dependent mappings are not defined in this abstract information model. They depend upon the concrete capabilities of the target system, and upon the specific clinical context at the time. It will be normal to find that when there are many objects related to a single patient (orders, reports, observations, etc.) that there are different SFCU due to differences in the context of use. Information about the context and reason for selection may be incorporated into the link to observations or reports that are part of the SFCU, or in the comment associated with Gender Identity.

### Gender Identity (GI)
Definition: An individual's personal sense of being a man, woman, boy, girl, nonbinary, or something else. This datum represents an individual’s identity, ascertained by asking them what that identity is.
Usage Note: If the Person (such as a fetus, infant, or uncommunicative new patient) is unable to express a personal sense of being a man, woman, boy, girl or any point on the gender spectrum, gender identity may be recorded as Unknown. Unknown can be used in cases where parents do not want to specify a value but one must be recorded. Gender identity can be congruent or incongruent with one’s “Sex for Clinical Use” or “Recorded Sex or Gender”. Persons may identify using different terms at different times for various reasons, or use multiple identities simultaneously, depending on culture. For example, a specific gender identity may be used in one care setting and a different identity in another care setting. The gender identity in the work environment may be different than that in a care setting.

Cardinality: 0..n
Attributes:
Gender
    Definition: See element Definition Cardinality 1..1
    Type: Code or constrained short text 
    Proposed Terminology:
        minValueSet: GenderIdentity valueSet
        binding Strength: extensible
        See Appendix 1 — Proposed Value Sets for the recommended content.
Validity Period
    Definition: The time frame during which this gender identity applies to the person. May be just an initial dateTime.
    Usage note: Validity period may be overlapping in the case of multiple gender identities (such as for bigender persons, some genderfluid persons, and binary Two-Spirit persons who also identify as male or female).
    Cardinality: 0..1
    Type: duration or datetime
Comment
    Definition: Text to further explain the use of the specified gender identity or identities. Usage note: Content included may be related to social and/or cultural context to be considered when using the gender identity, particularly with overlapping active values. Cardinality: 0..1
    Type: long text

### Sex for Clinical Use (SCFU)
**Definition**: A category that is based upon clinical observations typically associated with the designation of male and female.
**Usage Note(s)**: A sex category that supports context specificity, derived from observable information (e.g., Clinical Observation, Radiology report, Lab report, genetic testing) that is preferably directly linked to the information this element summarizes (such as a comment or a linked data observation) in order to clarify the context and resulting value. This element is intended to characterize observations that align with or vary from female or male when the observation(s) are intended for use in a clinical activity. Examples of clinical observation that may be used to determine a value are: karyotype, phenotype, sex from imaging, hormonal values, organ inventory, certain surgical procedures, genetic observations, external genital morphology and internal organ morphology. In some systems the SFCU value may be automatically determined based on the medical record so that they match the recipient system’s needs.

There may be restrictions on specific protocols or for specific targets. The value multiplicity for a specific protocol or target may be 1..1 or 0..1. This logical model does not specify how such restrictions should be implemented. They should reflect the purpose of the communication and the capabilities of the systems involved. This may require individual site specific business rules to map a multi-valued SFCU into a single value that is appropriate for this context.

The SFCU value is not defined for use outside of a specific clinical context and should never be used as a label for the patient as a whole. Because the SFCU can be context-specific, on rare occasions there may be more than one concurrent SFCU for a patient. For example, there could be multiple procedure results, each identifying a context specific SFCU determination used to set the normal range used. For example an SFCU value and linked comment or specific observation could be summarized as “male, based on hormonal measurement.”

**Cardinality**: 0..n, expected to be zero unless in a clinical context.

**Attributes**:
    SFCU Category
    Definition: Sex value based on clinical observations. Cardinality: 1..1
    Type: Code or constrained short text
    Proposed Terminology:
        minValueSet: SexForClinicalUseCategory valueSet
        binding Strength: required
        See Appendix 1 — Proposed Value Sets for the recommended content

    Validity Period
    Definition: Time frame during which this summary value applies to the patient. May be just an initial dateTime
    Usage Note: Validity period may overlap among different SFCU values based on procedure or process used to determine the value
    Cardinality: 0..1 
    Type: duration
    
    Comment
    Definition: Text to further explain the context for this specific SFCU categorization. Usage note: Content included may be related to social and/or cultural context to be considered or additional information related to the linked observations, particularly with overlapping active values
    Cardinality: 0..1
    Type: long text
    
    Linked Clinical Observation
    Definition: Link or identifier to observation(s) or report(s) that are used to determine the sex category value
    Usage Note: The specific implementation of these links will vary based on the standard used. The linked information should clearly align with the chosen SFCU. For example, a patient with an initial diagnosis of an intersex condition could have supporting clinical observations specific to the diagnosis. Additional information may be provided in the Comment attribute.
    Cardinality: 0..n 
    Type: string
    
    Note: This logical model does not specify the encoding mechanism for a link. It could be a DOI, a URL, a DICOM SCOORD-3D, etc. The specific standards and implementations will specify this.

### Recorded Sex or Gender
Definition: Documentation of a specific instance of sex and/or gender information.
Usage Note: This element is to be used to differentiate existing poorly specified sex or gender data, and new context-laden sex or gender information, from the other proposed sex and gender information in this specification. This element is to be used for an existing “sex” element in a document or record when the intent and meaning is unclear so that existing data is preserved but separated from the other proposed but very specific sex and gender information. A single patient may have zero to many such attributes. For example, the person's birth certificate information, passport information, and national identity document information may all be present. This is necessary because an individual’s identity documents may be updated at different rates or for different reasons. For instance, a trans woman may be able to update her driver’s license to ‘F’ but her state might not allow changing a value on her birth certificate, which may still read ‘M’. Sex assigned at birth (SAAB)5, while very common and considered essential in some jurisdictions, is considered a recorded sex and gender entry. In these cases, the “identity type” could be specified as “sex assigned at birth” or another regionally specific short text string.
Cardinality: 0..n

Attributes:
    Source Recorded Sex or Gender
    Definition: The actual value found on the document. This may be in any character set. For
    example. a Russian identity card might have the value ‘ж’ for sex. Cardinality: 1..1
    Type: Code or constrained short text

    International Equivalent Recorded Sex or Gender
    Definition: An international representation of the value found on the document. This should be recorded in ISO/IEC 8859-1 (Latin 1) or equivalent. For example. a Russian identity card might have the value ‘ж’ for sex which is the source value, but the international equivalent would be ‘F’ for interoperability and international legal purposes, as outlined in documentation by the International Civil Aviation Organization (ICAO) [89]. Cardinality: 0..1
    Type: Code or constrained short text 
    Proposed Terminology:
        minValueSet: RecordedSexOrGender InternationalEquivalent valueSet binding Strength: extensible
        See Appendix 1 — Proposed Value Sets for the recommended content.
   
    Record Description
    Definition: A short phrase that describes the document or record that includes the sex or gender value. E.g., national ID card, birth certificate, passport.
    Cardinality: 0..1
    Type: string

    Acquisition Date
    Definition: The date that the document was scanned, processed, etc. to extract the sex or gender information.
    Cardinality: 0..1
    Type: datetime

    Validity Period
    Definition: The time frame during which the document is valid. May be just an initial dateTime.
    Cardinality: 0..1
    Type: duration

    Jurisdiction
    Definition: Jurisdiction or organization that issued the document Cardinality: 0..1
    Type: string
    
    Source Field Name
    Definition: Name of the source field on the document.
    Usage Note: This may be in any characters set. For example, on a Russian identity card it could be ‘Пол’.
    Cardinality: 0..1
    Type: string
    
    Source Field Description
    Definition: A description of the source field or source fields on the document.
    Usage Note: Further description of the source field to clarify intent of meaning. This may be a link or an external reference. For example, there is an international standard for the fields on an international travel passport.
    Cardinality: 0..1
    Type: string

### Name to Use
Definition: Text attribute that provides the name that should be used when addressing or referencing the patient.
Usage Note(s): This information is usually provided by the patient. Depending on the standard applicable to an implementation, this might be encoded within a Person/Patient Name field with an appropriate name type qualifier but is independent of any other name type or name component. This may be a nickname or formal name. Multiple cardinalities are required to support changes in desired name over time, such as when a patient desires a change in name to align with expressed gender. This means a validity period and a comment attribute to allow text that can be used to capture context for use of the name.  
Cardinality: 0..n

Attributes:
    Name
    Definition: Name to Use when addressing or referencing the patient. Cardinality: 1..1
    Type: string

    Validity Period
    Definition: The timeframe during which the name is to be used. May just include a start date.
    Cardinality: 0..1
    Type: duration

    Comment
    Definition: Text to further explain use of the Name. This may be related to social and/or cultural context.
    Cardinality: 0..1
    Type: long text

### Pronouns
Definition: Pronoun(s) specified by the patient to use when referring to the patient in speech, in clinical notes, and in written instructions to caregivers.
Usage Note(s): Personal pronouns are words used instead of a noun or a noun phrase used to refer to people. Understanding which pronoun(s) to use when referring to someone is important for providing affirming health care. Avoiding incorrect pronoun use and patient misgendering is crucial in transgender and gender-diverse care. It is important to reliably exchange personal pronouns that the individual has specifically reported they want used. The information could be considered a primary (first class) element associated with the demographic information for the patient. However, it may require representation as an observation about the patient. See also CDC’s pronoun recommendations (79); and Affirming Transgender Youths’ Names and Pronouns in the Electronic Medical Record (80) for additional context. Local policy will determine how pronouns are chosen for infants and other similar situations. Policy and local custom will determine what to use when this attribute is not present, or when multiple are present.

Different pronouns may be used in one care setting than another care setting. The pronouns used in the work environment may be different than those in the care setting.
Cardinality: 0..n 

Attributes:
    Pronoun
    Definition: The noun or a noun phrase used for the patient.
    Cardinality 1..1
    Type: Code or constrained short text Proposed Terminology:
    minValueSet: Pronoun valueSet
    binding Strength: extensible
    See Appendix 1 — Proposed Value Sets for the recommended content.
    
    Validity Period
    Definition: The timeframe during which the pronoun is to be used. May just include a start date.
    Cardinality: 0..1
    Type: duration
    
    Comment
    Definition: Text to further explain use of the pronoun.
    Usage Note: Multiple pronoun entries may exist and overlap as some persons utilize multiple pronouns simultaneously or switch usage based on context, familiarity, comfortability, and/or gender identity (for instance, in the case of bigender or genderfluid persons).
    Cardinality: 0..1
    Type: long text

## Implementation Guidance
### FHIR
FHIR has a change proposal (FHIR-29673) to update the sex and gender guidance in the Patient resource to support the various sex and gender properties. That proposal should be expanded to include other non-patient person resources, such as Person, RelatedPerson, and Practitioner. The Patient resource Patient Gender and Sex section includes:
- Two representations of Gender:
    - An extension on the Patient resource for Gender Identity. As noted in the text, this primary resource element does not provide the ability to represent context, history, and multiplicity that aligns with the Gender Harmony Gender Identity model. Yet, as a transitional process, it is recognized that capturing a single current Gender Identity using this existing extension may be of incremental value. We suggest:
        - Clarifying that this extension should be used only when a single pervasive Gender Identity is chosen by a patient.
        - That extension should be added to the other non-patient person resources with the same clarified meaning.
    - A proposed approach to representing (HL7 FHIR Release 4, 2020) Clinical Gender: as “an observation about the patient, often collected as part of social history documentation, and represented as an Observation using, for example, the LOINC code 76691-5   .” Further it is noted that “Clinical gender observations can provide both history and confidentiality, where the genderIdentity extension does not.”
        - This approach of creating an observation is aligned with the intent of the Gender Harmony Gender Identity model and may represent the best approach for FHIR representation of the Gender Harmony model.
        - The example of how Clinical Gender can be captured as a FHIR Observation noted here should be updated by the Orders and Observations WG to fully align.
In addition, we recommend the following be considered by the appropriate HL7 working groups:
- A Recorded Sex and Gender Profile on the Observation resource be created that adds
additional extensions as deemed necessary to support capturing the metadata noted for Recorded Sex and Gender. This profile could then be specifically referenced by the Patient resource, and other resources as appropriate to capture needed sex or gender “demographic observations.”
    - It may be useful, given the focus on “Sex recorded at birth” or “Birth Sex” that an even more specific Recorded Sex or Gender observation profile be created, perhaps for US Core, specific to “Sex assigned at birth” using LOINC code 76689-9. This aligns with the recommendation existing in the noted section of the Patient resource. There may be some who would argue that birth sex should instead be based on a profile aligned with Sex for Clinical Use; such as discussion is proper and we look forward to a resolution of this in the proper forum.
    - In a similar way the noted “Legal Sex” discussed in the noted section of the Patient resource should be considered a Recorded Sex or Gender and should utilize this newly created observation profile.
- A Sex for Clinical Use Profile on Observation be created that adds additional extensions as deemed necessary to support capturing the metadata noted for Sex for Clinical Use (SFCU). This profile could then be specifically referenced by the Patient resource, and other resources as appropriate to capture sex-specific observations.
- A discussion should be undertaken to determine if the Pronoun model is best represented as a profile on observation in order to provide masking and historical context, or if a new extension directly on the Patient (and other?) resources is best.
- The FHIR HumanName data type already supports the concept of preferred names across all person resources, so no changes seem to be necessary.

### DICOM
DICOM has a change proposal cp1927 Patient sex and gender in process to incorporate some of the changes from the HL7 Gender Harmony Project. The present expectation is to revise DICOM
to:
- Clarify that the current Patient Sex attribute corresponds to the Sex for Clinical Use element of the Gender Harmony model. The values of “intersex” will be merged with “Complex” and encoded as the original DICOM “Other” category. “Male”, “Female” and “Unknown” can remain as before. This preserves full compatibility with existing medical records archives and equipment. As gender harmonized applications take over upstream ordering this should also reduce inconsistencies. The time frame for this value will be defined to be the time of the order or study as appropriate.
- Add an optional Patient Gender Identity attribute with the same required and optional value set as described here. The time frame for this value will be defined to be the time of the order or study as appropriate.
- Add an optional Name to Use attribute.
- Clarify existing DICOM patient and order comment fields to indicate that when Sex for
Clinical Use is “complex” these comment fields should provide information explaining relevant information for operators and clinicians. They are presently used for operator instructions, so this usage is a continuation of current usage.

These meet the strategic constraints from DICOM— that the existing medical archives must remain valid without modification, that existing medical devices must remain minimally compliant, and that systems can be upgraded to fully support these changes without introducing dependency on upgrading other equipment.

DICOM plans to synchronize the development and approval of this change proposal with the activity of the Gender Harmony project. DICOM does not presently have a use case for incorporating Recorded Sex and Gender. It is not part of cp1927. When a use case is found it will either be incorporated into cp1927 (if not yet final) or treated as a separate change proposal.

### HL7 v2.x
HL7 v2 was one of the early messaging standards to encode electronic medical data. Historically, the primary representation of patient-centric sex/gender has occurred via the Patient Identification (PID) segment, Administrative Sex element (PID-8.) The allowed values for PID-8 are defined by values in Table 0001, now represented as a value set (hl7VS-administrativeSex, OID: 2.16.840.1.113883.21.2) and code system (administrativeSex, OID: 2.16.840.1.113883.18.2), but the specific meaning, or context under which the value was obtained, may not have always been clearly understood between trading partners. In other words, sometimes the value may have been a true gender identity, sometimes it may have been the assumed sex based on presentation, sometimes it could have been a recorded sex identified at birth. HL7 FHIR has suggested that a general approach to clarify the specific meaning of an exchanged sex or gender identity value, would be to consider this information as a patient observation, but there are concerns among the community using v2.x that including multiple sex-related values may result in rejection of messages due to multiple or conflicting “sex values.”

Given the technical, societal, and historical considerations involved, interpretation of the value in PID-8 will never be universally consistent across all implementations and uses. Business Partner Agreements, Implementation Guides, and Guidance will allow PID-8 values to be used effectively.

When the HL7 v2.x standards are updated, segments can be updated with new fields to convey needed sex and gender information which might include fields for Sex for Clinical Use, Gender Identity, and Recorded Sex. Not all concepts will be relevant in all contexts. For example, Sex for Clinical Use probably won’t be applicable for individuals represented in a GT1 segment. In the short term, some implementation guides might use OBX segments to convey Gender Identity, Sex for Clinical Use, Recorded Sex and Gender, and Pronouns. Many segments already support a 0..n cardinality on the XPN data type for patient names, which supports various name type codes, including D [Customary Name] for Name to Use.

In the short-term, systems that choose to clarify sex and gender identity information using v2.x messages through the inclusion of the specific sex and gender observations described by the Gender Harmony informative document will need to clarify what specific solution can be universally adopted.

In the long term, solutions that clarify how to pre-adopt patient-centric information such as gender identity, pronouns, and name to use will be the target of subsequent work. In addition, integration of SFCU to support test and procedure-specific interpretations will continue to evolve.

# Appendices
## Appendix 1 — Proposed Value Sets
### RecordedSexOrGender InternationalEquivalent Value Set
*The RecordedSexOrGender valueset has no minimum value set, due to linguistic differences and lack of international standards documentation. Therefore, we have designated an equivalent dataset for the field “International Equivalent,” bound extensible so as to allow specific implementations the option to add more choices via a different, expanded value set that incorporates this minimum set (this accounts for potential options added or planned to be added by various jurisdictions). This set is based on the set noted in Doc 9303: Machine Readable Travel Documents, Seventh Edition (2015), Part 7: Machine Readable Visas published by the International Civil Aviation Organization (ICAO) [89]. Note that a number of other potential designations are discussed in [81].*

<table>
    <thead>
        <tr>
            <th>
                Term
            </th>       
            <th>
                Definition
            </th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td>
                F
            </td>
            <td>
                *A value which corresponds to female (‘F’) has been recorded in some context.*
            </td>
        </tr>
        <tr>
            <td>
                M
            </td>
            <td>
                A value which corresponds to male (‘M’) has been recorded in some context.
            </td>
        </tr>
        <tr>
            <td>
                X
            </td>
            <td>
                A value which corresponds to ‘X’ (nonbinary, intersex, etc.) has been recorded or the value is unspecified.
            </td>
        </tr>
        <tr>
            <td>
                <
            </td>
            <td>
                A value has not been recorded or a value cannot be ascertained for any reason.
            </td>
        </tr>
    </tbody>
</table>

### GenderIdentity Value Set
GenderIdentity value set to be used as a minimum value set, that is extensible to allow specific implementations the option to add more choices via an expanded value set that incorporates this minimum set.

<table>
    <thead>
        <tr>
            <th>
                Term
            </th>       
            <th>
                Definition
            </th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td>
                Female
            </td>
            <td>
                A person's self-identification as a woman, as female, or as a girl.
            </td>
        </tr>
        <tr>
            <td>
                Male
            </td>
            <td>
                A person's self-identification as a man, as male, or as a boy.
            </td>
        </tr>
        <tr>
            <td>
                Nonbinary
            </td>
            <td>
                Having a specific identity which is nonbinary (not within a binary construct of male or female) or having an identity which falls under the nonbinary umbrella (i.e., any or all gender identities which are not female or male).
            </td>
        </tr>
        <tr>
            <td>
                Unknown
            </td>
            <td>
                The person’s gender identity is not known at this time, for any of a variety of reasons. (e.g., “was not able to ask” or “person does not want to answer”.)
            </td>
        </tr>
    </tbody>
</table>
When additional codes and terms appropriate to specific jurisdictions, locations, and potentially individual persons are needed, an additional value set should be created that adds in additional concepts. Implementations should be prepared for the addition of other specific gender identities at specific locations. Implementations should be prepared to receive messages or records that contain unrecognized terms. Local policy will establish how to handle unrecognized terms, most likely by preserving the term. Examples of gender identity extensions are given in the non- normative table shown in Appendix 3.

Note that terms like “MTF”, “FTM”, “male-to-female transsexual”, and “female-to-male transsexual”, etc. were not included. Kronk [82] noted in an article with 12 other trans authors in various health care fields that “[t]hese options are antiquated and problematic. The first two (FTM and MTF) have largely fallen out of use among transgender people and in transgender-related literature because they fundamentally assume a ‘change’ in gender—that a transgender person was ‘female’ and now is ‘male’ (FTM), usually due to, or following, some sort of medicalization process (hormone replacement therapy and/or gender affirming surgery, for instance) [91,92,93,94,95]. This contradicts how many trans people understand their identity and can confuse patients. All four terms center cisgender people, reserving unqualified ‘male’ and ‘female’ for them while trans people are segregated into the separate, qualified categories of ‘MTF’, ‘FTM’, ‘transgender male’, ‘transgender female’, and ‘transgender’. Fundamentally, this implies trans women and trans men are deviant and not actually female or male, respectively, especially when the selection is ordered as “male”, “female”, “MTF”, “FTM” [96,97,98]. Further, by separating these groups in the first place, “male” and “female” are presented as the norm while “transgender male” and “transgender female” are othered [96,97,98,99,100]. The separation can insinuate that transgender people are not their stated gender and that separation is cited heavily in transphobic and exclusionary actions [101,102,103]”. In practice, many transgender persons would answer “male” or “female” over “transgender male” or “transgender female”. For more information, see Clair Kronk’s Suggested Tables in Google Docs.

When a person is transgender, intersex, and/or gender-diverse, this is noted by an incongruence between a gender identity datum and a sex for clinical use datum (or data). The specific incongruence can be noted using the Comment and Linked Clinical Observation.

### SexForClinicalUseCategory Value Set
SexForClinicalUseCategory valueSet should be bound REQUIRED.

<table>
    <thead>
        <tr>
            <th>
                Term
            </th>       
            <th>
                Definition
            </th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td>
                Female
            </td>
            <td>
                The “female” values apply to this patient, in the case of a given procedure or process in a given context, for instance for a procedure, algorithm, hormone level, organ inventory, etc.
            </td>
        </tr>
        <tr>
            <td>
                Male
            </td>
            <td>
                The “male” values apply to this patient, in the case of a given procedure or process in a given context, for instance for a procedure, algorithm, hormone level, organ inventory, etc.
            </td>
        </tr>
        <tr>
            <td>
                Specified
            </td>
            <td>
                This patient has specific documented characteristics that do not fully match either male or female in a given context, for instance for a procedure, algorithm, hormone level, organ inventory, etc.
            </td>
        </tr>
        <tr>
            <td>
                Unknown
            </td>
            <td>
                The SFCU can not be determined because there are no observations or the observations are not sufficient to determine a value. For example, an emergency trauma case may require treatment before SFCU can be established.
            </td>
        </tr>
    </tbody>
</table>
Given that this value set is intended to be a categorization of sex observations with the concept “Specified” as a flag to indicate non-standard sex observations, this value set should be bound required with no other codes allowed.

“Specified” is utilized here instead of terms like intersex for multiple reasons. The phrase intersex is typically a particular grouping of congenital conditions and even when used more generally it would not be considered synonymous or semantically equivalent. “Specified” is used to indicate that this person has specified observations that are lilely important when considering clinical observations, particularly those that are impacted by sex-associated conditions.

While historical, mostly 19th-century, models described gay, lesbian, bisexual, intersex, and transgender persons as “intersexual”, this term (as well as intersex) was not chosen over “specified” because of its more specific scoped usage by providers, researchers, intersex activist groups (including interACT, the Intersex Society of North America, Intersex Initative, Intersex Peer Support Australia, the Intersex Justice Project, and the Intersex Campaign for Equality), and wider activist groups (such as Human Rights Campaign, Human Rights Watch, and ILGA-Europe). One of the authors (Kronk) polled 483 trans people and found that 475 of them did not feel that all trans people were covered using the word “intersex”.

### Pronoun Value Set
This proposed set is a minimum set for interoperability where the use of the English personal pronoun is required.

<table>
    <thead>
        <tr>
            <th>
                Term
            </th>       
            <th>
                Definition
            </th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td>
                He, Him, His, Himself
            </td>
            <td>
                English personal pronouns, typically associated with masculinity, that are requested by a person to be used by them.
            </td>
        </tr>
        <tr>
            <td>
                She, Her, Hers, Herself
            </td>
            <td>
                English personal pronouns, typically associated with femininity, that are requested by a person to be used by them.
            </td>
        </tr>
        <tr>
            <td>
                They, Them, Their, Theirs, Themself
            </td>
            <td>
                English personal pronouns, typically not associated with masculinity or femininity, that are requested by a person to be used by them.
            </td>
        </tr>
        <tr>
            <td>
                Uses Other Pronouns
            </td>
            <td>
                Person indicates that they use other pronouns than he/him, she/her, or they/them pronouns.
            </td>
        </tr>
        <tr>
            <td>
                Unknown Pronouns
            </td>
            <td>
                Unknown; used in situations wherein no pronouns can be asked for (young children, infants, neonates, etc.).
            </td>
        </tr>
    </tbody>
</table>
The proposed set is based on LOINC answer list for Personal Pronouns - Reported, LL5144-2 Personal pronouns / Answers: 10; Scale: Nom; Code: -; Score: -. TheLOINC value set is acceptable using the canonical url: http://loinc.org/vs/LL5144-2.

## Appendix 2 — Gender Harmony Project Feedback Survey Summary Report
The Gender Harmony Project Feedback Survey Summary Report can be downloaded here.

The survey entitled “HL7’s Gender Harmony Project Feedback Survey” was a 2020 work product generated by the Gender Harmony Work Group (GHWG) to elicit feedback to proposed vocabulary from the LGBTQIA+ community, clinical and technical stakeholders. Much of the end product was informed based on input gathered through this survey.

The survey was created and managed by Roz Queen, GHWG Member and hosted by Survey Monkey. The survey asked for input on the GHWG proposed set of values when recording Gender Identity in clinical systems. The survey was open until September 30, 2020. Survey participants were informed that the GHWG defines Gender Identity as “an individual’s personal sense of being a man, woman, boy, girl, or something else.” Proposed values were provided, with values highlighted yellow, being the minimum binding for any/all conformant systems.

<table>
    <thead>
        <tr>
            <th colspan="3">
                Table 1. Gender Harmony Project, 2020 Vocabulary Feedback Survey Questions
            </th>
        </tr>
        <tr>
            <th>
                Survey Question
            </th>       
            <th>
                Response Type
            </th>
            <th>
                Qualitative Observations/Range*
            </th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td>
                Q1 Is the gender table accurate?
            </td>
            <td>
                Likert-scale (1 - 5)
            </td>
            <td>
                90 responses, from 9% very inaccurate to 29% very accurate
            </td>
        </tr>
        <tr>
            <td>
                Q2 Is the gender table list of values complete?
            </td>
            <td>
                Likert-scale
            </td>
            <td>
                87 responses, from 10% not complete at all to 30% very complete
            </td>
        </tr>
        <tr>
            <td>
                Q3 How do you feel about the gender table?
            </td>
            <td>
                Open-ended question (O-ER)
            </td>
            <td>
                48 responses, from incomplete, incorrect, confusing (48%) to too complex (31%) and upkeep concern (19%).
            </td>
        </tr>
        <tr>
            <td>
                Q4 Should this value set include “Girl” and “Boy”?
            </td>
            <td>
                Likert-scale (Y, N, Other), O-ER (“specify”)
            </td>
            <td>
                88 responses; where 61% indicated “No”, 20% indicated “Yes” and 18% specified “Other”
            </td>
        </tr>
        <tr>
            <td>
                Q5 What data elements would you like to see modified? And how?
            </td>
            <td>
                O-ER
            </td>
            <td>
                48 responses; 56% with respect to gender terms/terminology (various concerns)
            </td>
        </tr>
        <tr>
            <td>
                Q6 What needs improvement? Please mention specific section(s) and/or definition(s)
            </td>
            <td>
                O-ER
            </td>
            <td>
                46 responses; where sentiment analysis revealed the majority of opinions were negative
            </td>
        </tr>
        <tr>
            <td>
                Q7 Other comments and/or suggestions
            </td>
            <td>
                O-ER
            </td>
            <td>
                Sentiment analysis illustrated the majority of opinions were negative (84.90% confidence)
            </td>
        </tr>
    </tbody>
</table>
*  *Please see report for complete analysis and annotations, too complex to provide in summary view.*

Raw survey data is closed to public viewing.

Clair Kronk, a medical informatician, and Andrea JCL Downey, Lead, 2020 Vocabulary Survey Sub- Committee, conducted the review.

For “fixed” answer responses, quantitative analysis was performed. For “open-ended” responses, both quantitative and qualitative analysis was conducted. A total of 7 questions were analyzed and quantitative analysis graphs produced.

The analysis produced a number of survey design and execution observations which ranged from increasing the sample size in future surveys to putting metrics in place to track where the survey is promoted/distributed. The lack of general sentiment collection and/or respondent demographics was also noted as limiting.

Respondent feedback ranged from the need for more culturally-specific identity terms, definitions for all terms, designing hierarchical classifications systems and providing free-text capacity in clinical EMR data collection. Inclusivity beyond Eurocentric terms to embrace cultural difference/nuance was also noted.

It was noted that creating/adopting a new set of more descriptive tables in accordance with HL7 guidelines is a necessary first step before running a new survey.

Therefore the results of this report should be considered preliminary, at best.

Three recommendations were proposed as outcomes of the Survey Review, and the Gender Harmony Work Group adopted Option 2, to adopt the HL7 Balloting Sub-Committee suggested approach which takes into consideration Clair Kronk’s (2020) Suggested Tables 1, 2, 4 & 6 version 3.3 in Google Docs [81] (please see Appendix 4 for details).

The reader is encouraged to read the complete HL7 Gender Harmony Project Feedback Survey Summary Report under Useful Links on the Work Group’s Confluence Portal.

## Appendix 3 — Additional Data Coding Examples
The following items are provided as examples that align with the data elements noted within the informative material.

The following tables were created by Clair Kronk. See Suggested Tables in Google Docs [81] for additional detail. These tables include potential extensions to these tables which may be useful in various scenarios. This document includes a 75 other potential values for gender identities, pronoun sets, assigned sex at birth values, among other things. Additionally, it includes usage notes and information to consider in regional implementations.

### Gender Identity (GI)
<table>
    <thead>
        <tr>
            <th colspan="2">
                Suggested Codes | Table 2 Gender Identity (GI)
            </th>
        </tr>
        <tr>
            <th>
                Concept Code Minimum Value Set
            </th>       
            <th>
                Print Name
            </th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td>
                F
            </td>
            <td>
                Female
            </td>
        </tr>
        <tr>
            <td>
                M
            </td>
            <td>
                Male
            </td>
        </tr>
        <tr>
            <td>
                X
            </td>
            <td>
                Nonbinary
            </td>
        </tr>
        <tr>
            <td>
                O
            </td>
            <td>
                Other
            </td>
        </tr>
        <tr>
            <td>
                U
            </td>
            <td>
                Unknown
            </td>
        </tr>
    </tbody>
</table>

Cases linked to “Unknown” could be theoretically mapped to ‘U’ and specified answers not included here could be linked to ‘O’, but it is recommended to include the other options provided as necessary based on individual clinical use [81].

Kronk [81] also recommends certain additional terms be required in the US and Canada, specifically:

### Name to Use
Name to Use per [81]:
> *“This is a person’s name, specifically, the name that they use. This may differ from a patient’s legal name on certain identity documents, from the patient’s name registered with an insurance company, etc., but it is still their name. Do not use terms like “affirmed name”, “chosen name”, or “real name”, or “preferred name” as these imply that a transgender person’s name is somehow lesser than a cisgender (non-transgender) person’s name, and can be chosen to be ignored.”*

### Personal Pronoun Standards
LOINC provides the following personal pronoun answer list:
<table>
    <thead>
        <tr>
            <th colspan="2">
                LOINC Observation: 90778-2 Personal Pronoun Codes
                LOINC Answer List: LL5144-2 Personal pronouns / Answers: 10; Scale: Nom; Code: -; Score: -
            </th>
        </tr>
        <tr>
            <th>
                Answer
            </th>       
            <th>
                ID
            </th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td>
                he/him/his/his/himself
            </td>
            <td>
                LA29518-0
            </td>
        </tr>
        <tr>
            <td>
                she/her/her/hers/herself
            </td>
            <td>
                LA29519-8
            </td>
        </tr>
        <tr>
            <td>
                they/them/their/theirs/themselves
            </td>
            <td>
                LA29520-6
            </td>
        </tr>
        <tr>
            <td>
                ze/zir/zir/zirs/zirself
            </td>
            <td>
                LA29523-0
            </td>
        </tr>
        <tr>
            <td>
                xie/hir ("here")/hir/hirs/hirself
            </td>
            <td>
                LA29521-4
            </td>
        </tr>
        <tr>
            <td>
                co/co/cos/cos/coself
            </td>
            <td>
                LA29515-6
            </td>
        </tr>
        <tr>
            <td>
                en/en/ens/ens/enself
            </td>
            <td>
                LA29516-4
            </td>
        </tr>
        <tr>
            <td>
                ey/em/eir/eirs/emself
            </td>
            <td>
                LA29517-2
            </td>
        </tr>
        <tr>
            <td>
                yo/yo/yos/yos/yoself
            </td>
            <td>
                LA29522-2
            </td>
        </tr>
        <tr>
            <td>
                ve/vis/ver/ver/verself
            </td>
            <td>
                LA29524-8
            </td>
        </tr>
    </tbody>
</table>

This minimum set of pronouns is suggested by Kronk [81]:

<table>
    <thead>
        <tr>
            <th colspan="2">
                Suggested Codes | Table 6 Third Person Pronouns
            </th>
        </tr>
        <tr>
            <th>
                Concept Code Minimum Value Set
            </th>       
            <th>
                Print Name
            </th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td>
                H
            </td>
            <td>
                he, him, his, himself
            </td>
        </tr>
        <tr>
            <td>
                S
            </td>
            <td>
                she, her, hers, herself
            </td>
        </tr>
        <tr>
            <td>
                T
            </td>
            <td>
                they, them, their, theirs, themself
            </td>
        </tr>
        <tr>
            <td>
                O
            </td>
            <td>
                uses other pronouns
            </td>
        </tr>
        <tr>
            <td>
                U
            </td>
            <td>
                Unknown
            </td>
        </tr>
    </tbody>
</table>

Cases linked to unknown (such as pronouns not stated) could theoretically be mapped to ‘U’ and neopronouns like ze/zir and xie/hir could be linked to ‘O’ in this situation, but it is recommended to include other pronouns provided as necessary based on individual clinical use. Please also note, a patient record may utilize more than one pronoun set.