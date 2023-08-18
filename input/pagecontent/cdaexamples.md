<!-- Updates based on Jira tickets 
Date             Jira ticket        Updated by                   Comment



-->

### CDA DICOM Use Case Example
[CDA DICOM USE CASE](cdadicom_use_case.html)

### Representing Sex & Gender Implementation Guide Examples.
#### Gender Identity Observation Example
```
<!-- Examples - Identifies as male gender since DOB to 15; then as non binary starting in 2014 -->
<observation classCode="OBS" moodCode="EVN">
    <templateId root="2.16.840.1.113883.10.15.1" extension="2022-09-01" />
    <code code="76691-5" codeSystem="2.16.840.1.113883.6.1" displayName="Gender Identity" />
    <statusCode code="completed" />
    <effectiveTime>
        <low value="19990103" />
        <high value="2014" />
    </effectiveTime>
    <value xsi:type="CD" codeSystem="2.16.840.1.113883.6.96" codeSystemName="SNOMED CT" code="446151000124109" displayName="Identifies as male gender"></value>
</observation>
...
  
<observation classCode="OBS" moodCode="EVN">
    <templateId root="2.16.840.1.113883.10.15.1" extension="2022-09-01" />
    <code code="76691-5" codeSystem="2.16.840.1.113883.6.1" displayName="Gender Identity" />
    <statusCode code="completed" />
    <effectiveTime>
        <low value="2014" />
    </effectiveTime>
    <value xsi:type="CD" codeSystem="2.16.840.1.113883.6.96" codeSystemName="SNOMED CT" code="33791000087" displayName="Identifies as nonbinary gender"></value>
</observation>

...
 
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
    <templateId root="2.16.840.1.113883.10.15.4" extension="2022-09-01" />
    
    <!--  http://hl7.org/fhir/StructureDefinition/individual-recordedSexOrGender/type  -->
    <code code="76689-9" codeSystem="2.16.840.1.113883.6.1" displayName="Sex assigned at birthr" />
    <statusCode code="completed" />
    <!--  http://hl7.org/fhir/StructureDefinition/individual-recordedSexOrGender/effectivePeriod -->
    <effectiveTime>
        <low value="202103" />
    </effectiveTime>
    <!--  http://hl7.org/fhir/StructureDefinition/individual-recordedSexOrGender/value -->
    <value xsi:type="CD" code="M" codeSystem="2.16.840.1.113883.5.1" displayName="Male" codeSystemName="AdministrativeGender" />
    <author>
        <!--  http://hl7.org/fhir/StructureDefinition/individual-recordedSexOrGender/acquisitionDate -->
        <time value="20230115" />
    </author>
    <entryRelationship typeCode="QUALF">
        <!-- Jurisdiction -->
        <observation classCode="OBS" moodCode="EVN">
            <templateId root="22.16.840.1.113883.10.15.4.1" extension="2022-09-01" />
            <code code="77969-4" codeSystem="2.16.840.1.113883.6.1" displayName="Jurisdiction code" />
            <statusCode code="completed" />
            <value xsi:type="CD" nullFlavor="OTH" codeSystem="NP">
                <!-- This may be coded but does not have to be -->
                <originalText>California</originalText>
            </value>
        </observation>
    </entryRelationship>
    <entryRelationship typeCode="REFR">
        <!-- Source Record Field Type -->
        <observation classCode="OBS" moodCode="EVN">
            <templateId root="2.16.840.1.113883.10.15.4.74" extension="2022-09-01" />
            <code code="48766-0" codeSystem="2.16.840.1.113883.6.1" displayName="Information Source" />
            <statusCode code="completed" />
            <value xsi:type="ED">BIRTH SEX</value>
        </observation>
    </entryRelationship>
    <reference typeCode="REFR">
        <!--  http://hl7.org/fhir/StructureDefinition/individual-recordedSexOrGender/sourceDocument -->
        <externalDocument classCode="DOCCLIN" moodCode="EVN">
            <code codeSystem="" codeSystemName="" code="" displayName="" />
            <text>California Drivers License</text>
        </externalDocument>
    </reference>
</observation>
```
#### Sex Parameter for Clinical Use
```
<observation classCode="OBS" moodCode="EVN">
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
            <code nullFlavor="OTH" />
            <statusCode code="completed"/>
        </act>
    </entryRelationship>
</observation>

```



