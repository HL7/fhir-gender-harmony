# V2 Gender Harmony 

# **NOTE TO BALLOTERS**
## V2.

*In all product families there is debate around use of observations to represent the Gender Harmony concepts – v2 is no different. We are seeking feedback from the community around which solution is more acceptable / implementable / appropriate. Identification/Labeling of the Gender Harmony concepts uses the same vocabulary (LOINC) regardless if using the new segment approach (GSP-4), but for the other 2 we have specific segments (Recorded Sex or Gender (GSR) and Sex for Clinical Use (GSC)) or in the observation code (OBX-3). Similarly, the value sets used for the answers in the segments (GSP-5, GSR-4 and GSC-4) shall be the same as in FHIR or CDA. While we do not here describe an OBX-based approach, it may be possible to convey additional Gender Harmony concepts in this way, understanding that in order to create an equivalence for all concepts represented in the new segments, the observation segment would need to be extended with several fields. In your comments, please include the pros / cons you see for each approach.*


# **7 V2 IMPLEMENTATION**
HL7’s Version 2.x (V2) messaging standard is the workhorse of electronic data exchange in the clinical domain and arguably the most widely implemented standard for healthcare in the world. This messaging standard allows the exchange of clinical data between systems. It is designed to support a central patient care system as well as a more distributed environment where data resides in departmental systems. It covers workflows and result automation and can be expected to be present for at least some of the data exchange that needs to convey Gender Harmony data.
1. # **INTERIM SOLUTION**
[TO DO – need to define ‘interim solution and why it was created]

