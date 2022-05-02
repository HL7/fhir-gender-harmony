
![Alt text](rainbow-1445337690d8q.jpg)

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
