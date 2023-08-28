<!-- Updates based on Jira tickets 
Date             Jira ticket        Updated by                   Comment
2023-06-16       OTHER-2411         Joanie Harper                Corrected Example 01: Imaging Order per the Jira ticket https://jira.hl7.org/browse/OTHER-2411
2023-06-16       OTHER-2488         Joanie Harper                Fixed spelling of narrative per the Jira ticket https://jira.hl7.org/browse/OTHER-2488
2023-08-02		All Usecase updates	Rob M				         Updated the entirew document using DICOm file from Steven N. Issues above are included.
2023-08-14                          Joanie Harper                Updated some numbering and spacing.
2023-08-28       OTHER-2548         Joanie Harper                Updated Intro and Use Case description
-->
### Introduction & Use Case Description

This use case illustrates DICOM Sex and Gender encoding, including: admission, patient prep, examination, post processing and reporting for a PET/CT examination order. A patient with EHR Sex Parameter for Clinical Use (SPCU) of “Female-typical” and an EHR Gender Identity of “Identifies a male gender” checks-in for a PET/CT examination. The examination is performed, the patient’s demographics are updated, and the report is delivered.

In this use case, there are three instances of Sex Parameter for Clinical Use (SPCU):<br>
Instance 1:  The ordering physician provides instructions for interpreting lab values within a SPCU comment. <br>
Instance 2:  A post-processing AI (Artifical Intelligence) application utilizes the Sex Assigned at Birth for the basis of reference values. <br>
Instance 3:  The radiologist determines the appropriate sex to use based on the patient's body composition for a Standard Uptake Value (SUV) calculation. <br>

The DICOM (Digital Imaging and COmmunications in Medicine) Standard attributes in this use case are not, at time of publication of this Implementation Guide, normative, and details in DICOM are still being defined in Supplement 233. Readers interested in participating in development of DICOM Sex and Gender encoding, please contact the [DICOM Secretariat](mailto:dicom@dicomstandard.org).

### Actors:

#### People

1.  Patient (John Smith) - whose previous records are for studies performed when his EHR Gender Identity was “Identifies as female gender”. 

2.  Referring Physician

3.  Facility Clerk - admits patient, utilizes the Radiology Information System (RIS)

4.  PET/CT Technologist

5.  Radiologist

#### Systems, (using IHE Actor names)

1.  ADT, Order Placer (Hospital EHR)

2.  Order Filler (RIS)

3.  Modality (PET/CT System)

4.  Image Manager/Archive (PACS: Picture Archive and Communications System)

5.  Dose Information Reporter

6.  Task Performer (Artificial Intelligence) 

### Scope Statement:

Use case covers admission, patient prep, examination, post processing and reporting for a PET/CT study.

### Precondition(s):

1.  John Smith is registered in the hospital record system under the name “Janet Smith”.

2.  Physician places the order in the EHR for "Janet Smith"

3.  John Smith arrives at an outpatient facility with an appointment.

4.  Patient history, social history, medical history has already been captured and are available in the EHR under "Janet Smith".

5.  Prior exams for comparison are retrieved based on rules established by the radiology department, using the name "Janet Smith" (e.g., body region, patient ID, type of exam).

6.  Technical scan and contrast administration parameters (protocol) are pre-determined based on departmental protocols for a female patient.

