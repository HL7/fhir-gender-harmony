
#

## V2 Gender Harmony
Sexual Orientation, Gender Identity, Administrative Sex, Birth Sex etc
Given that SOGI data is typically not collected by laboratories nor is it critical to performing and interpreting lab tests, inclusion of this data as part of the ELR ORU message is not the best long-term solution to capturing and sharing SOGI observations.
The electronic case reporting standards already include a profile (FHIR) and template (CDA) for Gender Identity and should be expanded to support other SOGI-related concepts, such as Sexual Orientation, and then used to convey this data to Public Health.
However, in the short term, during the COVID-19 pandemic, ELR may be the most viable method of collecting this data. This should not be construed as an endorsement of requiring labs and other ELR submitters to collect and transmit this data, but rather recognition of the fact that it may be necessary in the immediate short-term to make this data available to Public Health.
Because laboratories often don’t have direct interaction with the patient, the specimen is often collected off-site and transported to the lab, the collection of SOGI data may need to be performed by providers and transmitted to the lab via the ordering process. Where electronic order exchange (e.g. LOI) is used, this will likely require updates to the order message to include this content. Implementers will need to consider the necessary data collection workflows and work with providers and other patient-facing groups to collect and share this data with the labs.

SOGI data is sensitive personal information with significant privacy and security considerations. Before exchanging SOGI data, trading partners should understand all the local regulatory and policy considerations surrounding patient consent and sharing SOGI data. Guidance in the area of when to exchange SOGI data and the necessary privacy, security and consent requirements around exchanging SOGI data is beyond the scope of this group and is left to the implementers who understand the local requirements. Please see the comments section of this page for discussion regarding patient consent.
When conveying additional SOGI concepts in a message, implementers must consider how the business requirements of the receiving system will be satisfied when consuming SOGI data elements. Depending on the use case, a hierarchy of data elements may need to be constructed in order to ensure that business requirements are met appropriately. For example, in a billing use case, if both PID-8 and Gender Identity are populated in a message, the receiving system may choose to prioritize PID-8 over Gender Identity based on the needs of the use case.

Administrative Sex Administrative Sex - normally sent in PID-8 in V2 is different from the concepts below. Definitions and how this element is used may vary by project.
Definitional text from V2.9:
Definition: This field contains the patient’s sex. Refer to User-defined Table 0001 - Administrative Sex in Chapter 2C, Code Tables, for suggested values. = https://terminology.hl7.org/CodeSystem-v2-0001.html

### Introduction

HL7’s Version 2.x (V2) messaging standard is the workhorse of electronic data exchange in the clinical domain and arguably the most widely implemented standard for healthcare in the world. This messaging standard allows the exchange of clinical data between systems. It is designed to support a central patient care system as well as a more distributed environment where data resides in departmental systems. While the breadth of scenarios covered by the V2 standard means that not all messages will require support for Gender Harmony concepts (e.g. master file management, workflows and result automation) it can be expected that many of the V2 data exchange scenarios will need to convey Gender Harmony data.

#### NOTE TO BALLOTERS
In all product families there is debate around use of observations to represent the Gender Harmony concepts as opposed to dedicated constructs (e.g. new v2 segments, FHIR extensions). While we do not describe the OBX-based approach, it may be possible to convey additional Gender Harmony concepts in this way, understanding that in order to create an equivalence for all concepts represented in the new segments (particularly Recorded Sex and Gender and Sex for Clinical Use), the observation segment would need to be extended with several fields. In this ballot we are seeking feedback from the community around which solution is more acceptable / implementable / appropriate, so please indicate that here. Detailed comments on the Long-Term Guidance in v2.9.1 should be submitted here, including comments related to supporting the use of PATIENT_OBSERVATION groups and suggestions for its implementation instead of the special segments. 

Regardless of the method ultimately selected, the exchange of the person-specific Gender Harmony concepts (e.g. pronouns, gender identity) uses the same vocabulary (LOINC) regardless if using the new segment approach (GSP-4) or an observation (OBX) segment. Similarly, the value sets used for the answers in the segments (GSP-5, GSR-4 and GSC-4) shall be the same as in FHIR or CDA or OBX-5 in the observation approach.