In order to support the exchange of a limited set of Gender Harmony concepts for the patient using the existing base standard constructs, the creation of an observation group consisting of an Observation (OBX) segment, a participation (PRT) segment and a Comment (NTE) segment inserted in the respective message structures has been proposed here:  [www.hl7.org/permalink/?SOGIGuidance](http://www.hl7.org/permalink/?SOGIGuidance).
1. # **GSP – Person Gender and Sex Segment**
The GSP segment conveys person-level concepts relating to an individual. Common concepts known to be important include:

- Gender Identity:  [TO DO - ADD CORRECT REFERENCE TO DEFINITION/CONCEPT] 
- Pesonal Pronouns:  [TO DO - ADD CORRECT REFERENCE TO DEFINITION/CONCEPT]*.*

The HL7 base specification does not proscribe if/how a system maintains an audit trail of changes to the data represented in the GSP segment. Depending on system design and workflow needs, it may be necessary to retain the gender and sex history for an individual.

The use of the GSP segment is not restricted to use with a patient alone. Other individuals represented in a message (e.g. a next of kin) may also have personal gender and sex values.  

HL7 Attribute Table – GSP – Person Gender and Sex

|**SEQ**|**LEN**|**C.LEN**|**DT**|**OPT**|**RP/#**|**TBL#**|**ITEM#**|**ELEMENT NAME**|
| :-: | :-: | :-: | :-: | :-: | :-: | :-: | :-: | :- |
|1|||SI|R|||03543|Set ID|
|2|1..1||ID|R||0206|00816|Action Code|
|3|||EI|C|||<TBD>|GSP Instance Identifier|
|4|||CWE|R||<TBD>|<TBD>|SOGI Concept|
|5|||CWE|R| |<TBD>|<TBD>|SOGI Concept Value|
|6|||DR|O|||<TBD>|Validity Range|
|7|||TX|O|||<TBD>|Comment|
XE "HL7 Attribute Table: OH4"
# 7.1.1.1 GSP-1   Set IDXE " OH4-1 Set id"   (SI)   03543
Definition: This field contains the sequence number used to identify the GSP segment instances in a message. 
2. # GSR-2   Action CodeXE " OH4-2   Action Code "   (ID)   00816
Definition: This field contains a code defining the action to be taken for this segment.
2. # GSP-3   GSP Instance Identifier (EI) <TBD>
Definition: This field contains the value that uniquely identifiers a single GSP declaration for an individual. This field is conditionally required when the Action Code in GSP-2 indicates data is not being sent in Snapshot Mode (valued “S”).  
2. # GSP-4   SOGI Concept  (CWE)   <TBD>
Definition: This field contains an identifer for the SOGI related concept being asserted (eg. Gender Identity, or Personal Pronouns). Refer to [TO DO - ADD CORRECT REFERENCE TO DEFINITION/CONCEPT]*,* for suggested values.
2. # GSP-5   SOGI Concept Value  (CWE)   <TBD>
NOTE:  This reference was maintained in this IG for continunity only. Sexual orientation was not a part of the Gender Harmony Project.

Definition: This field contains the value asserted for the concept conveyed in GSP-4. The appropriate value set to use will vary with the concept being communicated (i.e. the valid list of concepts for Gender Identity will likely be different than the valid list of concepts for Sexual Orientation).

[TO DO - ADD CORRECT REFERENCE TO CODE SET/VALUE SET]  


2. # GSP-6   Validity PeriodXE "OH4-4 Combat Zone End Date "   (DR)   <TBD>
Definition: This field asserts the time frame during which the value in GSP-5 applies to the individual. This field may contain values for both the Start Date/Time and End Date/Time for values known to no longer be in use. Alternatively, the field may be populated with just a Start Date/Time which indicates that the value is still currently in use. **Note that the Start Date/Time for the Validitity Period may be different than the date on which the data was collected and/or entered.**
2. # GSP-7   Comment  (TX)   <TBD>
Definition: This field contains a free text comment pertaining to the value conveyed in GSP-5.

As an example, consider an individual who identified as male as of January 1 2021 and used he/him/his pronouns until July 1 2021 when the individual began to also identify as non-binary and adopt the they/them/theirs pronouns. If the individual had encounters with a provider in March and October, the following segments would represent the Person Gender and Sex information known at those times.

Message generated in March:

[TO DO: ADD CORRECT REFERENCE TO CODE SET/VALUE SET]  

GSP|1|S||76691-5^Gender identity^LN |M^Male^L|20210101

GSP|2|S||90778-2^Personal pronouns – Reported^LN |LA29518-0^he/him/his/his/himself^LN|20210101

Message generated in October where the entire individual’s history is conveyed:

[TO DO: ADD CORRECT REFERENCE TO CODE SET/VALUE SET]  

GSP|1|S||76691-5^Gender identity^LN |M^Male^L|20210101

GSP|2|S||76691-5^Gender identity^LN |X^Non-binary^L|20210701

GSP|3|S||90778-2^Personal pronouns – Reported^LN |LA29518-0^he/him/his/his/himself^LN|20210101^20210630

GSP|4|S||90778-2^Personal pronouns – Reported^LN |LA29520-6^they/them/their/theirs/themselves^LN|20210701

OR

Message generated in October where only the individual’s current valid values are being conveyed

GSP|1|S||76691-5^Gender identity^LN |M^Male^L|20210101

GSP|2|S||76691-5^Gender identity^LN |X^Non-binary^L|20210701

GSP|3|S||90778-2^Personal pronouns – Reported^LN |LA29520-6^they/them/their/theirs/themselves^LN|20210701

1. # **GSR – Recorded Gender and Sex Segment**
The recorded sex and gender concept includes the various sex and gender concepts that are often used in existing systems but are not known to represent a gender identity or sex for clinical use. Examples of recorded sex or gender concepts include administrative gender, administrative sex, and sex assigned at birth. Other examples include the sex or gender marker on a birth certificate, insurance card, driver's license, passport, or other document. These sex or gender concepts vary widely in their use and possible values. For the purposes of exchanging these concepts, implementers are encouraged to define the specific sex or gender concept that is relevant for their use case and create a use-case specific property or extension to represent that specific concept. For example, if the sex assigned at birth is an important concept in a specific jurisdiction, that jurisdiction can create a realm-specific extension for that concept. 

Documenting the recorded gender or sex is an important aspect of transgender and gender-diverse care as an individual’s identity documents may be updated at different rates or for different reasons. For instance, a trans woman may be able to update her driver’s license to ‘F’ but her state might not allow changing a value on her birth certificate, which may still read ‘M’. 

The HL7 base specification does not proscribe if/how a system maintains an audit trail of changes to the data represented in the GSP segment. Depending on system design and workflow needs, it may be necessary to retain the recorded gender and sex history for an individual.

The use of the GSR segment is not restricted to use with a patient alone. Other individuals represented in a message (e.g. a next of kin) may also have recorded gender and sex values.  

HL7 Attribute Table – GSR – Recorded Gender and SexXE "HL7 Attribute Table: OH4"

|**SEQ**|**LEN**|**C.LEN**|**DT**|**OPT**|**RP/#**|**TBL#**|**ITEM#**|**ELEMENT NAME**|
| :-: | :-: | :-: | :-: | :-: | :-: | :-: | :-: | :- |
|1|||SI|R|||03543|Set ID|
|2|1..1||ID|R||0206|00816|Action Code|
|3|||EI|C|||<TBD>|GSR Instance Identifier|
|4|||CWE|R||<TBD>|<TBD>|Recorded Gender or Sex|
|5|||CWE|O|||<TBD>|Document Type|
|6|||CWE|O|||<TBD>|Source Field |
|7|||CWE|O|||<TBD>|Jurisdiction|
|8|||DTM|O|||<TBD>|Acquisition Date|
|9|||DR|O|||<TBD>|Validity Period|
|10|||TX|O|||<TBD>|Comment|

2. # OH4 field definitionsXE "OH4 field definitions"
2. # GSR-1   Set IDXE " OH4-1 Set id"   (SI)   03543
Definition: This field contains the sequence number used to identify the GSR segment instances in a message. 
2. # GSR-2   Action CodeXE " OH4-2   Action Code "   (ID)   00816
Definition: This field contains a code defining the action to be taken for this  segment. Recorded Gender and Sex information for an individual must be sent in Snapshot Mode thus this field is constrained to a value of “S”. A “snapshot” for an individual may be defined as either a set of GSR segments conveying a snapshot of the current valid values for the individual or a set of GSR segments conveying a snapshot of the history of the individual as known by the system generating the message (including known values which are no longer valid (see use of Validity Period in GSP-6 for more information).
2. # GSR-3   GSR Instance Identifier (EI) <TBD>
Definition: This field contains the value that uniquely identifiers a single GSR declaration for an individual. This field is conditionally required when the Action Code in GSR-2 indicates data is not being sent in Snapshot Mode (valued “S”).  
2. # GSR-4   Recorded Gender or Sex   (CWE)   <TBD>
Definition: This field contains the sex or gender property for the individual from a document or other record. [TO DO: ADD CORRECT REFERENCE TO CODE SET/VALUE SET], for suggested values.
2. # GSR-5   Document TypeXE "OH4-4 Combat Zone End Date "   (CWE)   <TBD>
Definition: This field contains the source document where this sex or gender property is recorded. For instance national ID card, birth certificate, passport, patient medical record.
2. # GSR-6   Source Field Name   (CWE)   <TBD>
Definition: This field asserts the name of the source field on the document.
2. # GSR-7   Jurisdiction   (CWE)   <TBD>
Definition: This field contains the jurisdiction or organization that issued the document from which the sex or gender was acquired.
2. # GSR-8   Acquisition Date   (DTM)   <TBD>
Definition: This field contains the date/time when the sex or gender value was first recorded in the system.
2. # GSR-9   Validity Period XE "OH4-4 Combat Zone End Date "   (DR)   <TBD>
Definition: This field asserts the time period during which the recorded gender or sex value in GSR-3 applies to the individual. May be just a Start Date/Time for values which are still valid.
2. # GSR-10  Comment  (TX)   <TBD>
Definition: This field contains a free text explanation about the context or source of the recorded sex or gender value.
1. # **GSC – Sex For Clinical Use Segment**
[TO DO: ADD CORRECT REFERENCE TO DEFINITION/CONCEPT]  

Sex for Clinical Use is a categorization of a patient's clinical sex derived from observable information such as an organ inventory, recent hormone lab tests, genetic testing, menstrual status, obstetric history, etc. This property is intended for use in clinical decision making and indicates that treatment or diagnostic tests should consider best practices associated with the relevant reference population.

While clinical decision-making processes could account for the specific physiological or anatomical attributes of the patient, there are several practical considerations, such as patient privacy and limited capabilities of existing systems which create the need for a categorization that is easy to exchange. The Sex for Clinical Use categorization is intended to bridge the gap between the hypothetical ideal and the practical needs of operational systems.

Sex for Clinical Use is a contextual concept. For example, a patient may generally be categorized as male, but for a specific lab test, the resulting lab should use the reference ranges associated with a female reference population. In this case, systems may provide a patient-context [sexForClinicalUse](http://build.fhir.org/extension-patient-sexforclinicaluse.html) that acts as a 'default' for most care and annotate the lab order with a context-specific sexForClinicalUse. Systems may determine what enclosing contexts are useful, but Patient, Encounter and EpisodeOfCare are three enclosing contexts that may often apply.

The Sex for Clinical Use segment can use GSR-6 to communicate a clinical sex category on the on relevant clinical context (e.g., order, diagnosis) or enclosing contexts (e.g., patient, encounter).

For ease of interoperability, a patient’s sex for clinical use is constrained to four possible categories. Any patient for which special considerations apply should be categorized as 'Specified'. The 'Specified' category is often represented as 'Other' in existing systems.

Female - Available data indicates diagnostic and treatment plans should consider best practices associated with female reference populations.

Male - Available data indicates diagnostic and treatment plans should consider best practices associated with male reference populations.

Specified - Patient data indicates the clinical diagnostic and treatment best practices may be undefined or not aligned with existing sex-derived reference populations. Individuals or systems providing care should either use default behavior that is safe for both male and female populations, individually review treatment options with the patient, or carefully inspect relevant observations in the chart before proceeding with treatment.

Unknown - The sex for clinical use cannot be determined because there are no relevant evidence or documentation, or the evidence or documentation are not sufficient to determine a value.

Because the SFCU can be context-specific, on rare occasions there may be more than one concurrent SFCU for a patient. For example, there could be multiple procedure results, each identifying a context specific SFCU determination used to set the normal range used.

The SFCU values exchanged in a message should be limited to those appropriate for the context(s) in the message. That is, an individual may have different SFCU values for two different procedures, but if the message only contains one of the procedures, only the SFCU value related to that procedure should be included in the message. Note that a single SFCU value may apply to multiple contexts within a single message (i.e. GSC-5 is allowed to repeat and point to multiple locations within the message).

The GSC segment should only be used to declare SFCU values for the patient conveyed in the message. Conveyance of a sex for clinical use for other individuals that may be described in the message (e.g. next of kin, guarantors, providers) is not permitted as these individuals will not have clinical contexts within the message and SFCU should not be used as a label for the person as a while.

HL7 Attribute Table – GSC –Sex for Clinical UseXE "HL7 Attribute Table: OH4"

|**SEQ**|**LEN**|**C.LEN**|**DT**|**OPT**|**RP/#**|**TBL#**|**ITEM#**|**ELEMENT NAME**|
| :-: | :-: | :-: | :-: | :-: | :-: | :-: | :-: | :- |
|1|||SI|R|||03543|Set ID|
|2|1..1||ID|R||0206|00816|Action Code|
|3|||EI|C|||<TBD>|GSC Instance Identifier|
|4|||CWE|R||<TBD>|<TBD>|Sex for Clinical Use|
|5|||DR|O|||<TBD>|Validity Period|
|6|||ERL|R|Y||<TBD>|Context|
|7|||ERL|O|Y||<TBD>|Evidence|
|8|||TX|O|||<TBD>|Comment|

2. # OH4 field definitionsXE "OH4 field definitions"
2. # GSC-1   Set IDXE " OH4-1 Set id"   (SI)   03543
Definition: This field contains the sequence number used to identify the GSC segment instances in a message. 
2. # GSC-2   Action CodeXE " OH4-2   Action Code "   (ID)   00816
Definition: This field contains a code defining the action to be taken for this  segment.  
2. # GSC-3   GSR Instance Identifier (EI) <TBD>
Definition: This field contains the value that uniquely identifiers a single GSC declaration for an individual. This field is conditionally required when the Action Code in GSC-2 indicates data is not being sent in Snapshot Mode (valued “S”).  
2. # GSC-4   Sex for Clinical Use   (CWE)   <TBD>
Definition: This field asserts the context-specific categorization of a patient's sex for the purpose of clinical use. Refer to [TO DO: ADD CORRECT REFERENCE TO CODE SET/VALUE SET], for suggested values.
2. # GSC-5   Validity PeriodXE "OH4-4 Combat Zone End Date "   (DR)   <TBD>
Definition: This field asserts the time frame during which this value applies to the patient context. May be just an initial dateTime.
2. # GSC-6   Context   (ERL)   <TBD>
Definition: This field asserts the clinical context(s) relevant for the declared SFCU value. The ERL data type is used to specify a location in the message which carries the clinical context. For example, GSC-5 may point to procedure (PR1) or order (ORC) segment within the message. This field is allowed to repeat to allow a single declared SFCU value to be applied to multiple contexts within the message. As well, the GSC segment is allowed to repeat within a message as an individual may have different SFCU values for different contexts within a single message. The GSC-6 field is required as any SFCU value declared within a message must relate to at least one context within the same message.
2. # GSC-7   Evidence   (ERL)   <TBD>
Definition: This field asserts clinical data (e.g. observations, diagnoses) that are used to determine the SFCU value. The linked information should clearly align with the chosen SFCU value. This field is allowed to repeat as multiple pieces of clinical data may contribute to the chosen SFCU value.
2. # GSC-8  Comment  (TX)   <TBD>
Definition: This field contains a free text comment pertaining to the sex for clinical use.
1. # **INSERTING THE SEGMENTS INTO THE RESPECTIVE MESSAGES**
In v2 the event context determines the message structure, and the location in the order of segments in the message provided context. How and where these new segments are used depends on the context. This section is focused only on those events where *Gender Harmony concepts* are of importance, primarily for patient related events (though this could also be important to exchange for staff master files). 

The GSP, GSR, and GSC segments are related and will be inserted in patient specific messages as a group at the end of the patient identification, indicating that these concepts belong to the patient. When placed in other message groups, for example following the Next of Kin (NK1) segment, the concepts are understood to relate to the person being described in the Next of Kin segment, though only the first two segment types make sense here.
1. # **Admit / Transfer / Discharge (Patient Administration = Chapter 3)**
ADT^A01^ADT\_A01: ADT Message XE "ADT"  XE "Messages:ADT" 

|**Segments**|**Description**|**Status**|**Chapter**|
| :- | :- | :-: | :-: |
|MSH|Message Header||2|
|[{ [ARV](#_ARV_-_Access) }]|Access Restrictions||3|
|[{ SFT }]|Software Segment||2|
|[  UAC  ]|User Authentication Credential||2|
|[EVN](#EVN)|Event Type||3|
|[PID](#PID)|Patient Identification||3|
|[  [PD1](D:\Eigene Dateien\2018\HL7\Standards\v2.9 May\716 - New.doc##PD1)  ]|Additional Demographics||3|
|**[{ GS[P](D:\Eigene Dateien\2018\HL7\Standards\v2.9 May\716 - New.doc##NK1) }]**|**Person Gender and Sex**||**3**|
|**[{ GSR }]** |**Recorded Gender and Sex**||**3**|
|**[{ GSC }]** |**Sex for Clinical Use**||**3**|
|[{ [OH1](#_OH1_-_Person) }]|Employment Status||3|
|[{ [OH2](#OH2) }]|Past or Present Job||3|
|[ [OH3](#OH3) ]|<p>Usual Work</p><p></p>||3|
|[{ [OH4](#_OH4_-_Combat) }]|Combat Zone Work||3|
|[{ [ARV](#_ARV_-_Access) }]|Access Restrictions|B|3|
|[{ ROL }]|Role|B|15|
|[{ PRT }]|Participation||7|
|[{|--- NEXT\_OF\_KIN begin|||
|`     `[NK1](D:\Eigene Dateien\2018\HL7\Standards\v2.9 May\716 - New.doc##NK1)   |Next of Kin / Associated Parties||3|
|`    `**[{ [GSP](D:\Eigene Dateien\2018\HL7\Standards\v2.9 May\716 - New.doc##NK1) }]**|**Person Gender and Sex**||**3**|
|`    `**[{ GSR }]** |**Recorded Gender and Sex**||**3**|
|`    `[{ [OH2](#_OH2_-_Past) }]|Past or Present Job||3|
|`    `[  [OH3](#_OH3_-_Usual)  ]|Usual Work||3|
|}]|--- NEXT\_OF\_KIN end|||
|`   `[PV1](D:\Eigene Dateien\2018\HL7\Standards\v2.9 May\716 - New.doc##PV1)|Patient Visit||3|
|[  [PV2](D:\Eigene Dateien\2018\HL7\Standards\v2.9 May\716 - New.doc##PV2)  ]|Patient Visit - Additional Info.||3|
#






