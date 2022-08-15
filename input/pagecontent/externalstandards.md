#### DICOM
The existing DICOM model dates back to 1985 and earlier work. It was frozen and has remained unchanged since 1995. Imaging medical records from 1995 onward all use this model.
The DICOM model was originally specified to include a single mandatory field to capture Patient Sex with allowed values of Male, Female, Other and Unknown. The usage was not explicitly specified, but the implicit usage was Sex for Clinical Use. It is used in various places within DICOM, and by DICOM compliant equipment, to specify values for sex-linked characteristics. For example, it is used as input for Standard Update Value (SUV) computations in nuclear medicine and used as a parameter into patient dose sensitivity models for radiation dose reporting. These computations and models are based on statistical analysis of many patients and reflect the sex-linked characteristics of the studied populations.

Operationally, this field is initially populated either by hand or based on an order. The order is frequently conveyed by HL7 message. The inconsistency and confusion caused by having one field for multiple concepts (administrative sex, gender identity and sex for clinical use) leads to occasional inconsistency in the image results and reports created by DICOM equipment. It also leads to operators occasionally making changes to reflect the patient’s sex for clinical use that then cause downstream inconsistencies with HL7 systems that were using administrative sex or gender identity.

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


#### SNOMED International
SNOMED International created, then disbanded, a Sex and Gender Clinical Project Group. The project group gathered SMEs to provide advice on the current clinical and administrative needs for sex and gender terminology standards. The group was disbanded in May 2021 pending completion of the ISO analysis and this Gender Harmony project.

#### NCPDP
The National Council for Prescription Drug Programs (NCPDP) is an ANSI accredited SDO representing the pharmacy services industry. The NCPDP SCRIPT ERx standard is used in EHR systems. The current values under the standard, labeled Gender, are F (Female), M (Male), and U (Unknown).

However, NCPDP is moving to include both Administrative Gender and Sex at Birth elements in its future state. NCPDP has identified a business need to identify when someone’s gender is different then their Sex Assigned at Birth (SAAB) to obtain medication without delay, in situations where gender mismatch edits may occur.

Currently, NCPDP has approved the field Sex Assigned at Birth that will be used as an optional field in the event the Sex Assigned at Birth (if present) differs from the current XML element Gender. For example, the Sex Assigned at Birth could be “Male” with the Gender field “Female”.

Note: The NCPDP Gender Transition Task Group determined the Conditional Gender Code (C08- 4T), and Purchaser Gender Code (595-YY) were not applicable to patient matching. There was also an added element of “Reproductive Potential”.

#### X12
X12 is an ANSI accredited SDO that develops and maintains transactions based in electronic data interchange (EDI). Currently, all X12 transactions use the following values to classify the element Gender Code: F (Female), M (Male) and U (Unknown). The definition for this element is “Code indicating the sex of the individual,” X12 does not have separate fields for gender identity and has attempted to clarify reasoning behind the use of Unknown to represent nonbinary gender on claims as follows:
    “...the value of “U” is the appropriate option when the sender cannot explicitly select either “M” or “F”. While the description of value “U” is Unknown, in this case, Unknown only means that neither “M” nor “F” can be sent. The reason that neither “M” nor “F” can be sent is what is unknown. “U” does not necessarily mean that the gender is unknown to the sender.”
In a future state, X12 is considering expanding to the following available elements: F (Female), M (Male), I (Non-binary), T (Self-reported as transgender), A (Not provided), U (Unknown) and include the code notes:
    Code value A = when gender cannot be sent due to reporting restrictions
    Code value U = use when gender is unknown.
X12 is currently deliberating on this and will hold future votes in 2021 to address the need for additional code values for the DMG03 in future versions.