
<!-- Updates based on Jira tickets 
Date             Jira ticket        Updated by                   Comment



-->

#### Use Case Description:
The Use Case below describes the process of a Care Manager identifying a patient in need of an annual visit including a scan for relevant Health Maintenance screenings, as well as the process of this patient’s clinic appointment for a transgender woman with lab testing as a result of a male organ-specific finding.
#### Actors:
People
- Care Manager
- Patient (Julie Smith)
- Clerk 
- Physician (Dr. Jones)
Systems, (using IHE Actor names)
- Care Management application (integrated with EHR)
- Clinic scheduling system
- Clinic registration system
- Clinic EHR
- Order entry system
- Lab information system
#### Scope Statement:
Use case covers health maintenance recommendations, clinic check-in/registration, clinic visit, order entry, and results.
#### Precondition(s):
- Patient ID has not changed
- Julie Smith arrives at an outpatient facility with an appointment under her previous name of “Jack Smith”
- Patient history, social history, medical history has already been captured upstream and are available in the facility's EHR
#### Workflow/Storyboard:
##### Care Manager task list review of a patient who is a transgender woman:
In this scenario, the Care Manager reviews a list of patients that have upcoming health maintenance screenings that need to be scheduled.
- The Care Manager is reviewing a list of patients in a time period appropriate for considering an annual health maintenance visit. 
- After completing the prior patient on the list, the Care Manager arrives at Julie Smith (the transgender woman used in this series of use cases). 
- The Care Manager has an application that is functionally integrated into the EHR which reviews the patients’ clinical features, including reviewing and validating an organ inventory. The organ inventory was updated following gender-affirming surgery, specifically vaginoplasty, and this information (presence of prostate) was sufficient to create a task (Resource Task) indicating that Julie Smith will require (or be offered and may refuse) a prostate screening by her PCP. 
- The task, Prostate Screening Exam is created with an SFCU = M, with supplementary information indicating that the presence of prostate warranted this SFCU value.
- The Care Manager’s work for Julie Smith includes and is completed by initiating the scheduling of a clinic appointment at which time the active tasks (including the prostate screening exam) will be performed. Note that a value of ‘M’ will at no point be attached to the patient record itself and no patient level SFCU will be set. [In some practice environments, a Prostate-specific Antigen PSA lab test may be deployed instead of the prostate exam. The service request for that lab will include an SFCU = M, also linked to the organ inventory value.]
##### Clinic appointment arrival and check-in
The Use Case below describes the process of a clinic appointment for a transgender woman with lab testing as a result of an organ-specific finding.
- Julie Smith arrives at an outpatient clinic for her health screening appointment and is greeted at the registration desk. 
- The clerk asks for the patient's name. 
- The patient provides the name, Julie Smith. 
- The clerk searches the clinic’s patient schedule by that name and does not find any current appointments. 
- The clerk then searches the patient database for Julie Smith and several patient names are returned by the system. 
- The clerk asks for the patient's date of birth and is unable to confirm the patient as there is not a Julie Smith with that date of birth. 
- The clerk asks Julie if she is a new patient with an appointment. 
- Julie replies that she may be under the name “Jack Smith”. 
- The clerk can find a patient in the appointment system with the name Jack Smith with a matching birthdate that has an appointment for today. 
- The clerk verifies Julie's address to confirm the patient and checks Julie in for her appointment. 
##### Updating patient name, gender, and pronouns
- After checking Julie in for her appointment, the clerk asks if Julie would like to update Name to Use in her record, if she would like to have “Jack Smith” removed from the record, and will explain how the name may be linked to healthcare coverage or other relevant documentation, which could result in an unanticipated outing of Julie’s status as a transgender woman. 
- The clerk will also explain that the provider who calls for her name in the waiting room will use Name to Use to call for her and asks if she would like to be called back as Julie Smith.
- Next, the clerk notes that the profile currently labeled as “Jack Smith” has a Gender Identity of “Male” in the system and asks Julie if she would like to go through the process of changing the system profile to reflect her Gender Identity and Third-Person Pronoun as well.  If Julie answers yes, the clerk asks if she would like to fill out the information herself (via a patient portal or some other device) or if she would like to dictate to the clerk the individual changes, with the clerk explaining some of the potential consequences of those changes.
- If Julie agrees to dictate changes to the clerk, the clerk enters edit mode in the patient registration system to record that the patient name Jack Smith is no longer active as of the current date minus one day or back-dated to a requested date (if Julie opts for it to not be removed from the system), or removes it entirely if Julie requests that change. 
- In either case, the clerk adds the new Name to Use of Julie Smith, along with any other relevant name-related variables, starting as of the current date or back-dating, depending on the above scenario.
- The clerk follows the same approach to update the pronouns to she/her/hers. The clerk asks what gender identity Julie wishes to be recorded and Julie answers “Female.” The clerk asks if “Male” should persist in the system. If Julie responds “yes”, the clerk records the prior gender in the system is inactive as of the day prior and enters the gender identity of Female starting as of the current date. If the answer is “no”, then the clerk removes the “Male” value entirely. The clerk also enters that the patient has an administrative gender of Female by the same mechanism.

##### Patient encounter and examination
- Julie proceeds with her annual appointment with her physician, Dr. Jones. 
- Before the examination, Dr. Jones asks Julie about the medications she is taking regularly and on an as needed basis. 
- Julie notes that she is transgender and is utilizing estrogenic therapy regimen. During the examination of her prostate, Dr. Jones notes a nodule on the prostate.
- After a discussion with the patient, Dr. Jones enters a lab order for a PSA quantitative test and includes an SFCU value of “Male”, noting in the comment field that the patient has a prostate. 
- The order is transmitted to the lab system. 
- Julie proceeds to the lab department where she is checked in by her name and the lab technicians use her appropriate pronouns of she/her/hers as indicated in the record. Her blood specimen is collected, and the PSA test is performed by the lab
##### Review of lab results 
- The next day, Dr. Jones reviews the results of Julie Smith’s PSA. 
- A PSA of 3.0 ng/ml is resulted with a reference range of normal as 0-4.0 ng/ml for Julie’s age. 
- However, upon opening the result, a clinical decision support message appeared for Dr. Smith that contained the message “Patients on testosterone suppressing medications, the upper limit of normal for the PSA should be reduced to 1.0 ng/ml.” 
- Dr. Jones reviews Julie Smith’s previous testosterone levels, discusses the results with Julie, and together they decide to schedule her for additional testing as a result of the high-level PSA result.

#### References
- Wesp, L. [Prostate and testicular cancer considerations in transgender women.](https://transcare.ucsf.edu/guidelines/prostate-testicular-cancer) UCSF Trangender Care Accessed July 15, 2022.
- Bertoncelli Tanaka, M., Sahota, K., Burn, J., Falconer, A., Winkler, M., Ahmed, H.U., Rashid, T.G. (2022), Prostate cancer in transgender women: what does a urologist need to know?. [BJU Int, 129: 113-122.](https://doi.org/10.1111/bju.15521) or [Full Article](https://bjui-journals.onlinelibrary.wiley.com/doi/epdf/10.1111/bju.15521)