[**Example 01**](#example-01-imaging-order) depicts an HL7 Imaging Order for this patient with mapping to DICOM Modality Worklist attributes.

### Postcondition(s):

1.  PET/CT study is complete.

2.  Patient name change in the EHR has occurred.

3.  Report is generated in the RIS and available in the EHR.


### Workflow/Storyboard:

Note: IHE transactions are noted in brackets


<img style="vertical-align: top;" src="gh-dicom-2.svg" width="100%" /> 

Figure 1 Workflow Storyboard

#### Arrival and check-in:

In this scenario, the patient initiates the discussion with the clerk.

1.  When the patient arrives at the waiting room for a PET/CT examination he announces himself as “John”.

2.  The clerk asks “John Williams?”, seeing a John Williams in the schedule. 

3.  Patient: “No, Smith”.

4.  Clerk: “Date of birth”?

5.  Smith: “month, day, year”

6.  The clerk performs a date-of-birth based lookup and finds a schedule entry for Janet Smith, with Patient’s Sex “F” and Patient’s Gender “M”, and with a Patient Names to Use “John Smith”. Sex Comment contains “Hormonal treatment, use affirmed gender Creatine reference ranges\[1\]”.

7.  The clerk confirms that the birth dates match, in accordance with local policies, and checks in the patient.

8.  After check-in, the Scheduled Procedure Step is visible in the MWL.

9.  The clerk asks whether John wants to go through the name change update at the clinic to reflect his preferred name. Name change is initiated.

10. The clerk notifies the technologist that the patient has arrived.

[**Example 02**](#example-02-patient-name-update) depicts an HL7 Demographics Update message for this patient with mapping to DICOM Modality Worklist attributes.

#### Patient Preparation

1.  The technologist checks their schedule for John, and finds the order for “Janet Smith”, Patient’s Sex “F” and Patient’s Gender “M”, and with a Patient Names to Use “John Smith”. Sex Comment contains “Hormonal treatment, use affirmed gender Creatine reference ranges”.

2.  The technologist greets the patient as “John” and reconfirms birthdate.

3.  The technologist directs the patient to a changing area and instructs the patient to remove jewelry and change into a gown.

4.  When the patient is ready, the technologist asks the necessary related preparation questions, e.g., pregnancy status, most recent menstruation, allergies, history, preferred arm for IV contrast administration, etc.

5.  The technologist explains the procedure to the patient and answers any questions the patient may have. 

6.  Since the protocol calls for a contrast-enhanced CT, the technologist reviews the most recent eGFR, bun and creatine.

7.  The technologist confers with the radiologist to discuss acceptable lab values for safe contrast administration, given the Sex Comment, as well as the patient’s GFR, bun and creatine.

8.  The radiologist notes that the provided SPCU of Female, is not consistent with the SPCU Comment and calls the ordering physician to confirm.

9.  After discussing patient history with the ordering physician, the radiologist provides protocol alterations based on the  patient’s transgender status.

Note: The pre-identified protocol was based on a female patient (see item [8 in Precondition(s)](#preconditions)).

#### Examination

1.  The technologist knows to select the MWL entry for “Janet Smith” and expects a Patient’s Sex of “F”; this does not trigger a wrong patient concern.

2.  Patient demographics are loaded into the scanner demographics interface.

3.  The technologist applies alterations prescribed by the radiologist to scanner and contrast protocol. The radiotracer dose is not changed, as the department standardizes doses regardless of Patient Sex.

4.  The technologist starts an IV, administers radiotracer, and connects the contrast injector for the contrast-enhanced CT portion of the procedure.

5.  The study is performed.

6.  The images and Radiation Dose Structured Report (RDSR) are transferred to the PACS, Dose Information Reporter and AI Task
    Performer systems.

#### Analysis 

1.  The radiologist creates an SUV ROI on the PACS. The PACS identifies multiple items with different values in the Sex Parameter for Clinical Use Sequence (0010,xxx2), and prompts the radiologist to enter a value “M” or “F”.

2.  The Dose Information Reporter collects the RDSR, without exception.

3.  The AI task performer parses the Sex Parameter for Clinical Use Sequence (0010,xxx2) and identifies an Item with a Start DateTime (0010,xxx6) that matches the Patient's Birth Date (0010,0030), having a SPCU Code Sequence (0010,xxx9) of (Sup233-01, DCM, Female typical parameter). The algorithm processes the images, applying female reference values, and transfers evidence documents to the PACS.

Note: Sex at birth is required to determine reference values for AI and non-AI machine algorithms in various domains, such as cardiology and neurology.

#### Reporting

1.  The radiologist dictates findings pertaining to the procedure, noting scanner and contrast protocol modifications in the “Request” section of the report.

2.  The report format has been configured to include Patient’s Sex (0010,0040), Patient’s Gender Code (0010,xxx4).(0008,0104), Patient Name (0010,xxx3).(0010,xx12) and SPCU Comment (0010,xxx1) in the report.

3.  The initial report reads:
> Patient’s Name = “Janet Smith”  
> Patient’s Sex = “F”  
> Patient’s Gender Identity = “M”  
> Name to Use = “John Smith"  

4.  After the patient’s name change has been processed, the report is addended. The addended report reads:
> Patient’s Name = “John Smith”  
> Patient’s Sex = “F”  
> Patient’s Gender Identity = “M”  
> Name to Use = “John Smith" 

The final report may be represented in [FHIR](#example-03-fhir-mapping), [HL7 v2](#example-04-imaging-report), or a [CDA](#example-05-cda-release-2-imaging-report).

### Examples

#### Example 01: Imaging Order

See these [examples](v2dicom_use_case.html#order-for-imaging) of HL7 v2.9.1 and v2.5 OMI Imaging Orders from [precondition(s)](#preconditions).

These map to DICOM Modality Worklist as follows:

| v2                                   | Attribute Name                | Tag         | VR | Value                                                             |
| ------------------------------------ | ----------------------------- | ----------- | -- | ----------------------------------------------------------------- |
| PID-5 Name Type Code = Birth Name    | Patient's Name                | (0010,0010) | PN | Smith\^Janet^^^                                                   |
| PID-7                                | Patient's Birth Date          | (0010,0030) | DA | 19780328                                                          |
| PID-8                                | Patient's Sex                 | (0010,0040) | CS | F                                                                 |
|                                      | Patient’s Gender              | (0010,xxxx) | CS | M                                                                 |
|                                      | Gender Identity Sequence      | (0010,xxxx) | SQ |                                                                   |
|                                      | \>Gender Identity Code Sequence        | (0010,xxx4) | SQ |                                                          |
| GSP-5-1                              | \>\>Code Value                | (0008,0100) | SH | 446151000124109                                                   |
| GSP-5-3                              | \>\>Coding Scheme Designator  | (0008,0102) | SH | UMLS                                                              |
| GSP-5-2                              | \>\>Code Meaning              | (0008,0104) | LO | Identifies as male gender                                         |
|                                      | Sex Parameter for Clinical Use Sequence| (0010,xxx2) | SQ | --ITEM 1--                                               |
|                                      |                               |             |    | --ITEM 1--                                                        |
|                                      | \>SPCU Code Sequence          | (0010,xxx9) | SQ |                                                                   |
| GSC-4-1                              | \>\>Code Value                | (0008,0100) | SH | Sup233-02                                                         |
| GSC-4-3                              | \>\>Coding Scheme Designator  | (0008,0102) | SH | DCM                                                               |
| GSC-4-2                              | \>\>Code Meaning              | (0008,0104) | LO | Male typical parameter                                            |
| GSC-8                                | \>SPCU Comment                | (0010,xxx1) | LT | Hormonal treatment, use affirmed gender Creatine reference ranges |
|                                      | \>Validity Period sequence    | (0010,xxx5) | SQ |                                                                   |
| GSC-5-1                              | \>\>Start DateTime            | (0010,xxx6) | DT | 20220715090000                                                    |
|                                      |                               |             |    | --ITEM 2--                                                        |
|                                      | \>SPCU Code Sequence          | (0010,xxx9) | SQ |                                                                   |
| GSC-4-1                              | \>\>Code Value                | (0008,0100) | SH | Sup233-01                                                         |
| GSC-4-3                              | \>\>Coding Scheme Designator  | (0008,0102) | SH | DCM                                                               |
| GSC-4-2                              | \>\>Code Meaning              | (0008,0104) | LO | Female typical parameter                                          |
| GSC-8                                | \>SPCU Comment                | (0010,xxx1) | LT | Sex at birth                                                      |
|                                      | \>Validity Period sequence    | (0010,xxx5) | SQ |                                                                   |
| GSC-5-1                              | \>\>Start DateTime            | (0010,xxx6) | DT | 19780328000000                                                    |
| GSC-5-2                              | \>\>Stop DateTime             | (0010,xxx7) | DT | 20220715090000                                                    |
|                                      | Person Names to Use Sequence  | (0010,xxx3) | SQ |                                                                   |
| PID-5 Name Type Code = Nickname      | \>Name to Use                 | (0010,xx12) | LT | Smith, John                                                       |
|                                      | \>Validity Period Sequence    | (0010,xxx5) | SQ |                                                                   |
|                                      | \>Start DateTime              | (0010,xxx6) | DT | 20220715090000                                                    |


#### Example 02: Patient Name Update

See these [examples](v2dicom_use_case.html#registration-of-name-change)of HL7 v2.9.1 and v2.5 ADT Demographics Updates from [arrival and check-in](#arrival-and-check-in).
Note: in previous v2 versions, the first occurrence indicated the legal name. In this case, Name to Use name is listed first for legacy compatibility.

These map to DICOM Modality Worklist as follows:

| v2                                   | Attribute Name                | Tag         | VR | Value                                                             |
| ------------------------------------ | ----------------------------- | ----------- | -- | ----------------------------------------------------------------- |
| PID-5 Name Type Code = Nickname      | Patient's Name                | (0010,0010) | PN | Smith\^John^^^                                                    |
| PID-7                                | Patient's Birth Date          | (0010,0030) | DA | 19780328000000                                                    |
| PID-8                                | Patient's Sex                 | (0010,0040) | CS | F                                                                 |
|                                      | Gender Identity Sequence      | (0010,xxxx) | SQ |                                                                   |
|                                      | \>Gender Identity Code Sequence        | (0010,xxx4) | SQ |                                                          |
| GSP-5-1                              | \>\>Code Value                | (0008,0100) | SH | 446151000124109                                                   |
| GSP-5-3                              | \>\>Coding Scheme Designator  | (0008,0102) | SH | UMLS                                                              |
| GSP-5-2                              | \>\>Code Meaning              | (0008,0104) | LO | Identifies as male gender                                         |
| GSP-6-1                              | \>Start DateTime              | (0010,xxx6) | DT | 20220715010000                                                    |
|                                      | Sex Parameter for Clinical Use Sequence| (0010,xxx2) | SQ |                                                          |
|                                      |                               |             |    | --ITEM 1--                                                        |
|                                      | \>SPCU Code Sequence          | (0010,xxx9) | SQ |                                                                   |
| GSC-4-1                              | \>\>Code Value                | (0008,0100) | SH | Sup233-02                                                         |
| GSC-4-3                              | \>\>Coding Scheme Designator  | (0008,0102) | SH | DCM                                                               |
| GSC-4-2                              | \>\>Code Meaning              | (0008,0104) | LO | Male typical parameter                                            |
| GSC-8                                | \>SPCU Comment                | (0010,xxx1) | LT | Hormonal treatment, use affirmed gender Creatine reference ranges |
| GSC-5-1                              | \>\>Start DateTime            | (0010,xxx6) | DT | 20220715090000                                                    |
|                                      | Sex Parameter for Clinical Use Sequence| (0010,xxx2) | SQ |                                                          |
|                                      |                               |             |    | --ITEM 2--                                                        |
|                                      | \>SPCU Code Sequence          | (0010,xxx9) | SQ |                                                                   |
| GSC-4-1                              | \>\>Code Value                | (0008,0100) | SH | Sup233-01                                                         |
| GSC-4-3                              | \>\>Coding Scheme Designator  | (0008,0102) | SH | DCM                                                               |
| GSC-4-2                              | \>\>Code Meaning              | (0008,0104) | LO | Female typical parameter                                          |
| GSC-8                                | \>SPCU Comment                | (0010,xxx1) | LT | Sex at birth                                                      |
|                                      | \>Validity Period sequence    | (0010,xxx5) | SQ |                                                                   |
| GSC-5-1                              | \>\>Start DateTime            | (0010,xxx6) | DT | 19780328000000                                                    |
| GSC-5-2                              | \>\>Stop DateTime             | (0010,xxx7) | DT | 20220715090000                                                    |


#### Example 03: FHIR Mapping

The patient is referenced as the subject of [DiagnosticReport](#reporting), DocumentReference, ImagingStudy or ImagingSelection. Mapping to DICOM is as follows:

| FHIR attribute                                | Attribute Name                | TAG         | VR | Value                                                             |
| ----------------------------------------------| ----------------------------- | ----------- | -- | ----------------------------------------------------------------- |
| Patient.name [use=official]                      | Patient's Name                | (0010,0010) | PN | Smith\^John^^^                                                    |
| Patient.gender                                | Patient's Sex                 | (0010,0040) | CS | F                                                                 |
| Patient.extension [PGenderIdentity]           | Gender Identity Sequence      | (0010,xxxx) | SQ |                                                                   |
|                                               | \>Gender Identity Code Sequence        | (0010,xxx4) | SQ |                                                          |
| Patient.extension [value code]                | \>\>Code Value                | (0008,0100) | SH | 446151000124109                                                   |
| Patient.extension [value system]              | \>\>Coding Scheme Designator  | (0008,0102) | SH | UMLS                                                              |
| Patient.extension [value display]             | \>\>Code Meaning              | (0008,0104) | LO | Identifies as male gender                                         |
| Patient.extension [period start]              | \>Start DateTime              | (0010,xxx6) | DT | 20220715010000                                                    |
| serviceRequest.extension [PatSexParameterForClinicalUse] | Sex Parameter for Clinical Use Sequence | (0010,xxx2) | SQ |                                              |
|                                               |                               |             |    | --ITEM 1--                                                        |
|                                               | \>SPCU Code Sequence          | (0010,xxx9) | SQ |                                                                   |
| serviceRequest.extension [value code]         | \>\>Code Value                | (0008,0100) | SH | Sup233-02                                                         |
| serviceRequest.extension [value system]       | \>\>Coding Scheme Designator  | (0008,0102) | SH | DCM                                                               |
| serviceRequest.extension [value display]      | \>\>Code Meaning              | (0008,0104) | LO | Male typical parameter                                            |
| serviceRequest.extension [comment]            | \>SPCU Comment                | (0010,xxx1) | LT | Hormonal treatment, use affirmed gender Creatine reference ranges |
|                                               | \>Validity Period sequence    | (0010,xxx5) | SQ |                                                                   |
| serviceRequest.extension [period start]       | \>\>Start DateTime            | (0010,xxx6) | DT | 20220715090000                                                    |
| serviceRequest.extension [supportingInfo reference] | \>SPCU Reference        | (0010,xx10) | UR | https://doi.org/10.1210/jendso/bvab048.1607                       | 
|                                               |                               |             |    | --ITEM 2--                                                        |
|                                               | \>SPCU Code Sequence          | (0010,xxx9) | SQ |                                                                   |
| serviceRequest.extension [value code]         | \>\>Code Value                | (0008,0100) | SH | Sup233-01                                                         |
| serviceRequest.extension [value system]       | \>\>Coding Scheme Designator  | (0008,0102) | SH | DCM                                                               |
| serviceRequest.extension [value display]      | \>\>Code Meaning              | (0008,0104) | LO | Female typical parameter                                          |
| serviceRequest.extension [comment]            | \>SPCU Comment                | (0010,xxx1) | LT | Sex at birth                                                      |
|                                               | \>Validity Period sequence    | (0010,xxx5) | SQ |                                                                   |
| serviceRequest.extension [period start]       | \>\>Start DateTime            | (0010,xxx6) | DT | 19780328000000                                                    |
| serviceRequest.extension [period end]         | \>\>Stop DateTime             | (0010,xxx7) | DT | 20220715090000                                                    |
|                                               | Person Names to Use Sequence  | (0010,xxx3) | SQ |                                                                   |
| Patient.name[use=usual]                       | \>Name to Use                 | (0010,xx12) | LT | John Smith                                                        |


#### Example 04: Imaging Report

See these [examples](v2dicom_use_case.html#result-for-imaging) of HL7 v2.9.1 and v2.5 Unsolicited Observation Results containing the narrative from the final [Imaging Report](#reporting).

*OBX Segments containing Imaging Report Narrative omitted for brevity*

#### Example 05: CDA Release 2 Imaging Report

See this [example](cdadicom_use_case.html#cda-dicom) of a CDA [Imaging Report](#reporting).
