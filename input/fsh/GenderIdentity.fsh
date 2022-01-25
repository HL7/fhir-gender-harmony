Alias:   SOLOR = https://www.logicahealth.org/solutions/solor

Profile:  GenderIdentity
Parent:   Observation
Id:       genderidentity
Title:    "Gender Identity"
Description:   "An individual's personal sense of being a man, woman, boy, girl, nonbinary, or something else. This datum represents an individual's identity, ascertained by asking them what that identity is."
* status and code and subject and effectivePeriod and value[x] MS
* value[x] only CodeableConcept //Gender Code
* value[x] from gender-identity-vs
* code =  SOLOR#86188-0 "History of Occupation industry" // TBD
* effective[x] only Period
* effectivePeriod.start 0..1 
* effectivePeriod.end 0..1
* note 0..1 //"Content included may be related to social and/or cultural context to be considered when using the gender identity, particularly with overlapping active values."
