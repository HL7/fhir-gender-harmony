<!-- Updates based on Jira tickets 
Date             Jira ticket        Updated by                   Comment
2023-06-14       OTHER-2609         Joanie Harper                Added hyphen per Jira ticket https://jira.hl7.org/browse/OTHER-2609
2023-08-22      OTHER-2710          Rob McClure                 Added LOINC section, arranged sections in alpha order

-->

### DICOM

The existing [DICOM](https://www.dicomstandard.org) (Digital Imaging and 
Communications in Medicine) model dates back to 1985 and earlier work. It 
was frozen and has remained unchanged since 1995. Imaging medical records
from 1995 onward all use this model. The DICOM model was originally
specified to include a single mandatory field to capture Patient's Sex
(0010,0008) with allowed values of Male, Female, Other and
Unknown. Initially, the usage was not explicitly specified. It can be
used in various places within DICOM, and by DICOM compliant equipment,
to specify values for sex-linked characteristics. For example, it is
used as input for Standard Update Value (SUV) computations in nuclear
medicine and used as a parameter into patient dose sensitivity models
for radiation dose reporting. These computations and models are based
on statistical analysis of many patients and reflect the sex-linked
characteristics of the studied populations.

Operationally, this field is initially populated either by hand or
based on an order. The order is frequently conveyed by HL7 V2.x
message. The inconsistency and confusion caused by having one field
for multiple concepts (administrative sex, gender identity and sex parameter for clinical use) leads to occasional inconsistency in the image results
and reports created by DICOM equipment. It also leads to operators
occasionally making changes to reflect the patient’s sex parameter for clinical
use that then cause downstream inconsistencies with other systems that
were using administrative sex or gender identity.

#### DICOM Change Process

At time of publication of this Implementation Guide, DICOM has a supplement, 
"Supplement 233, Patient Model Gender Enhancements" in process
to incorporate some of the changes from the HL7 Gender Harmony
Project. The present expectation is to revise DICOM to:

- Clarify that the current Patient Sex attribute corresponds to the
originator's administrative choices.  This preserves compatibility
with existing medical records archives and equipment. It also explains
that SPCU should be used for clinical analysis when available.

- Add an optional SPCU attribute to convey SPCU as defined in the
logical model. As gender harmonized applications are installed
upstream that support SPCU, this should reduce ambiguities resulting
from the use of local administrative choices.

- Add an optional Patient Gender Identity attribute with the same
required and optional value set as described here. 

- Add an optional Name to Use attribute.

- Add an optional Pronouns attribute.

- Add an optional Recorded Sex and Gender attribute.

- Clarify existing DICOM patient and order comment fields to indicate
that when Sex Parameter for Clinical Use is "Specified", these comment fields
should provide information explaining relevant information for
operators and clinicians. They are presently used for operator
instructions, so this usage is a continuation of current usage.

These meet the strategic constraints on DICOM that the existing
medical archives must remain valid without modification, that existing
medical devices must remain minimally compliant, and that systems can
be upgraded to fully support these changes without introducing
dependency on upgrading other equipment.

DICOM is coordinating the development and approval of this change
proposal with the activity of the Gender Harmony project. 

### LOINC
[Logical Observation Identifiers Names and Codes (LOINC)](https://loinc.org/) is "the international standard for identifying health measurements, observations, and documents." LOINC is released twice a year (Feburary and August) under Creative Commons Attribution 4.0 International Public License. Gender harmony project uses LOINC clinical identifiers to represent the following observations:

- Gender identity (GI): [76691-5](https://loinc.org/76691-5/)
- Sex parameter for clinical use (SPCU): [99501-9](https://loinc.org/99501-9/)
- Recorded sex or gender (RSG): [99502-7](https://loinc.org/99502-7/)
  - The LOINC set of [example answer values](https://loinc.org/LL6134-2) is provided as just an example set by LOINC and while useful, is not intended to be a required implementation.
- Personal pronouns - Reported: [90778-2](https://loinc.org/90778-2/)
- LOINC does not have an observable that specifically represents a person's chosen name to use.

All of the above observations align directly with the gender harmony content. 

In addition to the above, LOINC also includes the useful observation Sexual orientation ([76690-7](https://loinc.org/76690-7/)).

### NCPDP
The [National Council for Prescription Drug Programs (NCPDP)](https://www.ncpdp.org) is an ANSI-accredited SDO representing the pharmacy services industry. The NCPDP SCRIPT ERx standard is used in EHR systems. The current values under the standard, labeled Gender, are F (Female), M (Male), and U (Unknown).

However, NCPDP is moving to include both Administrative Gender and Sex at Birth elements in its future state. NCPDP has identified a business need to identify when someone’s gender is different then their Sex Assigned at Birth (SAAB) to obtain medication without delay, in situations where gender mismatch edits may occur.

Currently, NCPDP has approved the field Sex Assigned at Birth that will be used as an optional field in the event the Sex Assigned at Birth (if present) differs from the current XML element Gender. For example, the Sex Assigned at Birth could be “Male” with the Gender field “Female”.

Note: The NCPDP Gender Transition Task Group determined the Conditional Gender Code (C08- 4T), and Purchaser Gender Code (595-YY) were not applicable to patient matching. There was also an added element of “Reproductive Potential”.

### SNOMED International
[SNOMED International](https://www.snomed.org) produces and maintains SNOMED CT, a globally recognized and used terminology standard for electronic health data. In 2021, a group of subject matter experts were gathered to participate in a Sex and Gender Clinical Project Group to provide advice on sex and gender terminology requirements for health record data. The group was closed in May 2021, pending the results of the ISO TC215 (Health Informatics) WG3. 

As a consensus standard that strives to align with international standards groups working in the same domain, SNOMED International will participate with ISO TC215 WG3 in their efforts in this domain to ensure international alignment. 

SNOMED International recognizes that there may be omissions, outdated or erroneous content in the disorders and procedure hierarchies related to sex and gender in SNOMED CT and encourages submissions of content requests for change through the appropriate National Release Centers (NRCs). 

### X12
[X12](https://x12.org) is an ANSI-accredited Standards Developer (ASD) that develops and maintains business-to-business
data exchange standards, including electronic data interchange (EDI) standards and schemas, which drive
business processes globally. With more than 320 transaction standards available for use, X12 standards
are used to conduct nearly every facet of business-to-business operations.

X12 is actively participating in HL7’s Gender Harmony Project and intends to present recommendations
based on the group's findings to X12's members. Currently, X12 transactions include gender codes from
an X12 maintained list identified as data element 1068 - Gender Code. Data element (DE) 1068 is a set of
codes indicating the sex of an individual. The X12 EDI Standard version 008030 supports the following
codes for use in DE 1068.

* A – Not Provided
* B – Not Applicable
* F – Female
* I – Nonbinary
* M – Male
* N – Non-sexed <br />*Gender is not known because observation or examination for such was not recorded or requested by the protocol*
* T – Self-reported as Transgender
* U – Unknown
* X – Unsexable <br />*Gender could not be determined because of ambiguity in external or internal genitalia*