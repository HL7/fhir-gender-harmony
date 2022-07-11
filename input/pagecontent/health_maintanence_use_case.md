# Health Maintenance Appropriate Screening - Intake, Annual Visit, etc.

A clinician is seeing a patient and considering which health maintenance screenings are appropriate.  The clinician, possibly seeing this patient for the first time, wishes to consider appropriateness by reviewing an up-to-date summary of relevant issues including

1) what sexual organs the patient has (e.g. testicals, ovaries, uterus, cervix, breasts/mammography, osteopenia screening/estrogen status, prostate/PSA/DRE),

2) previously determined screening needs (e.g. determined at the time of gender affirming surgery(s),

3) previously recorded goals and preferences relative to health maintenance screening,

4) appropriateness of using USPHTF screening based on guidelines based on recorded sex or gender at birth,

5) need to update SFCU-specific screening status (e.g. diagnoses and/or surgeries since screening plan.)  



Note: Roles and local workflows will vary.  This is intended to be a basic use case (specific instance; does not cover everything)

Actors:
People

Patient -
whose record indicates the existence of a SFCU-aware, health maintenance screening profile. 
Need for such a screening profile is part of a different use case for classifying the patient.
Profile may simply contain indication that patient does not have factors that require consideration outside of Recorded Sex or Gender at Birth driving selection of health maintenance screening considerations.
Clinician
Care Manager (reviewing/assuring a panel of patients is up-to-date on their screening)
Are other clinical workers involved? Elsewhere referred to as "Intake Personnel" such as registration clerk, person rooming, roles of nurse practitioners, physician assistants, and other personnelle.
System

  EHR record may have current status for eligible screening

  Referral for task of classifying the patient as concurrent or scheduled classification, based on local or plan policy.

  Policy question: who (which roles) are qualified to classify the patient's needs?

Scope Statement:
Use case covers ambulatory annual visit when health maintenance is considered.



Sex and Gender appropriate history and physical is either:

    previously done relative to this use case

      or

    if not done, another use case covers collecting the necessary screening information.

In other words, this use case does not exhaustively address health maintenance assessment, the underlying knowledge bases required, or a requisite workflow.  Instead, we are focusing on the HL7 standards and their use to insure the relevant content models (e.g. FHIR Resources, cCDA and v2 messaging) have specific defined means of capturing sex for clinical use (SFCU).  In this case, that 'Clinical Use' is determining the appropriate screening health maintenance tasks (history taking including patient-specific physiologic, anatomic, pharmacologic, and other factors including preferences).  Once those tasks are performed, clinical decision support (CDS) not elaborated in this use case will take those input factors and considerations to inform the provider's and patient's shared decision making on the appropriate health maintenance screening plan.  This use case focuses on the standardization and interoperability (information exchange) practices available and recommended with the three HL7 product lines (FHIR, cCDA, v2 messages). 

Screening considerations beyond United States Public Health Task Force (USPHTF) screening recommendations (broader minimal survey, according to 2022 literature review)

Blood pressure and heart rate screening
Height and weight checks for body mass index
Blood tests for cholesterol, triglyceride, and glucose levels
Urine tests for glucose and protein levels, bacteria, blood cells, and more
STI screenings
Medication and hormone treatment monitoring
Immunizations
Mammograms
Gynecological and anal exams
Lung, prostate, testicular, and colon cancer screenings
Exercise and diet counseling

