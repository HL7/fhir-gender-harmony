### CDA DICOM Use Case Example
[CDA DICOM USE CASE](cdadicom_use_case.html)

### Representing Sex & Gender Implementation Guide Examples.
#### Gender Identity Observation Example
```
<observation classCode="OBS" moodCode="EVN">
     <templateId root="2.16.840.1.113883.10.15.1" extension="2022-09-01"/>
     <code code="76691-5" codeSystem="2.16.840.1.113883.6.1"
           displayName="Gender Identity"/>
     <statusCode code="completed"/>
     <value xsi:type="CD" codeSystem="2.16.840.1.113883.6.96"
          codeSystemName="SNOMED CT" code="446151000124109"
          displayName="Identifies as male gender">
     </value>
</observation>
```
#### Pronouns Observation Example
```
<observation classCode="OBS" moodCode="EVN">
     <templateId root="2.16.840.1.113883.10.15.2" extension="2022-09-01"/>
     <code code="90778-2" codeSystem="2.16.840.1.113883.6.1"
          displayName="Personal pronouns"/>
          <statusCode code="completed"/>
     <value xsi:type="CD" codeSystem="2.16.840.1.113883.6.1"
          codeSystemName="LOINC" code="LA29518-0"
          displayName="He, Him, His, Himself"/>
</observation>
```
#### Recorded Sex or Gender
```
<observation classCode="OBS" moodCode="EVN">
    <templateId root="2.16.840.1.113883.10.15.4" extension="2022-09-01"/>
    <code code="99502-7" codeSystem="2.16.840.1.113883.6.1"
          displayName="Recorded sex or gender"/>
    <derivationExpr>Enter whether the infant is male, female, or if the sex
          of the infant is ambiguous, enter “unknown.”</derivationExpr>
    <statusCode code="completed"/>
    <value xsi:type="CD" code="F">
        <translation code="F" codeSystem="2.16.840.1.113883.11.19756"
          codeSystemName="International Civil Aviation Organization Sex or Gender"
          displayName="Female"/>
    </value>
    <entryRelationship typeCode="COMP">
        <!-- Jurisdiction -->
        <observation classCode="OBS" moodCode="EVN">
            <code code="77969-4" codeSystem="2.16.840.1.113883.6.1"
                    displayName="Jurisdiction code"/>
            <statusCode code="completed"/>
            <value xsi:type="CD" nullFlavor="OTH" codeSystem="NP">
                <!-- This may be coded but does not have to be -->
                <originalText>California</originalText>
            </value>
        </observation>
    </entryRelationship>
    <entryRelationship typeCode="COMP">
        <!-- Document Type -->
        <observation classCode="OBS" moodCode="EVN">
            <code code="92183-3" codeSystem="2.16.840.1.113883.6.1"
                    displayName="Document type"/>
            <statusCode code="completed"/>
            <value xsi:type="CD" codeSystem="2.16.840.1.113883.6.1"
                    codeSystemName="LOINC" code="71230-7"
                    displayName="Birth Certificate"/>
        </observation>
    </entryRelationship>
    <entryRelationship typeCode="COMP">
        <!-- Date of Entry -->
        <observation classCode="OBS" moodCode="EVN">
            <code code="50786-3" codeSystem="2.16.840.1.113883.6.1"
                    displayName="Date of entry"/>
            <statusCode code="completed"/>
            <value xsi:type="TS" value="201201011450+0600"/>
        </observation>
    </entryRelationship>
    <!-- Element Type -->
    <entryRelationship>
        <observation classCode="OBS" moodCode="EVN">
            <code code="TempElementType" codeSystem="2.16.840.1.113883.6.1"
displayName="Element type"/>
            <statusCode code="completed"/>
            <value xsi:type="CD" codeSystem="2.16.840.1.113883.6.1"
codeSystemName="LOINC" code="76689-9"
displayName="Sex assigned at birth"/>
        </observation>
    </entryRelationship>
</observation>
```
#### Sex for Clinical Use
```<observation classCode="OBS" moodCode="EVN">
    <templateId root="2.16.840.1.113883.10.15.3"
        extension="2022-09-01"/>
    <code code="99501-9" codeSystem="2.16.840.1.113883.6.1"
        displayName="Sex for clinical use"/>
    <statusCode code="completed"/>
    <value xsi:type="CD"
        codeSystem="2.16.840.1.113883.4.642.1.983"
        codeSystemName="Sex For Clinical Use" code="female"
        displayName="Female sex for clinical use">
    </value>
    <!-- Supporting Reference for Sex for Clinical Use -->
    <entryRelationship typeCode="SPRT">
        <act classCode="ACT" moodCode="EVN">
            <templateId root="2.16.840.1.113883.10.20.22.4.122"/>
            <id root="6C844C75-AA34-411C-B7BD-5E4A9F206E29"/>
            <code nullFlavor="OTH" codeSystem="NP"/>
            <statusCode code="completed"/>
        </act>
    </entryRelationship>
</observation>
```



