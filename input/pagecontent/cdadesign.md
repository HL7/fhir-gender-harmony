## CDA Design Decisions



### Approach

To support the content defined in the Gender Harmony logical model in CDA, two primary design approaches were considered: the “core model change” option, where the CDA model would be extended by defining new types and relations in the SDTC extension schema, and the “name-value” option, where templates could be defined to specify data elements as Observations with codes and values.

Both the FHIR and V2 efforts chose to build this information into the core model – as FHIR extensions in FHIR and as a new segment in V2 – because the information processing requirements that those standards support benefit from this proximity. In FHIR, for instance, an extension on Patient is included in the Patient resource instance and is available to any client with access to the Patient, whereas using an Observation would require clients to traverse the Observation reference, and possibly to modify the scope of authorization needed to do so.

CDA does not have this constraint. While the xpath of an Observation is longer than the xpath of a Patient property, all of the content of a document is integrally and holistically included in the document. The primary criterion, then, was ease of use and access to the artifacts. Since implementers are familiar with the process of understanding and processing clinical statements, their technologies handle additions to these clinical statement templates frequently, and the means of publishing these templates presents the complete design to stakeholders (without requiring inspection of xsd), the clinical statement template was judged the most feasible approach.

One concern was translation: would adopting the “name-value” option in CDA create difficulties translating from and to specifications that adopted the “core model change” option? The answer is that the use of the name-value pattern does not add significantly to the complexity of mapping across the specification formats. [to support with data]

### Semantic Scope

Four of the five elements are patient-specific: limits on their scope can be managed with the effectiveTime property. Sex for Clinical Use, however, can be scoped to specific procedures, observations, encounters, and other objects. We propose the use of Entry Reference [act, 2.16.840.1.113883.10.20.22.4.122, open], which allows the scoping entries to indicate a pertinent SFCU observation where appropriate (and supports reuse of that SFCU Observation wherever needed).

This guidance does not propose document or section definitions: how these templates will be used may vary. We recommend collecting the four general elements in one place, such as a Social History or Demographics section. SFCU should be placed in the section of the statement it pertains to, or, if it pertains to statements in more than one section, any one of them. Section and Document specification authors will need to either explicitly include these templates (as optional) or ensure that there are appropriate Open templates available.



### Vocabulary

Use same terms as FHIR, V2.

# **TODO** We Need OIDs.

Required => SHALL + optional translation

Extensible - ?

Static or Dynamic?

*Do we have question codes (LOINCs)?*

Publication & adoption

an IG, just like in old days. Encourage USCDI, CCDA & IPS to adopt.

name: Sex and Gender Representation Using CDA

#### Templates

Name: mostly covered in PersonName, unless we need Comment. Comment moved out of scope 6/30.
Pronoun: new Observation template (no vs or cs necessary; 90778-2 Personal pronouns – Reported)
Gender identity: new Observation template (value set: 2.16.840.1.113883.4.642.3.972; need cs OID;  76691-5 Gender identity)
Recorded: probably new Observation template set, a hierarchy (need vs, cs, 99502-7 Recorded sex or gender)
SFCU: new Observation template, entry reference (value set 2.16.840.1.113883.4.642.1.983; code system duplicate: 2.16.840.1.113883.4.642.1.983; 99501-9 Sex for clinical use) 
