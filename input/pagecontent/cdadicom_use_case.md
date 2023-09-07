<!-- Updates based on Jira tickets 
Date             Jira ticket        Updated by                   Comment
2023-06-16       OTHER-2488         Joanie Harper                Fixed spelling of narrative per the Jira ticket https://jira.hl7.org/browse/OTHER-2488
2023-8-16		 Spell Check	    MaryKay McDaniel             "Recieve" changed to Receive, identifes to identifies
2023-8-18        OTHER-2706         Sean Muir                    Replaced SFCU with SPCU
2023-8-18        OTHER-2497         Sean Muir                    Updated CL Example    
2023-8-18        OTHER-2471         Sean Muir                    Update example per issue
2023-8-18        OTHER-2436         Sean Muir                    Updated CL Example  

-->

### CDA DICOM

This example was constructed to illustrate the DICOM use case.

The patient is a transgender male, undergoing hormonal treatment. Based on physician instructions, affirmed gender	creatinine reference ranges were confirmed to be within normal values prior to the administration of non-ionic iodinated contrast agent. CT images for attenuation correction and anatomic localization followed by PET images were obtained.

The Social History Section includes instance examples of the Gender Identity, Pronouns, and Recorded Sex or Gender templates.

Examples of the use of the Sex Parameter for Clinical Use template can be found in the Imaging Procedure History Section.



