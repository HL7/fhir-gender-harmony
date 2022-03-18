
# Appendices
## Appendix 1 — Proposed Value Sets
### RecordedSexOrGender InternationalEquivalent Value Set
*The RecordedSexOrGender valueset has no minimum value set, due to linguistic differences and lack of international standards documentation. Therefore, we have designated an equivalent dataset for the field “International Equivalent,” bound extensible so as to allow specific implementations the option to add more choices via a different, expanded value set that incorporates this minimum set (this accounts for potential options added or planned to be added by various jurisdictions). This set is based on the set noted in Doc 9303: Machine Readable Travel Documents, Seventh Edition (2015), Part 7: Machine Readable Visas published by the International Civil Aviation Organization (ICAO) [89]. Note that a number of other potential designations are discussed in [81].*

<table>
    <thead>
        <tr>
            <th>
                Term
            </th>       
            <th>
                Definition
            </th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td>
                F
            </td>
            <td>
                *A value which corresponds to female (‘F’) has been recorded in some context.*
            </td>
        </tr>
        <tr>
            <td>
                M
            </td>
            <td>
                A value which corresponds to male (‘M’) has been recorded in some context.
            </td>
        </tr>
        <tr>
            <td>
                X
            </td>
            <td>
                A value which corresponds to ‘X’ (nonbinary, intersex, etc.) has been recorded or the value is unspecified.
            </td>
        </tr>
        <tr>
            <td>
                <
            </td>
            <td>
                A value has not been recorded or a value cannot be ascertained for any reason.
            </td>
        </tr>
    </tbody>
</table>

### GenderIdentity Value Set
GenderIdentity value set to be used as a minimum value set, that is extensible to allow specific implementations the option to add more choices via an expanded value set that incorporates this minimum set.

<table>
    <thead>
        <tr>
            <th>
                Term
            </th>       
            <th>
                Definition
            </th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td>
                Female
            </td>
            <td>
                A person's self-identification as a woman, as female, or as a girl.
            </td>
        </tr>
        <tr>
            <td>
                Male
            </td>
            <td>
                A person's self-identification as a man, as male, or as a boy.
            </td>
        </tr>
        <tr>
            <td>
                Nonbinary
            </td>
            <td>
                Having a specific identity which is nonbinary (not within a binary construct of male or female) or having an identity which falls under the nonbinary umbrella (i.e., any or all gender identities which are not female or male).
            </td>
        </tr>
        <tr>
            <td>
                Unknown
            </td>
            <td>
                The person’s gender identity is not known at this time, for any of a variety of reasons. (e.g., “was not able to ask” or “person does not want to answer”.)
            </td>
        </tr>
    </tbody>
</table>
When additional codes and terms appropriate to specific jurisdictions, locations, and potentially individual persons are needed, an additional value set should be created that adds in additional concepts. Implementations should be prepared for the addition of other specific gender identities at specific locations. Implementations should be prepared to receive messages or records that contain unrecognized terms. Local policy will establish how to handle unrecognized terms, most likely by preserving the term. Examples of gender identity extensions are given in the non- normative table shown in Appendix 3.

Note that terms like “MTF”, “FTM”, “male-to-female transsexual”, and “female-to-male transsexual”, etc. were not included. Kronk [82] noted in an article with 12 other trans authors in various health care fields that “[t]hese options are antiquated and problematic. The first two (FTM and MTF) have largely fallen out of use among transgender people and in transgender-related literature because they fundamentally assume a ‘change’ in gender—that a transgender person was ‘female’ and now is ‘male’ (FTM), usually due to, or following, some sort of medicalization process (hormone replacement therapy and/or gender affirming surgery, for instance) [91,92,93,94,95]. This contradicts how many trans people understand their identity and can confuse patients. All four terms center cisgender people, reserving unqualified ‘male’ and ‘female’ for them while trans people are segregated into the separate, qualified categories of ‘MTF’, ‘FTM’, ‘transgender male’, ‘transgender female’, and ‘transgender’. Fundamentally, this implies trans women and trans men are deviant and not actually female or male, respectively, especially when the selection is ordered as “male”, “female”, “MTF”, “FTM” [96,97,98]. Further, by separating these groups in the first place, “male” and “female” are presented as the norm while “transgender male” and “transgender female” are othered [96,97,98,99,100]. The separation can insinuate that transgender people are not their stated gender and that separation is cited heavily in transphobic and exclusionary actions [101,102,103]”. In practice, many transgender persons would answer “male” or “female” over “transgender male” or “transgender female”. For more information, see Clair Kronk’s Suggested Tables in Google Docs.