## Short Term 

During the COVID-19 pandemic some jurisdictions required the inclusion of Sexual Orientation (which is not in the current scope of this IG) and Gender Identity, collectively often referred to as SOGI, in result messages sent to Public Health known as Electronic Lab Reporting (ELR). While we created a short-term solution confined to the current mechanisms available in the base standard (currently v2.9) for use in ELR, we want to make clear that use of ELR during the pandemic should not be construed as an endorsement of requiring labs and other ELR submitters to collect and transmit this data, but rather recognition of the fact that it may be necessary in the immediate short-term to make this data available to Public Health, given that SOGI data is typically not collected by laboratories nor is it critical to performing and interpreting lab tests. In the longer term this data should come from the Electronic Health Record system (EHR-s) – using the electronic case reporting standards that already include a profile (FHIR) and template (CDA) for Gender Identity which should be expanded to support other SOGI-related concepts, such as Sexual Orientation, and then used to convey this data to Public Health.

Because laboratories often don’t have direct interaction with the patient, the specimen is often collected off-site and transported to the lab, the collection of SOGI data may need to be performed by providers and transmitted to the lab via the ordering process. Where electronic order exchange (e.g. LOI) is used, this will require updates to the order message to include this content. Implementers will need to consider the necessary data collection workflows and work with providers and other patient-facing groups to collect and share this data with the labs.

In order to support this need, initially driven by the laboratory use case, as a short-term solution a profile component that can be used in any message structure was created. This profile supports the use of a PATIENT_OBSERVATION_GROUP consisting of an Observation (OBX) segment, a Participation (PRT) segment (if part of the used version of the standard) and a Comment (NTE) segment inserted in the respective message structures and is published here: www.hl7.org/permalink/?SOGIGuidance.


## Long Term

The V2 Management Group is concurrently balloting the Long Term Solution for V2, which matches this IG’s approach in FHIR to recognize these as patient specific constructs and proposes the use of 3 new segments that can be added to any message structure where appropriate which allows support to convey the person specific characteristics of Gender Identity, Pronouns and potentially Sexual Orientation as well as Recorded Sex or Gender not just for the patient but for other persons like the next of kin or personnel. Please review this ballot material <ADD LINK if possible, if not put the official ballot name from the ballot desktop here (HL7 Standard: Version 2.9.1 - An application Protocol for Electronic Data Exchange in Healthcare Environments is the title on the NIB)> and submit any detailed comments there. 

### Additional Considerations when exchanging Gender Harmony concepts

SOGI data is sensitive personal information with significant privacy and security considerations. Before exchanging SOGI data, trading partners should understand all the local regulatory and policy considerations surrounding patient consent and sharing SOGI data. Guidance in the area of when to exchange SOGI data and the necessary privacy, security and consent requirements around exchanging SOGI data is beyond the scope of this group and is left to the implementers who understand the local requirements. 

Since V2 has been used for a long time, the field Administrative Sex (PID-8) V2 is different from the concepts described in the Gender Harmony IG. Definitions and how this element is used may vary by project, as the definitional text from V2.9 is somewhat at odds with the location in the administrative patient information segment:

> Definition: This field contains the patient’s sex. Refer to User-defined Table 0001 - Administrative Sex in Chapter 2C, Code Tables,  
> for suggested values. = https://terminology.hl7.org/CodeSystem-v2-0001.html

Due to the longstanding existence of this field we are not planning to change the definition of this field, but rather ensure users understand that is should be used with care, while defining additional constructs to convey the more precisely defined attributes. 
When conveying additional SOGI concepts in a message, implementers must consider how the business requirements of the receiving system will be satisfied when consuming SOGI data elements. Depending on the use case, a hierarchy of data elements may need to be constructed in order to ensure that business requirements are met appropriately. For example, in a billing use case, if both PID-8 and Gender Identity are populated in a message, the receiving system may choose to prioritize PID-8 over Gender Identity based on the needs of the use case.