```
<?xml version="1.0"?>
<?xml-stylesheet type="text/xsl" href="CDA.xsl"?>
<!-- Title: Sex Parameter for Clinical Use CDA Template Example file Version: 1.0 Revision History: 31-Jan-2011 source document created 10-Aug-2022 example drafted [Jay Lyle, JP Systems for the 
    VHA; Rob Horn, Fairhaven Technology; Steven Nichols, GE] -->
<ClinicalDocument xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns="urn:hl7-org:v3" xmlns:mif="urn:hl7-org:v3/mif" xmlns:voc="urn:hl7-org:v3/voc"
    xsi:schemaLocation="urn:hl7-org:v3 CDA.xsd"
>
    <!-- ******************************************************** CDA Header ******************************************************** -->
    <realmCode code="US" />
    <typeId root="2.16.840.1.113883.1.3" extension="POCD_HD000040" />
    <!-- US General Header Template -->
    <templateId root="2.16.840.1.113883.10.20.22.1.1" />
    <!-- Diagnostic Imaging Report Template -->
    <templateId root="2.16.840.1.113883.10.20.22.1.5" />
    <id root="2.16.840.1.113883.19.4.27" extension="20060828170821659" />
    <code code="18748-4" codeSystem="2.16.840.1.113883.6.1" codeSystemName="LOINC" displayName="Diagnostic Imaging Report" />
    <title>PET/CT Heart W contrast IV</title>
    <effectiveTime value="20050329171504+0500" />
    <confidentialityCode code="N" codeSystem="2.16.840.1.113883.5.25" />
    <languageCode code="en-US" />
    <setId extension="111199021" root="2.16.840.1.113883.19" />
    <versionNumber value="1" />
    <recordTarget>
        <!--NEW CONF per base CDA - patientRole SHALL be present of [1..*] -->
        <patientRole>
            <id extension="12345" root="2.16.840.1.113883.19.5" />
            <addr use="HP">
                <streetAddressLine>3300 Washtenaw Ave # 227</streetAddressLine>
                <city>Ann Arbor</city>
                <state>MI</state>
                <postalCode>48104</postalCode>
                <country>USA</country>
            </addr>
            <telecom value="tel:(734)555-1212" use="HP" />
            <patient>
                <name use="L">
                    <given>Smith</given>
                    <family>John</family>
                </name>
                <name use="P">
                <!-- Use the CL Callme from EntityPersonNamePartQualifier, 2.16.840.1.113883.11.20.9.26 to identify Name to use -->
                    <given qualifier="CL">Johanna</given>
                    <family>Jones</family>
                </name>                
                <administrativeGenderCode code="F" codeSystem="2.16.840.1.113883.5.1" />
                <birthTime value="19541125" />
                <maritalStatusCode code="S" displayName="Single" codeSystem="2.16.840.1.113883.5.2" codeSystemName="MaritalStatusCode" />
                <religiousAffiliationCode code="1013" displayName="Christian" codeSystemName="HL7 Religious Affiliation "
                    codeSystem="2.16.840.1.113883.5.1076" />
                <raceCode code="2106-3" displayName="White" codeSystem="2.16.840.1.113883.6.238" codeSystemName="Race &amp; Ethnicity - CDC" />
                <ethnicGroupCode code="2186-5" displayName="Not Hispanic or Latino" codeSystem="2.16.840.1.113883.6.238" codeSystemName="Race &amp; Ethnicity - CDC" />
                <guardian>
                    <code code="GRFTH" displayName="Grandfather" codeSystem="2.16.840.1.113883.5.111" codeSystemName="HL7 Role code" />
                    <addr use="HP">
                        <streetAddressLine>3300 Washtenaw Ave # 227</streetAddressLine>
                        <city>Ann Arbor</city>
                        <state>MI</state>
                        <postalCode>48104</postalCode>
                        <country>USA</country>
                    </addr>
                    <telecom value="tel:(734)555-1212" use="HP" />
                    <guardianPerson>
                        <name>
                            <given>Ralph</given>
                            <family>Relative</family>
                        </name>
                    </guardianPerson>
                </guardian>
                <birthplace>
                    <place>
                        <addr>
                            <state>MI</state>
                            <postalCode>48104</postalCode>
                            <country>USA</country>
                        </addr>
                    </place>
                </birthplace>
                <languageCommunication>
                    <languageCode code="fr-CN" />
                    <modeCode code="RWR" displayName="Receive Written" codeSystem="2.16.840.1.113883.5.60" codeSystemName="LanguageAbilityMode" />
                    <preferenceInd value="true" />
                </languageCommunication>
            </patient>
            <providerOrganization>
                <id root="2.16.840.1.113883.19.5" />
                <name>Good Imaging Clinic</name>
                <telecom value="tel:(734)555-1212" />
                <addr>
                    <streetAddressLine>21 North Ave</streetAddressLine>
                    <city>Ann Arbor</city>
                    <state>MI</state>
                    <postalCode>48104</postalCode>
                    <country>USA</country>
                </addr>
            </providerOrganization>
        </patientRole>
    </recordTarget>
    <author>
        <time value="20050329224411+0500" />
        <assignedAuthor>
            <id extension="KP00017" root="2.16.840.1.113883.19.5" />
            <addr>
                <streetAddressLine>21 North Ave.</streetAddressLine>
                <city>Ann Arbor</city>
                <state>MI</state>
                <postalCode>48104</postalCode>
                <country>USA</country>
            </addr>
            <telecom value="tel:(555)555-1003" />
            <assignedPerson>
                <name>
                    <given>Bill</given>
                    <family>Roentgen</family>
                </name>
            </assignedPerson>
        </assignedAuthor>
    </author>
    <dataEnterer>
        <assignedEntity>
            <id root="2.16.840.1.113883.19.5" extension="43252" />
            <addr>
                <streetAddressLine>21 North Ave.</streetAddressLine>
                <city>Ann Arbor</city>
                <state>MI</state>
                <postalCode>48104</postalCode>
                <country>USA</country>
            </addr>
            <telecom value="tel:(555)555-1003" />
            <assignedPerson>
                <name>
                    <given>Bill</given>
                    <family>Roentgen</family>
                </name>
            </assignedPerson>
        </assignedEntity>
    </dataEnterer>
    <custodian>
        <assignedCustodian>
            <representedCustodianOrganization>
                <id root="2.16.840.1.113883.19.5" />
                <name>Good Imaging Clinic</name>
                <telecom value="tel:(555)555-1212" use="WP" />
                <addr use="HP">
                    <streetAddressLine>3300 Washtenaw Ave # 227</streetAddressLine>
                    <city>Ann Arbor</city>
                    <state>MI</state>
                    <postalCode>48104</postalCode>
                    <country>USA</country>
                </addr>
            </representedCustodianOrganization>
        </assignedCustodian>
    </custodian>
    <informationRecipient>
        <intendedRecipient>
            <informationRecipient>
                <name>
                    <given>Bill</given>
                    <family>Roentgen</family>
                </name>
            </informationRecipient>
            <receivedOrganization>
                <name>Good Imaging Clinic</name>
            </receivedOrganization>
        </intendedRecipient>
    </informationRecipient>
    <legalAuthenticator>
        <time value="20050329224411+0500" />
        <signatureCode code="S" />
        <assignedEntity>
            <id extension="KP00017" root="2.16.840.1.113883.19.5" />
            <addr>
                <streetAddressLine>21 North Ave.</streetAddressLine>
                <city>Ann Arbor</city>
                <state>MI</state>
                <postalCode>48104</postalCode>
                <country>USA</country>
            </addr>
            <telecom value="tel:(555)555-1003" />
            <assignedPerson>
                <name>
                    <given>Bill</given>
                    <family>Roentgen</family>
                </name>
            </assignedPerson>
        </assignedEntity>
    </legalAuthenticator>
    <authenticator>
        <time value="20050329224411+0500" />
        <signatureCode code="S" />
        <assignedEntity>
            <id extension="KP00017" root="2.16.840.1.113883.19.5" />
            <addr>
                <streetAddressLine>21 North Ave.</streetAddressLine>
                <city>Ann Arbor</city>
                <state>MI</state>
                <postalCode>48104</postalCode>
                <country>USA</country>
            </addr>
            <telecom value="tel:(555)555-1003" />
            <assignedPerson>
                <name>
                    <given>Bill</given>
                    <family>Roentgen</family>
                </name>
            </assignedPerson>
        </assignedEntity>
    </authenticator>
    <inFulfillmentOf>
        <order>
            <id extension="10523475" root="1.2.840.113619.2.62.994044785528.27" />
            <code code="121022" codeSystem="1.2.840.10008.2.16.4" codeSystemName="DCM" displayName="Accession Number" />
        </order>
    </inFulfillmentOf>
    <documentationOf>
        <serviceEvent classCode="ACT">
            <id root="1.2.840.113619.2.62.994044785528.114289542805" />
            <!-- study instance UID -->
            <code code="78814" displayName="Positron emission tomography (PET) with concurrently acquired computed tomography (CT)" codeSystem="2.16.840.1.113883.6.12"
                codeSystemName="CPT4" />
            <effectiveTime value="20060823222400" />
            <performer typeCode="PRF">
                <templateId root="2.16.840.1.113883.10.20.6.2.1" />
                <assignedEntity>
                    <id extension="121008" root="2.16.840.1.113883.19.5" />
                    <code code="2085R0202X" codeSystem="2.16.840.1.113883.11.19465" codeSystemName="NUCC" displayName="Diagnostic Radiology" />
                    <addr nullFlavor="NI" />
                    <telecom nullFlavor="NI" />
                    <assignedPerson>
                        <name>
                            <given>Matt</given>
                            <family>Cure</family>
                            <suffix>MD</suffix>
                        </name>
                    </assignedPerson>
                </assignedEntity>
            </performer>
        </serviceEvent>
    </documentationOf>
    <relatedDocument typeCode="XFRM">
        <parentDocument>
            <id root="1.2.840.113619.2.62.994044785528.20060823.200608232232322.9" />
            <!-- SOP Instance UID (0008,0018) -->
        </parentDocument>
    </relatedDocument>
    <componentOf>
        <encompassingEncounter>
            <id extension="9937012" root="1.3.6.4.1.4.1.2835.12" />
            <effectiveTime value="20060828170821" />
            <encounterParticipant typeCode="ATND">
                <templateId root="2.16.840.1.113883.10.20.6.2.2" />
                <assignedEntity>
                    <id extension="4" root="2.16.840.1.113883.19" />
                    <code code="208D00000X" codeSystem="2.16.840.1.113883.11.19465" codeSystemName="NUCC" displayName="General Practice" />
                    <addr nullFlavor="NI" />
                    <telecom nullFlavor="NI" />
                    <assignedPerson>
                        <name>
                            <prefix>Dr.</prefix>
                            <given>Fay</given>
                            <family>Family</family>
                        </name>
                    </assignedPerson>
                </assignedEntity>
            </encounterParticipant>
        </encompassingEncounter>
    </componentOf>
    <component>
        <structuredBody>
            <component>
                <!-- ********************************************************************** DICOM Object Catalog Section ********************************************************************** -->
                <section classCode="DOCSECT" moodCode="EVN">
                    <templateId root="2.16.840.1.113883.10.20.6.1.1" />
                    <code code="121181" codeSystem="1.2.840.10008.2.16.4" codeSystemName="DCM" displayName="DICOM Object Catalog" />
                    <entry>
                        <!-- ********************************************************************** Study ********************************************************************** -->
                        <act classCode="ACT" moodCode="EVN">
                            <templateId root="2.16.840.1.113883.10.20.6.2.6" />
                            <id root="1.2.840.113619.2.62.994044785528.114289542805" />
                            <code code="113014" codeSystem="1.2.840.10008.2.16.4" codeSystemName="DCM" displayName="Study" />
                            <!-- ***************************************************************** Series and SopInstance UID removed for brevity ***************************************************************** -->
                        </act>
                    </entry>
                </section>
                <!-- ********************************************************************** End of DICOM Object Catalog Section ********************************************************************** -->
            </component>
            <component>
                <!-- ********************************************************************** Social History Section ********************************************************************** -->
                <section>
                    <templateId root="2.16.840.1.113883.10.20.22.2.17" extension="2015-08-01" />
                    <templateId root="2.16.840.1.113883.10.20.22.2.17" />
                    <code code="29762-2" codeSystem="2.16.840.1.113883.6.1" codeSystemName="LOINC" />
                    <title>Social History</title>
                    <text>
                        The patient was born female, identifies as male and is currently undergoing gender affirming hormone therapy.
                        <table border="1" width="100%" cellpadding="0" cellspacing="0">
                            <thead>
                                <tr>
                                    <th>Obs</th>
                                    <th>Value</th>
                                    <th>Kind</th>
                                    <th>Jurisdiction</th>
                                    <th>Date Acquired</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td>Gender Identity</td>
                                    <td>Identifies as male gender</td>
                                    <td />
                                    <td />
                                    <td />
                                </tr>
                                <tr>
                                    <td>Pronouns</td>
                                    <td>He, Him, His, Himself</td>
                                    <td />
                                    <td />
                                    <td />
                                </tr>
                                <tr>
                                    <td>Recorded Sex or Gender</td>
                                    <td>Female</td>
                                    <td>Sex Assigned at Birth</td>
                                    <td>California</td>
                                    <td>201201011450+0600</td>
                                </tr>
                            </tbody>
                        </table>
                    </text>
                    <entry>
                        <!-- Examples - Identifies as male gender since DOB -->
                        <observation classCode="OBS" moodCode="EVN">
                            <templateId root="2.16.840.1.113883.10.15.1" extension="2022-09-01" />
                            <code code="76691-5" codeSystem="2.16.840.1.113883.6.1" displayName="Gender Identity" />
                            <statusCode code="completed" />
                            <effectiveTime>
                                <low value="20140103" />
                            </effectiveTime>
                            <value xsi:type="CD" codeSystem="2.16.840.1.113883.6.96" codeSystemName="SNOMED CT" code="446151000124109" displayName="Identifies as male gender">
                            </value>
                        </observation>
                    </entry>
                    <entry>
                        <!-- Pronouns -->
                        <observation classCode="OBS" moodCode="EVN">
                            <templateId root="2.16.840.1.113883.10.15.2" extension="2022-09-01" />
                            <code code="90778-2" codeSystem="2.16.840.1.113883.6.1" displayName="Personal pronouns" />
                            <statusCode code="completed" />
                            <value xsi:type="CD" codeSystem="2.16.840.1.113883.6.1" codeSystemName="LOINC" code="LA29518-0" displayName="He, Him, His, Himself" />
                        </observation>
                    </entry>
                    <entry>
                        <observation classCode="OBS" moodCode="EVN">
                            <templateId root="2.16.840.1.113883.10.15.4" extension="2022-09-01" />
                            <!-- http://hl7.org/fhir/StructureDefinition/individual-recordedSexOrGender/type -->
                            <code code="76689-9" codeSystem="2.16.840.1.113883.6.1" displayName="Sex assigned at birthr" />
                            <statusCode code="completed" />
                            <!-- http://hl7.org/fhir/StructureDefinition/individual-recordedSexOrGender/effectivePeriod -->
                            <effectiveTime>
                                <low value="202103" />
                            </effectiveTime>
                            <!-- http://hl7.org/fhir/StructureDefinition/individual-recordedSexOrGender/value -->
                            <value xsi:type="CD" code="F" codeSystem="2.16.840.1.113883.5.1" displayName="Female" codeSystemName="AdministrativeGender" />
                            <author>
                                <!-- http://hl7.org/fhir/StructureDefinition/individual-recordedSexOrGender/acquisitionDate -->
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
                                <!-- http://hl7.org/fhir/StructureDefinition/individual-recordedSexOrGender/sourceDocument -->
                                <externalDocument classCode="DOCCLIN" moodCode="EVN">
                                    <code codeSystem="" codeSystemName="" code="" displayName="" />
                                    <text>California Drivers License</text>
                                </externalDocument>
                            </reference>
                        </observation>
                    </entry>
                </section>
                <!-- ********************************************************************** End of Social History Section ********************************************************************** -->
            </component>
            <component>
                <!-- ********************************************************************** Reason for study Section ********************************************************************** -->
                <section>
                    <code code="121109" codeSystem="1.2.840.10008.2.16.4" codeSystemName="DCM" displayName="Indications for Procedure" />
                    <title>Indications for Procedure</title>
                    <text>Discordant clinical, ECG, and myocardial perfusion SPECT results</text>
                </section>
                <!-- ********************************************************************** End of Reason for study Section ********************************************************************** -->
            </component>
            <component>
                <!-- ********************************************************************** History Section ********************************************************************** -->
                <section>
                    <code code="11329-0" codeSystem="2.16.840.1.113883.6.1" codeSystemName="LOINC" displayName="History" />
                    <title>History</title>
                    <text>
                        <paragraph>
                            <caption>History</caption>
                            <content ID="Fndng1">History goes here...</content>
                        </paragraph>
                    </text>
                    <entry>
                        <!-- History report element (TEXT) -->
                        <observation classCode="OBS" moodCode="EVN">
                            <templateId root="2.16.840.1.113883.10.20.6.2.12" />
                            <code code="121060" codeSystem="1.2.840.10008.2.16.4" codeSystemName="DCM" displayName="History" />
                            <value xsi:type="ED"> History text</value>
                        </observation>
                    </entry>
                    <!-- *************************************************************************** Supporting information for Sex for Clinical Use This is not likely to appear in 
                        a PET/CT report but is provided to illustrate the use of the supporting reference. ***************************************************************************** -->
                    <entry>
                        <substanceAdministration classCode="SBADM" moodCode="EVN">
                            <!-- ** Medication Activity (V2) ** -->
                            <templateId root="2.16.840.1.113883.10.20.22.4.16" extension="2014-06-09" />
                            <id root="6C844C75-AA34-411C-B7BD-5E4A9F206E29" />
                            <statusCode code="active" />
                            <effectiveTime xsi:type="IVL_TS">
                                <low value="20120318" />
                            </effectiveTime>
                            <doseQuantity value="1" />
                            <consumable>
                                <manufacturedProduct classCode="MANU">
                                    <!-- ** Medication information ** -->
                                    <templateId root="2.16.840.1.113883.10.20.22.4.23" extension="2014-06-09" />
                                    <id root="2a620155-9d11-439e-92b3-5d9815ff4ee8" />
                                    <manufacturedMaterial>
                                        <code code="403922" displayName="168 HR estradiol 0.00156 MG/HR Transdermal System" codeSystem="2.16.840.1.113883.6.88"
                                            codeSystemName="RxNorm" />
                                    </manufacturedMaterial>
                                </manufacturedProduct>
                            </consumable>
                        </substanceAdministration>
                    </entry>
                </section>
            </component>
            <!-- ********************************************************************** End of History Section ********************************************************************** -->
            <!-- ********************************************************************** Imaging Procedure Description Section ********************************************************************** -->
            <component>
                <section classCode="DOCSECT" moodCode="EVN">
                    <templateId root="1.2.840.10008.9.3" />
                    <id root="1.2.840.10213.2.62.9940434234785528.11428954534542805" />
                    <code code="55111-9" codeSystem="2.16.840.1.113883.6.1" codeSystemName="LOINC" displayName="Current Imaging Procedure Description" />
                    <title>Imaging Procedure Description</title>
                    <text>
                        <table border="1" width="100%" cellpadding="0" cellspacing="0">
                            <tbody>
                                <tr>
                                    <td>Sex For Clinical Use</td>
                                    <td>Female</td>
                                </tr>
                                <tr>
                                    <td>Imaging Technique</td>
                                    <td>The patient is a transgender male, undergoing hormonal treatment. Based on physician instructions, affirmed gender creatinine reference
                                        ranges were confirmed to be within normal values prior to the administration of non-ionic iodinated contrast agent.. CT images for
                                        attenuation correction and anatomic localization followed by PET images were obtained..
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                    </text>
                    <entry>
                        <procedure moodCode="EVN" classCode="PROC">
                            <id root="1.2.840.10213.2.62.7044785528.999999999" />
                            <code code="78814"
                                displayName="Positron emission tomography (PET) with concurrently acquired 
                                computed tomography (CT)"
                                codeSystem="2.16.840.1.113883.6.12" codeSystemName="CPT4" />
                            <entryRelationship typeCode="COMP">
                                <observation classCode="OBS" moodCode="EVN">
                                    <templateId root="2.16.840.1.113883.10.15.3" extension="2022-09-01" />
                                    <code code="99501-9" codeSystem="2.16.840.1.113883.6.1" displayName="Sex for clinical use" />
                                    <statusCode code="completed" />
                                    <value xsi:type="CD" codeSystem="2.16.840.1.113883.4.642.1.983" codeSystemName="Sex For Clinical Use" code="female"
                                        displayName="Female sex for clinical use"
                                    >
                                    </value>
                                    <!-- ********************************************************************* Supporting Reference for Sex for Clinical Use - This is not likely to 
                                        appear in a PET/CT report but is provided to illustrate the use of the supporting reference. ********************************************************************* -->
                                    <entryRelationship typeCode="SPRT">
                                        <act classCode="ACT" moodCode="EVN">
                                            <templateId root="2.16.840.1.113883.10.20.22.4.122" />
                                            <id root="6C844C75-AA34-411C-B7BD-5E4A9F206E29" />
                                            <code nullFlavor="OTH" codeSystem="NP" />
                                            <statusCode code="completed" />
                                        </act>
                                    </entryRelationship>
                                </observation>
                            </entryRelationship>
                        </procedure>
                    </entry>
                </section>
            </component>
            <!-- ********************************************************************** End of Imaging Procedure Description Section ********************************************************************** -->
            <component>
                <!-- ********************************************************************** Findings Section ********************************************************************** -->
                <!-- ********************************************************************** SUV value - Radiologist determines relevant sex at time of measurement and adds as DICOM 
                    acquisition context ********************************************************************** -->
                <section>
                    <templateId root="2.16.840.1.113883.10.20.6.1.2" />
                    <code code="121070" codeSystem="1.2.840.10008.2.16.4" codeSystemName="DCM" displayName="Findings" />
                    <title>Findings</title>
                    <text>
                        <paragraph>
                            <caption>Finding</caption>
                            <content ID="Fndng2">Findings narrative goes here...</content>
                        </paragraph>
                        <paragraph>
                            <caption>Standardized uptake value</caption>
                            <content ID="Suv2">12g/ml{SUVlbm}</content>
                        </paragraph>
                        <paragraph>
                            <caption>Source of Measurement</caption>
                            <content ID="SrceOfMeas2">
                                <linkHtml
                                    href="http://www.example.org/radiology1.2.840.113619.2.62.994044785528.114289542805/series/1.2.250.1.59.40211.789001276.14556172.67789/instances/1.2.250.1.59.40211.2678810.87991027.899772.2;contentType=application/dicom"
                                >Coronal</linkHtml>
                            </content>
                        </paragraph>
                    </text>
                    <entry>
                        <observation classCode="OBS" moodCode="EVN">
                            <!-- Text Observation -->
                            <templateId root="2.16.840.1.113883.10.20.6.2.12" />
                            <code code="121071" codeSystem="1.2.840.10008.2.16.4" codeSystemName="DCM" displayName="Finding" />
                            <value xsi:type="ED">
                                <reference value="#Fndng2" />
                            </value>
                            <!-- inferred from measurement -->
                            <entryRelationship typeCode="SPRT">
                                <observation classCode="OBS" moodCode="EVN">
                                    <templateId root="2.16.840.1.113883.10.20.6.2.14" />
                                    <code code="52988006" codeSystem="2.16.840.1.113883.6.96" codeSystemName="SNOMED" displayName="Lesion">
                                        <originalText>
                                            <reference value="#Suv2" />
                                        </originalText>
                                    </code>
                                    <!-- no DICOM attribute -->
                                    <statusCode code="completed" />
                                    <effectiveTime value="20060823223912" />
                                    <value xsi:type="PQ" value="12" unit="g/ml{SUVlbm}">
                                        <translation code="g/ml{SUVlbm}" codeSystem="2.16.840.1.113883.6.8" codeSystemName="UCUM" codeSystemVersion="1.5" />
                                    </value>
                                    <!-- *********************************************************************************** Second SPCU observation to support SUV interpretation ************************************************************************************** -->
                                    <entryRelationship typeCode="COMP">
                                        <observation classCode="OBS" moodCode="EVN">
                                            <templateId root="2.16.840.1.113883.10.15.3" extension="2022-09-01" />
                                            <code code="99501-9" codeSystem="2.16.840.1.113883.6.1" displayName="Sex for clinical use" />
                                            <statusCode code="completed" />
                                            <value xsi:type="CD" codeSystem="2.16.840.1.113883.4.642.1.983" codeSystemName="Sex For Clinical Use" code="male"
                                                displayName="Male sex for clinical use"
                                            >
                                            </value>
                                        </observation>
                                    </entryRelationship>
                                    <!-- inferred from image -->
                                    <entryRelationship typeCode="SUBJ">
                                        <observation classCode="DGIMG" moodCode="EVN">
                                            <templateId root="2.16.840.1.113883.10.20.6.2.8" />
                                            <!-- (0008,1155) Referenced SOP Instance UID -->
                                            <id root="1.2.840.113619.2.62.994044785528.20060823.200608232232322.3" />
                                            <!-- (0008,1150) Referenced SOP Class UID -->
                                            <code code="1.2.840.10008.5.1.4.1.1.128" codeSystem="1.2.840.10008.2.6.1" codeSystemName="DCMUID"
                                                displayName="Positron Emission Tomography Image Storage"
                                            >
                                            </code>
                                            <text mediaType="application/dicom">
                                                <!-- reference to PET DICOM image -->
                                                <reference
                                                    value="http://www.example.org/radiology1.2.840.113619.2.62.994044785528.114289542805/series/1.2.250.1.59.40211.789001276.14556172.67789/instances/1.2.250.1.59.40211.2678810.87991027.899772.2;contentType=application/dicom" />
                                            </text>
                                            <effectiveTime value="20060823223232" />
                                            <!-- Referenced Frames -->
                                            <entryRelationship typeCode="COMP">
                                                <observation classCode="ROIBND" moodCode="EVN">
                                                    <templateId root="2.16.840.1.113883.10.20.6.2.10" />
                                                    <code code="121190" codeSystem="1.2.840.10008.2.16.4" displayName="Referenced Frames" />
                                                    <entryRelationship typeCode="COMP">
                                                        <!-- Boundary Observation -->
                                                        <observation classCode="OBS" moodCode="EVN">
                                                            <templateId root="2.16.840.1.113883.10.20.6.2.11" />
                                                            <code code="113036" codeSystem="1.2.840.10008.2.16.4" displayName="Group of Frames for Display" />
                                                            <value xsi:type="INT" value="1" />
                                                        </observation>
                                                    </entryRelationship>
                                                </observation>
                                            </entryRelationship>
                                            <!-- Purpose of Reference -->
                                            <entryRelationship typeCode="RSON">
                                                <observation classCode="OBS" moodCode="EVN">
                                                    <templateId root="2.16.840.1.113883.10.20.6.2.9" />
                                                    <code code="ASSERTION" codeSystem="2.16.840.1.113883.5.4" />
                                                    <value xsi:type="CD" code="121112" codeSystem="1.2.840.10008.2.16.4" codeSystemName="DCM"
                                                        displayName="Source of Measurement"
                                                    >
                                                        <originalText>
                                                            <reference value="#SrceOfMeas2" />
                                                        </originalText>
                                                    </value>
                                                </observation>
                                            </entryRelationship>
                                        </observation>
                                    </entryRelationship>
                                </observation>
                            </entryRelationship>
                        </observation>
                    </entry>
                </section>
                <!-- ********************************************************************** End of Findings Section ********************************************************************** -->
            </component>
            <component>
                <!-- ********************************************************************** Impressions Section ********************************************************************** -->
                <section>
                    <code code="121072" codeSystem="1.2.840.10008.2.16.4" codeSystemName="DCM" displayName="Impressions" />
                    <title>Impressions</title>
                    <text>
                        <paragraph>
                            <caption>Impression</caption>
                            <content ID="Fndng3">Impression goes here...</content>
                        </paragraph>
                    </text>
                    <entry>
                        <!-- Impression report element (TEXT) -->
                        <observation classCode="OBS" moodCode="EVN">
                            <!-- Text Observation -->
                            <templateId root="2.16.840.1.113883.10.20.6.2.12" />
                            <code code="121073" codeSystem="1.2.840.10008.2.16.4" codeSystemName="DCM" displayName="Impression" />
                            <value xsi:type="ED">
                                <reference value="#Fndng3" />
                            </value>
                        </observation>
                    </entry>
                    <entry>
                        <act moodCode="EVN" classCode="ACT">
                            <templateId root="2.16.840.1.113883.10.20.6.2.5" />
                            <!-- Procedure Context template -->
                            <code code="78814" displayName="Positron emission tomography (PET) with concurrently acquired computed tomography (CT)"
                                codeSystem="2.16.840.1.113883.6.12" codeSystemName="CPT4" />
                            <!-- Note: This code is slightly different than the code used in the header documentationOf and overrides it, which is what this entry is for. -->
                            <effectiveTime value="20060823222400" />
                        </act>
                    </entry>
                </section>
                <!-- ********************************************************************** End of Impressions Section ********************************************************************** -->
            </component>
        </structuredBody>
    </component>
</ClinicalDocument>
```
