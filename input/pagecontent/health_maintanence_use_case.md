# Health Maintenance Appropriate Screening - Intake, Annual Visit, etc.

## Use Case Description:
A clinician is seeing a patient and considering which health maintenance screenings are appropriate.  The clinician, possibly seeing this patient for the first time, wishes to consider appropriateness by reviewing an up-to-date summary of relevant issues including
1) what sexual organs the patient has (e.g. testicals, ovaries, uterus, cervix, breasts/mammography, osteopenia screening/estrogen status, prostate/PSA/DRE),
2) previously determined screening needs (e.g. determined at the time of gender affirming surgery(s),
3) previously recorded goals and preferences relative to health maintenance screening,
4) appropriateness of using USPHTF screening based on guidelines based on recorded sex or gender at birth,
5) need to update SFCU-specific screening status (e.g. diagnoses and/or surgeries since screening plan.)  

Note: Roles and local workflows will vary.  This is intended to be a basic use case (specific instance; does not cover everything)
## Actors:
- People
- Patient
whose record indicates the existence of a SFCU-aware, health maintenance screening profile. 
Need for such a screening profile is part of a different use case for classifying the patient.
Profile may simply contain indication that patient does not have factors that require consideration outside of Recorded Sex or Gender at Birth driving selection of health maintenance screening considerations.
- Clinician
- Care Manager (reviewing/assuring a panel of patients is up-to-date on their screening)
Are other clinical workers involved? Elsewhere referred to as "Intake Personnel" such as registration clerk, person rooming, roles of nurse practitioners, physician assistants, and other personnelle.
- System
  EHR record may have current status for eligible screening
  Referral for task of classifying the patient as concurrent or scheduled classification, based on local or plan policy.
  Policy question: who (which roles) are qualified to classify the patient's needs?

## Scope Statement:
Use case covers ambulatory annual visit when health maintenance is considered.

Sex and Gender history and physical is considered previously done relative to this use case; if not done, another use case covers collecting the necessary screening information.

Screening considerations beyond USPHTF screening recommendations (broader survey)
* Blood pressure and heart rate screening
* Height and weight checks for body mass index
* Blood tests for cholesterol, triglyceride, and glucose levels
* Urine tests for glucose and protein levels, bacteria, blood cells, and more
* STI screenings
* Medication and hormone treatment monitoring
* Immunizations
* Mammograms
* Gynecological and anal exams
* Lung, prostate, testicular, and colon cancer screenings
* Exercise and diet counseling

#### Precondition(s):
- Patient in EHR
They've been classified (however that happened)
The system of record (EHR) is not FHIR; whatever is in the EHR would
Resource/ELements/Extensions reviewed (presence means patient has been classified for health maintenance)
If patient not classified, provider may be scheduled for the classification task.
    May or may not be a required step based on local policies for annual health maintenance visit

#### Postcondition(s):
The clinician and patient involved have determined which health maintenance screening tests are appropriate based on previously captured information which relates the patient to the USPHTF guidelines.

No new Resources and Elements or In-line extensions are populated.  There is no write-back as a result of completing this workflow.
#### Workflow/Storyboard:
## Before Gender Harmony Project:
Provider made health maintenance screening decisions based on age, gender (=male or female), and major risk factors including prior medical history and family history.

## After Gender Harmony Project:
  Workflow/thoughtflow is the same AND gender consideration reflects the patient's current and past gender history to ensure appropriate care.  For example, people who required Estrogen for bone health (most commonly women) without replacement of Estrogen after age-related cessation of endogenous Estrogen may require bone density determination, independent of current gender. see USPHTF for inventory of health maintenance screening: https://www.uspreventiveservicestaskforce.org/uspstf/recommendation-topics/uspstf-a-and-b-recommendations?SORT=T

Note: As of the 2021 update, there are 52 potential recommendations.  23 have no gender associated terms.  17 contain "Women".  2 contain "men" (AAA and IPV). 17 contain "Gestation" or "Pregnant".
Note: There is also group-specific categorical "Top Issues" here: https://store.samhsa.gov/sites/default/files/d7/priv/sma12-4684.pdf

Arrival and check-in

Patient and provider "prior direction" on health maintenance

Clinician workflow (decision making)
Alternative and/or related Workflow(s):

Alignment and/or Misalignment with Gender Harmony Model:
Care must be taken to not exacerbate stigmatizing concerns for providers at various degrees of Gender Harmony awareness.  For example, providers must be trained in applying health maintenance screening based on Genderbread person characteristics.