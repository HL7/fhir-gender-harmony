### Registration of Name Change
#### Using v2.9  
```
MSH|^~\&|||||20220815151129||ADT^A01|Tw1244563214559JGX4U2p3hCLJH|P|2.9.1
EVN||20220815151118||01^Patient Event^HL70062
PID|1||patientID1^^^^MR||Smith^Jack^^^^^NOUSE~Smith^Julie^^^^^N||19700103
GSP|1|S||76691-5^Gender identity^LN|446151000124109^Male^SCT|19700103^20220801
GSP|2|S||76691-5^Gender identity^LN|446141000124107^Female^SCT|20220801
GSP|3|S||90778-2^Personal pronouns - Reported^LN|LA29518-0^He, Him, His, Himself^LN||20030201^20220801
GSP|4|S||90778-2^Personal pronouns - Reported^LN|LA29519-8^She, Her, Hers, Herself^LN|20220801
PV1||O
```
#### Using the pre-adoption profile in V2.5.1
```
MSH|^~\&|||||20220815151129||ADT^A01|Tw1244563214559JGX4U2p3hCLJH|P|2.5.1|||||||||GenderHarmony^^2.16.840.1.113883.9.282^ISO
EVN||20220815151118||01^Patient Event^HL70062
PID|1||patientID1^^^^MR||Smith^Jack^^^^^NOUSE~Smith^Julie^^^^^N||19700103
GSP|1|S||76691-5^Gender identity^LN|446151000124109^Male^SCT|19700103^20220801
GSP|2|S||76691-5^Gender identity^LN|446141000124107^Female^SCT|20220801
GSP|3|S||90778-2^Personal pronouns - Reported^LN|LA29518-0^He, Him, His, Himself^LN||20030201^20220801
GSP|4|S||90778-2^Personal pronouns - Reported^LN|LA29519-8^She, Her, Hers, Herself^LN|20220801
PV1||O
```
### Order of the PSA Laboratory Test
#### Using v2.9  
```
MSH|^~\&|||||20220815153129||OML^O21^OML_O21|Tw1244563asdderfd9JGX4U2p3hCLJH|P|2.9.1
PID|1||patientID1^^^^MR||Smith^Julie^^^^^N||19700103|
GSP|1|S||76691-5^Gender identity^LN|446141000124107^Female^SCT|20220801
GSP|2|S||90778-2^Personal pronouns - Reported^LN|LA29519-8^She, Her, Hers, Herself^LN|20220801
GSC|1|S||male^Male sex for clinical use^sexForClinicalUseCS||OBR^1||The patient has a prostate and is utilizing an estrogenic therapy regimen to suppress testosterone.
PV1||O
ORC|NW|911^ClinicOrderSystem|||||||20220815153120|||
PRT|by87765446t21h^ClinicOrderSystem|SP||OP^Ordering Provider^HL70912|^Jones^^^^^MD
OBR|1|911^ClinicOrderSystem||2857-1^Prostate specific Ag [Mass/volume] in Serum or Plasma^LN^^^^2.73
```
#### Using the pre-adoption profile in V2.5.1
```
MSH|^~\&|||||20220815153129||OML^O21^OML_O21|Tw1244563asdderfd9JGX4U2p3hCLJH|P|2.5.1|||||||||GenderHarmony^^2.16.840.1.113883.9.282^ISO
PID|1||patientID1^^^^MR||Smith^Julie^^^^^N||19700103|
GSP|1|S||76691-5^Gender identity^LN|446141000124107^Female^SCT|20220801
GSP|2|S||90778-2^Personal pronouns - Reported^LN|LA29519-8^She, Her, Hers, Herself^LN|20220801
GSC|1|S||male^Male sex for clinical use^sexForClinicalUseCS||OBR^1||The patient has a prostate and is utilizing an estrogenic therapy regimen to suppress testosterone.
PV1||O
ORC|NW|911^ClinicOrderSystem|||||||20220815153120|||^Jones^^^^^MD
OBR|1|911^ClinicOrderSystem||2857-1^Prostate specific Ag [Mass/volume] in Serum or Plasma^LN^^^^2.73
```
### Result of the PSA Laboratory Test
#### Using v2.9
```
MSH|^~\&|||||20220816103129||ORU^Ro1^ORU_R01|Tw1244563asdderfd2mnhdyhshCLJH|P|2.9.1
PID|1||patientID1^^^^MR||Smith^Julie^^^^^N||19700103|
GSP|1|S||76691-5^Gender identity^LN|446141000124107^Female^SCT|20220801
GSP|2|S||90778-2^Personal pronouns - Reported^LN|LA29519-8^She, Her, Hers, Herself^LN|20220801
GSC|1|S||male^Male sex for clinical use^sexForClinicalUseCS||OBR^1||The patient has a prostate and is utilizing an estrogenic therapy regimen to suppress testosterone.
PV1||O
ORC|NW|911^ClinicOrderSystem|000051^LabInfoSystem||||||20220815153120|||
PRT|by87765446t21h^ClinicOrderSystem|SP||OP^Ordering Provider^HL70912|^Jones^^^^^MD
OBR|1|911^ClinicOrderSystem|000051^LabInfoSystem|2857-1^Prostate specific Ag [Mass/volume] in Serum or Plasma^LN^^^^2.73|||202208151601|||||||||||||||202208151745|||F
OBX|1|NM|2857-1^Prostate specific Ag [Mass/volume] in Serum or Plasma^LN^^^^2.73||3.0|ng/ml^NanoGramsPerMilliLiter^UCUM|0-4.0 ng/ml|N^Normal^HL70078|||F||||||||202208151741
PRT|123487689^LabInfoSystem|SP||PO^Performing Organization^HL70912||||Clinic Lab One
PRT|123487690^LabInfoSystem|SP||POMD^Performing Organization Medical DirectorHL70912|^Goodfellow^^^^^MD|||||||||123 Example Street^^Example City^CA^94133
NTE|1||Patients on testosterone suppressing medications, the upper limit of normal for the PSA should be reduced to 1.0 ng/ml
SPM|1|^14MP000051&LabInfoSystem||119364003^Serum specimen^SCT|||||||||||||202208151601|202208151601
```