When a person is transgender, intersex, and/or gender-diverse, this is noted by an incongruence between a gender identity datum and a sex for clinical use datum (or data). The specific incongruence can be noted using the Comment and Linked Clinical Observation.

### SexForClinicalUseCategory Value Set
SexForClinicalUseCategory valueSet should be bound REQUIRED.

<table>
    <thead>
        <tr>
            <th>
                Term
            </th>       
            <th>
                Definition
            </th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td>
                Female
            </td>
            <td>
                The “female” values apply to this patient, in the case of a given procedure or process in a given context, for instance for a procedure, algorithm, hormone level, organ inventory, etc.
            </td>
        </tr>
        <tr>
            <td>
                Male
            </td>
            <td>
                The “male” values apply to this patient, in the case of a given procedure or process in a given context, for instance for a procedure, algorithm, hormone level, organ inventory, etc.
            </td>
        </tr>
        <tr>
            <td>
                Specified
            </td>
            <td>
                This patient has specific documented characteristics that do not fully match either male or female in a given context, for instance for a procedure, algorithm, hormone level, organ inventory, etc.
            </td>
        </tr>
        <tr>
            <td>
                Unknown
            </td>
            <td>
                The SFCU can not be determined because there are no observations or the observations are not sufficient to determine a value. For example, an emergency trauma case may require treatment before SFCU can be established.
            </td>
        </tr>
    </tbody>
</table>
Given that this value set is intended to be a categorization of sex observations with the concept “Specified” as a flag to indicate non-standard sex observations, this value set should be bound required with no other codes allowed.

“Specified” is utilized here instead of terms like intersex for multiple reasons. The phrase intersex is typically a particular grouping of congenital conditions and even when used more generally it would not be considered synonymous or semantically equivalent. “Specified” is used to indicate that this person has specified observations that are lilely important when considering clinical observations, particularly those that are impacted by sex-associated conditions.

While historical, mostly 19th-century, models described gay, lesbian, bisexual, intersex, and transgender persons as “intersexual”, this term (as well as intersex) was not chosen over “specified” because of its more specific scoped usage by providers, researchers, intersex activist groups (including interACT, the Intersex Society of North America, Intersex Initative, Intersex Peer Support Australia, the Intersex Justice Project, and the Intersex Campaign for Equality), and wider activist groups (such as Human Rights Campaign, Human Rights Watch, and ILGA-Europe). One of the authors (Kronk) polled 483 trans people and found that 475 of them did not feel that all trans people were covered using the word “intersex”.

### Pronoun Value Set
This proposed set is a minimum set for interoperability where the use of the English personal pronoun is required.

<table>
    <thead>
        <tr>
            <th>
                Term
            </th>       
            <th>
                Definition
            </th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td>
                He, Him, His, Himself
            </td>
            <td>
                English personal pronouns, typically associated with masculinity, that are requested by a person to be used by them.
            </td>
        </tr>
        <tr>
            <td>
                She, Her, Hers, Herself
            </td>
            <td>
                English personal pronouns, typically associated with femininity, that are requested by a person to be used by them.
            </td>
        </tr>
        <tr>
            <td>
                They, Them, Their, Theirs, Themself
            </td>
            <td>
                English personal pronouns, typically not associated with masculinity or femininity, that are requested by a person to be used by them.
            </td>
        </tr>
        <tr>
            <td>
                Uses Other Pronouns
            </td>
            <td>
                Person indicates that they use other pronouns than he/him, she/her, or they/them pronouns.
            </td>
        </tr>
        <tr>
            <td>
                Unknown Pronouns
            </td>
            <td>
                Unknown; used in situations wherein no pronouns can be asked for (young children, infants, neonates, etc.).
            </td>
        </tr>
    </tbody>
</table>
The proposed set is based on LOINC answer list for Personal Pronouns - Reported, LL5144-2 Personal pronouns / Answers: 10; Scale: Nom; Code: -; Score: -. TheLOINC value set is acceptable using the canonical url: http://loinc.org/vs/LL5144-2.

## Appendix 2 — Gender Harmony Project Feedback Survey Summary Report
The Gender Harmony Project Feedback Survey Summary Report can be downloaded here.

The survey entitled “HL7’s Gender Harmony Project Feedback Survey” was a 2020 work product generated by the Gender Harmony Work Group (GHWG) to elicit feedback to proposed vocabulary from the LGBTQIA+ community, clinical and technical stakeholders. Much of the end product was informed based on input gathered through this survey.

