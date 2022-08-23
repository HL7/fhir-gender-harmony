### Health maintenance screening laboratory use case** 

#   Health maintenance screening laboratory use case

##  	Use Case Description:

In this use case, a patient calls a primary care health clinic to update her name, gender identity, and personal pronouns. Based on this information and age, the automated health-maintenance notification system requests that the patient schedule an in-person visit. The patient then attends the clinic for that scheduled visit and there is a lab test ordered as a result of an anatomy-specific finding.

##  	Actors:
### People
1.	Patient (Julie Smith)
2.	Administrative representative for the health system
3.	Clinic Clerk 
4.	Physician (Dr. Jones)

### Systems
1.	Clinic registration system
2.	Clinic EHR
3.	Order entry system
4.	Lab information system

##  	Scope Statement:

Use case covers change of name, gender identity, and pronouns in the patient registration system and EHR, clinic check-in/registration, clinic visit, order entry, and results.

##  	Precondition(s):

1.	Patient ID has not changed
2.	Patient medical history is available in the facility's EHR

##  Workflow/Storyboard:
###   Administrative update and record change
1.	A patient, Julie Smith, calls her primary care health clinic and speaks with an administrative representative. 
2.	The patient informs the clinic’s administrative representative that she is a transgender female and would like to update her name, gender identity, and pronouns in the clinic’s EHR system.
3.	The clerk will then provide system-specific choices to the patient, usually being to (1) keep both the previous information and the newer information while demarking the previous information by providing a date for both the previous name, gender identity, and pronouns, or (2) entering the patient as a new patient with only the newer information available and not linking the profile to the previous profile in any way. With any choice, the clerk will inform the patient of the consequences of each choice pursuant to clinic- and system-specific guidelines.
4.	Julie decides to keep her prior information and update the account with her new name, gender identity, and pronouns.
5.	The administrative representative asks Julie for the name that is currently in the system.
6.	Julie gives the name “Jack Smith.”
7.	The administrative representative asks Julie for her date of birth as a second patient identifier.
8.	Julie provides the birthdate, which matches the birthdate on the patient record for “Jack Smith.”
9.	The administrative clerk will inform the patient of if and how previously recorded information (name, pronouns, gender identity, etc.) is retained in the system, and who might be able to access that information.
10.	The administrative representative asks if Julie would like to update Name to Use in her record and explains that the staff who calls for her by name in the waiting room will use Name to Use to call for her and asks if she would like to be called back as Julie Smith.
11.	Julie agrees.
12.	The administrative representative notes that the patient profile currently labeled as “Jack Smith” has a gender identity of “Male” in the system and confirms with Julie that she would like to go through the process of changing the system profile to reflect her gender identity and personal pronoun as well. 
13.	Julie agrees and the administrative representative asks if she would like to fill out the information herself (via a patient portal) or if she would like to dictate to the administrative representative the individual changes, with the administrative representative explaining some of the potential consequences of those changes.
14.	Julie agrees to dictate changes to the administrative representative who enters edit mode in the patient registration system to record that the patient name “Jack Smith” is no longer active as of the current date and second-specific time. 
15.	The administrative representative adds the new Name to Use of Julie Smith, along with any other relevant name-related variables, starting as of the current date and second-specific time.
16.	The administrative representative follows the same approach to update the pronouns to she/her/hers. 
17.	The administrative representative asks what gender identity Julie wishes to be recorded and Julie answers “Female.” The administrative representative records the prior gender identity in the system as inactive as of the current date and second-specific time and enters the gender identity of Female starting as of the current date and second-specific time. 
18.	The administrative representative saves the patient demographic record that ends the call.
19. The updated record sends a message to clinics in the health system to notify their systems of the change.


####   Administrative update and record change workflow
 


###  	Health screening automated process
1.	The health maintenance system runs on a weekly basis and has a rule that when a patient changes their gender identity, it generates an e-mail to schedule an annual health screening appointment and requests the patient complete an anatomic inventory in their health profile.
2.	Julie responds to the email by scheduling an appointment and completing the anatomic inventory.

####  Health screening automated process workflow
 
###  	Clinic appointment arrival and check-in
1.	Julie Smith, age 52, arrives at an outpatient clinic for her health screening appointment and is greeted at the registration desk. 
2.	The clerk asks for the patient's name and date of birth. 
3.	The patient provides the name, Julie Smith with her date of birth. 
4.	The clerk can find a patient in the appointment system with the name Julie Smith with a matching birthdate that has an appointment for today. 
5.	The clerk checks Julie in for her appointment. 

####   Clinic appointment arrival and check-in workflow
 

###  Patient encounter and examination
1.	Julie proceeds with her annual appointment with her physician, Dr. Jones. 
2.	Upon starting the visit with Julie, Dr. Jones reviews the anatomic inventory questions with Julie, and it is noted that the patient has a prostate.
3.	Based upon this updated information, the system notes Julie’s age is over 50 and she has an anatomic inventory with prostate present and no prostate exam or PSA value in the past 10 years. The EHR alerts Dr. Jones that a prostate exam and/or a PSA should be considered for the patient.
4.	Dr. Jones reviews this recommendation with Julie and they agree a prostate exam should be performed as part of the examination.
5.	Before the examination, Dr. Jones asks Julie about the medications she is taking regularly and on an as-needed basis. 
6.	Julie informs Dr. Jones that she is utilizing an estrogenic therapy regimen. 
7.	During the examination of her prostate, Dr. Jones notes a nodule on the prostate.
8.	After a discussion with the patient, Dr. Jones enters a lab order for a PSA quantitative test and includes an SFCU value of “Male”, noting in the comment field that the patient has a prostate. 
9.	The order is transmitted to the lab system. 
10.	Julie proceeds to the lab department where she is checked in by her name and the lab technicians use her appropriate pronouns of she/her/hers as indicated in the record. Her blood specimen is collected, and the PSA test is performed by the lab.

####   Patient encounter and examination workflow
 
### 	Review of lab results 
1.	The next day, Dr. Jones reviews the results of Julie Smith’s PSA. 
2.	A PSA of 3.0 ng/ml is resulted with a reference range of normal as 0-4.0 ng/ml for Julie’s age. 
3.	However, upon opening the result Dr. Jones is notified of a comment on the result: “Patients on testosterone suppressing medications, the upper limit of normal for the PSA should be reduced to 1.0 ng/ml.” 
4.	Dr. Jones reviews Julie Smith’s previous testosterone levels, discusses the results with Julie, and together they decide to schedule her for additional testing based upon the specific situation noted for this PSA result.

####  	Review of lab results workflow
 

##   References
1.	Wesp, L. “Prostate and testicular cancer considerations in transgender women.” UCSF Trangender Care, https://transcare.ucsf.edu/guidelines/prostate-testicular-cancer. Accessed July 15, 2022.
2.	Bertoncelli Tanaka, M., Sahota, K., Burn, J., Falconer, A., Winkler, M., Ahmed, H.U., Rashid, T.G. (2022), Prostate cancer in transgender women: what does a urologist need to know?. BJU Int, 129: 113-122. https://doi.org/10.1111/bju.15521 (full article location: https://bjui-journals.onlinelibrary.wiley.com/doi/epdf/10.1111/bju.15521)


