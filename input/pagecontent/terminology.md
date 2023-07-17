<!-- Updates based on Jira tickets 
Date             Jira ticket        Updated by                   Comment
2023-06-16       OTHER-2553         Joanie Harper                Remove extra periods per the Jira ticket https://jira.hl7.org/browse/OTHER-2553
2023-07-10       OTHER-2641         Joanie Harper                Update first paragraph of Gender Identity description per https://jira.hl7.org/browse/OTHER-2641
2023-07-10       OTHER-2552         Joanie Harper                Update values in the Sex For Clinical Use section, to Male-typical and Female-typical 
                                                                   per https://jira.hl7.org/browse/OTHER-2552
2023-07-10       OTHER-2637         Joanie Harper                Add paragraph to the RSG section per https://jira.hl7.org/browse/OTHER-2637
2023-07-17       OTHER-2636         Joanie Harper                Updated Gender Identity section per https://jira.hl7.org/browse/OTHER-2636
2023-07-17       OTHER-2606         Joanie Harper                Updated the line about 'table 396' entries per https://jira.hl7.org/browse/OTHER-2606
2023-07-17       OTHER-2630         Joanie Harper                Updated note to balloters regarding v2.9.1 afrtifacts per https://jira.hl7.org/browse/OTHER-2630
2023-07-17       OTHER-2557         Joanie Harper                Removed references to ICAO in RSG section.  Added THO link to value set per https://jira.hl7.org/browse/OTHER-2557
2023-07-17       OTHER-2557         Joanie Harper                Updated text in general section as per https://jira.hl7.org/browse/OTHER-2409.  This removes references to rolling up

-->

> Words are singularly the most powerful force available to humanity. We can choose to use this force constructively with words of encouragement, or destructively using words of despair. Words have energy and power with the ability to help, to heal, to hinder, to hurt, to harm, to humiliate and to humble.
> 
> -Yehuda Berg

### Notes to balloters

With a few exceptions noted below, all terminology content used for the gender harmony elements **are defined within the FHIR R5 ballot.** This is because the code systems, value sets, and external code system (provided as a convenience copy) are all needed to support the FHIR core R5 extensions. These same terminology artifacts are used by each of the other product family standards. By defining in one place - R5 FHIR - we simplify review and ballot commenting **but** this means commenters must review the vocabulary content in the FHIR R5 core ballot and make any comments on the terminology artifacts (value sets and code systems) against *the FHIR R5 ballot* and not make those comments against this ballot.

There is a **separate** V2 ballot that describes all V2.x normative track changes. **All V2 content, including V2-specific terminology artifacts must be reviewed and commented on within the V2.9.1 ballot that is also open at the same time this ballot is open.** Do not place any comments against the V2.9.1 material against this Gender Harmony IG. Keep in mind that most of the terminology content used by V2.9.1 is defined within the FHIR R5 ballot and so if you are reviewing V2.9.1, and have a comment on the value set or code system used, that comment must be entered against the FHIR R5 ballot, not V2.9.1. 

The only terminology artifacts that are V2.9.1-specific are:

