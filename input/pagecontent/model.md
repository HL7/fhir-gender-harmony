
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
