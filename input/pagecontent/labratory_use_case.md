# Labratory Use Case

*ACLA original:
A biological / chromosol male transgender woman presents to the laboratory for a blood draw for a Creatinine test, which has different test reference ranges results based on the patient’s age and biological / chromosomal clinical gender.*

## Use Case Description:
A 46,XY,SRY+ transgender woman presents to the laboratory for a blood draw for a Creatinine test, which has different test reference ranges results based on the patient’s age and sex for clinical use, based on karyotype.

## Actors:
- Trans Woman Patient
- Ordering Provider
- Laboratory Personnel

## Scope Statement:
This use case is from the American Clinical Laboratory Association (ACLA)

### Precondition(s):
Provider orders laboratory test(s) via their EHR system and refers patient to a laboratory facility
Postcondition(s):

## Workflow/Storyboard:

### Before Gender Harmony
The laboratory’s legacy system only captures a single legacy value messaged in PID-8.
If provider indicates M-Male the reference range result for the male will be reported
If provider indicates F-Female the reference range result for the female will be reported
If the provider does not indicate M or F the laboratory may be able to report both male and female or a general reference range to the patient/provider. This permits both to appropriately interpret the results.
If left blank, this may impact claims and billing.

### After Gender Harmony
The Provider will select the Sex For Clinical Use value that is clinically indicated when submitting the electronic order to the lab. 
Alternative and/or related Workflow(s):

Alignment and/or Misalignment with Gender Harmony Model:

