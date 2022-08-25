### Introduction

HL7’s Version 2.x (V2) messaging standard is the workhorse of electronic data exchange in the clinical domain and arguably the most widely implemented standard for healthcare in the world. This messaging standard allows the exchange of clinical data between systems. It is designed to support a central patient care system as well as a more distributed environment where data resides in departmental systems. While the breadth of scenarios covered by the V2 standard means that not all messages will require support for Gender Harmony concepts (e.g. master file management, workflows and result automation) it can be expected that many of the V2 data exchange scenarios will need to convey Gender Harmony data.

*NOTE TO BALLOTERS*

*#1 In all product families there is debate around use of observations (OBX) to represent the Gender Harmony concepts as opposed to dedicated constructs (e.g. new v2 segments, FHIR extensions). While we do not describe the OBX-based approach here, there is the SOGI profile component for use with existing v2 implementations which uses a PATIENT\_OBSERVATION\_GROUP consisting of an Observation (OBX) segment, a Participation (PRT) segment and a Comment (NTE) segment inserted in the respective message structures. It is published here: [www.hl7.org/permalink/?SOGIGuidance](http://www.hl7.org/permalink/?SOGIGuidance). It may be possible to convey additional Gender Harmony concepts in this way, understanding that in order to create an equivalence for all concepts represented in the new segments (particularly Recorded Sex and Gender and Sex for Clinical Use), the observation segment would need to be extended with several fields. In this ballot we are seeking feedback from the community around which solution is more acceptable / implementable / appropriate, so please indicate that here. Detailed comments on the Long-Term Guidance in v2.9.1 should be submitted there on the <ADD LINK“HL7 Standard: Version 2.9.1 - An application Protocol for Electronic Data Exchange in Healthcare Environments” ballot ([http://www.hl7.org/documentcenter/public/ballots/2022SEP/downloads/V291_R1_N1_2022SEP.zip]())>, including comments related to supporting the use of PATIENT\_OBSERVATION groups and suggestions for its implementation instead of the special segments.* 

Regardless of the method ultimately selected, the exchange of the person-specific Gender Harmony concepts (e.g. pronouns, gender identity) uses the same vocabulary (LOINC) regardless if using the new segment approach (GSP-4) or an observation (OBX) segment. Similarly, the value sets used for the answers in the segments (GSP-5, GSR-4 and GSC-4) shall be the same as in FHIR or CDA or OBX-5 in the observation approach. Additional attributes to support Gender Harmony related data exchange also are using the same vocabulary across product families. Comments on vocabulary, where shared should be made in this FHIR R5the* “*HL7 FHIR® Release 5” ballot [<hl7.org/fhir/2022Sep](C:\Users\riki.merrick\OneDrive - Association of Public Health Laboratories\Documents\Supporting docs\HL7\HL7V291_Sep2022\background\hl7.org\fhir\2022Sep)LINK> ballot.*

##### Short Term Guidance

During the COVID-19 pandemic some jurisdictions required the inclusion of Sexual Orientation (which is not in the current scope of this IG) and Gender Identity, collectively often referred to as SOGI, in result messages sent to Public Health known as Electronic Lab Reporting (ELR). While we created a short-term solution confined to the current mechanisms available in the base standard (currently V2.9) for use in ELR, we want to make clear that use of ELR during the pandemic should not be construed as an endorsement of requiring labs and other ELR submitters to collect and transmit this data, but rather recognition of the fact that it may be necessary in the immediate short-term to make this data available to Public Health, given that SOGI data is typically not collected by laboratories nor is it critical to performing and interpreting lab tests. In the longer term this data should come from the Electronic Health Record system (EHR-s) – using the electronic case reporting standards that already include a profile (FHIR) and template (CDA) for Gender Identity which should be expanded to support other SOGI-related concepts, such as Sexual Orientation, and then used to convey this data to Public Health.

Because laboratories often don’t have direct interaction with the patient, the specimen is often collected off-site and transported to the lab, the collection of SOGI data may need to be performed by providers and transmitted to the lab via the ordering process. Where electronic order exchange (e.g. LOI) is used, this will require updates to the order message to include this content. Implementers will need to consider the necessary data collection workflows and work with providers and other patient-facing groups to collect and share this data with the labs.

