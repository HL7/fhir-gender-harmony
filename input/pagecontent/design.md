<!-- Updates based on Jira tickets 
Date             Jira ticket        Updated by                   Comment
2023-06-16       OTHER-2596         Joanie Harper                Fixed typo per the Jira ticket https://jira.hl7.org/browse/OTHER-2596


-->

Gender Harmony Design Considerations for HL7 Product Families

The discussion around gender harmony has been on-going for several years. This implementation guide is based on the logical [Gender Harmony Model](http://www.hl7.org/implement/standards/product_brief.cfm?product_id=564) published in 2021 and the evolution of the Gender Harmony Project (GHP) team’s understanding of how sex and gender information is currently and most effectively can be implemented in electronic healthcare systems. The Gender Harmony project considered alignment with an observation-based model template/profile (which has been implemented in the Gravity project work, and could be considered an alternative,) but the GHP has chosen to model more "close to user." Balloters should comment on this approach, drawing any comparisons to the Gravity approach in particular, against this implementation guide.

The table below lists design requirements considered by GHP for each Gender Harmony Model element and it’s implementation across the HL7 product families. Both the FHIR and V2 efforts chose to build sex and gender harmony model information into the core model – as FHIR extensions in FHIR and as a new segment in V2 – because the information processing requirements that those standards support benefit from this proximity. CDA does not have this constraint and prioritized ease of use and access to the artifacts, ultimately opting for the use of a clinical statement template as the most feasible approach.

Detailed design considerations for each HL7 product family are included in the appropriate sections in this IG and include notes to balloters asking for feedback on the approaches taken. 

**Gender Identity**
<style>
table, th, td {
  border: 1px solid black;
}
</style>
|[**Logical Model Requirement**](https://build.fhir.org/ig/HL7/fhir-gender-harmony/branches/main/model.html)|**V2**|**FHIR**|**CDA**|
| :- | :- | :- | :- |
|Distinct attribute available in specific places|GSP segment|Extension: http://hl7.org/fhir/StructureDefinition/individual-genderIdentity|Gender Identity Entry Template|
|Define where element is available/appropriate for use|As appropriate in the message structure|Patient, Person, RelatedPerson, Practioner|Responsibility of template container|
|Support zero to many instances|Added as optionally repeating|For the instance (only one at a time/in the moment), there can be multiple over time|Responsibility of template container|
|Value is coded and allows text|SOGI Concept Value (GSP-5), when SOGI Concept (GSP-4) = 76691-5^Gender Identity^LN with datatype Coded with Exceptions (CWE)|Datatype of CodableConcept (http://build.fhir.org/datatypes.html#CodeableConcept)|CD (CONF:4536-48)|
|Designated value set|GenderIdentity (https://build.fhir.org/valueset-gender-identity.html)|GenderIdentity (https://build.fhir.org/valueset-gender-identity.html)|Gender Identity Core Concepts (CONF:4536-48)|
|Support notion of value =  "unknown" |UNK in value set, but can be extended, since example binding|UNK - Unknown. Unknown included (e.g., “was not able to ask” or “person does not want to answer”.)|OTH/ASKU (CONF:4536-55)|
|Supports additional values (extensible)|Example Binding|Preferred Binding|SHOULD (CONF:4536-48)|
|Support GH attribute = validity period, type = duration|Validity Range (GSP-6) with datatype Date Range (DR)|Datatype of Period (http://build.fhir.org/datatypes.html#Period)|effectiveTime (CONF:4536-50)|
|Support GH attribute = comment, type = string|Comment (GSP-7) with datatype Text (TX)|Comment, datatype: string|text (CONF:4536-140)|

**Pronouns**

|[**Logical Model Requirement**](https://build.fhir.org/ig/HL7/fhir-gender-harmony/branches/main/model.html)|**V2**|**FHIR**|**CDA**|
| :- | :- | :- | :- |
|Distinct attribute available in specific places|GSP segment|Extension: http://hl7.org/fhir/StructureDefinition/individual-pronouns|Pronoun Entry Template|
|Define where element is available/appropriate for use|As appropriate in the message structure|Patient, Person, RelatedPerson, Practioner|responsibility of template container|
|Support zero to many instances|Added as optionally repeating|For the instance (only one at a time/in the moment), there can be multiple over time|responsibility of template container|
|Value is coded and allows text|SOGI Concept Value (GSP-5), when SOGI Concept (GSP-4) = 90778-2^Personal pronouns - Reported^LN with datatype Coded with Exceptions (CWE)|Datatype of CodableConcept (http://build.fhir.org/datatypes.html#CodeableConcept)|CD (CONF:4536-61)|
|Designated value set|[Pronouns (http://build.fhir.org/valueset-pronouns.html)](http://build.fhir.org/valueset-pronouns.html)|[Pronouns (http://build.fhir.org/valueset-pronouns.html)](http://build.fhir.org/valueset-pronouns.html)|[Pronouns (http://build.fhir.org/valueset-pronouns.html) (CONF:4536-61)](http://build.fhir.org/valueset-pronouns.html)|
|Support notion of value =  "unknown" |Can be extended, since example binding|If unknown, no value would be sent|Asked but Unknown and Other  (CONF:4536-67)|
|Supports additional values (extensible)|Example Binding|Example Binding|MAY (CONF:4536-61)|
|Support GH attribute = validity period, type = duration|Validity Range (GSP-6) with datatype Date Range(DR)|Datatype of Period (http://build.fhir.org/datatypes.html#Period)|effectiveTime (CONF:4536-69)|
|Support GH attribute = comment, type = string|Comment (GSP-7) with datatype Text (TX)|Comment, datatype: string|Text (CONF:4536-72)|

**Name to Use**

|[**Logical Model Requirement**](https://build.fhir.org/ig/HL7/fhir-gender-harmony/branches/main/model.html)|**V2**|**FHIR**|**CDA**|
| :- | :- | :- | :- |
|Support recording a Name to Use|Patient Name PID-5<br>applicable to ANY name, where datatype Extended Person Name (XPN) is used and name type code (XPN.7) is valued 'N'<br>Applicable to ANY name, where datatype Extended (XCN) is used and name type code (XCN.10) is valued 'N'|Patient.name|Record Target name|
|Support structured type = Name |Datatype Extended Person Name (XPN)|Datatype of HumanName (http://build.fhir.org/datatypes.html#HumanName)|[Patient.name](http://patient.name/)|
|Associate with person|XPN: Patient Name (PID-5), Next of Kin Name (NK1-2), Staff Name (STF-3), Guarantor Name (GT1-3), Payee Person Name (PYE-5), etc.<br>XCN: Ordering Provider (ORC-12/OBR-16), Participating Person (PRT-5), Attending Doctor (PV1-7), Referring Doctor (PV1-8), etc.|Patient, Person, RelatedPerson, Practioner|[Patient.name](http://patient.name/)|
|Support zero to many instances|[0..\*]|[0..\*]|[0..\*]|
|Support GH attribute = validity period, type = duration|XPN.12 for start date with datatype Time Stamp (TS)<br>XPN.13 for Expiration date with datatype Time Stamp (TS)|Datatype of Period (http://build.fhir.org/datatypes.html#Period)|PersonName.validTime|

**Sex for Clinical Use**

|[**Logical Model Requirement**](https://build.fhir.org/ig/HL7/fhir-gender-harmony/branches/main/model.html)|**V2**|**FHIR**|**CDA**|
| :- | :- | :- | :- |
|Distinct attribute available anywhere needed|GSC segment|Extension: http://hl7.org/fhir/StructureDefinition/patient-sexForClinicalUse|Sex for clinical use Template|
|Define where element is available/appropriate for use|As appropriate in the message structure|All resources, though it is expected to be used primarily on clinical resources and enclosing contextual resources like Patient and Encounter.|responsibility of template container|
|Support zero to many instances|added as optionally repeating|For the instance (only one at a time/in the moment), there can be multiple over time|responsibility of template container|
|Value is coded|Sex for Clinical Use (GSC-4) with datatype Coded with Exceptions (CWE)|Datatype of CodeableConcept (http://build.fhir.org/datatypes.html#CodeableConcept)|value with @xsi:type="CD" (CONF:4536-83)|
|Designated value set|[SexForClinicalUse (http://hl7.org/fhir/sex-for-clinical-use)](http://hl7.org/fhir/sex-for-clinical-use)|[SexForClinicalUse (http://hl7.org/fhir/sex-for-clinical-use)](http://hl7.org/fhir/sex-for-clinical-use)|selected from ValueSet sex-for-clinical-use . . . (CONF:4536-83|
|Support notion of value =  "unknown" |Included in value set|Included in value set|Included in value set|
|Specific allowed set of values only|No, as it is Required binding|Required binding|SHALL binding|
|Support GH attribute = validity period, type = duration|Validity Period (GSC-5) with datatype Date Range with datatype Date Range (DR)|Period, Datatype of Period (http://build.fhir.org/datatypes.html#Period)|effectiveTime (CONF:4536-82)|
|Support GH attribute = comment, type = string|Comment (GSC-8) with data type Text (TX)|Comment, Datatype: string|text (CONF:4536-80)|
|Support assertion of linked clinical obs evidence for assignment|Evidence (GSC-7) with datatype Message Location (ERL)|SupportingInfo, Datatype: CodeableReference (http://build.fhir.org/references.html)|entryRelationship (CONF:4536-101)|
|Support assertion of context for use: specific context (not modeled)|Context (GSC-6) with datatype Message Location (ERL)|The resource in which the extension is used|Guidance on nesting template under target or (for multiple targets) using Entry Reference|
|Support assertion of context for use: patient|Patient segment in the same message where the segment is used|The patient that is linked to the resource in which the extension is used|Guidance on including independent of entryRelationship|

**Recorded Sex or Gender**

|[**Logical Model Requirement**](https://build.fhir.org/ig/HL7/fhir-gender-harmony/branches/main/model.html)|**V2**|**FHIR**|**CDA**|
| :- | :- | :- | :- |
|Distinct attribute available in specific places|GSR segment|Extension: http://hl7.org/fhir/StructureDefinition/individual-recordedSexOrGender|Recorded sex or gender entry Template|
|Define where element is available/appropriate for use|As appropriate in the message structure|Patient, Person, RelatedPerson, Practioner|responsibility of template container|
|Support zero to many instances|added as optionally repeating|0..\* in each instance|responsibility of template container|
|Value is coded and allows text|Recorded Gender or Sex (GSR-4) with datatype Coded with Exceptions (CWE) |Datatype: CodableConcept|CE datatype|
|Designated value set|AdministrativeGender<br>example binding|AdministrativeGender example binding|` `MAY be selected from ValueSet Administrative Gender (HL7 V3) urn:oid:2.16.840.1.113883.1.11.1 (CONF:4536-89)|
|Additional representation of value using international equivalent|International Equivalent Sex Value (GSR-5) with datatype Coded with Exceptions (CWE)|Optional InternationalEquivalent element|translation (CONF:4536-95)|
|International equivalent value set|ICAO Sex or Gender (https://build.fhir.org/valueset-international-civil-aviation-organization-sex-or-gender.html)<br>Required binding|ICAO Sex or Gender (https://build.fhir.org/valueset-international-civil-aviation-organization-sex-or-gender.html) , Required binding|ICAO Sex or Gender (https://build.fhir.org/valueset-international-civil-aviation-organization-sex-or-gender.html) , SHALL binding (CONF:4536-95)|
|Support GH attribute = Source Field Name, Type = String|Source Document Field Type and or Label (GSR-5) with datatype Coded With Exception (CWE) using Original text (CWE.9)|sourceField, DataType: String|code.originalText (CONF:4536-90)|
|Support source field "type", indicating the type or category of sex or gender that is recorded|Source Document Field Type and or Label (GSR-5) with datatype Coded With Exception (CWE)|Type, DataType: CodeableConcept|entryRelationship: Patient record type value with @xsi:type="CD" (CONF:4536-136)|
|Source Type value set|Recorded Sex or Gender Type (http://build.fhir.org/valueset-recorded-sex-or-gender-type.html)<br>Preferred binding|Recorded Sex or Gender Type (http://build.fhir.org/valueset-recorded-sex-or-gender-type.html), Preferred binding|SHOULD be selected from ValueSet Recorded Sex Or Gender Type urn:oid:2.16.840.1.113883.11.19757 (CONF:4536-136).|
|Support GH attribute = Document Record Description, Type = string|Document Type (GRS-7) with datatype Coded With Exception (CWE) with value set documentType - still TBD; for string use using Original text (CWE.9)|Reference to document as sourceDocument(DocumentReference). Coding of class of document in codeableReference. Value set TBD.|code="92183-3" Document type  (CONF:4536-119)<br>value with @xsi:type="CD" (CONF:4536-121)<br>originalText (CONF:4536-122)|
|Support GH attribute = acquisition date, type = date|Acquisition Date (GSR-9) with datatype Date Time (DTM)|extension: acquisitionDate (dateTime)|code="50786-3" Date of entry (CONF:4536-125)<br>value with @xsi:type="TS" (CONF:4536-128)|
|Support GH attribute = jurisdiction, type = string|Jurisidiction (GSR-8) with datatype Coded With Exception (CWE)|extension: jurisdiction (CodeableConcept), Jurisdiction ValueSet (http://hl7.org/fhir/ValueSet/jurisdiction) Extensible binding|code "77969-4" Jurisdiction code  (CONF:4536-109)<br>value with @xsi:type="CD" (CONF:4536-113)<br>originalText (CONF:4536-114)|
|Support GH attribute = validity period, type = duration|Acquisition Date (GSR-10) with datatype Date Range (DR)|Datatype of Period (http://build.fhir.org/datatypes.html#Period)|value with @xsi:type="TS" (CONF:4536-128)|
|Support GH attribute = comment, type = string|Comment (GSR-11) with datatype Text (TX)|Comment, datatype: string|MAY contain zero or one [0..1] text (CONF:4536-91)|

