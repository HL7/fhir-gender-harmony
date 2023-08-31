<!-- Updates based on Jira tickets 
Date             Jira ticket        Updated by                   Comment
2023-06-16       OTHER-2553         Joanie Harper                Remove extra periods per the Jira ticket https://jira.hl7.org/browse/OTHER-2553
2023-07-10       OTHER-2641         Joanie Harper                Update first paragraph of Gender Identity description per https://jira.hl7.org/browse/OTHER-2641
2023-07-10       OTHER-2552         Joanie Harper                Update values in the Sex For Clinical Use section, to Male-typical and Female-typical 
                                                                   per https://jira.hl7.org/browse/OTHER-2552
2023-07-10       OTHER-2637         Joanie Harper                Add paragraph to the RSG section per https://jira.hl7.org/browse/OTHER-2637
2023-07-17       OTHER-2636         Joanie Harper                Updated Gender Identity section per https://jira.hl7.org/browse/OTHER-2636
2023-07-17       OTHER-2606         Joanie Harper                Updated the line about 'table 396' entries per https://jira.hl7.org/browse/OTHER-2606
2023-07-17       OTHER-2630         Joanie Harper                Updated note to balloters regarding v2.9.1 artifacts per https://jira.hl7.org/browse/OTHER-2630
2023-07-17       OTHER-2557         Joanie Harper                Removed references to ICAO in RSG section.  Added THO link to value set per https://jira.hl7.org/browse/OTHER-2557
2023-07-17       OTHER-2557         Joanie Harper                Updated text in general section as per https://jira.hl7.org/browse/OTHER-2409.  This removes references to rolling up
2023-08-24       OTHER-2602         MaryKay McDaniel             Commented out Notes to Balloters (just in case we want to leave it in...)
2023-08-29       none               Rob McClure                 Note that Carol M made many changes on 2023-08-28. today Fixed bolding. 
-->

> Words are singularly the most powerful force available to humanity. We can choose to use this force constructively with words of encouragement, or destructively using words of despair. Words have energy and power with the ability to help, to heal, to hinder, to hurt, to harm, to humiliate and to humble.
> 
> -Yehuda Berg