- The value set Concept Domains
- The "table 396" entries (actually, this is now in [THO](https://terminology.hl7.org/) as the "Code System" code system.)
- The Sexual Orientation value set. Sexual Orientation was deemed out of scope for the Gender Harmony project

Any balloter that has a comment on these three items in V2.9.1 should comment on the V2.9.1 ballot noting the concern.

The CDA normative track material **is completely included within this Gender Harmony ballot.** Yet, all terminology content used in the CDA Entry Templates is all defined within the FHIR R5 ballot. Please review the terminology there and comment on the R5 ballot if there is an issue.

Balloters should note that the terminology artifacts (code systems and value sets) will all *eventually* be published as part of the content at terminology.hl7.org (THO). This will occur *after ballot reconciliation*. During the ballot period the terminology resources defined by this project exist as part of the FHIR R5 core build. This is evident when looking at the actual location when viewing the terminology resources, even though the canonical urls are all based in THO. We note this so that if the canonical url is pasted into a browser, the location will 404 until ballot reconciliation is completed and the content is moved to THO permanently.

Bottom line for comments: Essentially all terminology is defined in the FHIR R5 ballot so please review that ballot, focusing on the extensions noted in the FHIR section of this guide to know where to look. Make all comments on the terminology artifacts against that ballot.

### General
Medical terminology and standards, as core parts of medical systems, are necessarily omnipresent in today’s biomedical landscape. They form an important cornerstone of almost all digital health technology utilized today around the world. However, despite their increasing importance to health care, medical terminology and standards rarely consider the ethical implications surrounding their existence. Many communities have been adversely affected by this lack of consideration, which this guide hopes to address in part by careful consideration to the terminology used when representing  sex and gender in clinical systems. The initial [Gender Harmony logical model publication](http://www.hl7.org/implement/standards/product_brief.cfm?product_id=564) provides an in-depth discussion on issues regarding clinical sex and gender terminology, as does the [JAMIA publication](https://academic.oup.com/jamia/advance-article/doi/10.1093/jamia/ocab196/6382238?guestAccessKey=016faba4-edcc-4cbd-b5bc-27d3452d2ce1) "Gender harmony: improved standards to support affirmative care of gender-marginalized people through inclusive gender and sex representation" and we refer the interested reader to those documents for useful background.

A primary objective of this project is to create and collect terminology that will be used for the same purpose, within aligned models across all HL7 product families, and through that example, within non-HL7 standards as well. To meet that goal we have created value sets using well-known existing available code system standards that are freely available for use. Where this is not possible this guide includes new code systems that will be maintained by HL7. All value sets and code systems defined by the Gender Harmony project will be published at the primary HL7-wide terminology publication found at [terminology.hl7.org (known as THO.)](http://terminology.hl7.org) 

As an international standard, the Gender Harmony terminology is mostly focused on defining ***minimum required value sets.*** This means that implementers need to pay attention to the binding strength used when binding the value set noted. In most cases the value set will be bound *Extensible* (which in CDA would be *SHOULD*) which means that the values provided are to be used when sending information that is *scoped* or means the same as the values provided. It is very important to understand that only when the binding is *Required* (*SHALL* in CDA) are the values provided in the bound value set **the only set to be used where one of the provided set **MUST** be sent (additional values can also be sent, but one from the value set needs to be included.) This means that for any binding other than Required, the concepts, codes, and even text that are not included in the defined value set **may be sent instead.** This guide assumes that jurisdictions will build upon the minimum set included in the defined value sets to produce operational value sets to be noted in jurisdictional guides or regulations. It is also noted that only text or codes from other code systems may be sent in conformant exchange when the value set is not bound Required. 

For all value sets bound EXTENSIBLE or PREFERRED, implementers are discouraged from mapping to one of the included concepts other codes that do not exactly match in meaning. By this we mean that if a patient uses some other word, or concept, to represent the exchanged information, such as gender identity of "non-conforming", the instance would consider this an additional concept that could be considered acceptable. In this case the instance would include the additional text or concept as the CodableConcept value and not also "roll-up" to a code provided in the minimum set. **Meanings in these domains can overlap and yet should always be considered distinct.**

### Gender Identity terminology (GI)
There are two different terminologies that are relevant for gender identity. The LOINC code [76691-5](https://loinc.org/76691-5/) identities the Gender Identity concept itself, while a value set using SNOMED codes can be used to represent the gender identities.

The [gender identity value set](http://terminology.hl7.org/ValueSet/gender-identity) in this guide is intended to be a minimum value set of commonly used values and it is expected and encouraged that specific jurisdictions or communities will use additional gender identity concepts that are relevant within their community. For example, in the United States, two-spirit may be included in the value set, while in South Asia, hijra may be included. The gender identity minimum value set is built using concepts from the [SNOMED CT International edition](https://terminology.hl7.org/NamingSystem-v3-snomed-CT.html) code system. [SNOMED International](https://www.snomed.org) has put significant effort into improving the representation of gender concepts and while that work is not complete, the concepts included in the gender identity value set represent affirming and useful representations of gender concepts. In addition the value set includes the HL7 null flavor UNK to be used if the gender is not known. We encourage comments on the use of the null flavor code system in this situation versus the Data Absent Reason (DAR) code system used in FHIR. Of particular interest is the difficulty for implementers moving from prior use of null flavor value sets to DAR.

Please note that CDA requires the use of value sets that do not include null flavor concepts, therefore the CDA entry templates bind to a separate "core" value set of SNOMED CT concepts, and that value set is used to build the overall gender identity minimum value set.

### Sex For Clinial Use (SFCU)
As noted in our JAMIA publication
> SFCU is a summary sex classification element based on one or more clinical observations such as an organ survey, hormone levels, and chromosomal analysis. SFCU can provide a “patient-level” summary clinical sex characterization value to be specified for any clinical order, result, or assessment. SFCU also allows users to specify different values for the same patient for specific clinical uses.

SFCU is intended as a replacement for the idea of "clinical sex" which most importantly brings a context-specific focus to the use of the SFCU value exchanged. The value provided **is not a general, use anywhere** value. Provision of "a clinical sex in all uses" has been found to be dangerously over-simplified. The SFCU exchange element exists to help align *current* system expectations for sex-classification reference ranges or system set-up settings to fill the gap between defined sex-characteristic aligned clinical observations that influence those settings, and the operational need to put in a binary sex value. In cases that need a sex-category to do a procedure or report a result, SFCU provides a method to exchange the needed summary sex classification value, along with the specific clinical observation used to determine the SFCU value. In addition to Male-typical or Female-typical, SFCU also provides an important additional value of **Specified** which is an indication that additional information should be available, or obtained from the patient/record to clarify any specific clinical information needed to make the clinical sex-related decision.

Because the three included values scope all possible values (plus a SFCU-specific unknown), the value set is bound REQUIRED/SHALL and only the values included are allowed. 

The code system used for this value set is the internal HL7 code system "[Sex For Clinical Use](http://build.fhir.org/codesystem-sex-for-clinical-use.html)".

The [Sex For Clinical Use](http://build.fhir.org/valueset-sex-for-clinical-use.html) value set is defined as part of the R5 FHIR ballot.

The LOINC code for the "observable encoding" of the Sex For Clinical Use is [99501-9](https://loinc.org/99501-9/)

### Pronouns
Pronouns are an important aspect of identity reference in many languages, and when used are often aligned with gender differences. The Gender Harmony project includes a minimal set of English language third-person personal pronouns as used by a person to enable affirming interactions during patient care. The provided minimal pronoun set is defined as a set of personal pronouns (subject and object pronouns) and their respective possessive pronoun(s), reflexive pronoun(s), and possessive determiner(s) (colloquially referred to as “possessive adjectives”). These values are specified by the patient for use in healthcare interactions, clinical notes, and in written instructions to caregivers. As is true of the other minimal value sets, those provided are to enable common exchange covering most of the need but are **not** a complete set and many patients will desire pronouns that are not included in this value set. Jurisdictions and regulators are strongly encouraged to add additional values to this minimal set. As is true for Gender Identity, overlapping sets are common but always distinct. 

The set chosen for this value set are derived from [LOINC](https://terminology.hl7.org/CodeSystem-v3-loinc.html) code system and are based upon the [Answer List](https://loinc.org/LL5144-2/) for the LOINC code [90778-2](https://loinc.org/90778-2/) "Personal pronouns - Reported"

The [Pronouns](http://terminology.hl7.org/ValueSet/pronouns) value set is defined in THO.

The LOINC code for the "observable encoding" of the Personal pronouns - Reported is [90778-2](https://loinc.org/90778-2/)

### Recorded Sex or Gender (RSG)
The RSG element is intended to support the exchange of any sex or gender recorded data that is not specifically known to be the gender identity or a needed SFCU. The element allows any code or text that is in the record to be sent as the "recorded value" so no value set or code system is defined for that element. We do provide a value set and use an external code system for sending an international equivalent value in addition to the actual recorded value.

When exchanging a Recorded Sex or Gender concept, it is expected that there are existing value sets that can be used.  For example, when using Recorded Sex or Gender to exchange Sex Assigned at Birth, a jurisdiction may have an existing value set for Sex Assigned at Birth, which would be used to exchange the value for the Sex Assigned at Birth as a Recorded Sex or Gender.

The [RSG](http://terminology.hl7.org/ValueSet/recorded-sex-or-gender-type) value set is defined in THO.

The LOINC code for the "observable encoding" of the Recorded Sex or Gender is [99502-7](https://loinc.org/99502-7/)

### Name to Use (NtU)
The name that should be used when addressing a person does not require any new terminology. Each HL7 product family already has a defined approach that can support this in exchanges. The Gender Harmony model only specifies how to do this in each family. For example in the FHIR specification, the [HumanName](https://build.fhir.org/branches/FHIR-29673-gender-harmony-updates/datatypes.html#HumanName) datatype would represent this with humanName.use = "usual".