In order to support this need, initially driven by the laboratory use case, as a short-term solution a profile component that can be used in any message structure was created. This profile supports the use of a PATIENT\_OBSERVATION\_GROUP consisting of an Observation (OBX) segment, a Participation (PRT) segment (if part of the used version of the standard) and a Comment (NTE) segment inserted in the respective message structures and is published here: [www.hl7.org/permalink/?SOGIGuidance](http://www.hl7.org/permalink/?SOGIGuidance).

##### Long Term Guidance

The V2 Management Group is concurrently balloting the Long Term Solution for V2, which matches this IG’s approach in FHIR to recognize these as patient specific constructs and proposes the use of 3 new segments that can be added to any message structure where appropriate which allows support to convey the person specific characteristics of Gender Identity, Pronouns and potentially Sexual Orientation as well as Recorded Sex or Gender not just for the patient but for other persons like the next of kin or personnel. Please review this ballot material *HL7 Standard: Version 2.9.1 - An application Protocol for Electronic Data Exchange in Healthcare Environments* and submit any detailed comments there. 

In particular you should look at these sections:

- Overarching Notes to Balloters in Chapter 1
- To cover the 5 Gender Harmony IG specific data elements:
  - Name to Use: Chapter 3, PID – Patient Identification Segment (3.4.2)
  - Gender Identity: Chapter 3, GSP – Person Gender and Sex Segment (3.4.19)
  - Pronouns: Chapter 3, GSP – Person Gender and Sex Segment (3.4.19)
  - Recorded Sex: Chapter 3, GSR – Recorded Gender and Sex Segment (3.4.20)
- Sex for Clinical Use: Chapter 3, GSC – Sex For Clinical Use Segment (3.4.21)
- Not part of Gender Harmony IG, but supported: Sexual Orientation: Chapter 3, GSP – Person Gender and Sex Segment (3.4.19)Detailed description of the Gender Harmony related segments in Chapter 3:
  - For self-describing Gender Identity, Pronouns and Sexual Orientation: GSP – Person Gender and Sex Segment (3.4.19)
  - For Recorded Sex or Gender: GSR – Recorded Gender and Sex Segment (3.4.20)
  - For Sex for Clinical Use: GSC – Sex For Clinical Use Segment (3.4.21)
- Where to add into the message structures in V2.9.1 based on the use cases:
- Use in Admission Transfer Discharge Use case in Chapter 3: 
  - Trigger Events and Message Definitions (3.3)
- Use in order Order messages in Chapter 4: 
  - TBD
- Use in result Result messages in Chapter 7: 
  - TBD
- Use in Financial Management Messages in Chapter 6:
  - BAR/ACK – Add Patient Account (EVENT P01) (6.4.1)
  - DFT/ACK – Post Detail Financial Transactions (EVENT P03) (6.4.3)
  - BAR/ACK – Update Account (EVENT P05) (6.4.5)
  - DFT/ACK – Post Detail Financial Transactions - Expanded (EVENT P11)
- Use in Master files in Chapter 8:
  - Staff/Practitioner Master Files (8.7)
- Use in Medical Records in Chapter 9:
  - MDM/ACK - Original Document Notification (Event T01) (9.6.1)
  - MDM/ACK - Original Document Notification and Content (Event T02) (9.6.2)
  - MDM/ACK - Document Status Change Notification (Event T03) (9.6.3)
  - MDM/ACK - Document Status Change Notification and Content (Event T04) (9.6.4)
  - MDM/ACK - Document Addendum Notification (Event T05) (9.6.5)
  - MDM/ACK - Document Addendum Notification and Content (Event T06) (9.6.6)
  - MDM/ACK - Document Edit Notification (Event T07) (9.6.7)
  - MDM/ACK - Document Edit Notification and Content (Event T08) (9.6.8)
  - MDM/ACK - Document Replacement Notification (Event T09) (9.6.9)
  - MDM/ACK - Document Replacement Notification and Content (Event T10) (9.6.10)
  - MDM/ACK - Document Cancel Notification (Event T11) (9.6.11)
- Use in Scheduling in Chapter 10:
  - Schedule Requests: Placer Application Requests and Trigger Events (10.3)
  - Schedule Notifications: Filler Application Messages and Trigger Events Unsolicited (10.4)
- Use in Patient Referral in Chapter 11:
  - Patient Information Request Messages and Trigger Events (11.3)
  - Patient Treatment Authorization Requests (11.4)
  - Patient Referral Messages and Trigger Events (11.5)
  - Collaborative Care Messages and Trigger Events (11.6)
- Use in Patient Care in Chapter 12:
  - Patient Goal Message (Events PC6, PC7, PC8) (12.3.1)
  - Patient Problem Message (Events PC1, PC2, PC3) (12.3.2)
  - Patient Pathway Message (Problem-Oriented) (Events PCB, PCC, PCD) (12.3.)
  - Patient Pathway Message (Goal-Oriented) (Events PCG, PCH, PCJ) ()
- Use in Personnel Management in Chapter 15:
  - Add Personnel Record (Event B01) (15.3.1)
  - Update Personnel Record (Event B02) (15.3.2)
  - Query Information (Event Q25/K25) (15.3.7)
  - Example for Add Personnel Record - Event B01 (15.5.1)
- Use in eClaims in chapter 16:
  - EHC^E01 – Submit HealthCare Services Invoice (event E01) (16.3.1)

##### Using the Gender Harmony Segments in earlier versions of HL7 (Pre-adoption Profile)

In order to use these new segments in earlier versions of HL7 (before V2.9.1) the data exchange partners have to agree to support this functionality by pre-adopting this profile component as part of their data exchange agreement and specifications.

##### GenderHarmony\_Component – ID: <OID TBD>

This profile component can be used in ANY message structure in ANY version, when data about Gender Identity, Pronouns, Recorded Sex and Gender or Sexual Orientation and similar concepts need to be exchanged.

##### Details for implementation

##### Indicating use of this profile

Populate one occurrence of MSH-21 as follows: 'GenderHarmony^^<OID TBD>^ISO'

##### Use of the Gender Harmony Specific Segments

Follow the segment definition, including the applicable vocabulary bindings, as described in V2.9.1. 

##### Rules for Inserting the Gender Harmony Segments into Existing Message Structures

In V2 the event context determines the message structure, and the location in the order of segments in the message provides context. So how / where these new segments are used depends on the context. This section is focused only on those events where Gender Harmony concepts are of importance, for patient related events, but also when important for next of kin or staff master files. 

The 3 Gender Harmony segments are related and will be inserted in patient specific messages as needed at the end of the patient identification (after the PD1 segment if it exists, otherwise after the PID segment), indicating that these concepts belong to the patient. All 3 segments must be optional and repeating. When placed in other message groups, for example following the Next of Kin (NK1) segment, the concepts are understood to relate to the person being described in the Next of Kin segment, though only the GSP and GSR segments are applicable in this context and should be added as optional and repeating.

##### Additional Considerations when exchanging Gender Harmony concepts

SOGI data is sensitive personal information with significant privacy and security considerations. Before exchanging SOGI data, trading partners should understand all the local regulatory and policy considerations surrounding patient consent and sharing SOGI data. Guidance in the area of when to exchange SOGI data and the necessary privacy, security and consent requirements around exchanging SOGI data is beyond the scope of this group and is left to the implementers who understand the local requirements. 

Since V2 has been used for a long time, the field Administrative Sex (PID-8) V2 is different from the concepts described in the Gender Harmony IG. Definitions and how this element is used may vary by project, as the definitional text from V2.9 is somewhat at odds with the location in the administrative patient information segment:

Definition: This field contains the patient’s sex. Refer to User-defined Table 0001 - Administrative Sex in Chapter 2C, Code Tables, for suggested values. = <https://terminology.hl7.org/CodeSystem-v2-0001.html>

Due to the longstanding existence of this field, we are not planning to change the definition of this field, but rather ensure users understand that is should be used with care, while defining additional constructs to convey the more precisely defined attributes. 

When conveying additional SOGI concepts in a message, implementers must consider how the business requirements of the receiving system will be satisfied when consuming SOGI data elements. Depending on the use case, a hierarchy of data elements may need to be constructed in order to ensure that business requirements are met appropriately. For example, in a billing use case, if both PID-8 and Gender Identity are populated in a message, the receiving system may choose to prioritize PID-8 over Gender Identity based on the needs of the use case.
