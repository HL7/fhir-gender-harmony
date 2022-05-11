## Value Sets
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
