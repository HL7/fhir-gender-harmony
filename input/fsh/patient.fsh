// This is a simple example of a FSH file.
// This file can be renamed, and additional FSH files can be added.
// SUSHI will look for definitions in any file using the .fsh ending.
Profile: MyPatient
Parent: Patient
Description: "An example profile of the Patient resource."
* name 1..* MS
* extension contains
    // GenderNameToUse named GenderNameToUse 0..1 MS
    GenderIdentity named GenderIdentity 0..1 
    // SexForClinicalUse named SexForClinicalUse MS

Instance: PatientExample
InstanceOf: MyPatient
Description: "An example of a patient with a license to krill."
* name
  * given[0] = "James"
  * family = "Pond"

Extension:  GenderNameToUse
Id: name-to-use
Title: "name-to-use"
Description: "Text attribute that provides the name that should be used when addressing or referencing the patient."
* value[x] only string
* valueString 1..1 MS

Extension: GenderIdentity
Id: gender-identity
Title:    "Gender Identity"
Description:   "An individual's personal sense of being a man, woman, boy, girl, nonbinary, or something else. This datum represents an individual's identity, ascertained by asking them what that identity is."
* value[x] only CodeableConcept //Gender Code
* value[x] from gender-identity-vs 
* effective[x] only Period
* effectivePeriod.start 0..1 
* effectivePeriod.end 0..1
* note 0..1 //"Content included may be related to social and/or cultural context to be considered when using the gender identity, particularly with overlapping active values."

// Extension:  SexForClinicalUse
// Id:       sexforclinicaluse
// Title:    "Sex For Clinical Use"
// Description:   "A category that is based upon clinical observations typically associated with the designation of male and female."
// * value[x] only CodeableConcept // SFCU Category
// * value[x] from sex-for-clinical-use-category-vs MS
// * effective[x] only Period
// * effectivePeriod.start 0..1 
// * effectivePeriod.end 0..1
// * note 0..1 
// // supportingInfo???

 