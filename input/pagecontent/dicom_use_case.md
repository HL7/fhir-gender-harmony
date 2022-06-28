# DICOM Use Case

## Use Case Description:
Post Gender Harmony model implementation with mis-naming from the EHR
Patient with EHR Sex for Clinical Use (SfCU) of “female” and a EHR Gender Identity of “male” arrives for check-in at a facility using a DICOM worklist for a PET/CT examination.

## Actors:
- People
- Patient (John Smith) - whose previous records are for studies performed when his EHR Gender Identity was “female”. 
- Facility Clerk - admits patient, utilizes DICOM worklist
- PET/CT Technician
- Exam Prep Team (e.g., nurse)
- Recovery Nurse
- Systems
Hospital EHR
Worklist Management System (e.g., RIAS, Gateway, Scheduler)
PET/CT System
RDSR

## Scope Statement:
Use case covers admission, patient prep, examination, recovery and analysis.

### Precondition(s):
John Smith is registered in the hospital record system with his old name of “Janet Smith”
John Smith arrives at an outpatient facility with an appointment
Patient history, Social history, medical history have already been captured upstream and are available in the facility's system
Physician order for examination is utilizing information from the facility
Facility system has not been updated for the name change

### Postcondition(s):
PET/CT Examination is completed or cancelled
Report is generated
Discussion to initiate name change correction in the EHR has occurred
DICOM Name to Use is updated based on policy. For example:
EHR name (John Smith) is associated with a Name to Use element whose validity period ends on day of exam
Add a Name to Use (Janet Smith) whose validity period begins on day of exam

## Workflow/Storyboard:
Arrival and check-in:
### Scenario 1, where patient initiates the discussion
#### Arrival and check-in:
When John arrives at the waiting room for a PET/CT examination he announces himself as “John”.
The clerk asks “John Williams?”, seeing a John Williams in the current worklist. (This example assumes that the DICOM worklist is being used. Similar scenarios apply when HL7 facilities are used.)
Response, “No, Smith”
The clerk asks “Date of birth”
Smith: “month, day, year”
The clerk performs a date of birth based lookup and finds:

A DICOM worklist entry for Janet Smith, with Patient’s Sex (0010,0040) “F” and Patient’s Gender (0010,xxxx) “M”, and with a Preferred Form of Address (0010,xxx3) “Preferred name is John”. Sex Comment (0010,xxx1) contains “Hormonal treatment causes Thrombosis risk”.
The birth dates match

The clerk asks the necessary sex related preparation questions, e.g., most recent menstruation; and checks in the patient.
Based on clinic policies, the clerk asks whether John wants to go through the name change process at the clinic to reflect his preferred name.

#### Patient Preparation
The prep staff checks their worklist for John, and finds the order for “Janet Smith”, Patient’s Sex (0010,0040) “F” and Patient’s Gender (0010,xxxx) “M”, and with a Preferred Form of Address (0010,xxx2) “John”. Sex Comment (0010,xxx1) contains “Hormonal treatment causes Thrombosis risk”.
The prep staff sets up John’s radiation protection for a female body, confirms menstruation and pregnancy status, and reconfirms birthdate.

#### Examination
The technician has checked John’s worklist entry and knows to expect a female body for John this does not trigger a wrong patient concern. The technician confirms birthdate and other ID for the patient.
The exam is performed.
The study results and RDSR are stored into the archive

#### Recovery
Recovery nurse monitors the patient using the thrombosis risk protocol rather than the normal protocol.
Recovery nurse will use the patient's name to use when addressing the patient 

#### Analysis
The PET/CT application computing the SUV uses the SfCU “F”. It notes the Patient’s Gender (0010,xxxx) “M” and presence of Sex Comment (0010,xxx1), and shows a pop-up to the operator to confirm that this is the correct value to use.
The RDSR is used to prepare a patient dose report. Because the Patient Sex (0010,0040) is F, the female body models are used for dose analysis for John.

Alternative and/or related Workflow(s):
#### Arrival and check-in:
Scenario 2, where the clerk initiates the discussion

John arrives at the waiting room for a PET/CT examination, and goes to the clerk to check in.
The clerk asks “Date of birth”
Smith: “month, day, year”
The clerk performs a date of birth based lookup and finds:
A DICOM worklist entry for Janet Smith, with Patient’s Sex (0010,0040) “F” and Patient’s Gender (0010,xxxx) “M”, and with a Preferred Form of Address (0010,xxx3) “Preferred name is John”. Sex Comment (0010,xxx1) contains “Hormonal treatment causes Thrombosis risk”.
The birth dates match
The clerk sees John, who appears to be a man, and re- checks the worklist entry. This time the clerk notices Patient’s Gender (0010,xxxx) “M”, Patient’s Sex (0010,0040) “F”,  and a Preferred Form of Address (0010,xxx3) “Preferred name is John”.
The clerk confirms “John Smith? Here for a PET/CT exam?”
John agrees.
The clerk asks the necessary sex related preparation questions, e.g., most recent menstruation; and checks in the patient.
Based on clinic policies, the clerk asks whether John wants to go through the name change process at the clinic to reflect his preferred name.
