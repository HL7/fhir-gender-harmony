<!-- Updates based on Jira tickets 
Date             Jira ticket        Updated by                   Comment
2023-08-20        None              MaryKay McDaniel             Initial creation
-->
## Change log

The changes made in this version of the Implementation Guide are a result of the HL7 International ballot process. The resolution of the community comments have been agreed and voted on by members of the following management and work groups:  
-   CDA Management Group,
-   Financial Management, 
-   Orders and Observations,
-   Patient Administration,
-   Patient Care,
-   Structured Documents,
-   Terminology Infrastructure,
-   Terminology Services Management Group, and
-   V2 Management Group.


<!-- 1. Ticket Status    Ticket Summary       (Jira Ticket Number link)  See changes Here link
**Applied:** [OTHER-2](https://jira.hl7.org/browse/OTHER-2)
--> 
### Changes applied across the Implementation Guide
**Applied:** Update SfCU to SPCU throughout the Gender Harmony IG [OTHER-2706](https://jira.hl7.org/browse/OTHER-2706), [OTHER-2671](https://jira.hl7.org/browse/OTHER-2671)
**Applied:** Remove notes to balloters [OTHER-2602](https://jira.hl7.org/browse/OTHER-2602)<br>
**Applied:** Standardized the use of "Gender Harmony initial informative specification" when referring to initial specification [OTHER-2570](https://jira.hl7.org/browse/OTHER-2570)<br>


### Changes applied to [Home Page](https://build.fhir.org/ig/HL7/fhir-gender-harmony/index.html#home)
**Applied:** Further explanation of 'harmony' in gender harmony [OTHER-2594](https://jira.hl7.org/browse/OTHER-2594)<br>
**Applied:** Improved the readability and formatting of the In-scope section [OTHER-2562](https://jira.hl7.org/browse/OTHER-2562) and [OTHER-2528](https://jira.hl7.org/browse/OTHER-2528), Added links to the model page for GI, SPCU, RSG, Pronouns, NtU [OTHER-2532](https://jira.hl7.org/browse/OTHER-2532)<br>
**Applied:** Updated the name of section 1.4.3 from Vendors to HIT System solution providers [OTHER-2](https://jira.hl7.org/browse/OTHER-2), Updated to use the word 'harmony' to 'harmonize' [OTHER-2594](https://jira.hl7.org/browse/OTHER-2594), Added links to DICOM and X12 [OTHER-2564](https://jira.hl7.org/browse/OTHER-2564)<br> 
**Applied:** Modified first sentence of the HIT System solution providers [OTHER-2421](https://jira.hl7.org/browse/OTHER-2421)<br>
**Applied:** Improved the footnote notation using MD based footnote syntax [OTHER-2560](https://jira.hl7.org/browse/OTHER-2560)<br> 

### Changes applied to [Background Page](https://build.fhir.org/ig/HL7/fhir-gender-harmony/background.html#background)
**Applied:** Minor wording, typos, and grammar corrections per [OTHER-2533](https://jira.hl7.org/browse/OTHER-2533), [OTHER-2566](https://jira.hl7.org/browse/OTHER-2566), [OTHER-2568](https://jira.hl7.org/browse/OTHER-22568), [OTHER-2537](https://jira.hl7.org/browse/OTHER-2537), and [OTHER-2567](https://jira.hl7.org/browse/OTHER-2567)<br>  

### Changes applied to [Model Page](https://build.fhir.org/ig/HL7/fhir-gender-harmony/model.html#model)
**Applied:** Wording, typos, and grammar corrections per [OTHER-2411](https://jira.hl7.org/browse/OTHER-2411), [OTHER-2480](https://jira.hl7.org/browse/OTHER-2480), [OTHER-2577](https://jira.hl7.org/browse/OTHER-2577), [OTHER-2585](https://jira.hl7.org/browse/OTHER-2585), [OTHER-2420](https://jira.hl7.org/browse/OTHER-2420), [OTHER-2625](https://jira.hl7.org/browse/OTHER-2625), [OTHER-2582](https://jira.hl7.org/browse/OTHER-2582), [OTHER-2581](https://jira.hl7.org/browse/OTHER-2581), [OTHER-2494](https://jira.hl7.org/browse/OTHER-2494), [OTHER-2576](https://jira.hl7.org/browse/OTHER-2576), [OTHER-2575](https://jira.hl7.org/browse/OTHER-2578), [OTHER-2575](https://jira.hl7.org/browse/OTHER-2578), and [OTHER-2709](https://jira.hl7.org/browse/OTHER-2709)<br>
**Applied:** Changed field name from Jurisdiction to Issuer, added Definition, and put Cardinality on its own line [OTHER-2586](https://jira.hl7.org/browse/OTHER-2586)<br>
**Applied:** Updated Source Field Name and Source Field Description [OTHER-2578](https://jira.hl7.org/browse/OTHER-2578)<br>
**Applied:** Updated RSG model definition and other narrative [OTHER-2463](https://jira.hl7.org/browse/OTHER-2463)<br>
**Applied:** Clarified terminology expectations for RSG [OTHER-2557](https://jira.hl7.org/browse/OTHER-2557)<br>
**Applied:** Removed international equivalent references [V2-25452](https://jira.hl7.org/browse/V2-25452)<br>
**Applied:** Confirmed removal of ICAO element and added explanation of change [OTHER-2512](https://jira.hl7.org/browse/OTHER-2512)<br>
**Applied:** Updated GI usage note per [OTHER-2539](https://jira.hl7.org/browse/OTHER-2539) and [OTHER-2708](https://jira.hl7.org/browse/OTHER-2708)<br>
**Applied:** Added links for minValueSets for SPCU, Pronouns, and Gender identity [OTHER-2540](https://jira.hl7.org/browse/OTHER-2540)<br>
**Applied:** Clarified use of "sex or gender" [OTHER-2532](https://jira.hl7.org/browse/OTHER-2532)<br>
**Applied:** Added section noting changes in the model when compared to original, conformed changes in bindings and provided links to binding strength definitions [OTHER-2589](https://jira.hl7.org/browse/OTHER-2589)<br>
**Applied:** Added links to separate specifications [OTHER-2569](https://jira.hl7.org/browse/OTHER-2569)<br>

### Changes applied to [Guidance, Design Considerations Page](https://build.fhir.org/ig/HL7/fhir-gender-harmony/design.html#design-considerations)

<!-- Updates based on Jira tickets 
Date             Jira ticket        Updated by                   Comment
2023-06-16       OTHER-2596         Joanie Harper                Fixed typo per the Jira ticket https://jira.hl7.org/browse/OTHER-2596
2023-06-16       OTHER-2593         Joanie Harper                Remove line per the Jira ticket https://jira.hl7.org/browse/OTHER-2593
2023-07-17       OTHER-2598         Joanie Harper                Updated links for Pronouns, GenderIdentity, and RSG per https://jira.hl7.org/browse/OTHER-2598
                                                                 Did not update links for SFCU.  Needs to be changed to SPCU.
                                                                 replaced text for International equivalent in RSG table.
2023-07-17       OTHER-2595         Joanie Harper                updated paragraph 1 based on https://jira.hl7.org/browse/OTHER-2595
2023-07-24       OTHER-2598         Joanie Harper                Updated links for extensions Pronouns, GI, SPCU and RSG per https://jira.hl7.org/browse/OTHER-2598
                                                                 Updated instances of SFCU or Sex For Clinical Use to SPCU or Sex Parameter for Clinical Use Use.
2023-07-24       OTHER-2599         Joanie Harper                Updated capitalization for datatype. Capitalized for Header or beginning of sentence only. https://jira.hl7.org/browse/OTHER-2599
2023-07-24       OTHER-2600         Joanie Harper                Removed TBD in RSG section per https://jira.hl7.org/browse/OTHER-2600    
2023-07-24       OTHER-2422         Joanie Harper                Updated the text in the "Support zero to many instances" rows for GI and Pronouns per https://jira.hl7.org/browse/OTHER-2422
2023-07-24       OTHER-2496         Joanie Harper                Source type value set and designated value set table values were updated per https://jira.hl7.org/browse/OTHER-2496 and links to the value sets were added.
2023-07-24       OTHER-2541         Joanie Harper                Updated paragraph 1 based on https://jira.hl7.org/browse/OTHER-2541
2023-07-24       OTHER-2544         Joanie Harper                Updated Name to Use table per the resolution at https://jira.hl7.org/browse/OTHER-2544
2023-07-24       OTHER-2556         Joanie Harper                Updated Gender Identity table, Support notion of unknown row per the resolution at https://jira.hl7.org/browse/OTHER-2556
2023-07-26		   OTHER-2570	       	Carol Macumber				       Standardized the use of "Gender Harmony initial informative specification"  when referring to initial specification
2023-07-31       OTHER-2598         Joanie Harper                Updated designated valuesets in tables so they are represented consistently https://jira.hl7.org/browse/OTHER-2598
2023-07-31       OTHER-2545         Joanie Harper                Updated the CDA column of 'Support notion of value = unknown' in the SPCU table per https://jira.hl7.org/browse/OTHER-2545
2023-07-31       OTHER-2627         Joanie Harper                Updated the v2 column of 'Specific allowed set of values only' in the SPCU table per https://jira.hl7.org/browse/OTHER-2627
2023-07-31       OTHER-2676         Joanie Harper                Updated the CDA column wherever the phrase 'responsibility of template container' exist per https://jira.hl7.org/browse/OTHER-2627
                                                                 --- note that each instance has a placeholder for the template name.
2023-07-31       OTHER-2677         Joanie Harper                Updated the CDA column of 'Support GH attribute = validity period, type = duration' in the GI table per https://jira.hl7.org/browse/OTHER-2677
2023-08-15    OTHER-2589          Rob McClure                   Changed Pronouns model "Supports additional values to example
2023-08-18    No JIRA              Rob McClure                  RSG "Designated value set" is listing incorrect value set - this is the Admin gender value set. This is switched with Source field value set
2023-08-18    OTHER-2479, OTHER-2496   Rob McClure               Updated RSG section to aling with change in source document to be a concept domain (table 0826). Also updated GSR field ids in RSG table for V2 after removal of International equivalent field
2023-07-24       OTHER-2544         Joanie Harper                Fixed some link formatting in the Name to Use table.
2023-08-22      none                Rob McClure                   Fixed spelling of Practitioner
2023-08-25      OTHER-2602                Carol Macumber                Removing "Note to balloters"
2023-08-27        OTHER-2574        Rob McClure                   ValueSet to value set, data type to datatype
2023-08-27      OTHER-2522        Rob McClure                   added "Note: V2 requires a looser binding due to use of a structure that is used across other observations." to GI V2 binding section
-->

**Applied:**  [OTHER-2](https://jira.hl7.org/browse/OTHER-2)<br>
**Applied:**  [OTHER-2](https://jira.hl7.org/browse/OTHER-2)<br>
**Applied:**  [OTHER-2](https://jira.hl7.org/browse/OTHER-2)<br>
**Applied:**  [OTHER-2](https://jira.hl7.org/browse/OTHER-2)<br>
**Applied:**  [OTHER-2](https://jira.hl7.org/browse/OTHER-2)<br>
**Applied:**  [OTHER-2](https://jira.hl7.org/browse/OTHER-2)<br>
**Applied:**  [OTHER-2](https://jira.hl7.org/browse/OTHER-2)<br>
**Applied:**  [OTHER-2](https://jira.hl7.org/browse/OTHER-2)<br>
**Applied:**  [OTHER-2](https://jira.hl7.org/browse/OTHER-2)<br>
**Applied:**  [OTHER-2](https://jira.hl7.org/browse/OTHER-2)<br>
**Applied:**  [OTHER-2](https://jira.hl7.org/browse/OTHER-2)<br>
**Applied:**  [OTHER-2](https://jira.hl7.org/browse/OTHER-2)<br>
**Applied:**  [OTHER-2](https://jira.hl7.org/browse/OTHER-2)<br>
**Applied:**  [OTHER-2](https://jira.hl7.org/browse/OTHER-2)<br>
**Applied:**  [OTHER-2](https://jira.hl7.org/browse/OTHER-2)<br>
**Applied:**  [OTHER-2](https://jira.hl7.org/browse/OTHER-2)<br>
**Applied:**  [OTHER-2](https://jira.hl7.org/browse/OTHER-2)<br>
**Applied:**  [OTHER-2](https://jira.hl7.org/browse/OTHER-2)<br>
**Applied:**  [OTHER-2](https://jira.hl7.org/browse/OTHER-2)<br>
**Applied:**  [OTHER-2](https://jira.hl7.org/browse/OTHER-2)<br>
**Applied:**  [OTHER-2](https://jira.hl7.org/browse/OTHER-2)<br>
**Applied:**  [OTHER-2](https://jira.hl7.org/browse/OTHER-2)<br>
**Applied:**  [OTHER-2](https://jira.hl7.org/browse/OTHER-2)<br>
**Applied:**  [OTHER-2](https://jira.hl7.org/browse/OTHER-2)<br>
**Applied:**  [OTHER-2](https://jira.hl7.org/browse/OTHER-2)<br>
**Applied:**  [OTHER-2](https://jira.hl7.org/browse/OTHER-2)<br>
**Applied:**  [OTHER-2](https://jira.hl7.org/browse/OTHER-2)<br>
**Applied:**  [OTHER-2](https://jira.hl7.org/browse/OTHER-2)<br>
**Applied:**  [OTHER-2](https://jira.hl7.org/browse/OTHER-2)<br>
**Applied:**  [OTHER-2](https://jira.hl7.org/browse/OTHER-2)<br>
**Applied:**  [OTHER-2](https://jira.hl7.org/browse/OTHER-2)<br>
**Applied:**  [OTHER-2](https://jira.hl7.org/browse/OTHER-2)<br>
**Applied:**  [OTHER-2](https://jira.hl7.org/browse/OTHER-2)<br>
**Applied:**  [OTHER-2](https://jira.hl7.org/browse/OTHER-2)<br>
**Applied:**  [OTHER-2](https://jira.hl7.org/browse/OTHER-2)<br>
**Applied:**  [OTHER-2](https://jira.hl7.org/browse/OTHER-2)<br>
**Applied:**  [OTHER-2](https://jira.hl7.org/browse/OTHER-2)<br>
**Applied:**  [OTHER-2](https://jira.hl7.org/browse/OTHER-2)<br>
**Applied:**  [OTHER-2](https://jira.hl7.org/browse/OTHER-2)<br>
**Applied:**  [OTHER-2](https://jira.hl7.org/browse/OTHER-2)<br>
**Applied:**  [OTHER-2](https://jira.hl7.org/browse/OTHER-2)<br>
**Applied:**  [OTHER-2](https://jira.hl7.org/browse/OTHER-2)<br>
**Applied:**  [OTHER-2](https://jira.hl7.org/browse/OTHER-2)<br>
**Applied:**  [OTHER-2](https://jira.hl7.org/browse/OTHER-2)<br>
**Applied:**  [OTHER-2](https://jira.hl7.org/browse/OTHER-2)<br>
**Applied:**  [OTHER-2](https://jira.hl7.org/browse/OTHER-2)<br>
**Applied:**  [OTHER-2](https://jira.hl7.org/browse/OTHER-2)<br>
**Applied:**  [OTHER-2](https://jira.hl7.org/browse/OTHER-2)<br>
**Applied:**  [OTHER-2](https://jira.hl7.org/browse/OTHER-2)<br>
**Applied:**  [OTHER-2](https://jira.hl7.org/browse/OTHER-2)<br>
**Applied:**  [OTHER-2](https://jira.hl7.org/browse/OTHER-2)<br>
**Applied:**  [OTHER-2](https://jira.hl7.org/browse/OTHER-2)<br>
**Applied:**  [OTHER-2](https://jira.hl7.org/browse/OTHER-2)<br>
**Applied:**  [OTHER-2](https://jira.hl7.org/browse/OTHER-2)<br>
**Applied:**  [OTHER-2](https://jira.hl7.org/browse/OTHER-2)<br>
**Applied:**  [OTHER-2](https://jira.hl7.org/browse/OTHER-2)<br>
**Applied:**  [OTHER-2](https://jira.hl7.org/browse/OTHER-2)<br>
**Applied:**  [OTHER-2](https://jira.hl7.org/browse/OTHER-2)<br>
**Applied:**  [OTHER-2](https://jira.hl7.org/browse/OTHER-2)<br>
**Applied:**  [OTHER-2](https://jira.hl7.org/browse/OTHER-2)<br>
**Applied:**  [OTHER-2](https://jira.hl7.org/browse/OTHER-2)<br>
**Applied:**  [OTHER-2](https://jira.hl7.org/browse/OTHER-2)<br>
**Applied:**  [OTHER-2](https://jira.hl7.org/browse/OTHER-2)<br>


<!-- I don't think the name of this CDA Guide is correct???????
-->
### Changes applied to the HL7 CDA R2 Implementation Guide: Sex and Gender Representation Edition 1 – US Realm

**Applied:** Update the conformance statement for observation.value.code at 2.3.13.a.v [OTHER-2640](https://jira.hl7.org/browse/OTHER-2640)<br>
**Applied:** In CDA, Change SFCU to SPCU based upon resolution of ballot comments [OTHER-2671](https://jira.hl7.org/browse/OTHER-2671)<br>
**Applied:** CDA Sex for Clinical Use - Unclear Sentence [OTHER-2511](https://jira.hl7.org/browse/OTHER-2511)<br>
**Applied:** CDA Recorded Sex or Gender - Sex for Clinical Use SPRT actRelationshipType is "Has Support" [OTHER-2520](https://jira.hl7.org/browse/OTHER-2510)<br>
**Applied:** CDA Recorded Sex or Gender - Patient Record Type - Use Act reference/ExternalAct instead [OTHER-2508](https://jira.hl7.org/browse/OTHER-2508)<br>


<!--
**Applied:**  [OTHER-2](https://jira.hl7.org/browse/OTHER-2)<br>
**Applied:**  [OTHER-2](https://jira.hl7.org/browse/OTHER-2)<br>
-->

