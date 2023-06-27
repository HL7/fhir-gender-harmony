<!-- Updates based on Jira tickets 
Date             Jira ticket        Updated by                   Comment
2023-06-16       OTHER-2411         Joanie Harper                Added closing parentheses per the Jira ticket https://jira.hl7.org/browse/OTHER-2411
2023-06-16       OTHER-2586         Joanie Harper                Change field name from Jurisdiction to Issuer, added **Definition**, and put Cardinality on its own line per https://jira.hl7.org/browse/OTHER-2586
2023-06-16       OTHER-2587         Joanie Harper                update Source Field Name and Source Field Desription per Jira ticket https://jira.hl7.org/browse/OTHER-2587
2023-06-16       OTHER-2575         Joanie Harper                Added hyphens per Jira ticket https://jira.hl7.org/browse/OTHER-2575
2023-06-16       OTHER-2578         Joanie Harper                Updated SPCU section per Jira ticket https://jira.hl7.org/browse/OTHER-2578
2023-06-23       OTHER-2671         Rob McClure                 Changed all to SPCU or Sex Parameter for Clinical Use
-->

### Modeling Sex and Gender Representation

The World Health Organization (WHO) defines Sex as the "different
biological and physiological characteristics of males and females, such
as reproductive organs, chromosomes, hormones, etcetera" and Gender as
the "socially constructed characteristics of women and men, such as
norms, roles, and relationships of and between groups of women and men"
(WHO, 2020.) In clinical practice however, there can be a multiplicity
of contextual variants over a single time horizon, across multiple
applications and/or institutions where clinicians, vendors and interface
developers have been grappling to create their own electronic 'work
around' specification(s) to meet local and/or internal needs.

The gender-marginalized community has health care requirements that
demand improvements that will benefit all patients. This implementation
guide provides structural and semantic guidance to vendors and interface
developers to address these requirements.

