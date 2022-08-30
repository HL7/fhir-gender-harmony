
Because we do not yet support FHIR publication of CDA artifacts, we publish the CDA templates in the same format as prior CDA implementation guides, i.e., a pdf document. 

You may scroll through this document in the pane below, or you may download the pdf for local viewing.

The following overview is taken from the document introduction.

- Design considerations 
- Outline of gender harmony artifacts in CDA
- Guidance on use of gender harmony artifacts in systems
- Backwards compatibility of GH artifacts

**Outline of gender harmony artifacts in CDA**

This guide provides entry templates to support the representation of sex and gender as proposed in the Gender Harmony logical model in forms that can be unambiguously translated among HL7 V2, CDA, and FHIR representations. 

The Gender Harmony logical model identifies five classes: “gender identity,” “pronouns,” “name to use,” “recorded sex or gender,” and “sex for clinical use.” Because the CDA person name supports name use timeframes, this guide does not specify a template for “name to use.” It includes templates for each of the remaining four classes. It also includes one inherited template used by “sex for clinical use.”

**Guidance on use of gender harmony artifacts in systems**

This guide does not define any document or section templates, and it does not specify what documents or document sections should contain these templates. The templates can be adopted by any organization that finds them useful, in any way it finds useful. It is expected that entries based on three templates (Gender Identity, Pronouns, and Recorded Sex or Gender) will be contained in a Social History section, but this is not a constraint. The Sex for Clinical Use template has its own rules for where it should be used.

As most guides specify “open” templates, inclusion of these entries where appropriate should be feasible. Open templates allow HL7 implementers to develop additional structured content not defined within any specific guide. In open templates, all of the features of the CDA R2 base specification are allowed except as constrained by the templates. By contrast, a closed template specifies everything that is allowed and nothing further may be included.

**Backwards compatibility of GH artifacts**

Name to use, as noted above, is not templated, as it is supported by Person Name data type.

Pronouns is a new template.

Sex for Clinical Use is a new template.

The Gender Identity template is very similar to an existing template in the C-CDA companion guide, which many may have already implemented. The new template was designed to be compatible with the prior one, and all of its constraints are looser, so it is feasible to use both template IDs in a template instance. The most significant difference, and one we hope implementers will find useful, is a value set that addresses gender only, without precoordinated history. 

Recorded Sex or Gender represents values that may be captured in existing templates, such as Birth Sex Observation, and possibly in the Patient.administrativeGenderCode, but it does so in a more generic manner. A Birth Sex Observation can be represented as a Recorded Sex or Gender by putting the Birth Sex Observation.code into the element type subentry of Recorded Sex or Gender. 

**Design considerations**

To support the content defined in the Gender Harmony logical model in CDA, two primary design approaches were considered: the “core model change” option, where the CDA model would be extended by defining new types and relations in the SDTC extension schema, and the “name-value” option, where templates could be defined to specify data elements as Observations with codes and values.

Both the FHIR and V2 efforts chose to build this information into the core model – as FHIR extensions in FHIR and as a new segment in V2 – because the information processing requirements that those standards support benefit from this proximity. In FHIR, for instance, an extension on Patient is included in the Patient resource instance and is available to any client with access to the Patient, whereas using an Observation would require clients to traverse the Observation reference, and possibly to modify the scope of authorization needed to do so.

CDA does not have this constraint. While the xpath of an Observation entry is longer than the xpath of a Patient property, all of the content of a document is integrally and holistically included in the document. The primary criterion, then, was ease of use and access to the artifacts. Since implementers are familiar with the process of processing clinical statements, their technologies handle additions to these clinical statement templates frequently, and the means of publishing these templates presents the complete design to stakeholders (without requiring inspection of xsd hierarchy), the clinical statement template was judged the most feasible approach.

One concern was translation: would adopting the “name-value” option in CDA create difficulties translating from and to specifications that adopted the “core model change” option? The answer is that the use of the name-value pattern does not add significantly to the complexity of mapping across the specification formats. The ballot publication includes a cross-walk table to identify how the logical elements are represented across CDA, FHIR, and HL7 V2.

Another consideration is semantic scope. Three of the templates – gender identity, pronouns, and recorded sex or gender – have patient scope. Their inclusion in a Social History section seems appropriate for anticipated use cases.

Sex for Clinical Use (SFCU) is different. It is designed to contextualize clinical operations. It may constrain the execution of a specific intervention, or it may affect the interpretation of a specific result. The target activity scopes the validity of the observation. The requirement unique to SFCU is to associate the SFCU observation with the appropriate target or targets.

CDA supports multiple approaches for asserting relationships among entries.

Putting the SFCU observation in a section with the entries it constrains would not imply the required information. Document section boundaries do not carry or imply semantics.

One approach would be to use the Entry Reference template to associate an SFCU with those entries to which it applies. This is a quite flexible approach, but it may rely on a level of sophistication that not all implementers can support, and it makes visual rendering difficult.

The template defined here describes an approach using entryRelationship to establish context specific to an entry, to an encounter, or to the patient generally. This approach leverages context conduction appropriately, and it is a tactic with which many implementers are familiar. It also requires the use of the Entry Reference template where the SFCU applies to multiple entries.


<div class="note-to-balloters">
<ol>
 <li>Is more directive guidance warranted for what kinds of artifacts may include these entry templates?</li>
  <li>Is “derivationExpr” an appropriate representation of a natural language definition, or should that property of Recorded Sex or Gender be rendered as methodCode or another sub-entry?</li>
  <li>Every effort has been made to ensure that Sex for Clinical Use is flexible enough to support a variety of use cases. However, the cases tend to fall into two classes: reference ranges for interpreting findings and context constraining the execution of a procedure. The latter is rare in clinical documents. Is this level of flexibility necessary or appropriate for this context? </li>
</ol>
</div>

<embed src="pdf/RepresentingSexandGender.pdf" width="100%" height="4200px" />
