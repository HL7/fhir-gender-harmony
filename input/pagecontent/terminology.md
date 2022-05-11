# **8. Terminology**
Medical terminology and standards, as core parts of medical systems, are necessarily omnipresent in today’s biomedical landscape. They form an important cornerstone of almost all digital health technology utilized today around the world. However, despite their increasing importance to health care, medical terminology and standards rarely consider the ethical implications surrounding their existence. Many communities have been adversely affected by this lack of consideration, which this document hopes to partially address in relationship to sex and gender in such systems, with a worldwide perspective.
## **8.1 Code Systems**
### **8.1.2 Code System 1**
### **8.1.3 Code System 2**
## **8.2 Value Sets**
What follows are recommendations for value sets and their approximate meanings in relationship to their usage. Each set is split into an entity (such as “Sex for Clinical Use”) and an attribute within that entity (such as “Sex Category”). Entities and attributes are presented in alphabetical order.

Each section contains three parts: (1) an introduction, (2) a table of required value names, descriptions, and example code systems, and (3) further considerations. For some entity/attribute pairs, the section of further considerations will include an example table of extensible values to consider within given jurisdictions.
### **Entity: Gender Identity, Attribute: Gender**
#### *Introduction*
The attribute Gender in the entity Gender Identity has a minimum value set which is extensible. This extensibility will allow specific implementations the option to add more choices via an expanded value set that incorporates the minimum set. Further discussion of how this is operationalized is include in… [TO ADD]

GenderIdentity value set to be used as a minimum value set, that is extensible to allow specific implementations the option to add more choices via an expanded value set that incorporates this minimum set.
#### *Required Value Names, Descriptions, and Example Code Systems*

|**Value Name (English)**|**Description**|**Example Code System**|
| :-: | :-: | :-: |
|Female|A person’s self-identification as a woman, as female, or as a girl.| LA22879-3 [LOINC] Identifies as female gender, 446141000124107 [SNOMED CT] female gender identity, GSSO:000089 [GSSO]|
|Male|A person’s self-identification as a man, as male, or as a boy.|LA22878-5 [LOINC]Identifies as male gender, 446151000124109 [SNOMED CT]male gender identity, GSSO:000090 [GSSO]|
|Nonbinary|Having a specific identity which is nonbinary (not within a binary construct of male or female) or having an identity which falls under the nonbinary umbrella (i.e., any or all gender identities which are not female or male).|Identifies as nonbinary gender, 33791000087105 [SNOMED CT]nonbinary gender identity, GSSO:002328 [GSSO]|
|Unknown|The person’s gender identity is not known at this time, for any of a variety of reasons. (e.g., “was not able to ask” or “person does not want to answer”.)|nullFlavor UNK [HL7]Unknown, 261665006 [SNOMED CT]unknown gender identity, GSSO:009482 [GSSO]|

#### *Further Considerations*
HL7’s nullFlavor can be useful in a number of situations for Gender Identity, outside of nullFlavor UNK [unknown]. Some of these situations are summarized below. Underneath each value name are value names known to be utilized in other systems.

|**Value Name (English)**|**Description**|**Example Code System**|
| :-: | :-: | :-: |
|Masked|Information is available but has not been provided for security or privacy reasons. For instance, an individual may present a different gender identity in a space considered to be unknown or dangerous. Their actual gender identity could be masked in a situation like this. Additionally, some gender identities might not be used very often, and could therefore potentially lead to identifying an individual, compromising their privacy. A masked value could also be used to help prevent such a situation.|nullFlavor MSK [HL7]|

