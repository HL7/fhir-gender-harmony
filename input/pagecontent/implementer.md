<!-- Updates based on Jira tickets 
Date             Jira ticket        Updated by                   Comment
2023-07-10       OTHER-2558         Cooper                       Added SPCU considerations
2023-08-27			NONE			Carol Macumber		Added note at top of page instructing implementers to use product specific jira projects to propose changes to FHIR, CDA or V2.
2023-08-27       OTHER-2452         Rob McClure                 Added new section Sex assigned at birth versus birth-focused Sex Parameter for Clinical Use
-->

Gender Harmony Implementer Considerations for HL7 Product Families

Note: Implementers should utilize product specific JIRA projects to propose HL7 product family specific changes. For convienence, they are linked here: [FHIR](http://jira.hl7.org/projects/FHIR), [V2](http://jira.hl7.org/projects/V2) and [CDA](http://jira.hl7.org/projects/CDA). Proposed changes to this Cross Paradigm Gender Harmony IG should be submitted [here](http://jira.hl7.org/projects/OTHER).

### Exchanging a Sex Parameter for Clinical Use
#### Patient Level Sex Parameter for Clinical Use
A Sex Parameter for Clinical Use (SPCU) may be used in specific clinical contexts, for example, when placing an order or when interpreting a result.  However, there are cases where having a context-free categorization of a patient can be useful, for example, when doing outreach for cervical cancer screening to patients for which you don't have access to any specific clinical information.  Or when you don't have access to the specific clinical information **yet**.
    
      
When using SPCU at a patient level, consider if any information is available suggesting that the patient is NOT male-typical or female-typical *across all clinical contexts*, then using **specified** as the patient-level SPCU is most appropriate, as that indicates that individuals or systems providing care should either use default behavior that is safe for both male and female populations, individually review treatment options with the patient, or carefully inspect comments and relevant observations before proceeding with treatment.   Additionally, consider if there are any risks related to patient care or equitable treatment when using a patient-level SPCU.  For example, when bifurcating a cohort based on a patient-context SPCU for research, carefully consider which groups may be inappropriately categorized.

#### Sex Assigned at Birth versus birth-focused Sex Parameter for Clinical Use
Describing the patient's anatomical sex at birth can be done using a Sex Parameter for Clinical Use, with a period indicating it was captured at (or around) the birth of the child.  That same determination may also be communicated as the specific observation "Sex Assigned at Birth". While Sex Assigned at Birth is often associated with the birth certificate, in certain jurisdictions this datum can be changed, and it may have legal connotations that differ from the clinical observations. The preferred international approach is to use SPCU associated with a relevant delivery episode. If that is not possible, some implementations may associate this directly to the patient. If Sex Assigned at Birth is in a implementation guide relevant to your use case and jurisdiction (e.g. US Core uses an extension on Patient), use of that profile or extension may be preferred.

#### Contextual Sex Parameter for Clinical Use
A Sex Parameter for Clinical Use (SPCU) may be used in specific clinical contexts, for example, when placing an order or when interpreting a result.  In these contexts, consider whether using a categorization such as Sex Parameter for Clinical Use is sufficient, or if using a more specific clinical observation such as an Observation about the presence or absence of an organ is most appropriate.  If a categorization is sufficient, then the [patient-sexParameterForClinicalUse](http://hl7.org/fhir/extensions/StructureDefinition-patient-sexParameterForClinicalUse.html) extension may be added to the resource that best represents the context.  For example, if the context is a referral order or lab order, then the extension could be added to the ServiceRequest.
     

#### Sex Parameter for Clinical Use vs. Ask at Order Entry Questions
In some clinical scenarios, such as ordering workflows, "Ask at Order Entry" (AOE) questions are commonly used for capturing a broad range of clinical context.  Examples may be unrelated to sex or gender concepts, such as "Has the patient fasted for 24 hours?", but some may overlap or be adjacent to sex or gender concepts, such as "Is the patient pregnant?" or "Does the patient have a prostate?".  

Clinical experts should consider whether a contextual SPCU-level categorization is sufficient for the care being provided, or asking more specific questions is more appropriate.  If a contextual SPCU-level categorization is sufficient, then the SPCU may be treated as a specific type of AOE. Systems may also consider using a patient-level SPCU to pre-populate the answer to an AOE, allowing clinicians to change the setting where appropriate.
    
In this case, you may choose to exchange the recorded answer along with the other relevant AOEs, for example, in OBX segments in HL7v2 or Observations in FHIR.  Or you may choose to communicate the recorded answer in the dedicated SPCU structures, for example, in GSP segments in HL7v2, or in the patient-SexParameterForClinicalUse extension in FHIR. 

Using the SPCU-specific structures does let you communicate additional supporting information if that is relevant, but it also requires that receiving systems support and inspect two different structures (e.g., OBX and GSP) to gather all the relevant information AOE information.  This is a tradeoff that should be considered when authoring a use-case specific IG, or when coordinating an approach with your trading partners.  
       
#### Sex Parameter for Clinical Use vs. Anatomical Characteristics (Organ Inventory)
For many clinical contexts, the "ideal" information for clinical decision making would be the specific details about the patient's anatomical characteristics, such as whether the patient has a prostate.  However, even if clinical systems support discrete organ inventories, that information may be missing for a variety of reasons.  A patient might decline to provide detailed organ information for privacy reasons, or they may be incapable of providing the information, either because they are unconscious or have other communication issues.  An clinical end user may forget to collect the information from the patient, either because they are busy, or because they forgot.  A clinical system may electronically receive a copy of a patient's records from some other system that doesn't support the collection of discrete organ inventory.

For all of these reasons, and others, clinical systems will need to provide care to patients for which an organ inventory is incomplete or unavailable.  In those cases, using a Sex Parameter for Clinical Use as an alternative to an organ inventory will be necessary.  However, individuals or systems providing care should either use default behavior that is safe for both male and female populations, individually review treatment options with the patient, or carefully inspect comments and relevant observations before proceeding with treatment.