### General
Medical terminology and standards, as core parts of medical systems, are necessarily omnipresent in today’s biomedical landscape. They form an important cornerstone of almost all digital health technology utilized today around the world. However, despite their increasing importance to health care, medical terminology and standards rarely consider the ethical implications surrounding their existence. Many communities have been adversely affected by this lack of consideration, which this guide hopes to address in part by careful consideration to the terminology used when representing  sex and gender in clinical systems. The initial [Gender Harmony logical model publication](http://www.hl7.org/implement/standards/product_brief.cfm?product_id=564) provides an in-depth discussion on issues regarding clinical sex and gender terminology, as does the [JAMIA publication](https://academic.oup.com/jamia/advance-article/doi/10.1093/jamia/ocab196/6382238?guestAccessKey=016faba4-edcc-4cbd-b5bc-27d3452d2ce1) "Gender harmony: improved standards to support affirmative care of gender-marginalized people through inclusive gender and sex representation" and we refer the interested reader to those documents for useful background.

A primary objective of this project is to create and collect terminology that will be used for the same purpose, within aligned models across all HL7 product families, and through that example, within non-HL7 standards as well. To meet that goal we have created value sets using well-known existing available code system standards that are freely available for use. Where this is not possible this guide includes new code systems that will be maintained by HL7. All value sets and code systems defined by the Gender Harmony project will be published at the primary HL7-wide terminology publication found at [terminology.hl7.org (known as THO.)](http://terminology.hl7.org) 

As an international standard, the Gender Harmony terminology is mostly focused on defining ***minimum required value sets.*** This means that implementers need to pay attention to the binding strength used when binding the value set noted. In most cases the value set will be bound *Extensible* (which in CDA would be *SHOULD*) which means that the values provided are to be used when sending information that is *scoped* or means the same as the values provided. It is very important to understand that only when the binding is *Required* (*SHALL* in CDA) are the values provided in the bound value set the only set to be used where one of the provided set **MUST** be sent (additional values can also be sent, but one from the value set needs to be included.) This means that for any binding other than Required, the concepts, codes, and even text that are not included in the defined value set **may be sent instead.** This guide assumes that jurisdictions will build upon the minimum set included in the defined value sets to produce operational value sets to be noted in jurisdictional guides or regulations. It is also noted that only text or codes from other code systems may be sent in conformant exchange when the value set is not bound Required. 

For all value sets bound EXTENSIBLE or PREFERRED, implementers are discouraged from mapping to one of the included concepts other codes that do not exactly match in meaning. By this we mean that if a patient uses some other word, or concept, to represent the exchanged information, such as gender identity of "non-conforming", the instance would consider this an additional concept that could be considered acceptable. In this case the instance would include the additional text or concept as the CodableConcept value and not also "roll-up" to a code provided in the minimum set. **Meanings in these domains can overlap and yet should always be considered distinct.**

### Gender Identity terminology (GI)
There are two different terminologies that are relevant for gender identity. The LOINC code [76691-5](https://loinc.org/76691-5/) identities the Gender Identity concept itself, while a value set using SNOMED codes can be used to represent the gender identities.

The [gender identity value set](http://terminology.hl7.org/ValueSet/gender-identity) in this guide is intended to be a minimum value set of commonly used values and it is expected and encouraged that specific jurisdictions or communities will use additional gender identity concepts that are relevant within their community. For example, in the United States, two-spirit may be included in the value set, while in South Asia, hijra may be included. The gender identity minimum value set is built using concepts from the [SNOMED CT International edition](https://terminology.hl7.org/NamingSystem-v3-snomed-CT.html) code system. [SNOMED International](https://www.snomed.org) has put significant effort into improving the representation of gender concepts and while that work is not complete, the concepts included in the gender identity value set represent affirming and useful representations of gender concepts. In addition the value set includes the HL7 null flavor UNK to be used if the gender is not known. We encourage comments on the use of the null flavor code system in this situation versus the Data Absent Reason (DAR) code system used in FHIR. Of particular interest is the difficulty for implementers moving from prior use of null flavor value sets to DAR.

Please note that CDA requires the use of value sets that do not include null flavor concepts, therefore the CDA entry templates bind to a separate "core" value set of SNOMED CT concepts, and that value set is used to build the overall gender identity minimum value set.

### Sex Parameter For Clinial Use (SPCU)
As noted in our JAMIA publication
> SPCU (previously SFCU) is a summary sex classification element based on one or more clinical observations such as an organ survey, hormone levels, and chromosomal analysis. SPCU can provide a “patient-level” summary clinical sex characterization value to be specified for any clinical order, result, or assessment. SPCU also allows users to specify different values for the same patient for specific clinical uses.

SPCU is intended as a replacement for the idea of "clinical sex" which most importantly brings a context-specific focus to the use of the SPCU value exchanged. The value provided **is not a general, use anywhere** value. Provision of "a clinical sex in all uses" has been found to be dangerously over-simplified. The SPCU exchange element exists to help align *current* system expectations for sex-classification reference ranges or system set-up settings to fill the gap between defined sex-characteristic aligned clinical observations that influence those settings, and the operational need to put in a binary sex value. In cases that need a sex-category to do a procedure or report a result, SPCU provides a method to exchange the needed summary sex classification value, along with the specific clinical observation used to determine the SPCU value. In addition to Male-typical or Female-typical, SPCU also provides an important additional value of **Specified** which is an indication that additional information should be available, or obtained from the patient/record to clarify any specific clinical information needed to make the clinical sex-related decision.

Because the three included values scope all possible values (plus a SPCU-specific unknown), the value set is bound REQUIRED/SHALL and only the values included are allowed. 

The code system used for this value set is the internal HL7 code system [Sex For Clinical Use](http://terminology.hl7.org/CodeSystem/sex-parameter-for-clinical-use).

The [Sex For Clinical Use](http://hl7.org/fhir/extensions/ValueSet-sex-parameter-for-clinical-use) value set is defined as part of the R5 FHIR Specification.

The LOINC code for the "observable encoding" of the Sex For Clinical Use is [99501-9](https://loinc.org/99501-9/)

### Pronouns
Pronouns are an important aspect of identity reference in many languages, and when used are often aligned with gender differences. The Gender Harmony project includes a minimal set of English language third-person personal pronouns as used by a person to enable affirming interactions during patient care. The provided minimal pronoun set is defined as a set of personal pronouns (subject and object pronouns) and their respective possessive pronoun(s), reflexive pronoun(s), and possessive determiner(s) (colloquially referred to as “possessive adjectives”). These values are specified by the patient for use in healthcare interactions, clinical notes, and in written instructions to caregivers. As is true of the other minimal value sets, those provided are to enable common exchange covering most of the need but are **not** a complete set and many patients will desire pronouns that are not included in this value set. Jurisdictions and regulators are strongly encouraged to add additional values to this minimal set. As is true for Gender Identity, overlapping sets are common but always distinct. 

The set chosen for this value set are derived from [LOINC](https://terminology.hl7.org/CodeSystem-v3-loinc.html) code system and are based upon the [Answer List](https://loinc.org/LL5144-2/) for the LOINC code [90778-2](https://loinc.org/90778-2/) "Personal pronouns - Reported"

The [Pronouns](http://terminology.hl7.org/ValueSet/pronouns) value set is defined in THO.

The LOINC code for the "observable encoding" of the Personal pronouns - Reported is [90778-2](https://loinc.org/90778-2/)

### Recorded Sex or Gender (RSG)
The RSG element is intended to support the exchange of any sex or gender recorded data that is not specifically known to be the gender identity or a needed SPCU. The element allows any code or text that is in the record to be sent as the "recorded value" so no value set or code system is defined for that element. We do provide a value set and use an external code system for sending an international equivalent value in addition to the actual recorded value.

When exchanging a Recorded Sex or Gender concept, it is expected that there are existing value sets that can be used.  For example, when using Recorded Sex or Gender to exchange Sex Assigned at Birth, a jurisdiction may have an existing value set for Sex Assigned at Birth, which would be used to exchange the value for the Sex Assigned at Birth as a Recorded Sex or Gender.

The [Recorded Sex or Gender](http://terminology.hl7.org/ValueSet/recorded-sex-or-gender-type) value set is defined in THO.

The LOINC code for the "observable encoding" of the Recorded Sex or Gender is [99502-7](https://loinc.org/99502-7/)

### Name to Use (NtU)
The name that should be used when addressing a person does not require any new terminology. Each HL7 product family already has a defined approach that can support this in exchanges. The Gender Harmony model only specifies how to do this in each family. For example in the FHIR specification, the [HumanName](https://build.fhir.org/branches/FHIR-29673-gender-harmony-updates/datatypes.html#HumanName) datatype would represent this with humanName.use = "usual".