#### Using the pre-adoption profile in V2.5.1

```
MSH|^~\&|||||20220816103129||ORU^Ro1^ORU_R01|Tw1244563asdderfd2mnhdyhshCLJH|P|2.5.1|||||||||GenderHarmony^^2.16.840.1.113883.9.282^ISO
PID|1||patientID1^^^^MR||Smith^Julie^^^^^N||19700103|
GSP|1|S||76691-5^Gender identity^LN|446141000124107^Female^SCT|20220801
GSP|2|S||90778-2^Personal pronouns - Reported^LN|LA29519-8^She, Her, Hers, Herself^LN|20220801
GSC|1|S||male^Male sex for clinical use^sexForClinicalUseCS||OBR^1||The patient has a prostate and is utilizing an estrogenic therapy regimen to suppress testosterone.
PV1||O
ORC|NW|911^ClinicOrderSystem|000051^LabInfoSystem||||||20220815153120|||^Jones^^^^^MD
OBR|1|911^ClinicOrderSystem|000051^LabInfoSystem|2857-1^Prostate specific Ag [Mass/volume] in Serum or Plasma^LN^^^^2.73|||202208151601|||||||||||||||202208151745|||F
OBX|1|NM|2857-1^Prostate specific Ag [Mass/volume] in Serum or Plasma^LN^^^^2.73||3.0|ng/ml^NanoGramsPerMilliLiter^UCUM|0-4.0 ng/ml|N^Normal^HL70078|||F||||||||202208151741||||Clinic Lab One|123 Example Street^^Example City^CA^94133
NTE|1||Patients on testosterone suppressing medications, the upper limit of normal for the PSA should be reduced to 1.0 ng/ml
SPM|1|^14MP000051&LabInfoSystem||119364003^Serum specimen^SCT|||||||||||||202208151601|202208151601
```
