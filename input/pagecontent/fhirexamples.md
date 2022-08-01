# FHIR Examples

## x.3 Example 03: FHIR 

The patient is referenced as the subject of DiagnosticReport,
DocumentReference, ImagingStudy or ImagingSelection. Mapping to DICOM is as follows:

| FHIR attribute                                                                             | Attribute Name      | Tag         | VR | Value                                                       |
|--------------------------------------------------------------------------------------------|-------------------- |-------------|----|-------------------------------------------------------------|
| Patient.name.use=official                                                                  | Patient's Name      | (0010,0010) | PN | Smith\^John^^^                                              |
| serviceRequest.sexForClinicalUse.value or Patient.gender, depending on local mapping rules | Patient's Sex       | (0010,0040) | CS | F                                                           |
| Patient.genderIdentity.value                                                               | Patient’s Gender    | (0010,xxxx) | CS | M                                                           |
| serviceRequest.sexForClinicalUse.comment or Patient.genderIdentity.comment                 | Sex Comment         | (0010,xxx1) | LT | Hormonal treatment, use affirmed gender Cr reference ranges |
| Patient.name.use=usual                                                                     | Patient Name to Use | (0010,xxx3) | PN | Smith\^John^^^                                              |


# **TODO** - Update FHIR Build Patient Samples (Update FHIR Build Patients)

Add snippet of extension inlined


# **TODO** Have examples for the use cases 

## Laboratory Use Case Example
### **TODO** Examples for this use cases 
## Hysterectomy Use Case Example
### **TODO** Examples for this use cases 
## DICOM Use Case Example
### **TODO** Examples for this use cases 
## Health Maintanence Use Case Example
### **TODO** Examples for this use cases 