The Gender Harmony logical model provides necessary constructs to more
accurately capture sex and gender along with associated context of use.
While the framework provides the necessary infrastructure, the specific
changes in individual standards to concretely specify actual
implementable structures are detailed in separate specifications (insert
links to (HL7 v2, FHIR, DICOM etc.) while this implementation guide
provides additional guidance and use cases.

### Model Overview

The conceptual model outlines the data elements, element attributes,
terminology bindings and relationships that clarify the meaning and
context of the information presented to guide and inform changes within
operational standards. The Model has five (5) major elements independent
of other components that may also be part of the information model for a
Person: Gender Identity (GI), Sex Parameter for Clinical Use (SPCU), Recorded Sex
or Gender (RSG), Name to Use (NtU), and Pronouns.

With the exception of one addition (Recorded Sex or Gender attribute =
type with datatype = code or constrained text), the model included in
this implementation guide is exactly in the published Gender Harmony
Informative Specification. The addition was made to clarify and cover
the original intent of Record Sex or Gender, including the ability to
specify the type or category of sex or gender that is recorded (e.g.,
Sex Assigned At Birth).

Each of the following sections is structured to align with the UML Model
in Figure 1 and provides a definition, description, usage notes (if
applicable), cardinality, and attributes (with recommended terminology
if applicable) for each model element.


<figure>
{%include 2023genderharmony.svg%}
<figcaption><b>Figure 1: Logical Model for Gender Identity and Sex</b></figcaption>
</figure>
<br clear="all" />


Each of the Gender Harmony model sub-elements described below are sex or
gender information that may be context-dependent; in essence a sex
and/or gender context type. Some of these types are multi-valued based
in part on the need for independent, occasionally co-occurring, values
that are specific to particular contexts of use within that type. The
sensitivity of these situations heightens the importance of representing
this data in a way that supports masking and access restrictions. The
Sex Parameter for Clinical Use (SPCU) can also be affected by independent
co-occurring contexts of use. Depending upon the procedure ordered, drug
prescribed, or nature of a clinical report different SPCUs might be
chosen. This can be reflected in the mapping chosen for a patient for
specific clinical reasons. The medical record in an EHR system might
have one set SPCU, and different specific selected SPCUs chosen for
mapping to NCPDP for a drug prescription, to FHIR for an order, to HL7
v2.x for another order, and to DICOM for an imaging request. This will
be especially common during the transition period when some systems have
been upgraded and others have not.

The rules for these context dependent mappings are not defined in this
abstract information model. They depend upon the concrete capabilities
of the target system, and upon the specific clinical context at the
time. It will be normal to find that when there are many objects related
to a single patient (orders, reports, observations, etc.) that there are
different SPCU due to differences in the context of use. Information
about the context and reason for selection may be incorporated into the
link to observations or reports that are part of the SPCU, or in the
comment associated with Gender Identity.

### Person

**Definition:** This is an abstract class to be mapped onto a concrete
class in a specific standard or definition. The concrete class is
expected to be a kind of person.

**Usage Note:** In FHIR a specific functional mapping might add
attributes or modify existing attributes of the FHIR Patient Class. When
used with standards that do not define classes, e.g., HL7 v2.x, this
abstract Person class can be mapped into concrete changes to the
standard.

### Gender Identity (GI)

Gender Identity describes the identity or identities of the person. This
is important in many social and cultural contexts. It might be missing,
as for an infant, or multi-valued in some cultures and specific
situations. The meaning, criteria, and implications of specific gender
identities is defined by the local culture and society. The terms used
to capture GI are expected to reflect the variations found in different
cultures and locations, so only a minimum value set is defined in the
logical model. Local terminology is expected to extend this value set.

**Source:** Person, self-reported only

**Definition:** An individual's personal sense of being a man, woman,
boy, girl, nonbinary, or something else. This datum represents an
individual's identity, ascertained by asking them what that identity is.

**Usage Note:** If the Person (such as a fetus, infant, or
uncommunicative new patient) is unable to express a personal sense of
being a man, woman, boy, girl or any point on the gender spectrum,
gender identity may be recorded as Unknown. Unknown can be used in cases
where parents do not want to specify a value but one must be recorded.
Gender identity can be congruent or incongruent with one's SPCU or RSG.
Persons may identify using different terms at different times for
various reasons, or use multiple identities simultaneously, depending on
culture. For example, a specific gender identity may be used in one care
setting and a different identity in another care setting. The gender
identity in the work environment may be different than that in a care
setting.

**Cardinality:** 0..n

#### Attributes: 

##### Gender 

-   Definition:  An individual's personal sense of being a man, woman,
boy, girl, nonbinary, or something else. This datum represents an
individual's identity, ascertained by asking them what that identity is.

-   Cardinality 1..1

-   Type: Code or constrained short text

-   Proposed Terminology:

    -   minValueSet: GenderIdentity valueSet

    -   binding Strength: extensible

##### Validity Period 

-   Definition: The time frame during which this gender identity applies
to the person. May be just an initial dateTime.

-   Usage note: Validity period may be overlapping in the case of
multiple gender identities (such as for bi-gender persons, some
gender-fluid persons, and binary Two-Spirit persons who also identify as
male or female).

-   Cardinality: 0..1

-   Type: duration or datetime

##### Comment 

-   Definition: Text to further explain the use of the specified gender
identity or identities.

-   Usage note: Content included may be related to social and/or
cultural context to be considered when using the gender identity,
particularly with overlapping active values.

-   Cardinality: 0..1

-   Type: long text

### Sex Parameter for Clinical Use (SPCU)

Sex Parameter for Clinical Use is provided for use in orders, observations, and
other clinical uses. SPCU can be highly contextual and allows specific
considerations to be provided for potential automated uses and records.
Examples include:

-   A person with polycystic ovary syndrome can be identified in a blood
    work order so that their unexpected hormone levels can be properly
    reported and not rejected as invalid results.

-   A person with BRCA2 mutations can be identified so that a screening
    mammography order is properly performed.

There are many other situations involving tumors, resections, congenital
conditions (i.e., ovotestes), and transgender patients where SPCU can be
used to provide information that is needed to perform a procedure
properly. Many procedures need at least a "male" or "female"
specification (e.g., for radiation shielding). For detailed use cases
and implementation guidance, see (insert link to Use Cases landing page
in IG).

SPCU provides a general extendable structure. During the transition from 
old systems to new systems, and as medical technology and science evolve, 
the rules for SPCU selection and referenced clinical observations will 
change. As technology changes these business rules may change, and the 
ordering systems are expected to accommodate changes to the order filling 
systems. The gender harmony model enables adaptation of old systems and 
new technologies.

In observations, SPCU is used to describe the specific contexts used in
the observation. For example, the computation of glomerular filtration
rate (GFR) based on blood chemistry uses formulas that are different for
"male" and "female". The SPCU for the GFR report can indicate which
formula was used in the computation of that result. The expectation is
that the patient level SPCU is the default value used in all
observations in a report and have an individual SPCU for individual
observations when that observation was performed using a different SPCU.
The Gender Harmony model does not cover the description of individual
observations, but the SPCU attribute can be used.

**Definition**: A categorization of sex derived from observable
information such as an organ inventory, recent hormone lab tests,
genetic testing, menstrual status, obstetric history, etc.

**Usage Note(s)**: A sex category that supports context specificity,
derived from observable information, preferably directly linked to the
information this element summarizes (such as a comment or a linked data
observation) in order to clarify the context and resulting value. This
element is intended to characterize observations that align with or vary
from female or male when the observation(s) are intended for use in a
clinical activity. In some systems the SPCU value may be automatically
determined based on the medical record so that they match the recipient
system's needs.

There may be restrictions on specific protocols or for specific targets.
The value multiplicity for a specific protocol or target may be 1..1 or
0..1. The GH model does not specify how such restrictions should be
implemented. They should reflect the purpose of the communication and
the capabilities of the systems involved. This may require individual
site specific business rules to map a multi-valued SPCU into a single
value that is appropriate for this context.

As SPCU can be context-specific, on rare occasions there may be more
than one concurrent SPCU for a patient. For example, there could be
multiple procedure results, each identifying a context specific SPCU
determination used to set the normal range used. For example an SPCU
value and linked comment or specific observation could be summarized as
"male, based on hormonal measurement."

**Cardinality**: 0..n, expected to be zero unless in a clinical context.

#### Attributes: 

##### SPCU Category 

-   Definition: Sex value based on clinical observations.

-   Cardinality: 1..1

-   Type: Code or constrained short text

-   Proposed Terminology:

    -   minValueSet: SexForClinicalUseCategory valueSet

    -   binding Strength: required

##### Validity Period

-   Definition: Time frame during which this summary value applies to
the patient. May be just an initial dateTime

-   Usage Note: Validity period may overlap among different SPCU values
based on procedure or process used to determine the value

-   Cardinality: 0..1

-   Type: duration

##### Comment

-   Definition: Text to further explain the context for this specific
SPCU categorization. Usage note: Content included may be related to
social and/or cultural context to be considered or additional
information related to the linked observations, particularly with
overlapping active values

-   Cardinality: 0..1

-   Type: long text

##### Linked Clinical Observation

-   Definition: Link or identifier to observation(s) or report(s) that
are used to determine the sex category value

-   Usage Note: The specific implementation of these links will vary
based on the standard used. This GH model does not specify the encoding
mechanism for a link. It could be a DOI, a URL, a DICOM SCOORD-3D, etc.
The specific standards and implementations will specify this. The linked
information should clearly align with the chosen SPCU. For example, a
patient with an initial diagnosis of an intersex condition could have
supporting clinical observations specific to the diagnosis. Additional
information may be provided in the Comment attribute.

-   Cardinality: 0..n

-   Type: string

### Recorded Sex or Gender (RSG)

Recorded Sex or Gender information typically originates from a physical
or electronic document that was provided to a medical provider. The
rules for these documents have varied significantly over time and place,
and the relationship to current Gender Identity or SPCU may be unclear.
The RSG element includes source information so that the definition of
"X" in a California driver's license can be found if necessary and the
Jurisdiction for the state of California can be recorded. The RSG also
includes an internationally equivalent code to reduce the problems with
unfamiliar sources. The original medical record source can provide an
equivalent international code when it has one.

**Definition:** Documentation of a specific instance of sex and/or
gender information.

**Usage Note:** This element is to be used to differentiate existing
poorly specified sex or gender data, and new context-laden sex or gender
information, from the other proposed sex and gender information in this
specification. This element is to be used for an existing "sex" element
in a document or record when the intent and meaning is unclear so that
existing data is preserved but separated from the other proposed but
very specific sex and gender information. A single patient may have zero
to many such attributes. For example, the person's birth certificate
information, passport information, and national identity document
information may all be present. This is necessary because an
individual's identity documents may be updated at different rates or for
different reasons. For instance, a trans woman may be able to update her
driver's license to 'F' but her state might not allow changing a value
on her birth certificate, which may still read 'M'.

Sex assigned at birth (SAAB), while very common and considered essential
in some jurisdictions, is considered a RSG entry. In these cases, the
"identity type" could be specified as "sex assigned at birth" or another
regionally specific short text string. As a result of feedback from the
Gender Harmony project and in-line with the Gender Harmony model, the US
Office of the National Coordinator (ONC) recognized in it's Standards
Bulletin (SB22-2), regarding the development and finalization of United
States Core Data for Interoperability (USCDI) Version 3, that "the data
element Sex (Assigned at Birth) is used to represent different concepts
not necessarily associated with what is assigned at the time of birth,
such as clinically relevant sex for labs or diagnostic imaging, as well
as administrative sex as recorded on birth certificates and health
forms." As a result, ONC changed the name of the data element to "Sex"
acknowledging the previous limitation to information at birth.

**Cardinality:** 0..n

#### Attributes: 

##### Source Recorded Sex or Gender 

-   Definition: The actual value found on the document. This may be in
any character set. For example. a Russian identity card might have the
value 'ж' for sex.

-   Cardinality: 1..1

-   Type: Code or constrained short text

##### International Equivalent Recorded Sex or Gender

-   Definition: An international representation of the value found on
the document. This should be recorded in ISO/IEC 8859-1 (Latin 1) or
equivalent. For example. a Russian identity card might have the value
'ж' for sex which is the source value, but the international equivalent
would be 'F' for interoperability and international legal purposes, as
outlined in documentation by the International Civil Aviation
Organization (ICAO).

-   Cardinality: 0..1

-   Type: Code or constrained short text

-   Proposed Terminology:

    -   minValueSet: RecordedSexOrGender InternationalEquivalent
        valueSet

    -   binding Strength: extensible

##### Type

-   Definition: The type or category of sex or gender that is recorded

-   Cardinality: 0..1

-   Type: code or constrained text

##### Record Description

-   Definition: A short phrase that describes the document or record
that includes the sex or gender value. E.g., national ID card, birth
certificate, passport.

-   Cardinality: 0..1

-   Type: string

##### Acquisition Date

-   Definition: The date that the document was scanned, processed, etc.
to extract the sex or gender information.

-   Cardinality: 0..1

-   Type: datetime

##### Validity Period

-   Definition: The time frame during which the document is valid. May be just an
initial dateTime.

-   Cardinality: 0..1

-   Type: duration

##### Issuer

-   Definition: Jurisdiction or organization that issued the document 

-   Cardinality: 0..1

-   Type: string

##### Source Field Name

-   Definition: Name of the source field in the document for this Recorded 
Sex or Gender instance.

-   Usage Note: This may be in any character set. For example, on a Russian
identity card it could be 'Пол'.

-   Cardinality: 0..1

-   Type: string

##### Source Field Description

-   Definition: A description of the source field in the document for this 
Recorded Sex or Gender instance.

-   Usage Note: Further description of the source field to clarify
intent of meaning. This may be a link or an external reference. For
example, there is an international standard for the fields on an
international travel passport.

-   Cardinality: 0..1

-   Type: string

### Name to Use (NtU)

The Name to Use enables care providers to use the name that is chosen by
the person. This element may match but is distinct from a person's legal
name and is the appropriate name to be used in person-centered
healthcare conversations. Some cultures have very long names, and expect
that for all but mandatory legal situations, the person will use a more
manageable name. Jurisdictions have different rules and processes for
name changes, so there is often a mismatch that can be prolonged in
difficult situations.

**Definition:** Text attribute that provides the name that should be
used when addressing or referencing the patient.

**Usage Note:** This information is usually provided by the patient.
Depending on the standard applicable to an implementation, this might be
encoded within a Person/Patient Name field with an appropriate name type
qualifier but is independent of any other name type or name component.
This may be a nickname or formal name. Multiple cardinalities are
required to support changes in desired name over time, such as when a
patient desires a change in name to align with expressed gender. This
means a validity period and a comment attribute to allow text that can
be used to capture context for use of the name.

**Cardinality:** 0..n

#### Attributes: 

##### Name 

-   Definition: Name to Use when addressing or referencing the patient.

-   Cardinality: 1..1

-   Type: string

##### Validity Period

- Definition: The timeframe during which the name is to be used. May
just include a start date.

-   Cardinality: 0..1

-   Type: duration

##### Comment

--  Definition: Text to further explain use of the Name. This may be
related to social and/or cultural context.

-   Cardinality: 0..1

-   Type: long text

### Pronouns

**Definition:** Pronoun(s) specified by the patient to use when
referring to the patient in speech, in clinical notes, and in written
instructions to caregivers.

**Usage Note:** Personal pronouns are words used instead of a noun or a
noun phrase used to refer to people. Understanding which pronoun(s) to
use when referring to someone is important for providing affirming
health care. Avoiding incorrect pronoun use and patient misgendering is
crucial in transgender and gender-diverse care. It is important to
reliably exchange personal pronouns that the individual has specifically
reported they want used. The information could be considered a primary
(first class) element associated with the demographic information for
the patient. However, it may require representation as an observation
about the patient. Local policy will determine how pronouns are chosen
for infants and other similar situations. Policy and local custom will
determine what to use when this attribute is not present, or when
multiple are present.

Different pronouns may be used in one care setting than another care
setting. The pronouns used in the work environment may be different than
those in the care setting. 

**Cardinality:** 0..n

#### Attributes: 

##### Pronoun 

-   Definition: The noun or a noun phrase used for the patient.

-   Cardinality: 1..1

-   Type: Code or constrained short text

-   Proposed Terminology:

    -   minValueSet: Pronoun valueSet

    -   binding Strength: extensible

##### Validity Period

-   Definition: The timeframe during which the pronoun is to be used.
May just include a start date.

-   Cardinality: 0..1

-   Type: duration

##### Comment

-   Definition: Text to further explain use of the pronoun.

-   Usage Note: Multiple pronoun entries may exist and overlap as some
persons utilize multiple pronouns simultaneously or switch usage based
on context, familiarity, comfortability, and/or gender identity (for
instance, in the case of bi-gender or gender-fluid persons).

-   Cardinality: 0..1

-   Type: long text
