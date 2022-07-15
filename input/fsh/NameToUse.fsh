Alias: NameToUse = http://hl7.org/fhir/name-use 

// Profile:  NameToUse
// Parent:   Observation
// Id:       nametouse
// Title:    "Name To Use"
// Description:   "Text attribute that provides the name that should be used when addressing or referencing the patient."
// * status and code and subject and effectivePeriod and value[x] MS
// * value[x] only CodeableConcept // Name
// * value[x] from gender-identity-vs
// * code =  SOLOR#86188-0 "History of Occupation industry" // TBD
// * effective[x] only Period
// * effectivePeriod.start 0..1 
// * effectivePeriod.end 0..1
// * note 0..1 // "Text to further explain use of the Name. This may be related to social and/or cultural context."


Profile:  NameToUse
Parent:   HumanName
Id:       NameToUse
* use =  http://hl7.org/fhir/name-use#usual "Usual"