The survey was created and managed by Roz Queen, GHWG Member and hosted by Survey Monkey. The survey asked for input on the GHWG proposed set of values when recording Gender Identity in clinical systems. The survey was open until September 30, 2020. Survey participants were informed that the GHWG defines Gender Identity as “an individual’s personal sense of being a man, woman, boy, girl, or something else.” Proposed values were provided, with values highlighted yellow, being the minimum binding for any/all conformant systems.

<style>
    table, th, td {
        border: 1px solid black;
    }
</style>
<table>
    <thead>
        <tr>
            <th colspan="3">
                Table 1. Gender Harmony Project, 2020 Vocabulary Feedback Survey Questions
            </th>
        </tr>
        <tr>
            <th>
                Survey Question
            </th>       
            <th>
                Response Type
            </th>
            <th>
                Qualitative Observations/Range*
            </th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td>
                Q1 Is the gender table accurate?
            </td>
            <td>
                Likert-scale (1 - 5)
            </td>
            <td>
                90 responses, from 9% very inaccurate to 29% very accurate
            </td>
        </tr>
        <tr>
            <td>
                Q2 Is the gender table list of values complete?
            </td>
            <td>
                Likert-scale
            </td>
            <td>
                87 responses, from 10% not complete at all to 30% very complete
            </td>
        </tr>
        <tr>
            <td>
                Q3 How do you feel about the gender table?
            </td>
            <td>
                Open-ended question (O-ER)
            </td>
            <td>
                48 responses, from incomplete, incorrect, confusing (48%) to too complex (31%) and upkeep concern (19%).
            </td>
        </tr>
        <tr>
            <td>
                Q4 Should this value set include “Girl” and “Boy”?
            </td>
            <td>
                Likert-scale (Y, N, Other), O-ER (“specify”)
            </td>
            <td>
                88 responses; where 61% indicated “No”, 20% indicated “Yes” and 18% specified “Other”
            </td>
        </tr>
        <tr>
            <td>
                Q5 What data elements would you like to see modified? And how?
            </td>
            <td>
                O-ER
            </td>
            <td>
                48 responses; 56% with respect to gender terms/terminology (various concerns)
            </td>
        </tr>
        <tr>
            <td>
                Q6 What needs improvement? Please mention specific section(s) and/or definition(s)
            </td>
            <td>
                O-ER
            </td>
            <td>
                46 responses; where sentiment analysis revealed the majority of opinions were negative
            </td>
        </tr>
        <tr>
            <td>
                Q7 Other comments and/or suggestions
            </td>
            <td>
                O-ER
            </td>
            <td>
                Sentiment analysis illustrated the majority of opinions were negative (84.90% confidence)
            </td>
        </tr>
    </tbody>
</table>
*  *Please see report for complete analysis and annotations, too complex to provide in summary view.*

Raw survey data is closed to public viewing.

Clair Kronk, a medical informatician, and Andrea JCL Downey, Lead, 2020 Vocabulary Survey Sub- Committee, conducted the review.

For “fixed” answer responses, quantitative analysis was performed. For “open-ended” responses, both quantitative and qualitative analysis was conducted. A total of 7 questions were analyzed and quantitative analysis graphs produced.

The analysis produced a number of survey design and execution observations which ranged from increasing the sample size in future surveys to putting metrics in place to track where the survey is promoted/distributed. The lack of general sentiment collection and/or respondent demographics was also noted as limiting.

Respondent feedback ranged from the need for more culturally-specific identity terms, definitions for all terms, designing hierarchical classifications systems and providing free-text capacity in clinical EMR data collection. Inclusivity beyond Eurocentric terms to embrace cultural difference/nuance was also noted.

It was noted that creating/adopting a new set of more descriptive tables in accordance with HL7 guidelines is a necessary first step before running a new survey.

Therefore the results of this report should be considered preliminary, at best.

Three recommendations were proposed as outcomes of the Survey Review, and the Gender Harmony Work Group adopted Option 2, to adopt the HL7 Balloting Sub-Committee suggested approach which takes into consideration Clair Kronk’s (2020) Suggested Tables 1, 2, 4 & 6 version 3.3 in Google Docs [81] (please see Appendix 4 for details).

The reader is encouraged to read the complete HL7 Gender Harmony Project Feedback Survey Summary Report under Useful Links on the Work Group’s Confluence Portal.

## Appendix 3 — Additional Data Coding Examples
The following items are provided as examples that align with the data elements noted within the informative material.

The following tables were created by Clair Kronk. See Suggested Tables in Google Docs [81] for additional detail. These tables include potential extensions to these tables which may be useful in various scenarios. This document includes a 75 other potential values for gender identities, pronoun sets, assigned sex at birth values, among other things. Additionally, it includes usage notes and information to consider in regional implementations.

