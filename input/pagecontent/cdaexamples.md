### x.4 Example 04: CDA Release 2 Imaging Report
```
<?xml version="1.0" encoding="utf-8"?>
<?xml-stylesheet type="text/xsl" href="CDA-DIR.xsl"?>
<ClinicalDocument xmlns="urn:hl7-org:v3" xmlns:voc="urn:hl7-org:v3/voc"
	xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:ps3-20="urn:dicom-org:ps3-20"
	xsi:schemaLocation="urn:hl7-org:v3 CDA.xsd">
	<realmCode code="UV"/>
	<typeId root="2.16.840.1.113883.1.3" extension="POCD_HD000040"/>
	<templateId root="1.2.840.10008.9.1"/>
	<templateId root="1.2.840.10008.9.20"/>
	<templateId root="1.2.840.10008.9.21"/>
	<templateId root="1.2.840.10008.9.22"/>
	<id root="1.2.840.113619.2.62.994044785528.12" extension="20060828170821659"/>
	<code code="18748-4" codeSystem="2.16.840.1.113883.6.1" codeSystemName="LOINC"
		displayName="Diagnostic Imaging Report"/>
	<title>PET+CT Heart W contrast IV</title>
	<effectiveTime value="20220715142240"/>
	<confidentialityCode code="N" codeSystem="2.16.840.1.113883.5.25"/>
	<languageCode code="en-US"/>
	<recordTarget>
		<patientRole>
			<id root="1.2.840.113619.2.62.994044785528.10" extension="0000680029"/>
			<addr nullFlavor="NI"/>
			<telecom nullFlavor="NI"/>
			<patient>
				<name>
					<given>John</given>
					<family>Smith</family>
				</name>
				<administrativeGenderCode code="F" codeSystem="2.16.840.1.113883.5.1"/>
				<birthTime value="19641128"/>
			</patient>
		</patientRole>
	</recordTarget>
	<author>
		<time value="20060823224352"/>
		<assignedAuthor>
			<id extension="121008" root="2.16.840.1.113883.19.5"/>
			<addr nullFlavor="NI"/>
			<telecom nullFlavor="NI"/>
			<assignedPerson>
				<name>
					<given>Richard</given>
					<family>Blitz</family>
					<suffix>MD</suffix>
				</name>
			</assignedPerson>
		</assignedAuthor>
	</author>
	<!-- custodian values have been omitted for brevity -->
	<!-- legal authenticator has been omitted for brevity -->
	
	<inFulfillmentOf>
		<order>
			<id extension="123451" root="1.2.840.113619.2.62.994044785528.29"/>
			<!-- <ps3-20:accessionNumber root="1.2.840.113619.2.62.994044785528.27" extension="someAccessionNum"/>  -->
		</order>
		</inFulfillmentOf>  
	<documentationOf>
		<serviceEvent classCode="ACT">
			<id root="1.2.840.113619.2.62.994044785528.114289542805"/>
			<!-- Study Instance UID -->
			<code code="82800-4" codeSystem="2.16.840.1.113883.6.1" codeSystemName="LOINC"
				displayName="PET+CT Heart W contrast IV">
				<translation code="PT" displayName="Positron emission tomography"
					codeSystem="1.2.840.10008.2.16.4" codeSystemName="DCM"/>
				<translation code="51185008" displayName="Chest" codeSystem="2.16.840.1.113883.6.96"
					codeSystemName="SNOMED CT"/>
			</code>
			<effectiveTime>
				<low value="20060823222400"/>
			</effectiveTime>
		</serviceEvent>
	</documentationOf>
	<component>
		<structuredBody>
			<component>
				<!--**************** Clinical Information Section *****************-->
				<section>
					<templateId root="1.2.840.10008.9.2"/>
					<code code="55752-0" codeSystem="2.16.840.1.113883.6.1" codeSystemName="LOINC"
						displayName="Clinical Information"/>
					<title>Clinical Information</title>
					<component>
						<section>
							<templateId root="2.16.840.1.113883.10.20.22.2.29"/>
							<id root="1.2.840.10213.2.62.44785528.1142895426"/>
							<!-- not .044785528 -->
							<code code="59768-2" codeSystem="2.16.840.1.113883.6.1"
								codeSystemName="LOINC" displayName="Procedure Indications"/>
							<title>Indications for Procedure</title>
							<text>Indications go here</text>
						</section>
					</component>
					<component>
						<!--**************** History Subsection *****************-->
						<section>
							<templateId root="2.16.840.1.113883.10.20.22.2.39"/>
							<id root="1.2.840.10213.2.62.7044785528.114289875"/>
							<code code="11329-0" codeSystem="2.16.840.1.113883.6.1"
								codeSystemName="LOINC" displayName="History General"/>
							<title>History</title>
							<text>
								<paragraph>
									<caption>History</caption>
									<content ID="Fndng1">History goes here</content>
								</paragraph>
							</text>
							<entry>
								<!-- History report element (TEXT) -->
								<observation classCode="OBS" moodCode="EVN">
									<templateId root="2.16.840.1.113883.10.20.6.2.12"/>
									<code code="121060" codeSystem="1.2.840.10008.2.16.4"
										codeSystemName="DCM" displayName="History"/>
									<value xsi:type="ED">
										<reference value="#Fndng1"/>
									</value>
								</observation>
							</entry>
						</section>
						<!--**************** End of History Subsection *****************-->
					</component>
					<!--**************** End of Clinical Information Section *****************-->
				</section>
			</component>
			<!--**************** Imaging Procedure Description Section Omitted for Brevity *****************-->
			<component>
				<!--**************** Findings Section  *****************-->
				<section>
					<templateId root="2.16.840.1.113883.10.20.6.1.2"/>
					<id root="1.2.840.10213.2.62.9940434234785528.114289545000804445"/>
					<code code="59776-5" codeSystem="2.16.840.1.113883.6.1" codeSystemName="LOINC"
						displayName="Findings"/>
					<title>Findings</title>
					<text>
						<paragraph>
							<caption>Finding</caption>
							<content ID="Fndng2">Report narrative goes here</content>
						</paragraph>
						<paragraph>
							<caption>Diameter</caption>
							<content ID="suv2">12g/ml{SUVlbm}</content>
						</paragraph>
						<paragraph>
							<caption>Source of Measurement</caption>
							<content ID="SrceOfMeas2">
								<linkHtml href="http://www.example.org/wado?requestType=WADO
                                        &amp;studyUID=1.2.840.113619.2.62.994044785528.114289542805
                                        &amp;seriesUID=1.2.840.113619.2.62.994044785528.20060823223142485051
                                        &amp;objectUID=1.2.840.113619.2.62.994044785528.20060823.200608232232322.3
                                        &amp;contentType=application/dicom"
									>Coronal</linkHtml>
							</content>
						</paragraph>
					</text>
					<entry>
						<observation classCode="OBS" moodCode="EVN">
							<!-- Text Observation -->
							<templateId root="2.16.840.1.113883.10.20.6.2.12"/>
							<code code="121071" codeSystem="1.2.840.10008.2.16.4"
								codeSystemName="DCM" displayName="Finding"/>
							<value xsi:type="ED">
								<reference value="#Fndng2"/>
							</value>
							<!-- inferred from measurement -->
							<entryRelationship typeCode="SPRT">
								<observation classCode="OBS" moodCode="EVN">
									<templateId root="2.16.840.1.113883.10.20.6.2.14"/>
									<code code="52988006" codeSystem="2.16.840.1.113883.6.96"
										codeSystemName="SNOMED" displayName="Lesion">
										<originalText>
											<reference value="#suv2"/>
										</originalText>
									</code>
									<!-- no DICOM attribute <statusCode code="completed"/> -->
									<effectiveTime value="20060823223912"/>
									<value xsi:type="PQ" value="12" unit="g/ml{SUVlbm}"/>
									<!-- inferred from image -->
									<entryRelationship typeCode="SUBJ">
										<observation classCode="DGIMG" moodCode="EVN">
											<templateId root="2.16.840.1.113883.10.20.6.2.8"/>
											<!-- (0008,1155) Referenced SOP Instance UID-->
											<id
												root="1.2.840.113619.2.62.994044785528.20060823.200608232232322.3"/>
											<!-- (0008,1150) Referenced SOP Class UID -->
											<code code="1.2.840.10008.5.1.4.1.1.128"
												codeSystem="1.2.840.10008.2.6.1"
												codeSystemName="DCMUID"
												displayName="Positron Emission Tomography Image Storage"> </code>
											<text mediaType="application/dicom">
												<!--reference to PET DICOM image -->
												<reference
												value="http://www.example.org/wado?requestType=WADO
                                                    &amp;studyUID=1.2.840.113619.2.62.994044785528.114289542805
                                                    &amp;seriesUID=1.2.840.113619.2.62.994044785528.20060823223142485051
                                                    &amp;objectUID=1.2.840.113619.2.62.994044785528.20060823.200608232232322.3
                                                    &amp;contentType=application/dicom"
												/>
											</text>
											<effectiveTime value="20060823223232"/>
											<!-- Purpose of Reference -->
											<entryRelationship typeCode="RSON">
												<observation classCode="OBS" moodCode="EVN">
												<templateId root="2.16.840.1.113883.10.20.6.2.9"/>
												<code code="ASSERTION"
												codeSystem="2.16.840.1.113883.5.4"/>
												<value xsi:type="CD" code="121112"
												codeSystem="1.2.840.10008.2.16.4"
												codeSystemName="DCM"
												displayName="Source of Measurement">
												<originalText>
												<reference value="#SrceOfMeas2"/>
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
				<!--**************** End of Findings Section *****************-->
			</component>
			<component>
				<!--**************** Impressions Section *****************-->
				<section>
					<templateId root="1.2.840.10008.9.5"/>
					<id root="1.2.840.10213.2.62.9940434234785528.114289545345927752"/>
					<code code="19005-8" codeSystem="2.16.840.1.113883.6.1" codeSystemName="LOINC"
						displayName="Impressions"/>
					<title>Impressions</title>
					<text>
						<paragraph>
							<caption>Impression</caption>
							<content ID="Fndng3">Impression goes here</content>
						</paragraph>
					</text>
					<entry>
						<!-- Impression report element (TEXT) -->
						<observation classCode="OBS" moodCode="EVN">
							<!-- Text Observation -->
							<templateId root="2.16.840.1.113883.10.20.6.2.12"/>
							<code code="121073" codeSystem="1.2.840.10008.2.16.4"
								codeSystemName="DCM" displayName="Impression"/>
							<value xsi:type="ED">
								<reference value="#Fndng3"/>
							</value>
						</observation>
					</entry>
				</section>
				<!--**************** End of Impressions
                 Section *****************-->
			</component>
		</structuredBody>
	</component>
</ClinicalDocument>
```
# **TODO** Have examples for the use cases 

## Laboratory Use Case Example
### **TODO** Examples for this use cases 
## Hysterectomy Use Case Example
### **TODO** Examples for this use cases 
## DICOM Use Case Example
### **TODO** Examples for this use cases 
## Health Maintanence Use Case Example
### **TODO** Examples for this use cases 