Precondition(s):
Patient in EHR, being seen in an ambulatory setting.
Their health maintenance needs
have been classified or
need to be classified on the current comprehensive visit.
There is a system of record (EHR). 
There minimal required health maintenance needs need to be assessed, including needs often not assessed and captured in prior decades.  This is in some ways exactly parallel to SDOH needs but in a GHP content.
HL7:
FHIR: Resource/Elements/Extensions relating to GHP classification reviewed and updated in this example
Some organizations will recognize a task and status:  patient has been classified for health maintenance
Information necessary for provider to reason over the patient's status could be in FHIR Resources including Patient, Observations, Service Requests, Conditions, Questionnaires, and other resources to a lesser degree (NEEDS TO BE REVIEWED BY CLINICAL AND OPERATIONAL ARCHITECTS)
cCDA: Information to classify health maintenance needs will be contained in one or more existing documents, and include all that are relevant to GHP concepts (SFCU factors that drive health maintenance.
v2 Messages and GHP-associated segments where relevant to Health Maintenance for all patients, in the genderbread person-aware sense.
If patient not classified, provider may be scheduled for the classification task.
Health Maintenance appropriateness assessment MAY be a required step based on local policies for annual health maintenance visit, with local implications beyond this use case.
Postcondition(s):
The clinician and patient involved have determined which health maintenance screening tests are appropriate based on previously captured information which relates the patient to the USPHTF guidelines.



No new Resources and Elements or In-line extensions are populated.  There is no write-back as a result of completing this workflow.

Workflow/Storyboard:
== Before Gender Harmony Project:

    Provider made health maintenance screening decisions based on age, gender (=male or female), and major risk factors including prior medical history and family history.



== After Gender Harmony Project:

  Workflow/thoughtflow is the same AND gender consideration reflects the patient's current and past gender history to ensure appropriate care.  For example, people who required Estrogen for bone health (most commonly women) without replacement of Estrogen after age-related cessation of endogenous Estrogen may require bone density determination, independent of current gender.



The workflow demands to capture the health maintenance needs of a patient that are variably unmet in contemporary 2022 clinical practice parallel and in some cases overlap with uncaptured patients needs from a SDOH perspective.  They therefore share the following swimlane-based workflow example:  (see FIgure 1 here: 

Evaluation of a social determinants [paralleling uncapture gender and sex related needs] of health screening questionnaire and workflow pilot within an adult ambulatory clinic
https://bmcprimcare.biomedcentral.com/articles/10.1186/s12875-021-01598-3  )









This use case and example will focus on the representation of HL7 content model and exchange for the GHP elements in this implementation guide, specific to this Health Maintenance use case.  For example, in the FHIR context,

  -   GHP Information  swim lane position 1 may be a health maintenance-specific questionnaire (or questionnaire section which produces new resources, with elements of ressources expressed as SFCU content expressed as extensions.)  



  - GHP conversation - swim lane position 6 - would be be expected to be communicated through a native EHR application, with the HL7 expression of the collected or reviewed information cast into SFCU unambiguous structures in each of the HL7 family constructs (FHIR, cCDA, v2.) 







see USPHTF for inventory of health maintenance screening: https://www.uspreventiveservicestaskforce.org/uspstf/recommendation-topics/uspstf-a-and-b-recommendations?SORT=T

Note: As of the 2021 update, there are 52 potential recommendations.  23 have no gender associated terms.  17 contain "Women".  2 contain "men" (AAA and IPV). 17 contain "Gestation" or "Pregnant".

Note: There is also group-specific categorical "Top Issues" here: https://store.samhsa.gov/sites/default/files/d7/priv/sma12-4684.pdf



Expected Workflow Variations:

Arrival and check-in: some of this information and the questionnaire process, for various patient sub-populations, may take place through a portal prior to the scheduled visit.  Some content will not be appropriate to collect with an MA-mediated interaction.  ETc


Patient and provider "prior direction" on health maintenance, will likely be facilitated through local and site specific documentation templates and builds.  The subsequent persistent information storage in native EHR repositories will need to facilitate expression in, for example, HL7 FHIR content and exchange models.  Today, (2022), these native systems are often incapable to meeting and populating required status field information in FHIR v4.  IT IS THE GOAL OF THIS USE CASE TO PROVIDE CONCRETE, CONFORMANT EXAMPLES OF SPECIFIC HEALTH MAINTENCE-RELATED EXAMPLE.


Clinician workflow (decision making) is out-of-scope for this example.  That said, the many primary care providers will need help providing quality and non-stigmatizing care to various GHP-sensitive communities.








Alternative and/or related Workflow(s):

Alignment and/or Misalignment with Gender Harmony Model:
Care must be taken to not exacerbate stigmatizing concerns for providers at various degrees of Gender Harmony awareness.  For example, providers must be trained in applying health maintenance screening based on Genderbread person characteristics.
