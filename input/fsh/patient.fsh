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
    aaa 0..1 MS and
    bbb 0..1 and 
    ccc 0..* 
* extension[aaa] ^short = "gender"
* extension[aaa].value[x] only Coding
* extension[bbb] ^short = "period"
* extension[bbb].value[x] only Period
* extension[ccc] ^short = "comment"
* extension[ccc].value[x] only string

Extension: SexForClinicalUse
Id: sex-for-clinical-use
Title:    "Sex For Clinical Use"
Description:   "A category that is based upon clinical observations typically associated with the designation of male and female."
* extension contains
    aaa 0..1 MS and
    bbb 0..1 and 
    ccc 0..1 and 
    ddd 0..*
* extension[aaa] ^short = "value"
* extension[aaa].value[x] only Coding
* extension[bbb] ^short = "period"
* extension[bbb].value[x] only Period
* extension[ccc] ^short = "comment"
* extension[ccc].value[x] only string
* extension[ddd] ^short = "supportingInfo"
* extension[ddd].value[x] only Reference

Extension: RecordedSexAndGender
Id: recorded-sex-and-gender
Title:    "Recorded Sex and gender"
Description:   "This element is to be used to differentiate existing poorly specified sex or gender data, and new context-laden sex or gender information, from the other proposed sex and gender information in this specification."
* extension contains
    aaa 0..1 MS and
    bbb 0..* and 
    ccc 0..* and 
    ddd 0..1 and 
    eee 0..1
* extension[aaa] ^short = "value"
* extension[aaa].value[x] only Coding
* extension[bbb] ^short = "sourceDocument"
* extension[bbb].value[x] only Reference  // DocumentReference
* extension[ccc] ^short = "jurisdiction"
* extension[ccc].value[x] only CodeableConcept
* extension[ddd] ^short = "supportingInfo"
* extension[ddd].value[x] only Period
* extension[eee] ^short = "supportingInfo"
* extension[eee].value[x] only string

Extension: Pronouns
Id: pronouns
Title:    "Pronouns"
Description:   "Pronoun(s) specified by the patient to use when referring to the patient in speech, in clinical notes, and in written instructions to caregivers."
* extension contains
    aaa 0..1 MS and
    bbb 0..1 and 
    ccc 0..1
* extension[aaa] ^short = "value"
* extension[aaa].value[x] only CodeableConcept
* extension[bbb] ^short = "period"
* extension[bbb].value[x] only Period
* extension[ccc] ^short = "comment"
* extension[ccc].value[x] only string