|Something else- Additional gender identity- Another gender identity- Another gender identity not listed- Gender identity not listed above- Gender identity not listed here- Gender not listed|The gender identity provided exists beyond any utilized code system. In these cases, plain-text should be provided. Avoid using “other” as much as possible.|nullFlavor OTH [HL7]GSSO:009484 [GSSO]|
|Not applicable- No gender identity|Having no proper value for gender identity. For instance, a biological specimen (cells, tissue, etc.) does not have a gender identity. Most psychiatrists and psychologists agree that gender identity forms between the ages of 4 and 7, so before that time “Not applicable” would be used.|nullFlavor NA [HL7]GSSO:009485 [GSSO]|
|Asked but unknown- Chose not to answer- Does not understand the question- Gender identity not disclosed- Non-disclosed- Person prefers not to say- Prefer not to answer- Prefer not to respond- Prefer not to say- Undisclosed- Unsure|Used in situations where a gender identity was sought but not found. For instance, if a patient doesn’t understand the question. Do NOT use this value to indicate if an individual is questioning or exploring their gender identity. Another example would be if an individual decides to not disclose their gender identity.|nullFlavor ASKU [HL7]|
|Temporarily unavailable|An individual’s gender identity is not available at the time but is expected later. For instance, if an individual is unconscious (but is expected to become conscious), their gender identity cannot be obtained.|nullFlavor NAV [HL7]|
|Not asked- Inappropriate to ask- Not appropriate to ask|An individual has not be asked about their gender identity or that information has not otherwise been sought in any form.|nullFlavor NASK [HL7]|
|Not available- Gender identity inadequately described- Inadequately described|An individual’s gender identity is not available at the time, and there is no expectation that it will ever be available. Such a determination could be used if an individual has died and their gender identity has not been ascertained. Could also be used in situations wherein an individual has tried to update from one system to another, and the previous system’s usage of gender (identity) is uncertain or inadequate.|nullFlavor NAVU [HL7]|
|Not present- Gender identity not provided- Not provided|Used only in messages to indicate that a value is not present.|nullFlavor NP [HL7]|
In addition to these values, we highly recommend the following, if appropriate:

|**Value Name (English)**|**Description**|**Example Code System**|
| :-: | :-: | :-: |
|Exploring or questioning gender identity|Indicating that one is exploring or questioning their gender identity can be helpful for providers, and may be a safer label for those who have just recently started thinking about their own gender process.|GSSO:001594 [GSSO]|
|I do not understand the question- I don’t understand- I don’t know|An individual does not understand the gender identity question as phrase, for any of various reasons (language barrier, for instance).|*None at present time*.|
In situations where many LGBTQIA+ patients are expected and more granularity is wanted, some of the following emergent gender identities may be considered. Below we include some of the more commonly known such identities, as of Spring 2022. However, this section is by no means exhaustive, and names and conceptualizations of various identities will shift over time, potentially meaning that some emergent terms might be missing while others have become obsoleted. For instance, the Gender Wiki lists [over 300 gender identities](https://gender.fandom.com/wiki/Category:Gender_Identities), the Nonbinary Wiki lists [over 100 more common gender identities](https://nonbinary.wiki/wiki/Category:Nonbinary_identities) which fall underneath the nonbinary umbrella, and the MOGAI Gender Wiki lists [over 200 gender identities](https://mogai-genders.fandom.com/wiki/Category:Gender). For trends regarding identity terms, many of which are gender identities, we recommend accessing the [Gender Census](https://gendercensus.com/), the 2021 version of included 44,583 usable responses. We utilized trends across the Gender Census in determining which identities to explicitly include below.

|**Value Name (English)**|**Description**|**Example Code System**|
| :-: | :-: | :-: |
|Agender|Attested as a gender identity since the late 1990s. Considered by most to be a lack of gender identity, or synonymous with genderless, non-gendered, or ungendered.|GSSO:002342 [GSSO]HOMOIT:0001927 [Homosaurus]|
|Androgyne|Term which has been utilized to describe gender nonconforming and intersex persons for centuries. By the late 19th and early 20th century, the term was used mostly to describe gay men who were considered to be feminine. By the 1980s, some transgender persons began using the term as a gender identity which have masculine and feminine components. Today, the term is seen as falling under the nonbinary umbrella, being simultaneously masculine and feminine, male and female.|GSSO:000404 [GSSO]|
|Bigender|First defined the 1980s, often to refer to persons who were “dual-gendered”, both male and female. Although many bigender people today still identify as both male and female, many others use various other gender identities: for instance, a person could be both female and nonbinary, or demigender and neutrois, and still be bigender.|GSSO:002336 [GSSO]HOMOIT:0000110 [Homosaurus]|
|Demigender||GSSO:002341 [GSSO]HOMOIT:0001923 [Homosaurus]|
|Genderfluid||GSSO:002339 [GSSO]HOMOIT:0000569 [Homosaurus]|
|Intergender|Defined in the 1990s as an “in-between” gender identity, typically defined as being between male and female. In the 2000s and 2010s, the term became known as a more exclusive gender identity meant to be utilized only by intersex persons; its usage by non-intersex (endosex *or* perisex) is considered derogatory.|GSSO:002335 [GSSO]|
|Multigender||GSSO:002330 [GSSO]|
|Neutral||GSSO:002334 [GSSO]|
|Neutrois||GSSO:002340 [GSSO]|
|Pangender||GSSO:007680 [GSSO]HOMOIT:0001071 [Homosaurus]|
|Polygender||GSSO:002338 [GSSO]|
|Trigender||GSSO:002337 [GSSO]HOMOIT:0001473 [Homosaurus]|
When additional codes and terms appropriate to specific jurisdictions, locations, and potentially individual persons are needed, an additional value or values should be created that add in the additional concepts. Such values are informally referred to as *culturally-specific gender identities*.

Implementations should be prepared for the addition of other specific gender identities at specific locations. Implementations should be prepared to receive messages or records that contain unrecognized terms. Local policy will establish how to handle unrecognized terms, most likely by preserving the term. Examples of gender identity extensions are given in the non-normative table shown below, with the caveat that this work is produced from an Anglospheric perspective, and that local implementors of these communities may utilize these entities in different ways.

For instance, many of communities do not differentiate between sexual identity and gender identity, and these terms are implicitly combined. More research is necessary in many of these situations in order to effectively prevent miscommunication, but performing such research is beyond the scope of the current report. Note that the following list is scoped and only includes identities attested to be in use in the last century.

|**Transliterated Value Name****(Name in Original Language, if Different)**|**Jurisdiction** **(Ethnic or Cultural Group)**|**Description**|**Example Code System**|
| :-: | :-: | :-: | :-: |
|Agule|Uganda, Democratic Republic of the Congo, South Sudan (Lugbara)|First attested in English literature in the 1960s; was originally translated as “like a man”, but has more recently been translated as transmasculine or as trans man.|GSSO:002164 [GSSO]|
|‘Akava’ine|Cook Islands (Cook Islands Māori)|Term attested in English literature since the 1990s in the Cook Islands. Combines the prefix “aka” (‘to be or to behave like’) with “va’ine” (‘woman’). Used originally as a term of insult toward cis women, but now used to refer to Cook Islanders who may be considered trans women.|GSSO:002163 [GSSO]HOMOIT:0000035 [Homosaurus]|
|Aravani (Arabic: أرافاني, Marathi: अरावनी, Tamil: அரவாணி)|India (Tamilar)|Term attested in English literature since its coinage in 2008 in Tamil Nadu, India. Some literature compares the term to hijra, some compare it to the term trans woman, and others note it as its own specific conceptualization. More recently (in the 2010s), the term thirunangai was coined as a more inclusive and respectful term, although it has been noted that some individuals in Chennai still use aravani as a term of identification.|GSSO:006194 [GSSO]HOMOIT:0000065 [Homosaurus]|
|Āshitimē (Maale: አሽትሜ)|Ethiopia (Maale)||GSSO:002166 [GSSO]HOMOIT:0000072 [Homosaurus]|
|Baklâ|Philippines||GSSO:002189 [GSSO]HOMOIT:0000091 [Homosaurus]|
|Basaja|Indonesia (Toraja)|||
|Basir|Indonesia (Ngaju)|||
|Bissu|Indonesia (Makassar)||GSSO:007858 [GSSO]HOMOIT:0000205 [Homosaurus]|
|Biza’ah|Mexico (Zapotec)||GSSO:002047 [GSSO]HOMOIT:0000207 [Homosaurus]|
|Brotherboy|Australia (Indigenous Australians)||GSSO:002300 [GSSO]HOMOIT:0000224 [Homosaurus]|
|Calabai|||GSSO:007859 [GSSO]HOMOIT:0000234 [Homosaurus]|
|Calalai|||GSSO:007860 [GSSO]HOMOIT:0000235 [Homosaurus]|
|Fa’afāfine|American Samoa, Samoa (Samoans)||GSSO:002302 [GSSO]HOMOIT:0000413 [Homosaurus]|
|Fa’atama|American Samoa, Samoa (Samoans)||GSSO:008117 [GSSO]HOMOIT:0000414 [Homosaurus]|
|Fakafāfine|Tokelau (Tokelauans)||GSSO:011272 [GSSO]|
|Fakaleitī|Tonga (Tongans)||GSSO:002303 [GSSO]HOMOIT:0000419 [Homosaurus]|
|Femminiello|Italy (Neapolitans)||GSSO:002304 [GSSO]HOMOIT:0000441 [Homosaurus]|
|Hijra (Hindi: हिजड़ा)|India (Indians)|Term attested in English literature since the early 1800s. Hijra usually refers to a very specific cultural role with gendered connotations. People who are hijra are almost always those who would be considered assigned male at birth (AMAB), although many are intersex and some may be assigned female at birth (AFAB). Hijra typically live in communities called gharanas. Some hijra consider themselves to be transgender, although many do not. The term hijra is often considered to be offensive in Urdu, so the term khwaja sira is preferred in Urdu-speaking parts of India, as well as in Pakistan and Bangladesh.|GSSO:002305 [GSSO]HOMOIT:0000632 [Homosaurus]|
|Isángoma|South Africa, Lesotho, Zimbabwe, Eswatini, Malawi, Botswana, Mozambique (Zulu)|||
|Jogappa (Hindi: जोगप्पा)||Attested in English literature since the 1980s. Individuals become jogappa through a ceremony known as Kādāta.|GSSO:007861 [GSSO]HOMOIT:0000684 [Homosaurus]|
|Jogata (Hindi: जोगतास)||||
|Kathoey (Thai: กะเทย, Lao: ກະເທີຍ)|Thailand (Thais)|Thai and Lao term which derives from the Khmer pejorative ខ្ទើយ. Attested in English literature since the 1990s.|GSSO:002306 [GSSO]|
|Khanith (Arabic: خنيث)|Oman (Omanis)|Attested in English literature since the 1970s.|GSSO:002307 [GSSO]HOMOIT:0001517 [Homosaurus]|
|Khasua (Hindi: खसुआ)|||GSSO:011932 [GSSO]|
|Khusara (Hindi: खुसरा)|India||GSSO:011931 [GSSO]|
|Khusra (Arabic: خوسرا, Punjabi: ਖੁਸਰਾ)|India, Pakistan||GSSO:007870 [GSSO]|
|Khwaja sira (Urdu: خواجه سرا)|Pakistan (Pakistanis), Bangladesh (Bengalis)|Polite alternative to hijra in Urdu. Recommended for usage in Pakistan and Bangladesh over using hijra.|GSSO:006199 [GSSO]HOMOIT:0000689 [Homosaurus]|
|Kinnar|India||GSSO:006190 [GSSO]HOMOIT:0000690 [Homosaurus]|
|Kothi (Hindi: कोथी)|India (Indians), Nepal (Nepalis), Pakistan (Pakistanis)||GSSO:002309 [GSSO]HOMOIT:0000694 [Homosaurus]|
|Laelae|Cook Islands (Cook Islands Māori)|Attested in English literature since the 1990s; used to refer to individuals who may be considered to be assigned male at birth who is considered to be feminine to some degree.||
|Māhū|Hawaii (Kanaka Maoli), Tahiti (Maohi)||GSSO:002320 [GSSO]HOMOIT:0000979 [Homosaurus]|
|Māhū kāne|Hawaii (Kanaka Maoli), Tahiti (Maohi)|Kanaka Maoli term coined in the early 2000s, meant to represent the specific experiences of Kanaka Maoli trans men.||
|Māhūwahine|Hawaii (Kanaka Maoli), Tahiti (Maohi)|Kanaka Maoli term coined in the early 2000s, meant to represent the specific experiences of Kanaka Maoli trans women.||
|Mak nyah|Singapore (Singaporeans)||GSSO:007930 [GSSO]HOMOIT:0000980 [Homosaurus]|
|Manang bali|Indonesia (Iban)|||
|Mangaiko|Democratic Republic of the Congo (Mbo)||GSSO:007928 [GSSO]HOMOIT:0000987 [Homosaurus]|
|Muxe|Mexico (Zapotec)||HOMOIT:0001034 [Homosaurus]|
|Okule|Uganda, Democratic Republic of the Congo, South Sudan (Lugbara)|||
|Omegiid|Panama (Guna)|||
|Palao’ana|Guam, Northern Mariana Islands (Chamorro)||GSSO:002321 [GSSO]HOMOIT:0001070 [Homosaurus]|
|Palopa|Tuvalu (Tuvaluans)||GSSO:010335 [GSSO]|
|Rae rae|Tahiti (Maohi)||GSSO:002323 [GSSO]|
|Sekrata|Madagascar (Sakalava)||GSSO:008113 [GSSO]HOMOIT:0001264 [Homosaurus]|
|Sistergirl|Australia (Indigenous Australians)||GSSO:002301 [GSSO]HOMOIT:0001314 [Homosaurus]|
|Thirunangai (திருநங்கை)|India (Tamilar)|Term coined in the 2010s to be a more respectful version of aravani in Tamil Nadu. Thirunangai have been said to be hijra, trans women, or as its own designation by various sources.||
|Travesti|Argentina (Argentines), Brazil (Brazilians), Peru (Peruvians)|Romance language term (Spanish, Portuguese, Italian, etc.) often considered a transphobic slur today, although the term has been reclaimed by some in some regions of Central and South America.|GSSO:002324 [GSSO]HOMOIT:0001471 [Homosaurus]|
|Tutuva’ine|Cook Islands (Cook Islands Māori)|Term attested in English literature in the early 2000s, meaning “like a woman”; today used to refer to individuals who may be considered male-to-female cross-dressers or drag queens.||
|Tututane|Cook Islands (Cook Islands Māori)|Term attested in English literature in the early 2000s, meaning “like a man”; today used to refer to individuals who may be considered female-to-male cross-dressers or drag kings.||
|Two-Spirit|North America, Central America (Native Americans, First Nations)||GSSO:007398 [GSSO]HOMOIT:0001914 [Homosaurus]|
|Two-Spirit|Australia, New Zealand||GSSO:011273 [GSSO]|
|Vakasalewalewa|Fiji (Fijians)||GSSO:010334 [GSSO]|
|Wakatane|New Zealand (Māori)||GSSO:007720 [GSSO]HOMOIT:0001499 [Homosaurus]|
|Waria|Indonesia (Indonesians)||GSSO:002325 [GSSO]HOMOIT:0001501 [Homosaurus]|
|Whakawāhine|New Zealand (Māori)||GSSO:007721 [GSSO]HOMOIT:0001502 [Homosaurus]|
|X-gender (Ｘじぇんだー)|Japan (Japanese)|Japanese neologism known in English literature since the 1990s; considered to be similar in some ways to English terms like “genderqueer” and “nonbinary”.|GSSO:002327 [GSSO]|

Note that terms like “MTF”, “FTM”, “male-to-female transsexual”, and “female-to-male transsexual”, etc. were not included. Kronk [82] noted in an article with 12 other trans authors in various health care fields that “[t]hese options are antiquated and problematic. The first two (FTM and MTF) have largely fallen out of use among transgender people and in transgender-related literature because they fundamentally assume a ‘change’ in gender—that a transgender person was ‘female’ and now is ‘male’ (FTM), usually due to, or following, some sort of medicalization process (hormone replacement therapy and/or gender affirming surgery, for instance) [91,92,93,94,95]. This contradicts how many trans people understand their identity and can confuse patients. All four terms center cisgender people, reserving unqualified ‘male’ and ‘female’ for them while trans people are segregated into the separate, qualified categories of ‘MTF’, ‘FTM’, ‘transgender male’, ‘transgender female’, and ‘transgender’. Fundamentally, this implies trans women and trans men are deviant and not actually female or male, respectively, especially when the selection is ordered as “male”, “female”, “MTF”, “FTM” [96,97,98]. Further, by separating these groups in the first place, “male” and “female” are presented as the norm while “transgender male” and “transgender female” are othered [96,97,98,99,100]. The separation can insinuate that transgender people are not their stated gender and that separation is cited heavily in transphobic and exclusionary actions [101,102,103]”. In practice, many transgender persons would answer “male” or “female” over “transgender male” or “transgender female”.

When a person is transgender, intersex, and/or gender-diverse, this is noted by an incongruence between a gender identity datum and a sex for clinical use datum (or data). The specific incongruence can be noted using the Comment and Linked Clinical Observation.
### **Entity: Pronouns to Use, Attribute: Pronoun Set**
#### *Introduction*
The attribute Pronoun Set in the entity Pronouns to Use has a minimum value set which is extensible. At the time of writing, information regarding non-English pronoun set systems was not well represented in the HL7 Gender Harmony Project group. Therefore, only English-language pronoun sets are provided in the minimum value set for the time being, for use in Anglosphere countries (the United States, the United Kingdom, Canada, Australia, New Zealand, etc.). However, in further considerations, we will list some potential options to consider in future work outside of the Anglosphere.

English-language pronoun sets are shown in the following order for the purposes of declination:

- Subject pronoun (Example: “**She** went to the park.”)
- Object pronoun (Example: “I went with **her**.”)
- Possessive determiner (Example: “She** brought **her** frisbee.”)
- Possessive pronoun (Example: “At least I think it was **hers**.”)
- Reflexive (Example: “She threw the frisbee to **herself**.”)

Individual forms are separated by commas (“,”) because some pronoun sets include the “/” character within them, which would make programmatic parsing more difficult.

The primary code system utilized is a subset of the LOINC answer list for Personal Pronouns - Reported, LL5144-2 Personal pronouns / Answers: 10; Scale: Nom; Code: -; Score: -.
#### *Required Value Names, Descriptions, and Example Code Systems*

|**Value Name (English)**|**Description**|**Example Code System**|
| :-: | :-: | :-: |
|he, him, his, his, himself|English-language pronouns usually associated with masculinity and/or maleness, that are to be used to refer to the person who uses them.|LA29518-0 [LOINC]GSSO:010399 [GSSO]|
|she, her, her, hers, herself|English-language pronouns usually associated with femininity and/or femaleness, that are to be used to refer to the person who uses them.|LA29519-8 [LOINC]GSSO:010398 [GSSO]|
|they, them, their, theirs, themself|Epicene English-language pronouns usually considered gender-neutral and/or gender-expansive, that are to be used to refer to the person who uses them.|LA29520-6 [LOINC]GSSO:011490 [GSSO]|
|unknown||nullFlavor UNK [HL7]Unknown, 261665006 [SNOMED CT]|
#### *Further Considerations*
[additional nullFlavor options]

A number of English neopronouns (neologistic pronouns) exist in addition to the English paleopronouns (paleologistic pronouns) included previously. A few of these are shown below.

|**Value Name (English)**|**Description**|**Example Code System**|
| :-: | :-: | :-: |
|co, co, cos, cos, coself||LA29515-6 [LOINC]GSSO:011647 [GSSO]|
|en, en, ens, ens, enself||LA29516-4 [LOINC]|
|ey, em, eir, eirs, emself||LA29517-2 [LOINC]GSSO:011577 [GSSO]|
|ve, vis, ver, ver, verself||LA29524-8 [LOINC]|
|xie, hir, hir, hirs, hirself||LA29521-4 [LOINC]|
|yo, yo, yos, yos, yoself||LA29522-2 [LOINC]GSSO:011555 [GSSO]|
|ze, zir, zir, zirs, zirself||LA29523-0 [LOINC]GSSO:011556 [GSSO]|
Several other languages which use gendered pronouns should also consider constructing similar structures in their electronic health records. However, they should never automatically map pronouns in one language to pronouns in another language, as the connotations involved as language specific. A few potential examples to consider are included below in some languages, but these are not meant to be exhaustive, and should only be implemented with appropriate jurisdictional feedback.

[German]

[Spanish]

[French]

[Dutch]

[Norwegian]

[Polish]

[Portuguese]

[Mandarin Chinese]

[pronouns in German, Spanish, French, Dutch, Norwegian, Polish, Portuguese, and Mandarin Chinese]
### **Entity: Recorded Sex or Gender, Attribute: Source Recorded Sex or Gender**
#### *Introduction*
The attribute Source Recorded Sex or Gender in the entity Recorded Sex or Gender has no minimum value set, due primarily to linguistic differences between regions. This section will review some of those differences for various jurisdictions to consider.
#### *Required Value Names, Descriptions, and Example Code Systems*
There are no required value names, descriptions, or example code systems for the attribute Source Recorded Sex or Gender. For examples of some values utilized herein, see further considerations.
#### *Further Considerations*
### **Entity: Recorded Sex or Gender, Attribute: International Equivalent Recorded Sex or Gender**
#### *Introduction*
The attribute International Equivalent Recorded Sex or Gender in the entity Recorded Sex or Gender has a required minimum value set in order to facilitate communication between regions or jurisdictions which use different values for the attribute Source Recorded Sex or Gender in the entity Recorded Sex or Gender.

In order to develop this set, we reviewed all international documentation related to Recorded Sex or Gender. “Sex” or “Gender” (as it appears in passport documents) was the only entity found which sufficiently fulfilled these criteria. For that reason, our minimum value set derives from two International Civil Aviation Organization (ICAO) documents, being Doc 9303: Machine Readable Travel Documents, Seventh Edition (2015), Part 7: Machine Readable Visas and Doc 9303: Machine Readable Travel Documents, Eighth Edition (2021), Part 7: Machine Readable Visas.

As defined in those documents, “Sex” is representative of the “[s]ex of MRV-A holder, when included, is to be specified by use of the single initial commonly used in the language of the State of issue. If translation into English, French or Spanish is necessary, followed by an oblique and the capital letter F for female, M for male, or X for unspecified.” However, when the data structure is clarified later in the document it is noted that “F = Female; M = Male; < = non-specified”. This discrepancy is noted in with the following in the 2021 edition: “Where an issuing State or organization does not want to identify the sex, the filler character (<) shall be used in this field in the MRZ and an X in this field in the VIZ.” This effectively means that ‘X’ and ‘<’ are equivalent, with ‘X’ appearing on the “front-end” and ‘<’ appearing on the “back-end”.

However, it is important to note that this system does not include a value that is *unknown*. We recommend that nullFlavor UNK [HL7] be used for that purpose. Importantly, nullFlavor UNK [HL7] has more granular values which can be used as well, as long as some form of unknown is available. For instance, nullFlavor ASKU (asked but unknown), nullFlavor NAV (temporarily unavailable), and nullFlavor NASK (not asked), and nullFlavor NAVU could be utilized. Situations where other nullFlavor options may be applicable are discussed in further considerations.
#### *Required Value Names, Descriptions, and Example Code Systems*

|**Value Name (English)**|**Description**|**Example Code System**|
| :-: | :-: | :-: |
|Female|A value which corresponds to ‘F’, ‘female’, ‘woman’, or ‘girl’ has been recorded in some context.|F [ICAO]|
|Male|A value which corresponds to ‘M’, ‘male’, ‘man’, or ‘boy’ has been recorded in some context.|M [ICAO]|
|Nonbinary *or* Unspecified *or* Non-specified|A value which corresponds to ‘X’ has been recorded or the value is otherwise unspecified or non-specified. ‘X’ has been used to refer to the following in various jurisdictions (please note that this list is not exhaustive): (1) another gender identity, (2) gender diverse, (3) gender neutral, (4) indeterminate, (5) intersex, (6) neither male nor female, (7) nonbinary, (8) undesignated, (9) unreported.|X,* < [ICAO]|
|Unknown|A value is applicable, but not known.|nullFlavor UNK [HL7]Unknown, 261665006 [SNOMED CT]|
#### *Further Considerations*
HL7’s nullFlavor can be useful in a number of situations for Gender Identity, outside of nullFlavor UNK [unknown]. Some of these situations are summarized below. Underneath each value name are value names known to be utilized in other systems.

[TODO]

A number of jurisdictions use values outside of those aforementioned. Below includes recommendations for how to treat these values as RSGs, with the attributes Source Recorded Sex or Gender and International Equivalent Recorded Sex or Gender.

|**Source Recorded Sex or Gender**|**International Equivalent Recorded Sex or Gender**|**Description**|
| :-: | :-: | :-: |
||X|Blank, or an option for nothing to be recorded. Observed on both German and Argentinian birth certificates.|
|Divers|X|Included in birth certificates from Austria and Germany. Translates as “diverse” in English, used mostly for individuals who would are considered to be intersex.|
|Female (khwaja sira)|||
|Intersex|X|A certificate of live birth from the U.S. state of Colorado listed “Intersex” as the sex of the registrant.|
|Khunsā-e-mushkil|X||
|Male (khwaja sira)|||
|NB|X|Has appeared on a Mexican birth certificate, standing for “no binario” (nonbinary in English).|
|No binario|X|Has appeared on Argentinian birth certificates; translates into English as “nonbinary”.|
|O|X||
|U|X|Seen on British Columbia health services cards; it is assumed that ‘U’ stands for either ‘unknown’ or ‘unspecified’.|
|V|F|‘V’ is used for female in a number of countries, such as in the Netherlands.|
|W|F|‘W’ is used for female in a number of countries, such as in Belgium.|

### **Entity: Sex for Clinical Use, Attribute: Sex Category**
#### *Introduction*
Unlike the other attributes being discussed the attribute Sex Category in the entity Sex for Clinical Use is bound required, meaning that additional values beyond the value set will not be accepted. In the event that one attempts to add other values, they will be recoded as nullFlavor OTH (other). This binding is utilized because these values are often directly tied to functions of clinical systems which could break if inappropriate codes are exchanged.

The primary code system utilized is the LOINC answer list for Sex for clinical use, LL6114-4 / Female, Male, Specified, Unknown.
#### *Required Value Names, Descriptions, and Example Code Systems*

|**Value Name (English)**|**Description**|**Example Code System**|
| :-: | :-: | :-: |
|Female|The “female” values apply to this patient, in the case of a given procedure or process in a given context, for instance for a procedure, algorithm, hormone level, organ inventory, etc.|F, LA3-6 [LOINC]GSSO:011317 [GSSO]|
|Male|The “male” values apply to this patient, in the case of a given procedure or process in a given context, for instance for a procedure, algorithm, hormone level, organ inventory, etc.|M, LA2-8 [LOINC]GSSO:011318 [GSSO]|
|Specified|This patient has specific documented characteristics that do not fully match either male or female in a given context, for instance for a procedure, algorithm, hormone level, organ inventory, etc.|S, LA32840-3 [LOINC]GSSO:011319 [GSSO]|
|Unknown|The SFCU cannot be determined because there are no observations or the observations are not sufficient to determine a value. For example, an emergency trauma case may require treatment before SFCU can be established.|U, LA4489-6 [LOINC]nullFlavor UNK [HL7]Unknown, 261665006 [SNOMED CT]GSSO:011320 [GSSO]|
Given that this value set is intended to be a categorization of sex observations with the concept “Specified” as a flag to indicate non-standard sex observations, this value set should be bound required with no other codes allowed.
#### *Further Considerations*
“Specified” is utilized here instead of terms like intersex for multiple reasons. The phrase intersex is typically a particular grouping of congenital conditions and even when used more generally it would not be considered synonymous or semantically equivalent. “Specified” is used to indicate that this person has specified observations that are lilely important when considering clinical observations, particularly those that are impacted by sex-associated conditions.

While historical, mostly 19th-century, models described gay, lesbian, bisexual, intersex, and transgender persons as “intersexual”, this term (as well as intersex) was not chosen over “specified” because of its more specific scoped usage by providers, researchers, intersex activist groups (including interACT, the Intersex Society of North America, Intersex Initative, Intersex Peer Support Australia, the Intersex Justice Project, and the Intersex Campaign for Equality), and wider activist groups (such as Human Rights Campaign, Human Rights Watch, and ILGA-Europe). One of the authors (Kronk) polled 483 trans people and found that 475 (98.3%) of them did not feel that all trans people were covered using the word “intersex”.
## **8.3 Glossary**
Included below are a few terms, in addition to those defined elsewhere in the document, for reference.

|**Term**|**Definition**|
| :-: | :-: |
|administrative gender||
|administrative sex||
|assigned gender at birth (AGAB)|A sex and/or gender datum that is recorded in some system (usually a birth certificate or registry) shortly after birth, often based on some sexing methodology.|
|binary gender system||
|cisgender||
|dyadic|Non-intersex.|
|endosex|Non-intersex.|
|gender||
|gender affirmation||
|gender-affirming medical procedure||
|gender-affirming hormone therapy (GAHT)||
|gender-affirming surgery (GAS)||
|gender dysphoria||
|gender euphoria||
|gender expression||
|gender incongruence||
|gender marker||
|gender marker on birth certificate||
|gender marker on health insurance||
|gender modality|One’s alignment (or lack thereof) between their assigned gender at birth (or the gender they were reared or raised as) and their gender identity.|
|hermaphrodite||
|intersex||
|ipsogender|Intersex and cisgender.|
|legal gender||
|legal name||
|name||
|nonbinary|(1) A specific gender identity which is neither male nor female.(2) An umbrella term… |
|perisex|Non-intersex.|
|pronoun||
|pronoun set|A set of |
|sex||
|sex characteristics|A characteristic which|
|sex dyadicity|One’s status as intersex or non-intersex (also called endosex, perisex, or dyadic).|
|transgender|[1] Having a gender identity which is different from one’s assigned gender at birth and/or the gender one was raised or reared as.[2] An umbrella term… |
|ultergender|Intersex and transgender.|





