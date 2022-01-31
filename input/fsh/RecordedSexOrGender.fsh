// Alias:   SOLOR = https://www.logicahealth.org/solutions/solor

// Profile:  RecordedSexOrGender
// Parent:   Observation
// Id:       recordedsexorgender
// Title:    "Recorded Sex Or Gender"
// Description:   "This element is to be used to differentiate existing poorly specified sex or gender data, and new context-laden sex or gender information, from the other proposed sex and gender information in this specification."
// * status and code and subject and effectivePeriod and value[x] MS
// * value[x] only CodeableConcept // Sex Or Recorded Gender
// * value[x] from sex-for-clinical-use-category-vs
// * effective[x] only Period
// * effectivePeriod.start 1..1 // validityPeriod
// * note 0..1    // recordDescription
// * issued 0..1 // acquisitionDate
// * component ^slicing.discriminator.type = #pattern
// * component ^slicing.discriminator.path = "code"
// * component ^slicing.rules = #open
// * component ^slicing.description = "Slice based on the component.code pattern"