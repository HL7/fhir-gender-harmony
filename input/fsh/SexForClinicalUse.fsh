Profile:  SexForClinicalUse
Parent:   Observation
Id:       sexforclinicaluse
Title:    "Sex For Clinical Use"
Description:   "A category that is based upon clinical observations typically associated with the designation of male and female."
* status and code and subject and effectivePeriod and value[x] MS
* value[x] only CodeableConcept // SFCU Category
* value[x] from sex-for-clinical-use-category-vs
* effective[x] only Period
* effectivePeriod.start 0..1 
* effectivePeriod.end 0..1
* note 0..1 
// * linkedClinicalObservation 0..1 // ??