### Gender Identity (GI)
<table>
    <thead>
        <tr>
            <th colspan="2">
                Suggested Codes | Table 2 Gender Identity (GI)
            </th>
        </tr>
        <tr>
            <th>
                Concept Code Minimum Value Set
            </th>       
            <th>
                Print Name
            </th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td>
                F
            </td>
            <td>
                Female
            </td>
        </tr>
        <tr>
            <td>
                M
            </td>
            <td>
                Male
            </td>
        </tr>
        <tr>
            <td>
                X
            </td>
            <td>
                Nonbinary
            </td>
        </tr>
        <tr>
            <td>
                O
            </td>
            <td>
                Other
            </td>
        </tr>
        <tr>
            <td>
                U
            </td>
            <td>
                Unknown
            </td>
        </tr>
    </tbody>
</table>

Cases linked to “Unknown” could be theoretically mapped to ‘U’ and specified answers not included here could be linked to ‘O’, but it is recommended to include the other options provided as necessary based on individual clinical use [81].

Kronk [81] also recommends certain additional terms be required in the US and Canada, specifically:

### Name to Use
Name to Use per [81]:
> *“This is a person’s name, specifically, the name that they use. This may differ from a patient’s legal name on certain identity documents, from the patient’s name registered with an insurance company, etc., but it is still their name. Do not use terms like “affirmed name”, “chosen name”, or “real name”, or “preferred name” as these imply that a transgender person’s name is somehow lesser than a cisgender (non-transgender) person’s name, and can be chosen to be ignored.”*

### Personal Pronoun Standards
LOINC provides the following personal pronoun answer list:
<table>
    <thead>
        <tr>
            <th colspan="2">
                LOINC Observation: 90778-2 Personal Pronoun Codes
                LOINC Answer List: LL5144-2 Personal pronouns / Answers: 10; Scale: Nom; Code: -; Score: -
            </th>
        </tr>
        <tr>
            <th>
                Answer
            </th>       
            <th>
                ID
            </th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td>
                he/him/his/his/himself
            </td>
            <td>
                LA29518-0
            </td>
        </tr>
        <tr>
            <td>
                she/her/her/hers/herself
            </td>
            <td>
                LA29519-8
            </td>
        </tr>
        <tr>
            <td>
                they/them/their/theirs/themselves
            </td>
            <td>
                LA29520-6
            </td>
        </tr>
        <tr>
            <td>
                ze/zir/zir/zirs/zirself
            </td>
            <td>
                LA29523-0
            </td>
        </tr>
        <tr>
            <td>
                xie/hir ("here")/hir/hirs/hirself
            </td>
            <td>
                LA29521-4
            </td>
        </tr>
        <tr>
            <td>
                co/co/cos/cos/coself
            </td>
            <td>
                LA29515-6
            </td>
        </tr>
        <tr>
            <td>
                en/en/ens/ens/enself
            </td>
            <td>
                LA29516-4
            </td>
        </tr>
        <tr>
            <td>
                ey/em/eir/eirs/emself
            </td>
            <td>
                LA29517-2
            </td>
        </tr>
        <tr>
            <td>
                yo/yo/yos/yos/yoself
            </td>
            <td>
                LA29522-2
            </td>
        </tr>
        <tr>
            <td>
                ve/vis/ver/ver/verself
            </td>
            <td>
                LA29524-8
            </td>
        </tr>
    </tbody>
</table>

This minimum set of pronouns is suggested by Kronk [81]:

<table>
    <thead>
        <tr>
            <th colspan="2">
                Suggested Codes | Table 6 Third Person Pronouns
            </th>
        </tr>
        <tr>
            <th>
                Concept Code Minimum Value Set
            </th>       
            <th>
                Print Name
            </th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td>
                H
            </td>
            <td>
                he, him, his, himself
            </td>
        </tr>
        <tr>
            <td>
                S
            </td>
            <td>
                she, her, hers, herself
            </td>
        </tr>
        <tr>
            <td>
                T
            </td>
            <td>
                they, them, their, theirs, themself
            </td>
        </tr>
        <tr>
            <td>
                O
            </td>
            <td>
                uses other pronouns
            </td>
        </tr>
        <tr>
            <td>
                U
            </td>
            <td>
                Unknown
            </td>
        </tr>
    </tbody>
</table>

Cases linked to unknown (such as pronouns not stated) could theoretically be mapped to ‘U’ and neopronouns like ze/zir and xie/hir could be linked to ‘O’ in this situation, but it is recommended to include other pronouns provided as necessary based on individual clinical use. Please also note, a patient record may utilize more than one pronoun set.