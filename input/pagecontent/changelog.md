<!-- Updates based on Jira tickets 
Date             Jira ticket        Updated by                   Comment
2023-08-20        None              MaryKay McDaniel             Initial creation

2023-09-4
QUESTION to all...
1) DID NOT include OTHER-2517, did not seem relevant to the changes made? 
2) This change log does NOT include and of the FHIR changes made for Gender Harmony - do I need to go back and add them???

MK
-->

This log contains changes that are a result of the HL7 International ballot process for *for all cross-paradigm gender harmony publications*. The resolution of the community comments have been agreed and voted on by members of the following management and work groups:  CDA Management Group, Financial Management, Orders and Observations, Patient Administration, Patient Care, Structured Documents, Terminology Infrastructure, Terminology Services Management Group, and V2 Management Group.

### Changes applied to FHIR R5 Standard 

### Changes applied to the **HL7 CDA® R2 Implementation Guide: Gender Harmony - Sex and Gender Representation, Edition 1** Implementation Guide

<!-- Validate the actual name of this IG
     These are marked at applied, so added to the list. These I did not confirm/validate.
      OTHER:  2475, 2476, 2478, 2481, 2482, 2483, 2485, 2486, 2489, 2711
-->
**Applied:** Update CONF:4536-61 conformance verb from SHOULD to SHALL [OTHER-2435](https://jira.hl7.org/browse/OTHER-2435)<br>
**Applied:** In the Gender Identity section added sentence to provide clarity around provenance [OTHER-2465](https://jira.hl7.org/browse/OTHER-2465)<br>
**Applied:** In the Individual Pronouns section added sentence to provide clarity around provenance [OTHER-2467](https://jira.hl7.org/browse/OTHER-2467)<br>
**Applied:** Removed the International Equivalent Recorded Sex or Gender data element [OTHER-2469](https://jira.hl7.org/browse/OTHER-2469)<br>
**Applied:** Updated individual pronouns constraint CONF:4536-61, SHALL contain...code SHOULD be...[OTHER-2475](https://jira.hl7.org/browse/OTHER-2475)<br>
**Applied:** Updated individual pronouns constraint CONF:4436-60 a [OTHER-2476](https://jira.hl7.org/browse/OTHER-2476)<br>
**Applied:** Updated inconsistent conformance verb/cardinality: MAY contain 1..1 effective time [OTHER-2477](https://jira.hl7.org/browse/OTHER-2477)<br>
**Applied:** Updated USG value set binding [OTHER-2478](https://jira.hl7.org/browse/OTHER-2478)<br>
**Applied:** Improved sub-organization modularity for recorded sex and gender [OTHER-2480](https://jira.hl7.org/browse/OTHER-2480)<br>
**Applied:** Added RSG Jurisdiction and Document Type observations value set bindings [OTHER-2481](https://jira.hl7.org/browse/OTHER-2481)<br>
**Applied:** RSG Document Type sub-observation verb/cardinality mismatch corrected [OTHER-2482](https://jira.hl7.org/browse/OTHER-2482)<br>
**Applied:** Updated typo in statusCode "complete" to "completed" [OTHER-2483](https://jira.hl7.org/browse/OTHER-2483)<br>
**Applied:** Corrected RSG constraint CONF:4536-136 urn:oid [OTHER-2485](https://jira.hl7.org/browse/OTHER-2485)<br>
**Applied:** Corrected RSG Xpath for reference narrative guidance [OTHER-2486](https://jira.hl7.org/browse/OTHER-2486)<br>
**Applied:** Updated display name for LA29520-6 [OTHER-2489](https://jira.hl7.org/browse/OTHER-2489)<br>
**Applied:** Fix broken links Gender Identity Core Concepts, Asked but Unknown and Other and harmonize the value set with THO ValueSet Gender Identity [OTHER-2498](https://jira.hl7.org/browse/OTHER-2498) and [OTHER-2499](https://jira.hl7.org/browse/OTHER-2499)<br>
**Applied:** Fix broken Pronoun links [OTHER-2500](https://jira.hl7.org/browse/OTHER-2500)<br>
**Applied:** Clarified recorded sex and gender representation Observation: identifier urn:oid:2.16.840.1.113883.10.15.4 [OTHER-2501](https://jira.hl7.org/browse/OTHER-2501)<br>
**Applied:** For consistency, removed RSG CONF:4536-141. It was Not included FHIR R5 or V2.9.1 [OTHER-2504](https://jira.hl7.org/browse/OTHER-2504)<br>
**Applied:** Correction, added missing Act Relationship Types for RSG [OTHER-2505](https://jira.hl7.org/browse/OTHER-2505)<br>
**Applied:** CDA Recorded Sex or Gender Patient Record Type, use Act reference/ExternalAct instead [OTHER-2506](https://jira.hl7.org/browse/OTHER-2506) and [OTHER-2508](https://jira.hl7.org/browse/OTHER-2508)<br>
**Applied:** Remove DateTime Template, use effectiveTime [OTHER-2507](https://jira.hl7.org/browse/OTHER-2507)<br>
**Applied:** CDA Recorded Sex or Gender - Sex for Clinical Use SPRT actRelationshipType is "Has Support" [OTHER-2510](https://jira.hl7.org/browse/OTHER-2510)<br>
**Applied:** In CDA, Change SFCU to SPCU based upon resolution of ballot comments [OTHER-2470](https://jira.hl7.org/browse/OTHER-2470) and [OTHER-2671](https://jira.hl7.org/browse/OTHER-2671)<br>
**Applied:** CDA Sex for Clinical Use - Unclear Sentence [OTHER-2511](https://jira.hl7.org/browse/OTHER-2511)<br>
**Applied:** Update the conformance statement for observation.value.code at 2.3.13.a.v [OTHER-2640](https://jira.hl7.org/browse/OTHER-2640)<br>
**Applied:** Updated gender null flavor instructions [OTHER-2711](https://jira.hl7.org/browse/OTHER-2711)<br>

### Changes applied to the V2.9.1 Standard

### Changes to this Cross-paradigm Implementation Guide
#### Changes applied across the Implementation Guide
**Applied:** Add links of a model acronym to the model heading for the element, to organizations, named specifications [OTHER-2521](https://jira.hl7.org/browse/OTHER-2521)<br>
**Applied:** Added additional depth to the TOC [OTHER-2526](https://jira.hl7.org/browse/OTHER-2526)<br>
**Applied:** Standardized the use of "Gender Harmony initial informative specification" when referring to initial specification [OTHER-2570](https://jira.hl7.org/browse/OTHER-2570)<br>
**Applied:** Links to ValueSet and CodeSystems, binding strength definitions, and standardized ValueSet and datatype name capitalization [OTHER-2574](https://jira.hl7.org/browse/OTHER-2574)<br>
**Applied:** Remove notes to balloters [OTHER-2571](https://jira.hl7.org/browse/OTHER-2571), [OTHER-2602](https://jira.hl7.org/browse/OTHER-2602), and [OTHER-2604](https://jira.hl7.org/browse/OTHER-2604)<br>
**Applied:** Update SFCU to SPCU throughout the Gender Harmony IG and capitalized consistently
[OTHER-2414](https://jira.hl7.org/browse/OTHER-2414), 
[OTHER-2671](https://jira.hl7.org/browse/OTHER-2671), and 
[OTHER-2706](https://jira.hl7.org/browse/OTHER-2706), <br>
**Applied:** Consistent capitalization of Gender Harmony [OTHER-2580](https://jira.hl7.org/browse/OTHER-2580)<br>
**Applied:** Corrected footer published by [OTHER-2523](https://jira.hl7.org/browse/OTHER-2523)<br>
**Applied:** The tab "History" was modified to Change Log [OTHER-2592](https://jira.hl7.org/browse/OTHER-2592)<br>
**Applied:** Wording, typos, and grammar corrections per [OTHER-2491](https://jira.hl7.org/browse/OTHER-2491)<br>
**Applied:** Added (shownav parameter) that inserts forward/backward navigation at top and bottom [OTHER-2516](https://jira.hl7.org/browse/OTHER-2516)<br>


#### Changes applied to [Home Page](https://build.fhir.org/ig/HL7/fhir-gender-harmony/index.html#home)
**Applied:** Wording, typos, and grammar corrections per [OTHER-2531](https://jira.hl7.org/browse/OTHER-2531), [OTHER-2561](https://jira.hl7.org/browse/OTHER-2561), [OTHER-2563](https://jira.hl7.org/browse/OTHER-2563), and [OTHER-2565](https://jira.hl7.org/browse/OTHER-2565)<br>
**Applied:** Further explanation of 'harmony' in gender harmony [OTHER-2594](https://jira.hl7.org/browse/OTHER-2594)<br>
**Applied:** Improved the readability and formatting of the In-scope section [OTHER-2562](https://jira.hl7.org/browse/OTHER-2562) and [OTHER-2528](https://jira.hl7.org/browse/OTHER-2528), Added links to the model page for GI, SPCU, RSG, Pronouns, NtU [OTHER-2532](https://jira.hl7.org/browse/OTHER-2532)<br>
**Applied:** Updated the name of section 1.4.3 from Vendors to HIT System solution providers [OTHER-2515](https://jira.hl7.org/browse/OTHER-2515)<br>
**Applied:** Updated to use the word 'harmony' to 'harmonize' [OTHER-2594](https://jira.hl7.org/browse/OTHER-2594)<br>
**Applied:** Added links to DICOM and X12 [OTHER-2564](https://jira.hl7.org/browse/OTHER-2564)<br> 
**Applied:** Modified first sentence of the HIT System solution providers [OTHER-2421](https://jira.hl7.org/browse/OTHER-2421)<br>
**Applied:** Improved the footnote notation using MD based footnote syntax [OTHER-2560](https://jira.hl7.org/browse/OTHER-2560)<br> 


#### Changes applied to [Background Page](https://build.fhir.org/ig/HL7/fhir-gender-harmony/background.html#background)
**Applied:** Minor wording, typos, and grammar corrections per [OTHER-2533](https://jira.hl7.org/browse/OTHER-2533), [OTHER-2535](https://jira.hl7.org/browse/OTHER-2535), [OTHER-2536](https://jira.hl7.org/browse/OTHER-2536),[OTHER-2566](https://jira.hl7.org/browse/OTHER-2566), [OTHER-2568](https://jira.hl7.org/browse/OTHER-22568), [OTHER-2537](https://jira.hl7.org/browse/OTHER-2537), and [OTHER-2567](https://jira.hl7.org/browse/OTHER-2567)<br>  


#### Changes applied to [Model Page](https://build.fhir.org/ig/HL7/fhir-gender-harmony/model.html#model)
**Applied:** Wording, typos, improved model display, and grammar corrections per 
[OTHER-2411](https://jira.hl7.org/browse/OTHER-2411), 
[OTHER-2420](https://jira.hl7.org/browse/OTHER-2420), 
[OTHER-2480](https://jira.hl7.org/browse/OTHER-2480), 
[OTHER-2492](https://jira.hl7.org/browse/OTHER-2492), 
[OTHER-2494](https://jira.hl7.org/browse/OTHER-2494), 
[OTHER-2519](https://jira.hl7.org/browse/OTHER-2519), 
[OTHER-2572](https://jira.hl7.org/browse/OTHER-2572), 
[OTHER-2573](https://jira.hl7.org/browse/OTHER-2573), 
[OTHER-2575](https://jira.hl7.org/browse/OTHER-2575), 
[OTHER-2576](https://jira.hl7.org/browse/OTHER-2576), 
[OTHER-2577](https://jira.hl7.org/browse/OTHER-2577), 
[OTHER-2578](https://jira.hl7.org/browse/OTHER-2578), 
[OTHER-2581](https://jira.hl7.org/browse/OTHER-2581), 
[OTHER-2582](https://jira.hl7.org/browse/OTHER-2582), 
[OTHER-2585](https://jira.hl7.org/browse/OTHER-2585), 
[OTHER-2597](https://jira.hl7.org/browse/OTHER-2597), 
[OTHER-2625](https://jira.hl7.org/browse/OTHER-2625), and 
[OTHER-2709](https://jira.hl7.org/browse/OTHER-2709)<br>
**Applied:** Changed field name from Jurisdiction to Issuer, added Definition, and put Cardinality on its own line [OTHER-2586](https://jira.hl7.org/browse/OTHER-2586)<br>
**Applied:** Updated Source Field Name and Source Field Description [OTHER-2587](https://jira.hl7.org/browse/OTHER-2587)<br>
**Applied:** Updated RSG model definition and other narrative [OTHER-2463](https://jira.hl7.org/browse/OTHER-2463)<br>
**Applied:** Clarified terminology expectations for RSG [OTHER-2557](https://jira.hl7.org/browse/OTHER-2557)<br>
**Applied:** Removed international equivalent references [V2-25452](https://jira.hl7.org/browse/V2-25452)<br>
**Applied:** Confirmed removal of ICAO element and added explanation of change [OTHER-2512](https://jira.hl7.org/browse/OTHER-2512)<br>
**Applied:** Updated GI usage note per [OTHER-2539](https://jira.hl7.org/browse/OTHER-2539) and [OTHER-2708](https://jira.hl7.org/browse/OTHER-2708)<br>
**Applied:** Updated UML Model with ballot changes [OTHER-2707](https://jira.hl7.org/browse/OTHER-2707)<br>
**Applied:** Added links for minValueSets for SPCU, Pronouns, and Gender identity [OTHER-2540](https://jira.hl7.org/browse/OTHER-2540)<br>
**Applied:** Clarified use of "sex or gender" [OTHER-2532](https://jira.hl7.org/browse/OTHER-2532)<br>
**Applied:** Added section noting changes in the model when compared to original, conformed changes in bindings and provided links to binding strength definitions [OTHER-2589](https://jira.hl7.org/browse/OTHER-2589)<br>
**Applied:** Added links to separate specifications [OTHER-2569](https://jira.hl7.org/browse/OTHER-2569)<br>


#### Changes applied to [Guidance, Design Considerations Page](https://build.fhir.org/ig/HL7/fhir-gender-harmony/design.html#design-considerations)
**Applied:** Added new ribbon drop-down: Guidance, Place the Design Considerations page under ribbon entry, add new page "Implementer Considerations" [OTHER-2472](https://jira.hl7.org/browse/OTHER-2472) and [OTHER-2678](https://jira.hl7.org/browse/OTHER-2678)<br>
**Applied:** Added links, updated wording, typos, and made grammar corrections per 
[OTHER-2541](https://jira.hl7.org/browse/OTHER-2541), 
[OTHER-2542](https://jira.hl7.org/browse/OTHER-2542), 
[OTHER-2543](https://jira.hl7.org/browse/OTHER-2543), 
[OTHER-2546](https://jira.hl7.org/browse/OTHER-2546),  
[OTHER-2593](https://jira.hl7.org/browse/OTHER-2593), 
[OTHER-2595](https://jira.hl7.org/browse/OTHER-2595), 
[OTHER-2596](https://jira.hl7.org/browse/OTHER-2596), 
[OTHER-2598](https://jira.hl7.org/browse/OTHER-2598), and 
[OTHER-2599](https://jira.hl7.org/browse/OTHER-2599)<br>
**Applied:** Modified designated valuesets in tables so they are represented consistently [OTHER-2598](https://jira.hl7.org/browse/OTHER-2509)<br>
**Applied:** Removed TBD in RSG section [OTHER-2600](https://jira.hl7.org/browse/OTHER-2600) and corrected the "Designated value set"<br>
**Applied:** Updated RSG section to align with change in source document to be a concept domain (table 0826). Updated GSR field ids in RSG table for V2 after removal of International equivalent field  [OTHER-2479](https://jira.hl7.org/browse/OTHER-2479) and [OTHER-2496](https://jira.hl7.org/browse/OTHER-2496)<br>
**Applied:** Modified text in the "Support zero to many instances" rows for GI and Pronouns [OTHER-2422](https://jira.hl7.org/browse/OTHER-2422)<br>
**Applied:** Modified Name to Use table [OTHER-2544](https://jira.hl7.org/browse/OTHER-2544) and [OTHER-2674](https://jira.hl7.org/browse/OTHER-2674)<br>
**Applied:** Updated Gender Identity table to support notion of unknown [OTHER-2556](https://jira.hl7.org/browse/OTHER-2556)<br>
**Applied:** Updated the CDA column of "Support notion of value = unknown" in SPCU table [OTHER-2545](https://jira.hl7.org/browse/OTHER-2545)<br>
**Applied:** Updated the CDA column of 'Support GH attribute = validity period, type = duration' in the GI table [OTHER-2577](https://jira.hl7.org/browse/OTHER-2677)<br>
**Applied:** Updated the V2 column of "Specific allowed set of values only" in teh SPCU table [OTHER-2627](https://jira.hl7.org/browse/OTHER-2627)<br>
**Applied:** Modify table entries from "responsibility of template container" to the following row Define where element is available/appropriate for use. All Open CDA Templates allow for using any other defined CDA Templates; The context and use of the <<inserttemplatename>> is driven by the template in which the template is contained. [OTHER-2676](https://jira.hl7.org/browse/OTHER-2676)<br>
**Applied:** Modified Pronouns section "Supports additional values (example) row [OTHER-2589](https://jira.hl7.org/browse/OTHER-2589)<br>
**Applied:** Modified GI V2 binding section, added "Note: V2 requires a looser binding due to use of a structure that is used across other observations." [OTHER-2522](https://jira.hl7.org/browse/OTHER-2522)<br>


#### Changes applied to [Guidance, Implementer Considerations Page](https://build.fhir.org/ig/HL7/fhir-gender-harmony/implementer.html#implementer-considerations)
**Applied:** Added SPCU considerations [OTHER-2558](https://jira.hl7.org/browse/OTHER-2558)<br>
**Applied:** Added new section Sex assigned at birth-focused Sex Parameter for Clinical Use [OTHER-2452](https://jira.hl7.org/browse/OTHER-2452)<br>


#### Changes applied to [Use Cases, DICOM PET Scan Use Case](https://build.fhir.org/ig/HL7/fhir-gender-harmony/dicom_use_case.html#dicom-pet-scan-use-case)
**Applied:** Updated use case with changes from 
[OTHER-2411](https://jira.hl7.org/browse/OTHER-2411), 
[OTHER-2423](https://jira.hl7.org/browse/OTHER-2423), 
[OTHER-2424](https://jira.hl7.org/browse/OTHER-2424), 
[OTHER-2426](https://jira.hl7.org/browse/OTHER-2426), 
[OTHER-2451](https://jira.hl7.org/browse/OTHER-2451), 
[OTHER-2488](https://jira.hl7.org/browse/OTHER-2488), 
[OTHER-2548](https://jira.hl7.org/browse/OTHER-2548), 
[OTHER-2549](https://jira.hl7.org/browse/OTHER-2549),  
[OTHER-2601](https://jira.hl7.org/browse/OTHER-2601), 
[OTHER-2603](https://jira.hl7.org/browse/OTHER-2503), and 
[OTHER-2607](https://jira.hl7.org/browse/OTHER-2607), 
<br>


#### Changes applied to [Use Cases, Health Maintenance Lab Use Case Page](https://build.fhir.org/ig/HL7/fhir-gender-harmony/health_maintanence_use_case.html#health-maintanence-lab-use-case)
**Applied:** Updated SPCU code values and fixed heading hierarchy [OTHER-2425](https://jira.hl7.org/browse/OTHER-2425)<br>


#### Changes applied to [V2, V2 Gender Harmony Page](https://build.fhir.org/ig/HL7/fhir-gender-harmony/hl7v2genderharmony.html#v2-gender-harmony)
**Applied:** Updated wording, typos, and made grammar corrections per 
[OTHER-2429](https://jira.hl7.org/browse/OTHER-2429), 
[OTHER-2431](https://jira.hl7.org/browse/OTHER-2431), 
[OTHER-2432](https://jira.hl7.org/browse/OTHER-2432),
[OTHER-2433](https://jira.hl7.org/browse/OTHER-2433), 
[OTHER-2530](https://jira.hl7.org/browse/OTHER-2530), 
[OTHER-2550](https://jira.hl7.org/browse/OTHER-2550), and 
[OTHER-2551](https://jira.hl7.org/browse/OTHER-2551), <br>
**Applied:** DICOM use case group has met with GH community and all open DICOM items were transitioned to DICOM supplement 233 [OTHER-2454](https://jira.hl7.org/browse/OTHER-2454)<br>


#### Changes applied to [CDA, CDA Gender Harmony Page](https://build.fhir.org/ig/HL7/fhir-gender-harmony/cdagenderharmony.html#cda-gender-harmony)
**Applied:** Remove notes to balloters [OTHER-2571](https://jira.hl7.org/browse/OTHER-2571), [OTHER-2602](https://jira.hl7.org/browse/OTHER-2602), and [OTHER-2604](https://jira.hl7.org/browse/OTHER-2604)<br>
**Applied:** Update SFCU to SPCU throughout the Gender Harmony IG and capitalized consistently
[OTHER-2414](https://jira.hl7.org/browse/OTHER-2414), 
[OTHER-2671](https://jira.hl7.org/browse/OTHER-2671), and 
[OTHER-2706](https://jira.hl7.org/browse/OTHER-2706), <br>

#### Changes applied to [CDA, CDA Examples Page](https://build.fhir.org/ig/HL7/fhir-gender-harmony/cdaexamples.html#cda-examples)
**Applied:** Updated the NtU example per [OTHER-2497](https://jira.hl7.org/browse/OTHER-2497) and [OTHER-2436](https://jira.hl7.org/browse/OTHER-2436)<br>
**Applied:** Updated SPCU example to be more complete [OTHER-2471](https://jira.hl7.org/browse/OTHER-2471)<br>
**Applied:** Updated the Gender Identity example to illustrate the correct usage of the templates [OTHER-2464](https://jira.hl7.org/browse/OTHER-2464)<br>
**Applied:** Updated the Gender Identity example to include ASKU and OTH [OTHER-2466](https://jira.hl7.org/browse/OTHER-2466)<br>
**Applied:** Removed the codeSystem="NP" from the example [OTHER-2487](https://jira.hl7.org/browse/OTHER-2487)<br>


#### Changes applied to [FHIR, FHIR Guidance](https://build.fhir.org/ig/HL7/fhir-gender-harmony/fhirgenderharmony.html#fhir-guidance)
**Applied:** Split design background into a new page, updated FHIR guidance with much more detail [OTHER-2558](https://jira.hl7.org/browse/OTHER-2558)<br>
**Applied:** Added links, updated wording, typos, and made grammar corrections per 
[OTHER-2411](https://jira.hl7.org/browse/OTHER-2411), 
[OTHER-2428](https://jira.hl7.org/browse/OTHER-2428), 
[OTHER-2616](https://jira.hl7.org/browse/OTHER-2616), 
[OTHER-2617](https://jira.hl7.org/browse/OTHER-2617),  
[OTHER-2619](https://jira.hl7.org/browse/OTHER-2619), and 
[OTHER-2629](https://jira.hl7.org/browse/OTHER-2629)<br>
**Applied:** Added guidance on the R4 backport extension for SPCU [OTHER-2618](https://jira.hl7.org/browse/OTHER-2618) and [OTHER-2620](https://jira.hl7.org/browse/OTHER-2620)<br>


#### Changes applied to [FHIR, FHIR Design Background](https://build.fhir.org/ig/HL7/fhir-gender-harmony/fhirdesignbackground.html#fhir-design-background)
**Applied:** Split design background into a new page, updated FHIR guidance with much more detail [OTHER-2558](https://jira.hl7.org/browse/OTHER-2558)<br>
**Applied:** Updated wording, typos, and made grammar corrections per 
[OTHER-2610](https://jira.hl7.org/browse/OTHER-2610), 
[OTHER-2611](https://jira.hl7.org/browse/OTHER-2611), 
[OTHER-2613](https://jira.hl7.org/browse/OTHER-2613), 
[OTHER-2579](https://jira.hl7.org/browse/OTHER-2579),  
[OTHER-2525](https://jira.hl7.org/browse/OTHER-2525), and 
[OTHER-2633](https://jira.hl7.org/browse/OTHER-2633) <br>
**Applied:** Moved 'Avoids problems with changing normative content." to the Advantages column in last two rows of table [OTHER-2612](https://jira.hl7.org/browse/OTHER-2612)<br>
**Applied:** Added ServiceRequest and Procedure to SPCU context, clinical resource types [OTHER-2615](https://jira.hl7.org/browse/OTHER-2615)
<!-- validate these ticket numbers, in 2x with different words... Missing ticket?
**Applied:** Updated Backwards Compatibility for FHIR versions section [OTHER-2618](https://jira.hl7.org/browse/OTHER-2618)<br>
**Applied:** Added guidance on the R4 backport extension for SPCU [OTHER-2618](https://jira.hl7.org/browse/OTHER-2618)<br>
-->

#### Changes applied to [Terminology](https://build.fhir.org/ig/HL7/fhir-gender-harmony/terminology.html#terminology)
**Applied:** Added links, updated wording, typos, and made grammar corrections per 
[OTHER-2409](https://jira.hl7.org/browse/OTHER-2409), 
[OTHER-2457](https://jira.hl7.org/browse/OTHER-2457), 
[OTHER-2458](https://jira.hl7.org/browse/OTHER-2458), 
[OTHER-2459](https://jira.hl7.org/browse/OTHER-2459), 
[OTHER-2553](https://jira.hl7.org/browse/OTHER-2553), 
[OTHER-2557](https://jira.hl7.org/browse/OTHER-2557),  
[OTHER-2606](https://jira.hl7.org/browse/OTHER-2606), 
[OTHER-2630](https://jira.hl7.org/browse/OTHER-2630), and 
[OTHER-2641](https://jira.hl7.org/browse/OTHER-2641)<br>
**Applied:** Modified GI values to include FHIR DAR and V3 Null [OTHER-2427](https://jira.hl7.org/browse/OTHER-2427)<br>
**Applied:** Modified Gender Identity section discussion around minimum value set for clarity [OTHER-2636](https://jira.hl7.org/browse/OTHER-2636)<br>
**Applied:** Added additional guidance for RecordedSexOrGender [OTHER-2637](https://jira.hl7.org/browse/OTHER-2637)<br>
**Applied:** Updated SPCU value references [OTHER-2552](https://jira.hl7.org/browse/OTHER-2552)<br>

#### Changes applied to [External Standards](hhttps://build.fhir.org/ig/HL7/fhir-gender-harmony/externalstandards.html#external-standards)
**Applied:** Updated wording, typos, add links, and made grammar corrections per [OTHER-2590](https://jira.hl7.org/browse/OTHER-2590) and [OTHER-2609](https://jira.hl7.org/browse/OTHER-2609)<br>
**Applied:** Updated DICOM section to align with use of SPCU and final SPCU values [OTHER-2608](https://jira.hl7.org/browse/OTHER-2608)<br>
**Applied:** Added LOINC section, arranged sections in alpha order [OTHER-2710](https://jira.hl7.org/browse/OTHER-2710)<br>


#### Changes applied to [Artifacts](https://build.fhir.org/ig/HL7/fhir-gender-harmony/artifacts2.html#artifacts)
**Applied:** Modified to list all IG artifacts as a 'linked' Title not separating the title from the url [OTHER-2591](https://jira.hl7.org/browse/OTHER-2591)<br>
**Applied:** Modified reference to VSAC for UV value sets [OTHER-2622](https://jira.hl7.org/browse/OTHER-2622)<br>
