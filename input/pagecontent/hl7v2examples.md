V2 Examples

### DICOM Use Case Example

#### x.1 Example 01: Imaging Order

#### Below is a HL7 v2.9.1 OMI Imaging Order for the DICOM Use Case.

MSH|\^\~\\&|||||20220715142240||OMI\^O23|WSA5mY0UBuCGrytRTAFR8UWJ|P|2.9.1  
PID|||patientID^^^\^MR||Smith\^Janet^^^^\^B\~Smith\^John^^^^\^N|||F  
GSP|1|S||76691-5\^Gender identity\^LN|446151000124109\^Male\^SCT  
GSC|1|S||248152002\^Female\^SCT||OBR\^4||Hormonal treatment, use affirmed gender Cr reference ranges  
ORC|NW||||||||20220715090000|||\^Cure\^Matt^^^\^MD  
OBR||||241439007\^PET heart study\^SCT|||||||||||||||||||||||||||||||||||||||||82800-4\^PET+CT Heart W contrast IV\^LN    
IPC|accessionNum|procedureID|studyInstanceUID|schProcedureStepId|PT\^Positron emission tomography\^DCM|122793\^PET Myocardial Perfusion, Rest and Stress\^DCM  

This maps to DICOM Modality Worklist as follows:

| V2                              | Attribute Name      | Tag         | VR    | Value                                                      |
|---------------------------------|---------------------|-------------|-------|------------------------------------------------------------|
| PID-5 Name Type Code = Nickname | Patient's Name      | (0010,0010) | PN    | Smith\^Janet^^^                                            |
| PID-8                           | Patient's Sex       | (0010,0040) | CS    | F                                                          |
| GSP-5                           | Patient’s Gender    | (0010,xxxx) | CS    | M                                                          |
| GSR-10                          | Sex Comment         | (0010,xxx1) | LT    | Hormonal treatment, use affirmed gender Cr reference ranges|
| PID-5 Name Type Code = Nickname | Patient Name to Use | (0010,xxx3) | PN    | Smith\^John^^^                                             |


#### x.2 Example 02: Patient Name Update

#### Below is a HL7 v2.9.1 ADT Demographics Update for the DICOM Use Case.

MSH|\^\~\\&|||||20220715151029||ADT\^A08|TwxxneTRWE9JGX4U2p3hCLJH|P|2.9.1  
EVN||20220715151118||01  
PID|||patientID^^^\^MR||Smith\^Janet^^^^\^NOUSE\~Smith\^John^^^^\^N|||F  
GSP|1|S||76691-5\^Gender identity\^LN|446151000124109\^Male\^SCT|20220715  
PV1||O  

This maps to DICOM Modality Worklist as follows:

|  V2                              |  Attribute Name    |  Tag       | VR   | Value                                                      |
|----------------------------------|--------------------|------------|------|------------------------------------------------------------|
| PID-5 Name Type Code = Nickname  | Patient's Name     | (0010,0010)| PN   | Smith\^John^^^                                             |
| PID-8                            | Patient's Sex      | (0010,0040)| CS   | F                                                          |
| GSP-5                            | Patient’s Gender   | (0010,xxxx)| CS   | M                                                          |
| GSR-10                           | Sex Comment        | (0010,xxx1)| LT   | Hormonal treatment, use affirmed gender Cr reference ranges|
| PID-5 Name Type Code =  Nickname | Patient Name to Use| (0010,xxx3)| PN   | Smith\^John^^^                                             |


_Note: the Validity Period is the same as the date the name change was entered by the clerk._



# 
