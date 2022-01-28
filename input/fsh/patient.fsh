Profile: MyPatient
Parent: Patient
Description: "An example profile of the Patient resource."
* name 1..* MS
* extension contains
    GenderIdentity named GenderIdentity 0..1 

Extension: GenderIdentity
Id: gender-identity
Title:    "Gender Identity"
Description:   "An individual's personal sense of being a man, woman, boy, girl, nonbinary, or something else. This datum represents an individual's identity, ascertained by asking them what that identity is."
* extension contains
    xxx 0..1 MS and
    yyy 0..1 MS and 
    zzz 0..* MS
* extension[xxx] ^short = "gender"
* extension[xxx].value[x] only Coding
* extension[yyy] ^short = "period"
* extension[yyy].value[x] only Period
* extension[zzz] ^short = "comment"
* extension[zzz].value[x] only string

Extension:  GenderNameToUse
Id: name-to-use
Title: "name-to-use"
Description: "Text attribute that provides the name that should be used when addressing or referencing the patient."
* value[x] only string
* valueString 1..1 MS