# **8. Terminology**
Medical terminology and standards, as core parts of medical systems, are necessarily omnipresent in today’s biomedical landscape. They form an important cornerstone of almost all digital health technology utilized today around the world. However, despite their increasing importance to health care, medical terminology and standards rarely consider the ethical implications surrounding their existence. Many communities have been adversely affected by this lack of consideration, which this document hopes to partially address in relationship to sex and gender in such systems, with a worldwide perspective.
## **8.1 Code Systems**
### **8.1.2 Code System 1**
### **8.1.3 Code System 2**
## **8.2 Value Sets**
What follows are recommendations for value sets and their approximate meanings in relationship to their usage. Each set is split into an entity (such as “Sex for Clinical Use”) and an attribute within that entity (such as “Sex Category”). Entities and attributes are presented in alphabetical order.

Each section contains three parts: (1) an introduction, (2) a table of required value names, descriptions, and example code systems, and (3) further considerations. For some entity/attribute pairs, the section of further considerations will include an example table of extensible values to consider within given jurisdictions.
### **Use of Multiplicity and Extensibility in the Gender Harmony Model**
Many attributes defined in the Gender Harmony model make use of multiplicity and have required and/or extensible value sets. These concepts are formally defined in <REF TBD>. The impact of these mechanisms on implementations is discussed in this section in brief bulleted lists for convenience.
#### *Multiplicity*
- All attributes might be fully missing. This is fundamentally different than an attribute being present with a specific *null* value. An unidentified trauma patient is one possible cause of such missing attributes; for instance, the Gender Identity entity of such a patient cannot be apprehended when a patient is in such a state.
- Attributes or entire entities may be inapplicable, also meaning that all attributes might be fully missing. For example, in a location in which the local language or the language of the health care system does not utilize pronouns, the Pronouns to Use entity cannot be apprehended and is therefore missing.
- There may be multiple values for attributes simultaneously and across time. For example, it is not unheard of for a person to use two pronoun sets. They may use he/him and they/them pronouns and select both as appropriate and acceptable. Such an individual would have two Pronoun Sets indicated.
#### *Required and Extensible Value Sets*
- Required Value Sets
  - The value set for Sex for Clinical Use (SFCU) is bound required. This means that value must be chosen from one of those on the list provided in the value set. The list does not contain an “other” or “something else” value.
  - Instead of utilizing “other” or “something else”, SFCU has a Specified option, which is expected to be accompanied by comments and/or references to observations which explain why neither “male” nor “female” are appropriate.
  - “Unknown” occurs for a situation in which there are not sufficient observations to make any determination. This is an *affirmative* statement, so that the recipient and user of this information know that a sender/creator has looked at the data available to them before making this selection. This allows the recipient to decide on a further course of action, which may include searching for observations or simply proceeding with the available data.
- Extensible Value Sets
  - The value sets for other attributes, such as Pronoun Set within the Pronouns to Use entity or Gender within the Gender Identity entity are bound extensible. This means that the value set can be extended by local, regional, or national policy, but that it must contain the minimum required values.
  - Some policies may permit patients to add patient-specified values through mechanisms such as free-text. Systems should be prepared to handle values of this type or other added values, although the Gender Harmony model itself does not specify how extended values created in one system should be received by another.
  - The Gender attribute in the Gender Identity entity is expected to be locally extended. The minimum required value set is shorter for this reason, containing only four values that are generally well-known worldwide. There are many culturally-specific gender identities known around the world, which may be defined and added in appropriate jurisdictions.
  - The Gender Harmony model does not specify how extension of the coding system can take place, but does note values of interest below. Extensions could use existing coding systems like SNOMED and LOINC, or define their own jurisdictionally-specific systems. However, for the sake of interoperability, an already defined method for extension should be utilized where possible.
### **Entity: Gender Identity, Attribute: Gender**
#### *Introduction*
The attribute Gender in the entity Gender Identity has a minimum value set which is extensible. This extensibility will allow specific implementations the option to add more choices via an expanded value set that incorporates the minimum set. Further discussion of how this is operationalized is include in… [TO ADD]

GenderIdentity value set to be used as a minimum value set, that is extensible to allow specific implementations the option to add more choices via an expanded value set that incorporates this minimum set.
#### *Required Value Names, Descriptions, and Example Code Systems*

|**Value Name (English)**|**Description**|**Example Code System**|
| :--- | :--- | :--- |
|Female|A person’s self-identification as a woman, as female, or as a girl.|LA22879-3 [LOINC]Identifies as female gender, 446141000124107 [SNOMED CT]female gender identity, GSSO:000089 [GSSO]|
|Male|A person’s self-identification as a man, as male, or as a boy.|LA22878-5 [LOINC]Identifies as male gender, 446151000124109 [SNOMED CT]male gender identity, GSSO:000090 [GSSO]|
|Nonbinary|Having a specific identity which is nonbinary (not within a binary construct of male or female) or having an identity which falls under the nonbinary umbrella (i.e., any or all gender identities which are not female or male).|Identifies as nonbinary gender, 33791000087105 [SNOMED CT]nonbinary gender identity, GSSO:002328 [GSSO]|
|Unknown|The person’s gender identity is not known at this time, for any of a variety of reasons. (e.g., “was not able to ask” or “person does not want to answer”.)|nullFlavor UNK [HL7]Unknown, 261665006 [SNOMED CT]unknown gender identity, GSSO:009482 [GSSO]|


<table class=MsoTableGrid border=1 cellspacing=0 cellpadding=0
 style='border-collapse:collapse;border:none;mso-border-alt:solid windowtext .5pt;
 mso-yfti-tbllook:1184;mso-padding-alt:0in 5.4pt 0in 5.4pt'>
 <tr style='mso-yfti-irow:0;mso-yfti-firstrow:yes'>
  <td width=208 valign=top style='width:155.8pt;border:solid windowtext 1.0pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText align=center style='text-align:center'><span
  style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span
  style='mso-bookmark:genderidentity-value-set'><b>Value Name (English)<o:p></o:p></b></span></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span
  style='mso-bookmark:genderidentity-value-set'></span></span></span></span>
  <td width=208 valign=top style='width:155.85pt;border:solid windowtext 1.0pt;
  border-left:none;mso-border-left-alt:solid windowtext .5pt;mso-border-alt:
  solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText align=center style='text-align:center'><span
  style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span
  style='mso-bookmark:genderidentity-value-set'><b>Description<o:p></o:p></b></span></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span
  style='mso-bookmark:genderidentity-value-set'></span></span></span></span>
  <td width=208 valign=top style='width:155.85pt;border:solid windowtext 1.0pt;
  border-left:none;mso-border-left-alt:solid windowtext .5pt;mso-border-alt:
  solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText align=center style='text-align:center'><span
  style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span
  style='mso-bookmark:genderidentity-value-set'><b>Example Code System<o:p></o:p></b></span></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span
  style='mso-bookmark:genderidentity-value-set'></span></span></span></span>
 </tr>
 <tr style='mso-yfti-irow:1'>
  <td width=208 valign=top style='width:155.8pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span style='mso-bookmark:genderidentity-value-set'>Female</span></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span
  style='mso-bookmark:genderidentity-value-set'></span></span></span></span>
  <td width=208 valign=top style='width:155.85pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span style='mso-bookmark:genderidentity-value-set'>A
  person’s self-identification as a woman, as female, or as a girl.</span></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span
  style='mso-bookmark:genderidentity-value-set'></span></span></span></span>
  <td width=208 valign=top style='width:155.85pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span style='mso-bookmark:genderidentity-value-set'>LA22879-3
  [LOINC]</span></span></span></span></p>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span style='mso-bookmark:genderidentity-value-set'>Identifies
  as female gender, 446141000124107 [SNOMED CT]</span></span></span></span></p>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span style='mso-bookmark:genderidentity-value-set'>female
  gender identity, GSSO:000089 [GSSO]</span></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span
  style='mso-bookmark:genderidentity-value-set'></span></span></span></span>
 </tr>
 <tr style='mso-yfti-irow:2'>
  <td width=208 valign=top style='width:155.8pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span style='mso-bookmark:genderidentity-value-set'>Male</span></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span
  style='mso-bookmark:genderidentity-value-set'></span></span></span></span>
  <td width=208 valign=top style='width:155.85pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span style='mso-bookmark:genderidentity-value-set'>A
  person’s self-identification as a man, as male, or as a boy.</span></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span
  style='mso-bookmark:genderidentity-value-set'></span></span></span></span>
  <td width=208 valign=top style='width:155.85pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span style='mso-bookmark:genderidentity-value-set'>LA22878-5
  [LOINC]</span></span></span></span></p>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span style='mso-bookmark:genderidentity-value-set'>Identifies
  as male gender, 446151000124109 [SNOMED CT]</span></span></span></span></p>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span style='mso-bookmark:genderidentity-value-set'>male
  gender identity, GSSO:000090 [GSSO]</span></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span
  style='mso-bookmark:genderidentity-value-set'></span></span></span></span>
 </tr>
 <tr style='mso-yfti-irow:3'>
  <td width=208 valign=top style='width:155.8pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span style='mso-bookmark:genderidentity-value-set'>Nonbinary</span></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span
  style='mso-bookmark:genderidentity-value-set'></span></span></span></span>
  <td width=208 valign=top style='width:155.85pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span style='mso-bookmark:genderidentity-value-set'>Having
  a specific identity which is nonbinary (not within a binary construct of male
  or female) or having an identity which falls under the nonbinary umbrella
  (i.e., any or all gender identities which are not female or male).</span></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span
  style='mso-bookmark:genderidentity-value-set'></span></span></span></span>
  <td width=208 valign=top style='width:155.85pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span style='mso-bookmark:genderidentity-value-set'>Identifies
  as nonbinary gender, 33791000087105 [SNOMED CT]</span></span></span></span></p>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span style='mso-bookmark:genderidentity-value-set'>nonbinary
  gender identity, GSSO:002328 [GSSO]</span></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span
  style='mso-bookmark:genderidentity-value-set'></span></span></span></span>
 </tr>
 <tr style='mso-yfti-irow:4;mso-yfti-lastrow:yes'>
  <td width=208 valign=top style='width:155.8pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span style='mso-bookmark:genderidentity-value-set'>Unknown</span></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span
  style='mso-bookmark:genderidentity-value-set'></span></span></span></span>
  <td width=208 valign=top style='width:155.85pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span style='mso-bookmark:genderidentity-value-set'>The
  person’s gender identity is not known at this time, for any of a variety of
  reasons. (e.g., “was not able to ask” or “person does not want to answer”.)</span></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span
  style='mso-bookmark:genderidentity-value-set'></span></span></span></span>
  <td width=208 valign=top style='width:155.85pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span style='mso-bookmark:genderidentity-value-set'><span
  class=SpellE>nullFlavor</span> UNK [HL7]</span></span></span></span></p>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span style='mso-bookmark:genderidentity-value-set'>Unknown,
  261665006 [SNOMED CT]</span></span></span></span></p>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span style='mso-bookmark:genderidentity-value-set'>unknown
  gender identity, GSSO:009482 [GSSO]</span></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span
  style='mso-bookmark:genderidentity-value-set'></span></span></span></span>
 </tr>
</table>


<table class=MsoTableGrid border=1 cellspacing=0 cellpadding=0
 style='border-collapse:collapse;border:none;mso-border-alt:solid windowtext .5pt;
 mso-yfti-tbllook:1184;mso-padding-alt:0in 5.4pt 0in 5.4pt'>
 <tr style='mso-yfti-irow:0;mso-yfti-firstrow:yes'>
  <td width=208 valign=top style='width:155.8pt;border:solid windowtext 1.0pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText align=center style='text-align:center'><span
  style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span
  style='mso-bookmark:genderidentity-value-set'><b>Value Name (English)<o:p></o:p></b></span></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span
  style='mso-bookmark:genderidentity-value-set'></span></span></span></span>
  <td width=208 valign=top style='width:155.85pt;border:solid windowtext 1.0pt;
  border-left:none;mso-border-left-alt:solid windowtext .5pt;mso-border-alt:
  solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText align=center style='text-align:center'><span
  style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span
  style='mso-bookmark:genderidentity-value-set'><b>Description<o:p></o:p></b></span></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span
  style='mso-bookmark:genderidentity-value-set'></span></span></span></span>
  <td width=208 valign=top style='width:155.85pt;border:solid windowtext 1.0pt;
  border-left:none;mso-border-left-alt:solid windowtext .5pt;mso-border-alt:
  solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText align=center style='text-align:center'><span
  style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span
  style='mso-bookmark:genderidentity-value-set'><b>Example Code System<o:p></o:p></b></span></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span
  style='mso-bookmark:genderidentity-value-set'></span></span></span></span>
 </tr>
 <tr style='mso-yfti-irow:1'>
  <td width=208 valign=top style='width:155.8pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span style='mso-bookmark:genderidentity-value-set'>Female</span></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span
  style='mso-bookmark:genderidentity-value-set'></span></span></span></span>
  <td width=208 valign=top style='width:155.85pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span style='mso-bookmark:genderidentity-value-set'>A
  person’s self-identification as a woman, as female, or as a girl.</span></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span
  style='mso-bookmark:genderidentity-value-set'></span></span></span></span>
  <td width=208 valign=top style='width:155.85pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span style='mso-bookmark:genderidentity-value-set'>LA22879-3
  [LOINC]</span></span></span></span></p>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span style='mso-bookmark:genderidentity-value-set'>Identifies
  as female gender, 446141000124107 [SNOMED CT]</span></span></span></span></p>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span style='mso-bookmark:genderidentity-value-set'>female
  gender identity, GSSO:000089 [GSSO]</span></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span
  style='mso-bookmark:genderidentity-value-set'></span></span></span></span>
 </tr>
 <tr style='mso-yfti-irow:2'>
  <td width=208 valign=top style='width:155.8pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span style='mso-bookmark:genderidentity-value-set'>Male</span></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span
  style='mso-bookmark:genderidentity-value-set'></span></span></span></span>
  <td width=208 valign=top style='width:155.85pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span style='mso-bookmark:genderidentity-value-set'>A
  person’s self-identification as a man, as male, or as a boy.</span></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span
  style='mso-bookmark:genderidentity-value-set'></span></span></span></span>
  <td width=208 valign=top style='width:155.85pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span style='mso-bookmark:genderidentity-value-set'>LA22878-5
  [LOINC]</span></span></span></span></p>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span style='mso-bookmark:genderidentity-value-set'>Identifies
  as male gender, 446151000124109 [SNOMED CT]</span></span></span></span></p>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span style='mso-bookmark:genderidentity-value-set'>male
  gender identity, GSSO:000090 [GSSO]</span></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span
  style='mso-bookmark:genderidentity-value-set'></span></span></span></span>
 </tr>
 <tr style='mso-yfti-irow:3'>
  <td width=208 valign=top style='width:155.8pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span style='mso-bookmark:genderidentity-value-set'>Nonbinary</span></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span
  style='mso-bookmark:genderidentity-value-set'></span></span></span></span>
  <td width=208 valign=top style='width:155.85pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span style='mso-bookmark:genderidentity-value-set'>Having
  a specific identity which is nonbinary (not within a binary construct of male
  or female) or having an identity which falls under the nonbinary umbrella
  (i.e., any or all gender identities which are not female or male).</span></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span
  style='mso-bookmark:genderidentity-value-set'></span></span></span></span>
  <td width=208 valign=top style='width:155.85pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span style='mso-bookmark:genderidentity-value-set'>Identifies
  as nonbinary gender, 33791000087105 [SNOMED CT]</span></span></span></span></p>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span style='mso-bookmark:genderidentity-value-set'>nonbinary
  gender identity, GSSO:002328 [GSSO]</span></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span
  style='mso-bookmark:genderidentity-value-set'></span></span></span></span>
 </tr>
 <tr style='mso-yfti-irow:4;mso-yfti-lastrow:yes'>
  <td width=208 valign=top style='width:155.8pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span style='mso-bookmark:genderidentity-value-set'>Unknown</span></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span
  style='mso-bookmark:genderidentity-value-set'></span></span></span></span>
  <td width=208 valign=top style='width:155.85pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span style='mso-bookmark:genderidentity-value-set'>The
  person’s gender identity is not known at this time, for any of a variety of
  reasons. (e.g., “was not able to ask” or “person does not want to answer”.)</span></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span
  style='mso-bookmark:genderidentity-value-set'></span></span></span></span>
  <td width=208 valign=top style='width:155.85pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span style='mso-bookmark:genderidentity-value-set'><span
  class=SpellE>nullFlavor</span> UNK [HL7]</span></span></span></span></p>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span style='mso-bookmark:genderidentity-value-set'>Unknown,
  261665006 [SNOMED CT]</span></span></span></span></p>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span style='mso-bookmark:genderidentity-value-set'>unknown
  gender identity, GSSO:009482 [GSSO]</span></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span
  style='mso-bookmark:genderidentity-value-set'></span></span></span></span>
 </tr>
</table>

<h4><span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span
style='mso-bookmark:genderidentity-value-set'>Further Considerations</span></span></span></span></h4>

<p class=MsoBodyText><span style='mso-bookmark:appendices'><span
style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span style='mso-bookmark:genderidentity-value-set'>HL7’s
<span class=SpellE>nullFlavor</span> can be useful in <span class=GramE>a
number of</span> situations for Gender Identity, outside of <span class=SpellE>nullFlavor</span>
UNK [unknown]. Some of these situations are summarized below. Underneath each
value name are value names known to be utilized in other systems.</span></span></span></span></p>

<table class=MsoTableGrid border=1 cellspacing=0 cellpadding=0
 style='border-collapse:collapse;border:none;mso-border-alt:solid windowtext .5pt;
 mso-yfti-tbllook:1184;mso-padding-alt:0in 5.4pt 0in 5.4pt'>
 <tr style='mso-yfti-irow:0;mso-yfti-firstrow:yes'>
  <td width=208 valign=top style='width:155.8pt;border:solid windowtext 1.0pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText align=center style='text-align:center'><span
  style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span
  style='mso-bookmark:genderidentity-value-set'><b>Value Name (English)<o:p></o:p></b></span></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span
  style='mso-bookmark:genderidentity-value-set'></span></span></span></span>
  <td width=208 valign=top style='width:155.85pt;border:solid windowtext 1.0pt;
  border-left:none;mso-border-left-alt:solid windowtext .5pt;mso-border-alt:
  solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText align=center style='text-align:center'><span
  style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span
  style='mso-bookmark:genderidentity-value-set'><b>Description<o:p></o:p></b></span></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span
  style='mso-bookmark:genderidentity-value-set'></span></span></span></span>
  <td width=208 valign=top style='width:155.85pt;border:solid windowtext 1.0pt;
  border-left:none;mso-border-left-alt:solid windowtext .5pt;mso-border-alt:
  solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText align=center style='text-align:center'><span
  style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span
  style='mso-bookmark:genderidentity-value-set'><b>Example Code System<o:p></o:p></b></span></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span
  style='mso-bookmark:genderidentity-value-set'></span></span></span></span>
 </tr>
 <tr style='mso-yfti-irow:1'>
  <td width=208 valign=top style='width:155.8pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span style='mso-bookmark:genderidentity-value-set'>Masked</span></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span
  style='mso-bookmark:genderidentity-value-set'></span></span></span></span>
  <td width=208 valign=top style='width:155.85pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span style='mso-bookmark:genderidentity-value-set'>Information
  is available but has not been provided for security or privacy reasons. For
  instance, an individual may present a different gender identity in a space
  considered to be unknown or dangerous. Their actual gender identity could be
  masked in a situation like this. Additionally, some gender identities might
  not be used very often, and could therefore potentially lead to identifying
  an individual, compromising their privacy. A masked value could also be used to
  help prevent such a situation.</span></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span
  style='mso-bookmark:genderidentity-value-set'></span></span></span></span>
  <td width=208 valign=top style='width:155.85pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span style='mso-bookmark:genderidentity-value-set'><span
  class=SpellE>nullFlavor</span> MSK [HL7]</span></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span
  style='mso-bookmark:genderidentity-value-set'></span></span></span></span>
 </tr>
 <tr style='mso-yfti-irow:2'>
  <td width=208 valign=top style='width:155.8pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span style='mso-bookmark:genderidentity-value-set'>Something
  else</span></span></span></span></p>
  <p class=MsoBodyText style='margin-left:.5in;text-indent:-.25in;mso-list:
  l5 level1 lfo5'><span style='mso-bookmark:appendices'><span style='mso-bookmark:
  appendix-1-proposed-value-sets'><span style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span
  style='mso-bookmark:genderidentity-value-set'><![if !supportLists]><span
  style='font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
  Symbol'><span style='mso-list:Ignore'>·<span style='font:7.0pt "Times New Roman"'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
  </span></span></span><![endif]>Additional gender identity</span></span></span></span></p>
  <p class=MsoBodyText style='margin-left:.5in;text-indent:-.25in;mso-list:
  l5 level1 lfo5'><span style='mso-bookmark:appendices'><span style='mso-bookmark:
  appendix-1-proposed-value-sets'><span style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span
  style='mso-bookmark:genderidentity-value-set'><![if !supportLists]><span
  style='font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
  Symbol'><span style='mso-list:Ignore'>·<span style='font:7.0pt "Times New Roman"'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
  </span></span></span><![endif]>Another gender identity</span></span></span></span></p>
  <p class=MsoBodyText style='margin-left:.5in;text-indent:-.25in;mso-list:
  l5 level1 lfo5'><span style='mso-bookmark:appendices'><span style='mso-bookmark:
  appendix-1-proposed-value-sets'><span style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span
  style='mso-bookmark:genderidentity-value-set'><![if !supportLists]><span
  style='font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
  Symbol'><span style='mso-list:Ignore'>·<span style='font:7.0pt "Times New Roman"'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
  </span></span></span><![endif]>Another gender identity not listed</span></span></span></span></p>
  <p class=MsoBodyText style='margin-left:.5in;text-indent:-.25in;mso-list:
  l5 level1 lfo5'><span style='mso-bookmark:appendices'><span style='mso-bookmark:
  appendix-1-proposed-value-sets'><span style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span
  style='mso-bookmark:genderidentity-value-set'><![if !supportLists]><span
  style='font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
  Symbol'><span style='mso-list:Ignore'>·<span style='font:7.0pt "Times New Roman"'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
  </span></span></span><![endif]>Gender identity not listed above</span></span></span></span></p>
  <p class=MsoBodyText style='margin-left:.5in;text-indent:-.25in;mso-list:
  l5 level1 lfo5'><span style='mso-bookmark:appendices'><span style='mso-bookmark:
  appendix-1-proposed-value-sets'><span style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span
  style='mso-bookmark:genderidentity-value-set'><![if !supportLists]><span
  style='font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
  Symbol'><span style='mso-list:Ignore'>·<span style='font:7.0pt "Times New Roman"'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
  </span></span></span><![endif]>Gender identity not listed here</span></span></span></span></p>
  <p class=MsoBodyText style='margin-left:.5in;text-indent:-.25in;mso-list:
  l5 level1 lfo5'><span style='mso-bookmark:appendices'><span style='mso-bookmark:
  appendix-1-proposed-value-sets'><span style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span
  style='mso-bookmark:genderidentity-value-set'><![if !supportLists]><span
  style='font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
  Symbol'><span style='mso-list:Ignore'>·<span style='font:7.0pt "Times New Roman"'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
  </span></span></span><![endif]>Gender not listed</span></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span
  style='mso-bookmark:genderidentity-value-set'></span></span></span></span>
  <td width=208 valign=top style='width:155.85pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span style='mso-bookmark:genderidentity-value-set'>The
  gender identity provided exists beyond any utilized code system. In these
  cases, plain-text should be provided. Avoid using “other” as much as
  possible.</span></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span
  style='mso-bookmark:genderidentity-value-set'></span></span></span></span>
  <td width=208 valign=top style='width:155.85pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span style='mso-bookmark:genderidentity-value-set'><span
  class=SpellE>nullFlavor</span> OTH [HL7]</span></span></span></span></p>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span style='mso-bookmark:genderidentity-value-set'>GSSO:009484
  [GSSO]</span></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span
  style='mso-bookmark:genderidentity-value-set'></span></span></span></span>
 </tr>
 <tr style='mso-yfti-irow:3'>
  <td width=208 valign=top style='width:155.8pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span style='mso-bookmark:genderidentity-value-set'>Not
  applicable</span></span></span></span></p>
  <p class=MsoBodyText style='margin-left:.5in;text-indent:-.25in;mso-list:
  l5 level1 lfo5'><span style='mso-bookmark:appendices'><span style='mso-bookmark:
  appendix-1-proposed-value-sets'><span style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span
  style='mso-bookmark:genderidentity-value-set'><![if !supportLists]><span
  style='font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
  Symbol'><span style='mso-list:Ignore'>·<span style='font:7.0pt "Times New Roman"'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
  </span></span></span><![endif]>No gender identity</span></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span
  style='mso-bookmark:genderidentity-value-set'></span></span></span></span>
  <td width=208 valign=top style='width:155.85pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span style='mso-bookmark:genderidentity-value-set'>Having
  no proper value for gender identity. For instance, a biological specimen
  (cells, tissue, etc.) does not have a gender identity. Most psychiatrists and
  psychologists agree that gender identity forms between the ages of 4 and 7,
  so before that time “Not applicable” would be used.</span></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span
  style='mso-bookmark:genderidentity-value-set'></span></span></span></span>
  <td width=208 valign=top style='width:155.85pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span style='mso-bookmark:genderidentity-value-set'><span
  class=SpellE>nullFlavor</span> NA [HL7]</span></span></span></span></p>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span style='mso-bookmark:genderidentity-value-set'>GSSO:009485
  [GSSO]</span></span></span></span></p>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span
  style='mso-bookmark:genderidentity-value-set'></span></span></span></span>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span style='mso-bookmark:genderidentity-value-set'><o:p>&nbsp;</o:p></span></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span
  style='mso-bookmark:genderidentity-value-set'></span></span></span></span>
 </tr>
 <tr style='mso-yfti-irow:4'>
  <td width=208 valign=top style='width:155.8pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span style='mso-bookmark:genderidentity-value-set'>Asked
  but unknown</span></span></span></span></p>
  <p class=MsoBodyText style='margin-left:.5in;text-indent:-.25in;mso-list:
  l5 level1 lfo5'><span style='mso-bookmark:appendices'><span style='mso-bookmark:
  appendix-1-proposed-value-sets'><span style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span
  style='mso-bookmark:genderidentity-value-set'><![if !supportLists]><span
  style='font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
  Symbol'><span style='mso-list:Ignore'>·<span style='font:7.0pt "Times New Roman"'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
  </span></span></span><![endif]>Chose not to answer</span></span></span></span></p>
  <p class=MsoBodyText style='margin-left:.5in;text-indent:-.25in;mso-list:
  l5 level1 lfo5'><span style='mso-bookmark:appendices'><span style='mso-bookmark:
  appendix-1-proposed-value-sets'><span style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span
  style='mso-bookmark:genderidentity-value-set'><![if !supportLists]><span
  style='font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
  Symbol'><span style='mso-list:Ignore'>·<span style='font:7.0pt "Times New Roman"'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
  </span></span></span><![endif]>Does not understand the question</span></span></span></span></p>
  <p class=MsoBodyText style='margin-left:.5in;text-indent:-.25in;mso-list:
  l5 level1 lfo5'><span style='mso-bookmark:appendices'><span style='mso-bookmark:
  appendix-1-proposed-value-sets'><span style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span
  style='mso-bookmark:genderidentity-value-set'><![if !supportLists]><span
  style='font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
  Symbol'><span style='mso-list:Ignore'>·<span style='font:7.0pt "Times New Roman"'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
  </span></span></span><![endif]>Gender identity not disclosed</span></span></span></span></p>
  <p class=MsoBodyText style='margin-left:.5in;text-indent:-.25in;mso-list:
  l5 level1 lfo5'><span style='mso-bookmark:appendices'><span style='mso-bookmark:
  appendix-1-proposed-value-sets'><span style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span
  style='mso-bookmark:genderidentity-value-set'><![if !supportLists]><span
  style='font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
  Symbol'><span style='mso-list:Ignore'>·<span style='font:7.0pt "Times New Roman"'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
  </span></span></span><![endif]>Non-disclosed</span></span></span></span></p>
  <p class=MsoBodyText style='margin-left:.5in;text-indent:-.25in;mso-list:
  l5 level1 lfo5'><span style='mso-bookmark:appendices'><span style='mso-bookmark:
  appendix-1-proposed-value-sets'><span style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span
  style='mso-bookmark:genderidentity-value-set'><![if !supportLists]><span
  style='font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
  Symbol'><span style='mso-list:Ignore'>·<span style='font:7.0pt "Times New Roman"'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
  </span></span></span><![endif]>Person prefers not to say</span></span></span></span></p>
  <p class=MsoBodyText style='margin-left:.5in;text-indent:-.25in;mso-list:
  l5 level1 lfo5'><span style='mso-bookmark:appendices'><span style='mso-bookmark:
  appendix-1-proposed-value-sets'><span style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span
  style='mso-bookmark:genderidentity-value-set'><![if !supportLists]><span
  style='font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
  Symbol'><span style='mso-list:Ignore'>·<span style='font:7.0pt "Times New Roman"'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
  </span></span></span><![endif]>Prefer not to answer</span></span></span></span></p>
  <p class=MsoBodyText style='margin-left:.5in;text-indent:-.25in;mso-list:
  l5 level1 lfo5'><span style='mso-bookmark:appendices'><span style='mso-bookmark:
  appendix-1-proposed-value-sets'><span style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span
  style='mso-bookmark:genderidentity-value-set'><![if !supportLists]><span
  style='font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
  Symbol'><span style='mso-list:Ignore'>·<span style='font:7.0pt "Times New Roman"'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
  </span></span></span><![endif]>Prefer not to respond</span></span></span></span></p>
  <p class=MsoBodyText style='margin-left:.5in;text-indent:-.25in;mso-list:
  l5 level1 lfo5'><span style='mso-bookmark:appendices'><span style='mso-bookmark:
  appendix-1-proposed-value-sets'><span style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span
  style='mso-bookmark:genderidentity-value-set'><![if !supportLists]><span
  style='font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
  Symbol'><span style='mso-list:Ignore'>·<span style='font:7.0pt "Times New Roman"'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
  </span></span></span><![endif]>Prefer not to say</span></span></span></span></p>
  <p class=MsoBodyText style='margin-left:.5in;text-indent:-.25in;mso-list:
  l5 level1 lfo5'><span style='mso-bookmark:appendices'><span style='mso-bookmark:
  appendix-1-proposed-value-sets'><span style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span
  style='mso-bookmark:genderidentity-value-set'><![if !supportLists]><span
  style='font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
  Symbol'><span style='mso-list:Ignore'>·<span style='font:7.0pt "Times New Roman"'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
  </span></span></span><![endif]>Undisclosed</span></span></span></span></p>
  <p class=MsoBodyText style='margin-left:.5in;text-indent:-.25in;mso-list:
  l5 level1 lfo5'><span style='mso-bookmark:appendices'><span style='mso-bookmark:
  appendix-1-proposed-value-sets'><span style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span
  style='mso-bookmark:genderidentity-value-set'><![if !supportLists]><span
  style='font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
  Symbol'><span style='mso-list:Ignore'>·<span style='font:7.0pt "Times New Roman"'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
  </span></span></span><![endif]>Unsure</span></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span
  style='mso-bookmark:genderidentity-value-set'></span></span></span></span>
  <td width=208 valign=top style='width:155.85pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span style='mso-bookmark:genderidentity-value-set'>Used
  in situations where a gender identity was sought but not found. For instance,
  if a patient doesn’t understand the question. Do NOT use this value to
  indicate if an individual is questioning or exploring their gender identity.
  Another example would be if an individual decides to not disclose their
  gender identity.</span></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span
  style='mso-bookmark:genderidentity-value-set'></span></span></span></span>
  <td width=208 valign=top style='width:155.85pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span style='mso-bookmark:genderidentity-value-set'><span
  class=SpellE>nullFlavor</span> ASKU [HL7]</span></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span
  style='mso-bookmark:genderidentity-value-set'></span></span></span></span>
 </tr>
 <tr style='mso-yfti-irow:5'>
  <td width=208 valign=top style='width:155.8pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span style='mso-bookmark:genderidentity-value-set'>Temporarily
  unavailable</span></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span
  style='mso-bookmark:genderidentity-value-set'></span></span></span></span>
  <td width=208 valign=top style='width:155.85pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span style='mso-bookmark:genderidentity-value-set'>An
  individual’s gender identity is not available at the time but is expected
  later. For instance, if an individual is unconscious (but is expected to
  become conscious), their gender identity cannot be obtained.</span></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span
  style='mso-bookmark:genderidentity-value-set'></span></span></span></span>
  <td width=208 valign=top style='width:155.85pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span style='mso-bookmark:genderidentity-value-set'><span
  class=SpellE>nullFlavor</span> NAV [HL7]</span></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span
  style='mso-bookmark:genderidentity-value-set'></span></span></span></span>
 </tr>
 <tr style='mso-yfti-irow:6'>
  <td width=208 valign=top style='width:155.8pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span style='mso-bookmark:genderidentity-value-set'>Not
  asked</span></span></span></span></p>
  <p class=MsoBodyText style='margin-left:.5in;text-indent:-.25in;mso-list:
  l4 level1 lfo4'><span style='mso-bookmark:appendices'><span style='mso-bookmark:
  appendix-1-proposed-value-sets'><span style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span
  style='mso-bookmark:genderidentity-value-set'><![if !supportLists]><span
  style='font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
  Symbol'><span style='mso-list:Ignore'>·<span style='font:7.0pt "Times New Roman"'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
  </span></span></span><![endif]>Inappropriate to ask</span></span></span></span></p>
  <p class=MsoBodyText style='margin-left:.5in;text-indent:-.25in;mso-list:
  l4 level1 lfo4'><span style='mso-bookmark:appendices'><span style='mso-bookmark:
  appendix-1-proposed-value-sets'><span style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span
  style='mso-bookmark:genderidentity-value-set'><![if !supportLists]><span
  style='font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
  Symbol'><span style='mso-list:Ignore'>·<span style='font:7.0pt "Times New Roman"'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
  </span></span></span><![endif]>Not appropriate to ask</span></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span
  style='mso-bookmark:genderidentity-value-set'></span></span></span></span>
  <td width=208 valign=top style='width:155.85pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span style='mso-bookmark:genderidentity-value-set'>An
  individual has not been asked about their gender identity or that information
  has not otherwise been sought in any form.</span></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span
  style='mso-bookmark:genderidentity-value-set'></span></span></span></span>
  <td width=208 valign=top style='width:155.85pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span style='mso-bookmark:genderidentity-value-set'><span
  class=SpellE>nullFlavor</span> NASK [HL7]</span></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span
  style='mso-bookmark:genderidentity-value-set'></span></span></span></span>
 </tr>
 <tr style='mso-yfti-irow:7'>
  <td width=208 valign=top style='width:155.8pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span style='mso-bookmark:genderidentity-value-set'>Not
  available</span></span></span></span></p>
  <p class=MsoBodyText style='margin-left:.5in;text-indent:-.25in;mso-list:
  l4 level1 lfo4'><span style='mso-bookmark:appendices'><span style='mso-bookmark:
  appendix-1-proposed-value-sets'><span style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span
  style='mso-bookmark:genderidentity-value-set'><![if !supportLists]><span
  style='font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
  Symbol'><span style='mso-list:Ignore'>·<span style='font:7.0pt "Times New Roman"'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
  </span></span></span><![endif]>Gender identity inadequately described</span></span></span></span></p>
  <p class=MsoBodyText style='margin-left:.5in;text-indent:-.25in;mso-list:
  l4 level1 lfo4'><span style='mso-bookmark:appendices'><span style='mso-bookmark:
  appendix-1-proposed-value-sets'><span style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span
  style='mso-bookmark:genderidentity-value-set'><![if !supportLists]><span
  style='font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
  Symbol'><span style='mso-list:Ignore'>·<span style='font:7.0pt "Times New Roman"'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
  </span></span></span><![endif]>Inadequately described</span></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span
  style='mso-bookmark:genderidentity-value-set'></span></span></span></span>
  <td width=208 valign=top style='width:155.85pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span style='mso-bookmark:genderidentity-value-set'>An
  individual’s gender identity is not available at the time, and there is no
  expectation that it will ever be available. Such a determination could be
  used if an individual has <span class=GramE>died</span> and their gender
  identity has not been ascertained. Could also be used in situations wherein
  an individual has tried to update from one system to another, and the
  previous system’s usage of gender (identity) is uncertain or inadequate.</span></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span
  style='mso-bookmark:genderidentity-value-set'></span></span></span></span>
  <td width=208 valign=top style='width:155.85pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span style='mso-bookmark:genderidentity-value-set'><span
  class=SpellE>nullFlavor</span> NAVU [HL7]</span></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span
  style='mso-bookmark:genderidentity-value-set'></span></span></span></span>
 </tr>
 <tr style='mso-yfti-irow:8;mso-yfti-lastrow:yes'>
  <td width=208 valign=top style='width:155.8pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span style='mso-bookmark:genderidentity-value-set'>Not
  present</span></span></span></span></p>
  <p class=MsoBodyText style='margin-left:.5in;text-indent:-.25in;mso-list:
  l4 level1 lfo4'><span style='mso-bookmark:appendices'><span style='mso-bookmark:
  appendix-1-proposed-value-sets'><span style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span
  style='mso-bookmark:genderidentity-value-set'><![if !supportLists]><span
  style='font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
  Symbol'><span style='mso-list:Ignore'>·<span style='font:7.0pt "Times New Roman"'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
  </span></span></span><![endif]>Gender identity not provided</span></span></span></span></p>
  <p class=MsoBodyText style='margin-left:.5in;text-indent:-.25in;mso-list:
  l4 level1 lfo4'><span style='mso-bookmark:appendices'><span style='mso-bookmark:
  appendix-1-proposed-value-sets'><span style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span
  style='mso-bookmark:genderidentity-value-set'><![if !supportLists]><span
  style='font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
  Symbol'><span style='mso-list:Ignore'>·<span style='font:7.0pt "Times New Roman"'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
  </span></span></span><![endif]>Not provided</span></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span
  style='mso-bookmark:genderidentity-value-set'></span></span></span></span>
  <td width=208 valign=top style='width:155.85pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span style='mso-bookmark:genderidentity-value-set'>Used
  only in messages to indicate that a value is not present.</span></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span
  style='mso-bookmark:genderidentity-value-set'></span></span></span></span>
  <td width=208 valign=top style='width:155.85pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span style='mso-bookmark:genderidentity-value-set'><span
  class=SpellE>nullFlavor</span> NP [HL7]</span></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span
  style='mso-bookmark:genderidentity-value-set'></span></span></span></span>
 </tr>
</table>

<p class=MsoBodyText><span style='mso-bookmark:appendices'><span
style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span style='mso-bookmark:genderidentity-value-set'>In
addition to these values, we highly recommend the following, if appropriate:</span></span></span></span></p>

<table class=MsoTableGrid border=1 cellspacing=0 cellpadding=0
 style='border-collapse:collapse;border:none;mso-border-alt:solid windowtext .5pt;
 mso-yfti-tbllook:1184;mso-padding-alt:0in 5.4pt 0in 5.4pt'>
 <tr style='mso-yfti-irow:0;mso-yfti-firstrow:yes'>
  <td width=208 valign=top style='width:155.8pt;border:solid windowtext 1.0pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText align=center style='text-align:center'><span
  style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span
  style='mso-bookmark:genderidentity-value-set'><b>Value Name (English)<o:p></o:p></b></span></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span
  style='mso-bookmark:genderidentity-value-set'></span></span></span></span>
  <td width=208 valign=top style='width:155.85pt;border:solid windowtext 1.0pt;
  border-left:none;mso-border-left-alt:solid windowtext .5pt;mso-border-alt:
  solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText align=center style='text-align:center'><span
  style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span
  style='mso-bookmark:genderidentity-value-set'><b>Description<o:p></o:p></b></span></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span
  style='mso-bookmark:genderidentity-value-set'></span></span></span></span>
  <td width=208 valign=top style='width:155.85pt;border:solid windowtext 1.0pt;
  border-left:none;mso-border-left-alt:solid windowtext .5pt;mso-border-alt:
  solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText align=center style='text-align:center'><span
  style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span
  style='mso-bookmark:genderidentity-value-set'><b>Example Code System<o:p></o:p></b></span></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span
  style='mso-bookmark:genderidentity-value-set'></span></span></span></span>
 </tr>
 <tr style='mso-yfti-irow:1'>
  <td width=208 valign=top style='width:155.8pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span style='mso-bookmark:genderidentity-value-set'>Exploring
  or questioning gender identity</span></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span
  style='mso-bookmark:genderidentity-value-set'></span></span></span></span>
  <td width=208 valign=top style='width:155.85pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span style='mso-bookmark:genderidentity-value-set'>Indicating
  that one is exploring or questioning their gender identity can be helpful for
  <span class=GramE>providers, and</span> may be a safer label for those who
  have just recently started thinking about their own gender process.</span></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span
  style='mso-bookmark:genderidentity-value-set'></span></span></span></span>
  <td width=208 valign=top style='width:155.85pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span style='mso-bookmark:genderidentity-value-set'>GSSO:001594
  [GSSO]</span></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span
  style='mso-bookmark:genderidentity-value-set'></span></span></span></span>
 </tr>
 <tr style='mso-yfti-irow:2;mso-yfti-lastrow:yes'>
  <td width=208 valign=top style='width:155.8pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span style='mso-bookmark:genderidentity-value-set'>I
  do not understand the question</span></span></span></span></p>
  <p class=MsoBodyText style='margin-left:.5in;text-indent:-.25in;mso-list:
  l4 level1 lfo4'><span style='mso-bookmark:appendices'><span style='mso-bookmark:
  appendix-1-proposed-value-sets'><span style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span
  style='mso-bookmark:genderidentity-value-set'><![if !supportLists]><span
  style='font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
  Symbol'><span style='mso-list:Ignore'>·<span style='font:7.0pt "Times New Roman"'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
  </span></span></span><![endif]>I don’t understand</span></span></span></span></p>
  <p class=MsoBodyText style='margin-left:.5in;text-indent:-.25in;mso-list:
  l4 level1 lfo4'><span style='mso-bookmark:appendices'><span style='mso-bookmark:
  appendix-1-proposed-value-sets'><span style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span
  style='mso-bookmark:genderidentity-value-set'><![if !supportLists]><span
  style='font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
  Symbol'><span style='mso-list:Ignore'>·<span style='font:7.0pt "Times New Roman"'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
  </span></span></span><![endif]>I don’t know</span></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span
  style='mso-bookmark:genderidentity-value-set'></span></span></span></span>
  <td width=208 valign=top style='width:155.85pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span style='mso-bookmark:genderidentity-value-set'>An
  individual does not understand the gender identity question as phrase, for
  any of various reasons (language barrier, for instance).</span></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span
  style='mso-bookmark:genderidentity-value-set'></span></span></span></span>
  <td width=208 valign=top style='width:155.85pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span style='mso-bookmark:genderidentity-value-set'><i>None
  at present time</i>.</span></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span
  style='mso-bookmark:genderidentity-value-set'></span></span></span></span>
 </tr>
</table>

<p class=MsoBodyText><span style='mso-bookmark:appendices'><span
style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span style='mso-bookmark:genderidentity-value-set'>In
situations where many LGBTQIA+ patients are expected and more granularity is
wanted, some of the following emergent gender identities may be considered.
Below we include some of the more commonly known such identities, as of Spring
2022. However, this section is by no means exhaustive, and names and
conceptualizations of various identities will shift over time, potentially meaning
that some emergent terms might be missing while others have become <span
class=SpellE>obsoleted</span>. For instance, the Gender Wiki lists </span></span></span></span><a
href="https://gender.fandom.com/wiki/Category:Gender_Identities"><span
style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span
style='mso-bookmark:genderidentity-value-set'>over 300 gender identities</span></span></span></span></a><span
style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span
style='mso-bookmark:genderidentity-value-set'>, the Nonbinary Wiki lists </span></span></span></span><a
href="https://nonbinary.wiki/wiki/Category:Nonbinary_identities"><span
style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span
style='mso-bookmark:genderidentity-value-set'>over 100 more common gender
identities</span></span></span></span></a><span style='mso-bookmark:appendices'><span
style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span style='mso-bookmark:genderidentity-value-set'>
which fall underneath the nonbinary umbrella, and the MOGAI Gender Wiki lists </span></span></span></span><a
href="https://mogai-genders.fandom.com/wiki/Category:Gender"><span
style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span
style='mso-bookmark:genderidentity-value-set'>over 200 gender identities</span></span></span></span></a><span
style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span
style='mso-bookmark:genderidentity-value-set'>. For trends regarding identity
terms, many of which are gender identities, we recommend accessing the </span></span></span></span><a
href="https://gendercensus.com/"><span style='mso-bookmark:appendices'><span
style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span style='mso-bookmark:genderidentity-value-set'>Gender
Census</span></span></span></span></a><span style='mso-bookmark:appendices'><span
style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span style='mso-bookmark:genderidentity-value-set'>,
the 2021 version of included 44,583 usable responses. We utilized trends across
the Gender Census in determining which identities to explicitly include below.</span></span></span></span></p>

<table class=MsoTableGrid border=1 cellspacing=0 cellpadding=0
 style='border-collapse:collapse;border:none;mso-border-alt:solid windowtext .5pt;
 mso-yfti-tbllook:1184;mso-padding-alt:0in 5.4pt 0in 5.4pt'>
 <tr style='mso-yfti-irow:0;mso-yfti-firstrow:yes'>
  <td width=208 valign=top style='width:155.8pt;border:solid windowtext 1.0pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText align=center style='text-align:center'><span
  style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span
  style='mso-bookmark:genderidentity-value-set'><b>Value Name (English)<o:p></o:p></b></span></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span
  style='mso-bookmark:genderidentity-value-set'></span></span></span></span>
  <td width=208 valign=top style='width:155.85pt;border:solid windowtext 1.0pt;
  border-left:none;mso-border-left-alt:solid windowtext .5pt;mso-border-alt:
  solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText align=center style='text-align:center'><span
  style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span
  style='mso-bookmark:genderidentity-value-set'><b>Description<o:p></o:p></b></span></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span
  style='mso-bookmark:genderidentity-value-set'></span></span></span></span>
  <td width=208 valign=top style='width:155.85pt;border:solid windowtext 1.0pt;
  border-left:none;mso-border-left-alt:solid windowtext .5pt;mso-border-alt:
  solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText align=center style='text-align:center'><span
  style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span
  style='mso-bookmark:genderidentity-value-set'><b>Example Code System<o:p></o:p></b></span></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span
  style='mso-bookmark:genderidentity-value-set'></span></span></span></span>
 </tr>
 <tr style='mso-yfti-irow:1'>
  <td width=208 valign=top style='width:155.8pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span style='mso-bookmark:genderidentity-value-set'>Agender</span></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span
  style='mso-bookmark:genderidentity-value-set'></span></span></span></span>
  <td width=208 valign=top style='width:155.85pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span style='mso-bookmark:genderidentity-value-set'>Attested
  as a gender identity since the late 1990s. Considered by most to be a lack of
  gender identity, or synonymous with genderless, non-gendered, or ungendered.</span></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span
  style='mso-bookmark:genderidentity-value-set'></span></span></span></span>
  <td width=208 valign=top style='width:155.85pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span style='mso-bookmark:genderidentity-value-set'>GSSO:002342
  [GSSO]</span></span></span></span></p>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span style='mso-bookmark:genderidentity-value-set'>HOMOIT:0001927
  [<span class=SpellE>Homosaurus</span>]</span></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span
  style='mso-bookmark:genderidentity-value-set'></span></span></span></span>
 </tr>
 <tr style='mso-yfti-irow:2'>
  <td width=208 valign=top style='width:155.8pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span style='mso-bookmark:genderidentity-value-set'>Androgyne</span></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span
  style='mso-bookmark:genderidentity-value-set'></span></span></span></span>
  <td width=208 valign=top style='width:155.85pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span style='mso-bookmark:genderidentity-value-set'>Term
  which has been utilized to describe gender nonconforming and intersex persons
  for centuries. By the late 19<sup>th</sup> and early 20<sup>th</sup> century,
  the term was used mostly to describe gay men who <span class=GramE>were
  considered to be</span> feminine. By the 1980s, some transgender persons
  began using the term as a gender identity which have masculine and feminine
  components. Today, the term is seen as falling under the nonbinary umbrella, being
  simultaneously masculine and feminine, <span class=GramE>male</span> and
  female.</span></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span
  style='mso-bookmark:genderidentity-value-set'></span></span></span></span>
  <td width=208 valign=top style='width:155.85pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span style='mso-bookmark:genderidentity-value-set'>GSSO:000404
  [GSSO]</span></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span
  style='mso-bookmark:genderidentity-value-set'></span></span></span></span>
 </tr>
 <tr style='mso-yfti-irow:3'>
  <td width=208 valign=top style='width:155.8pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span style='mso-bookmark:genderidentity-value-set'>Bigender</span></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span
  style='mso-bookmark:genderidentity-value-set'></span></span></span></span>
  <td width=208 valign=top style='width:155.85pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span style='mso-bookmark:genderidentity-value-set'>First
  defined the 1980s, often to refer to persons who were “dual-gendered”, both
  male and female. Although many bigender people today still identify as both
  male and female, many others use various other gender identities: for
  instance, a person could be both female and nonbinary, or demigender and
  neutrois, and still be bigender.</span></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span
  style='mso-bookmark:genderidentity-value-set'></span></span></span></span>
  <td width=208 valign=top style='width:155.85pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span style='mso-bookmark:genderidentity-value-set'>GSSO:002336
  [GSSO]</span></span></span></span></p>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span style='mso-bookmark:genderidentity-value-set'>HOMOIT:0000110
  [<span class=SpellE>Homosaurus</span>]</span></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span
  style='mso-bookmark:genderidentity-value-set'></span></span></span></span>
 </tr>
 <tr style='mso-yfti-irow:4'>
  <td width=208 valign=top style='width:155.8pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span style='mso-bookmark:genderidentity-value-set'>Demigender</span></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span
  style='mso-bookmark:genderidentity-value-set'></span></span></span></span>
  <td width=208 valign=top style='width:155.85pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span style='mso-bookmark:genderidentity-value-set'>Defined
  in the early 2010s as an umbrella term and an identity itself, representing a
  gender identity which is partially aligned with another gender identity. For
  instance, an individual who is a demiboy may consider themselves to be
  partially aligned with a male gender identity.</span></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span
  style='mso-bookmark:genderidentity-value-set'></span></span></span></span>
  <td width=208 valign=top style='width:155.85pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span style='mso-bookmark:genderidentity-value-set'>GSSO:002341
  [GSSO]</span></span></span></span></p>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span style='mso-bookmark:genderidentity-value-set'>HOMOIT:0001923
  [<span class=SpellE>Homosaurus</span>]</span></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span
  style='mso-bookmark:genderidentity-value-set'></span></span></span></span>
 </tr>
 <tr style='mso-yfti-irow:5'>
  <td width=208 valign=top style='width:155.8pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span style='mso-bookmark:genderidentity-value-set'>Genderfluid</span></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span
  style='mso-bookmark:genderidentity-value-set'></span></span></span></span>
  <td width=208 valign=top style='width:155.85pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span style='mso-bookmark:genderidentity-value-set'>Although
  the concept of gender fluidity has existed for nearly a half century, the
  concept of genderfluid as a gender identity solidified in the 1990s, becoming
  increasingly popular in the 2000s and 2010s, representing an identity in
  which an individual experiences different identities as different times,
  which may or may not be contingent on <span class=GramE>a number of</span>
  select factors.</span></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span
  style='mso-bookmark:genderidentity-value-set'></span></span></span></span>
  <td width=208 valign=top style='width:155.85pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span style='mso-bookmark:genderidentity-value-set'>GSSO:002339
  [GSSO]</span></span></span></span></p>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span style='mso-bookmark:genderidentity-value-set'>HOMOIT:0000569
  [<span class=SpellE>Homosaurus</span>]</span></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span
  style='mso-bookmark:genderidentity-value-set'></span></span></span></span>
 </tr>
 <tr style='mso-yfti-irow:6'>
  <td width=208 valign=top style='width:155.8pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span style='mso-bookmark:genderidentity-value-set'>Intergender</span></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span
  style='mso-bookmark:genderidentity-value-set'></span></span></span></span>
  <td width=208 valign=top style='width:155.85pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span style='mso-bookmark:genderidentity-value-set'>Defined
  in the 1990s as an “in-between” gender identity, typically defined as being
  between male and female. In the 2000s and 2010s, the term became known as a
  more exclusive gender identity meant to be utilized only by intersex persons;
  its usage by non-intersex (<span class=SpellE>endosex</span> <i>or</i> <span
  class=SpellE>perisex</span>) is considered derogatory.</span></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span
  style='mso-bookmark:genderidentity-value-set'></span></span></span></span>
  <td width=208 valign=top style='width:155.85pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span style='mso-bookmark:genderidentity-value-set'>GSSO:002335
  [GSSO]</span></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span
  style='mso-bookmark:genderidentity-value-set'></span></span></span></span>
 </tr>
 <tr style='mso-yfti-irow:7'>
  <td width=208 valign=top style='width:155.8pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span style='mso-bookmark:genderidentity-value-set'>Multigender</span></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span
  style='mso-bookmark:genderidentity-value-set'></span></span></span></span>
  <td width=208 valign=top style='width:155.85pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span style='mso-bookmark:genderidentity-value-set'>An
  umbrella term and specific identity which was named in the late 2000s or
  early 2010s, used to refer to gender identities in which more than one
  identity is experienced, usually at the same time.</span></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span
  style='mso-bookmark:genderidentity-value-set'></span></span></span></span>
  <td width=208 valign=top style='width:155.85pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span style='mso-bookmark:genderidentity-value-set'>GSSO:002330
  [GSSO]</span></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span
  style='mso-bookmark:genderidentity-value-set'></span></span></span></span>
 </tr>
 <tr style='mso-yfti-irow:8'>
  <td width=208 valign=top style='width:155.8pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span style='mso-bookmark:genderidentity-value-set'>Neutral</span></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span
  style='mso-bookmark:genderidentity-value-set'></span></span></span></span>
  <td width=208 valign=top style='width:155.85pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span style='mso-bookmark:genderidentity-value-set'>Also
  known as <i>gender neutral </i>or <i>neutral gender</i>, being both an
  umbrella term for gender identities considered to be neutral in nature or a
  specific gender identity of such a nature, which may also be described as
  agender, genderless, having no gender identity, or having a gender identity
  between others. While the term has been present for decades, its usage as a
  gender identity likely began in the 1980s or 1990s.</span></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span
  style='mso-bookmark:genderidentity-value-set'></span></span></span></span>
  <td width=208 valign=top style='width:155.85pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span style='mso-bookmark:genderidentity-value-set'>GSSO:002334
  [GSSO]</span></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span
  style='mso-bookmark:genderidentity-value-set'></span></span></span></span>
 </tr>
 <tr style='mso-yfti-irow:9'>
  <td width=208 valign=top style='width:155.8pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span style='mso-bookmark:genderidentity-value-set'>Neutrois</span></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span
  style='mso-bookmark:genderidentity-value-set'></span></span></span></span>
  <td width=208 valign=top style='width:155.85pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span style='mso-bookmark:genderidentity-value-set'>A
  gender identity coined in the 1990s which <span class=GramE>is considered to
  be</span> similar to, if not nearly identical to, a neutral gender identity.</span></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span
  style='mso-bookmark:genderidentity-value-set'></span></span></span></span>
  <td width=208 valign=top style='width:155.85pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span style='mso-bookmark:genderidentity-value-set'>GSSO:002340
  [GSSO]</span></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span
  style='mso-bookmark:genderidentity-value-set'></span></span></span></span>
 </tr>
 <tr style='mso-yfti-irow:10'>
  <td width=208 valign=top style='width:155.8pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span style='mso-bookmark:genderidentity-value-set'>Pangender</span></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span
  style='mso-bookmark:genderidentity-value-set'></span></span></span></span>
  <td width=208 valign=top style='width:155.85pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span style='mso-bookmark:genderidentity-value-set'>A
  multigender identity in which an individual identifies with a seemingly
  countless number of separate identities or as a seemingly all-encompassing
  gender identity, although usually discounting <span class=GramE>culturally-specific</span>
  gender identities. The term likely came to exist in the 2000s or 2010s.</span></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span
  style='mso-bookmark:genderidentity-value-set'></span></span></span></span>
  <td width=208 valign=top style='width:155.85pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span style='mso-bookmark:genderidentity-value-set'>GSSO:007680
  [GSSO]</span></span></span></span></p>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span style='mso-bookmark:genderidentity-value-set'>HOMOIT:0001071
  [<span class=SpellE>Homosaurus</span>]</span></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span
  style='mso-bookmark:genderidentity-value-set'></span></span></span></span>
 </tr>
 <tr style='mso-yfti-irow:11'>
  <td width=208 valign=top style='width:155.8pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span style='mso-bookmark:genderidentity-value-set'>Polygender</span></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span
  style='mso-bookmark:genderidentity-value-set'></span></span></span></span>
  <td width=208 valign=top style='width:155.85pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span style='mso-bookmark:genderidentity-value-set'>A
  multigender identity which typically includes more than two genders,
  therefore not including bigender persons. The term was likely coined in the
  late 1990s in English.</span></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span
  style='mso-bookmark:genderidentity-value-set'></span></span></span></span>
  <td width=208 valign=top style='width:155.85pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span style='mso-bookmark:genderidentity-value-set'>GSSO:002338
  [GSSO]</span></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span
  style='mso-bookmark:genderidentity-value-set'></span></span></span></span>
 </tr>
 <tr style='mso-yfti-irow:12;mso-yfti-lastrow:yes'>
  <td width=208 valign=top style='width:155.8pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span style='mso-bookmark:genderidentity-value-set'>Trigender</span></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span
  style='mso-bookmark:genderidentity-value-set'></span></span></span></span>
  <td width=208 valign=top style='width:155.85pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span style='mso-bookmark:genderidentity-value-set'>A
  rarer multigender identity which typically includes three genders; the term
  likely came to exist in the late 1990s.</span></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span
  style='mso-bookmark:genderidentity-value-set'></span></span></span></span>
  <td width=208 valign=top style='width:155.85pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span style='mso-bookmark:genderidentity-value-set'>GSSO:002337
  [GSSO]</span></span></span></span></p>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span style='mso-bookmark:genderidentity-value-set'>HOMOIT:0001473
  [<span class=SpellE>Homosaurus</span>]</span></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span
  style='mso-bookmark:genderidentity-value-set'></span></span></span></span>
 </tr>
</table>

<p class=MsoBodyText><span style='mso-bookmark:appendices'><span
style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span style='mso-bookmark:genderidentity-value-set'>When
additional codes and terms appropriate to specific jurisdictions, locations,
and potentially individual persons are needed, an additional value or values
should be created that add in the additional concepts. Such values are
informally referred to as <span class=GramE><i>culturally-specific</i></span><i>
gender identities</i>.</span></span></span></span></p>

<p class=MsoBodyText><span style='mso-bookmark:appendices'><span
style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span style='mso-bookmark:genderidentity-value-set'>Implementations
should be prepared for the addition of other specific gender identities at
specific locations. Implementations should be prepared to receive messages or
records that contain unrecognized terms. Local policy will establish how to
handle unrecognized terms, most likely by preserving the term. Examples of
gender identity extensions are given in the non-normative table shown below,
with the caveat that this work is produced from an <span class=SpellE>Anglospheric</span>
perspective, and that local implementors of these communities may utilize these
entities in different ways.</span></span></span></span></p>

<p class=MsoBodyText><span style='mso-bookmark:appendices'><span
style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span style='mso-bookmark:genderidentity-value-set'>For
instance, many of communities do not differentiate between sexual identity and
gender identity, and these terms are implicitly combined. More research is
necessary in many of these situations <span class=GramE>in order to</span>
effectively prevent miscommunication, but performing such research is beyond
the scope of the current report. Note that the following list is scoped and
only includes identities attested to be in use in the last century.</span></span></span></span></p>

<table class=MsoTableGrid border=1 cellspacing=0 cellpadding=0
 style='border-collapse:collapse;border:none;mso-border-alt:solid windowtext .5pt;
 mso-yfti-tbllook:1184;mso-padding-alt:0in 5.4pt 0in 5.4pt'>
 <tr style='mso-yfti-irow:0;mso-yfti-firstrow:yes'>
  <td width=161 valign=top style='width:120.4pt;border:solid windowtext 1.0pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText align=center style='text-align:center'><span
  style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span
  style='mso-bookmark:genderidentity-value-set'><b>Transliterated Value Name<o:p></o:p></b></span></span></span></span></p>
  <p class=MsoBodyText align=center style='text-align:center'><span
  style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span
  style='mso-bookmark:genderidentity-value-set'><b>(Name in Original Language,
  if Different)<o:p></o:p></b></span></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span
  style='mso-bookmark:genderidentity-value-set'></span></span></span></span>
  <td width=136 valign=top style='width:101.8pt;border:solid windowtext 1.0pt;
  border-left:none;mso-border-left-alt:solid windowtext .5pt;mso-border-alt:
  solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText align=center style='text-align:center'><span
  style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span
  style='mso-bookmark:genderidentity-value-set'><b>Jurisdiction <o:p></o:p></b></span></span></span></span></p>
  <p class=MsoBodyText align=center style='text-align:center'><span
  style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span
  style='mso-bookmark:genderidentity-value-set'><b>(Ethnic or Cultural Group)<o:p></o:p></b></span></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span
  style='mso-bookmark:genderidentity-value-set'></span></span></span></span>
  <td width=168 valign=top style='width:125.85pt;border:solid windowtext 1.0pt;
  border-left:none;mso-border-left-alt:solid windowtext .5pt;mso-border-alt:
  solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText align=center style='text-align:center'><span
  style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span
  style='mso-bookmark:genderidentity-value-set'><b>Description</b></span></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span
  style='mso-bookmark:genderidentity-value-set'></span></span></span></span>
  <td width=159 valign=top style='width:119.45pt;border:solid windowtext 1.0pt;
  border-left:none;mso-border-left-alt:solid windowtext .5pt;mso-border-alt:
  solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText align=center style='text-align:center'><span
  style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span
  style='mso-bookmark:genderidentity-value-set'><b>Example Code System</b></span></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span
  style='mso-bookmark:genderidentity-value-set'></span></span></span></span>
 </tr>
 <tr style='mso-yfti-irow:1'>
  <td width=161 valign=top style='width:120.4pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span style='mso-bookmark:genderidentity-value-set'><span
  class=SpellE>Agule</span></span></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span
  style='mso-bookmark:genderidentity-value-set'></span></span></span></span>
  <td width=136 valign=top style='width:101.8pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span style='mso-bookmark:genderidentity-value-set'>Uganda,
  Democratic Republic of the Congo, South Sudan (<span class=SpellE>Lugbara</span>)</span></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span
  style='mso-bookmark:genderidentity-value-set'></span></span></span></span>
  <td width=168 valign=top style='width:125.85pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span style='mso-bookmark:genderidentity-value-set'>First
  attested in English literature in the 1960s; was originally translated as
  “like a man<span class=GramE>”, but</span> has more recently been translated
  as transmasculine or as trans man.</span></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span
  style='mso-bookmark:genderidentity-value-set'></span></span></span></span>
  <td width=159 valign=top style='width:119.45pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span style='mso-bookmark:genderidentity-value-set'>GSSO:002164
  [GSSO]</span></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span
  style='mso-bookmark:genderidentity-value-set'></span></span></span></span>
 </tr>
 <tr style='mso-yfti-irow:2'>
  <td width=161 valign=top style='width:120.4pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span style='mso-bookmark:genderidentity-value-set'>‘<span
  class=SpellE>Akava’ine</span></span></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span
  style='mso-bookmark:genderidentity-value-set'></span></span></span></span>
  <td width=136 valign=top style='width:101.8pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span style='mso-bookmark:genderidentity-value-set'>Cook
  Islands (Cook Islands Māori)</span></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span
  style='mso-bookmark:genderidentity-value-set'></span></span></span></span>
  <td width=168 valign=top style='width:125.85pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span style='mso-bookmark:genderidentity-value-set'>Term
  attested in English literature since the 1990s in the Cook Islands. Combines
  the prefix “aka” (‘to be or to behave like’) with “<span class=SpellE>va’ine</span>”
  (‘woman’). Used originally as a term of insult toward cis women, but now used
  to refer to Cook Islanders who may be considered trans women.</span></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span
  style='mso-bookmark:genderidentity-value-set'></span></span></span></span>
  <td width=159 valign=top style='width:119.45pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span style='mso-bookmark:genderidentity-value-set'>GSSO:002163
  [GSSO]</span></span></span></span></p>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span style='mso-bookmark:genderidentity-value-set'>HOMOIT:0000035
  [<span class=SpellE>Homosaurus</span>]</span></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span
  style='mso-bookmark:genderidentity-value-set'></span></span></span></span>
 </tr>
 <tr style='mso-yfti-irow:3'>
  <td width=161 valign=top style='width:120.4pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span style='mso-bookmark:genderidentity-value-set'><span
  class=SpellE>Aravani</span> (Arabic: </span></span></span></span><span
  style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span
  style='mso-bookmark:genderidentity-value-set'><span class=SpellE><span
  style='font-family:"Times New Roman",serif'>أرافاني</span></span>, Marathi: </span></span></span></span><span
  style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span
  style='mso-bookmark:genderidentity-value-set'><span class=SpellE><span
  style='font-family:"Nirmala UI",sans-serif'>अरावनी</span></span>, Tamil: </span></span></span></span><span
  style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span
  style='mso-bookmark:genderidentity-value-set'><span class=SpellE><span
  style='font-family:"Nirmala UI",sans-serif'>அரவாணி</span></span>)</span></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span
  style='mso-bookmark:genderidentity-value-set'></span></span></span></span>
  <td width=136 valign=top style='width:101.8pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span style='mso-bookmark:genderidentity-value-set'>India
  (<span class=SpellE>Tamilar</span>)</span></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span
  style='mso-bookmark:genderidentity-value-set'></span></span></span></span>
  <td width=168 valign=top style='width:125.85pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span style='mso-bookmark:genderidentity-value-set'>Term
  attested in English literature since its coinage in 2008 in Tamil Nadu,
  India. Some literature compares the term to hijra, some compare it to the
  term trans woman, and others note it as its own specific conceptualization. More
  recently (in the 2010s), the term <span class=SpellE>thirunangai</span> was
  coined as a more inclusive and respectful term, although it has been noted
  that some individuals in Chennai still use <span class=SpellE>aravani</span>
  as a term of identification.</span></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span
  style='mso-bookmark:genderidentity-value-set'></span></span></span></span>
  <td width=159 valign=top style='width:119.45pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span style='mso-bookmark:genderidentity-value-set'>GSSO:006194
  [GSSO]</span></span></span></span></p>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span style='mso-bookmark:genderidentity-value-set'>HOMOIT:0000065
  [<span class=SpellE>Homosaurus</span>]</span></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span
  style='mso-bookmark:genderidentity-value-set'></span></span></span></span>
 </tr>
 <tr style='mso-yfti-irow:4'>
  <td width=161 valign=top style='width:120.4pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span style='mso-bookmark:genderidentity-value-set'><span
  class=SpellE>Āshitimē</span> (<span class=SpellE>Maale</span>: </span></span></span></span><span
  style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span
  style='mso-bookmark:genderidentity-value-set'><span class=SpellE><span
  style='font-family:Ebrima;mso-bidi-font-family:Ebrima'>አሽትሜ</span></span></span></span></span></span><span
  style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span
  style='mso-bookmark:genderidentity-value-set'><span style='font-family:Ebrima;
  mso-bidi-font-family:Ebrima'>)</span></span></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span
  style='mso-bookmark:genderidentity-value-set'></span></span></span></span>
  <td width=136 valign=top style='width:101.8pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span style='mso-bookmark:genderidentity-value-set'>Ethiopia
  (<span class=SpellE>Maale</span>)</span></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span
  style='mso-bookmark:genderidentity-value-set'></span></span></span></span>
  <td width=168 valign=top style='width:125.85pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'><span
  style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span
  style='mso-bookmark:genderidentity-value-set'></span></span></span></span>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span style='mso-bookmark:genderidentity-value-set'><o:p>&nbsp;</o:p></span></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span
  style='mso-bookmark:genderidentity-value-set'></span></span></span></span>
  <td width=159 valign=top style='width:119.45pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span style='mso-bookmark:genderidentity-value-set'>GSSO:002166
  [GSSO]</span></span></span></span></p>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span style='mso-bookmark:genderidentity-value-set'>HOMOIT:0000072
  [<span class=SpellE>Homosaurus</span>]</span></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span
  style='mso-bookmark:genderidentity-value-set'></span></span></span></span>
 </tr>
 <tr style='mso-yfti-irow:5'>
  <td width=161 valign=top style='width:120.4pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span style='mso-bookmark:genderidentity-value-set'><span
  class=SpellE>Baklâ</span></span></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span
  style='mso-bookmark:genderidentity-value-set'></span></span></span></span>
  <td width=136 valign=top style='width:101.8pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span style='mso-bookmark:genderidentity-value-set'>Philippines</span></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span
  style='mso-bookmark:genderidentity-value-set'></span></span></span></span>
  <td width=168 valign=top style='width:125.85pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'><span
  style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span
  style='mso-bookmark:genderidentity-value-set'></span></span></span></span>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span style='mso-bookmark:genderidentity-value-set'><o:p>&nbsp;</o:p></span></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span
  style='mso-bookmark:genderidentity-value-set'></span></span></span></span>
  <td width=159 valign=top style='width:119.45pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span style='mso-bookmark:genderidentity-value-set'>GSSO:002189
  [GSSO]</span></span></span></span></p>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span style='mso-bookmark:genderidentity-value-set'>HOMOIT:0000091
  [<span class=SpellE>Homosaurus</span>]</span></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span
  style='mso-bookmark:genderidentity-value-set'></span></span></span></span>
 </tr>
 <tr style='mso-yfti-irow:6'>
  <td width=161 valign=top style='width:120.4pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span style='mso-bookmark:genderidentity-value-set'><span
  class=SpellE>Basaja</span></span></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span
  style='mso-bookmark:genderidentity-value-set'></span></span></span></span>
  <td width=136 valign=top style='width:101.8pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span style='mso-bookmark:genderidentity-value-set'>Indonesia
  (<span class=SpellE>Toraja</span>)</span></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span
  style='mso-bookmark:genderidentity-value-set'></span></span></span></span>
  <td width=168 valign=top style='width:125.85pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'><span
  style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span
  style='mso-bookmark:genderidentity-value-set'></span></span></span></span>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span style='mso-bookmark:genderidentity-value-set'><o:p>&nbsp;</o:p></span></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span
  style='mso-bookmark:genderidentity-value-set'></span></span></span></span>
  <td width=159 valign=top style='width:119.45pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'><span
  style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span
  style='mso-bookmark:genderidentity-value-set'></span></span></span></span>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span style='mso-bookmark:genderidentity-value-set'><o:p>&nbsp;</o:p></span></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span
  style='mso-bookmark:genderidentity-value-set'></span></span></span></span>
 </tr>
 <tr style='mso-yfti-irow:7'>
  <td width=161 valign=top style='width:120.4pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span style='mso-bookmark:genderidentity-value-set'><span
  class=SpellE>Basir</span></span></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span
  style='mso-bookmark:genderidentity-value-set'></span></span></span></span>
  <td width=136 valign=top style='width:101.8pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span style='mso-bookmark:genderidentity-value-set'>Indonesia
  (<span class=SpellE>Ngaju</span>)</span></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span
  style='mso-bookmark:genderidentity-value-set'></span></span></span></span>
  <td width=168 valign=top style='width:125.85pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'><span
  style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span
  style='mso-bookmark:genderidentity-value-set'></span></span></span></span>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span style='mso-bookmark:genderidentity-value-set'><o:p>&nbsp;</o:p></span></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span
  style='mso-bookmark:genderidentity-value-set'></span></span></span></span>
  <td width=159 valign=top style='width:119.45pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'><span
  style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span
  style='mso-bookmark:genderidentity-value-set'></span></span></span></span>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span style='mso-bookmark:genderidentity-value-set'><o:p>&nbsp;</o:p></span></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span
  style='mso-bookmark:genderidentity-value-set'></span></span></span></span>
 </tr>
 <tr style='mso-yfti-irow:8'>
  <td width=161 valign=top style='width:120.4pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span style='mso-bookmark:genderidentity-value-set'>Bissu</span></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span
  style='mso-bookmark:genderidentity-value-set'></span></span></span></span>
  <td width=136 valign=top style='width:101.8pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span style='mso-bookmark:genderidentity-value-set'>Indonesia
  (Makassar)</span></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span
  style='mso-bookmark:genderidentity-value-set'></span></span></span></span>
  <td width=168 valign=top style='width:125.85pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'><span
  style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span
  style='mso-bookmark:genderidentity-value-set'></span></span></span></span>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span style='mso-bookmark:genderidentity-value-set'><o:p>&nbsp;</o:p></span></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span
  style='mso-bookmark:genderidentity-value-set'></span></span></span></span>
  <td width=159 valign=top style='width:119.45pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span style='mso-bookmark:genderidentity-value-set'>GSSO:007858
  [GSSO]</span></span></span></span></p>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span style='mso-bookmark:genderidentity-value-set'>HOMOIT:0000205
  [<span class=SpellE>Homosaurus</span>]</span></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span
  style='mso-bookmark:genderidentity-value-set'></span></span></span></span>
 </tr>
 <tr style='mso-yfti-irow:9'>
  <td width=161 valign=top style='width:120.4pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span style='mso-bookmark:genderidentity-value-set'><span
  class=SpellE>Biza’ah</span></span></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span
  style='mso-bookmark:genderidentity-value-set'></span></span></span></span>
  <td width=136 valign=top style='width:101.8pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span style='mso-bookmark:genderidentity-value-set'>Mexico
  (Zapotec)</span></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span
  style='mso-bookmark:genderidentity-value-set'></span></span></span></span>
  <td width=168 valign=top style='width:125.85pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'><span
  style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span
  style='mso-bookmark:genderidentity-value-set'></span></span></span></span>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span style='mso-bookmark:genderidentity-value-set'><o:p>&nbsp;</o:p></span></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span
  style='mso-bookmark:genderidentity-value-set'></span></span></span></span>
  <td width=159 valign=top style='width:119.45pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span style='mso-bookmark:genderidentity-value-set'>GSSO:002047
  [GSSO]</span></span></span></span></p>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span style='mso-bookmark:genderidentity-value-set'>HOMOIT:0000207
  [<span class=SpellE>Homosaurus</span>]</span></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span
  style='mso-bookmark:genderidentity-value-set'></span></span></span></span>
 </tr>
 <tr style='mso-yfti-irow:10'>
  <td width=161 valign=top style='width:120.4pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span style='mso-bookmark:genderidentity-value-set'>Brotherboy</span></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span
  style='mso-bookmark:genderidentity-value-set'></span></span></span></span>
  <td width=136 valign=top style='width:101.8pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span style='mso-bookmark:genderidentity-value-set'>Australia
  (Indigenous Australians)</span></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span
  style='mso-bookmark:genderidentity-value-set'></span></span></span></span>
  <td width=168 valign=top style='width:125.85pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'><span
  style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span
  style='mso-bookmark:genderidentity-value-set'></span></span></span></span>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span style='mso-bookmark:genderidentity-value-set'><o:p>&nbsp;</o:p></span></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span
  style='mso-bookmark:genderidentity-value-set'></span></span></span></span>
  <td width=159 valign=top style='width:119.45pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span style='mso-bookmark:genderidentity-value-set'>GSSO:002300
  [GSSO]</span></span></span></span></p>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span style='mso-bookmark:genderidentity-value-set'>HOMOIT:0000224
  [<span class=SpellE>Homosaurus</span>]</span></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span
  style='mso-bookmark:genderidentity-value-set'></span></span></span></span>
 </tr>
 <tr style='mso-yfti-irow:11'>
  <td width=161 valign=top style='width:120.4pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span style='mso-bookmark:genderidentity-value-set'><span
  class=SpellE>Calabai</span></span></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span
  style='mso-bookmark:genderidentity-value-set'></span></span></span></span>
  <td width=136 valign=top style='width:101.8pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'><span
  style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span
  style='mso-bookmark:genderidentity-value-set'></span></span></span></span>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span style='mso-bookmark:genderidentity-value-set'><o:p>&nbsp;</o:p></span></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span
  style='mso-bookmark:genderidentity-value-set'></span></span></span></span>
  <td width=168 valign=top style='width:125.85pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'><span
  style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span
  style='mso-bookmark:genderidentity-value-set'></span></span></span></span>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span style='mso-bookmark:genderidentity-value-set'><o:p>&nbsp;</o:p></span></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span
  style='mso-bookmark:genderidentity-value-set'></span></span></span></span>
  <td width=159 valign=top style='width:119.45pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span style='mso-bookmark:genderidentity-value-set'>GSSO:007859
  [GSSO]</span></span></span></span></p>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span style='mso-bookmark:genderidentity-value-set'>HOMOIT:0000234
  [<span class=SpellE>Homosaurus</span>]</span></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span
  style='mso-bookmark:genderidentity-value-set'></span></span></span></span>
 </tr>
 <tr style='mso-yfti-irow:12'>
  <td width=161 valign=top style='width:120.4pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span style='mso-bookmark:genderidentity-value-set'><span
  class=SpellE>Calalai</span></span></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span
  style='mso-bookmark:genderidentity-value-set'></span></span></span></span>
  <td width=136 valign=top style='width:101.8pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'><span
  style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span
  style='mso-bookmark:genderidentity-value-set'></span></span></span></span>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span style='mso-bookmark:genderidentity-value-set'><o:p>&nbsp;</o:p></span></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span
  style='mso-bookmark:genderidentity-value-set'></span></span></span></span>
  <td width=168 valign=top style='width:125.85pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'><span
  style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span
  style='mso-bookmark:genderidentity-value-set'></span></span></span></span>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span style='mso-bookmark:genderidentity-value-set'><o:p>&nbsp;</o:p></span></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span
  style='mso-bookmark:genderidentity-value-set'></span></span></span></span>
  <td width=159 valign=top style='width:119.45pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span style='mso-bookmark:genderidentity-value-set'>GSSO:007860
  [GSSO]</span></span></span></span></p>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span style='mso-bookmark:genderidentity-value-set'>HOMOIT:0000235
  [<span class=SpellE>Homosaurus</span>]</span></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span
  style='mso-bookmark:genderidentity-value-set'></span></span></span></span>
 </tr>
 <tr style='mso-yfti-irow:13'>
  <td width=161 valign=top style='width:120.4pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span style='mso-bookmark:genderidentity-value-set'><span
  class=SpellE>Fa’afāfine</span></span></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span
  style='mso-bookmark:genderidentity-value-set'></span></span></span></span>
  <td width=136 valign=top style='width:101.8pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span style='mso-bookmark:genderidentity-value-set'>American
  Samoa, Samoa (Samoans)</span></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span
  style='mso-bookmark:genderidentity-value-set'></span></span></span></span>
  <td width=168 valign=top style='width:125.85pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'><span
  style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span
  style='mso-bookmark:genderidentity-value-set'></span></span></span></span>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span style='mso-bookmark:genderidentity-value-set'><o:p>&nbsp;</o:p></span></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span
  style='mso-bookmark:genderidentity-value-set'></span></span></span></span>
  <td width=159 valign=top style='width:119.45pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span style='mso-bookmark:genderidentity-value-set'>GSSO:002302
  [GSSO]</span></span></span></span></p>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span style='mso-bookmark:genderidentity-value-set'>HOMOIT:0000413
  [<span class=SpellE>Homosaurus</span>]</span></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span
  style='mso-bookmark:genderidentity-value-set'></span></span></span></span>
 </tr>
 <tr style='mso-yfti-irow:14'>
  <td width=161 valign=top style='width:120.4pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span style='mso-bookmark:genderidentity-value-set'><span
  class=SpellE>Fa’atama</span></span></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span
  style='mso-bookmark:genderidentity-value-set'></span></span></span></span>
  <td width=136 valign=top style='width:101.8pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span style='mso-bookmark:genderidentity-value-set'>American
  Samoa, Samoa (Samoans)</span></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span
  style='mso-bookmark:genderidentity-value-set'></span></span></span></span>
  <td width=168 valign=top style='width:125.85pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'><span
  style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span
  style='mso-bookmark:genderidentity-value-set'></span></span></span></span>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span style='mso-bookmark:genderidentity-value-set'><o:p>&nbsp;</o:p></span></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span
  style='mso-bookmark:genderidentity-value-set'></span></span></span></span>
  <td width=159 valign=top style='width:119.45pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span style='mso-bookmark:genderidentity-value-set'>GSSO:008117
  [GSSO]</span></span></span></span></p>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span style='mso-bookmark:genderidentity-value-set'>HOMOIT:0000414
  [<span class=SpellE>Homosaurus</span>]</span></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span
  style='mso-bookmark:genderidentity-value-set'></span></span></span></span>
 </tr>
 <tr style='mso-yfti-irow:15'>
  <td width=161 valign=top style='width:120.4pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span style='mso-bookmark:genderidentity-value-set'><span
  class=SpellE>Fakafāfine</span></span></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span
  style='mso-bookmark:genderidentity-value-set'></span></span></span></span>
  <td width=136 valign=top style='width:101.8pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span style='mso-bookmark:genderidentity-value-set'>Tokelau
  (Tokelauans)</span></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span
  style='mso-bookmark:genderidentity-value-set'></span></span></span></span>
  <td width=168 valign=top style='width:125.85pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'><span
  style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span
  style='mso-bookmark:genderidentity-value-set'></span></span></span></span>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span style='mso-bookmark:genderidentity-value-set'><o:p>&nbsp;</o:p></span></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span
  style='mso-bookmark:genderidentity-value-set'></span></span></span></span>
  <td width=159 valign=top style='width:119.45pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span style='mso-bookmark:genderidentity-value-set'>GSSO:011272
  [GSSO]</span></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span
  style='mso-bookmark:genderidentity-value-set'></span></span></span></span>
 </tr>
 <tr style='mso-yfti-irow:16'>
  <td width=161 valign=top style='width:120.4pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span style='mso-bookmark:genderidentity-value-set'><span
  class=SpellE>Fakaleitī</span></span></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span
  style='mso-bookmark:genderidentity-value-set'></span></span></span></span>
  <td width=136 valign=top style='width:101.8pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span style='mso-bookmark:genderidentity-value-set'>Tonga
  (Tongans)</span></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span
  style='mso-bookmark:genderidentity-value-set'></span></span></span></span>
  <td width=168 valign=top style='width:125.85pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'><span
  style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span
  style='mso-bookmark:genderidentity-value-set'></span></span></span></span>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span style='mso-bookmark:genderidentity-value-set'><o:p>&nbsp;</o:p></span></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span
  style='mso-bookmark:genderidentity-value-set'></span></span></span></span>
  <td width=159 valign=top style='width:119.45pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span style='mso-bookmark:genderidentity-value-set'>GSSO:002303
  [GSSO]</span></span></span></span></p>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span style='mso-bookmark:genderidentity-value-set'>HOMOIT:0000419
  [<span class=SpellE>Homosaurus</span>]</span></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span
  style='mso-bookmark:genderidentity-value-set'></span></span></span></span>
 </tr>
 <tr style='mso-yfti-irow:17'>
  <td width=161 valign=top style='width:120.4pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span style='mso-bookmark:genderidentity-value-set'><span
  class=SpellE>Femminiello</span></span></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span
  style='mso-bookmark:genderidentity-value-set'></span></span></span></span>
  <td width=136 valign=top style='width:101.8pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span style='mso-bookmark:genderidentity-value-set'>Italy
  (Neapolitans)</span></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span
  style='mso-bookmark:genderidentity-value-set'></span></span></span></span>
  <td width=168 valign=top style='width:125.85pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'><span
  style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span
  style='mso-bookmark:genderidentity-value-set'></span></span></span></span>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span style='mso-bookmark:genderidentity-value-set'><o:p>&nbsp;</o:p></span></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span
  style='mso-bookmark:genderidentity-value-set'></span></span></span></span>
  <td width=159 valign=top style='width:119.45pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span style='mso-bookmark:genderidentity-value-set'>GSSO:002304
  [GSSO]</span></span></span></span></p>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span style='mso-bookmark:genderidentity-value-set'>HOMOIT:0000441
  [<span class=SpellE>Homosaurus</span>]</span></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span
  style='mso-bookmark:genderidentity-value-set'></span></span></span></span>
 </tr>
 <tr style='mso-yfti-irow:18'>
  <td width=161 valign=top style='width:120.4pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span style='mso-bookmark:genderidentity-value-set'>Hijra
  (Hindi: </span></span></span></span><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span style='mso-bookmark:genderidentity-value-set'><span
  class=SpellE><span style='font-family:"Nirmala UI",sans-serif'>हिजड़ा</span></span>)</span></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span
  style='mso-bookmark:genderidentity-value-set'></span></span></span></span>
  <td width=136 valign=top style='width:101.8pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span style='mso-bookmark:genderidentity-value-set'>India
  (Indians)</span></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span
  style='mso-bookmark:genderidentity-value-set'></span></span></span></span>
  <td width=168 valign=top style='width:125.85pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span style='mso-bookmark:genderidentity-value-set'>Term
  attested in English literature since the early 1800s. Hijra usually refers to
  a very specific cultural role with gendered connotations. People who are
  hijra are almost always those who would be considered assigned male at birth
  (AMAB), although many are <span class=GramE>intersex</span> and some may be
  assigned female at birth (AFAB). Hijra typically live in communities called
  gharanas. Some hijra consider themselves to be transgender, although many do
  not. The term hijra is often considered to be offensive in Urdu, so the term
  khwaja <span class=SpellE>sira</span> is preferred in Urdu-speaking parts of
  India, as well as in Pakistan and Bangladesh.</span></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span
  style='mso-bookmark:genderidentity-value-set'></span></span></span></span>
  <td width=159 valign=top style='width:119.45pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span style='mso-bookmark:genderidentity-value-set'>GSSO:002305
  [GSSO]</span></span></span></span></p>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span style='mso-bookmark:genderidentity-value-set'>HOMOIT:0000632
  [<span class=SpellE>Homosaurus</span>]</span></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span
  style='mso-bookmark:genderidentity-value-set'></span></span></span></span>
 </tr>
 <tr style='mso-yfti-irow:19'>
  <td width=161 valign=top style='width:120.4pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span style='mso-bookmark:genderidentity-value-set'><span
  class=SpellE>Isángoma</span></span></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span
  style='mso-bookmark:genderidentity-value-set'></span></span></span></span>
  <td width=136 valign=top style='width:101.8pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span style='mso-bookmark:genderidentity-value-set'>South
  Africa, Lesotho, Zimbabwe, Eswatini, Malawi, Botswana, Mozambique (Zulu)</span></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span
  style='mso-bookmark:genderidentity-value-set'></span></span></span></span>
  <td width=168 valign=top style='width:125.85pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'><span
  style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span
  style='mso-bookmark:genderidentity-value-set'></span></span></span></span>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span style='mso-bookmark:genderidentity-value-set'><o:p>&nbsp;</o:p></span></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span
  style='mso-bookmark:genderidentity-value-set'></span></span></span></span>
  <td width=159 valign=top style='width:119.45pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'><span
  style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span
  style='mso-bookmark:genderidentity-value-set'></span></span></span></span>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span style='mso-bookmark:genderidentity-value-set'><o:p>&nbsp;</o:p></span></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span
  style='mso-bookmark:genderidentity-value-set'></span></span></span></span>
 </tr>
 <tr style='mso-yfti-irow:20'>
  <td width=161 valign=top style='width:120.4pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span style='mso-bookmark:genderidentity-value-set'><span
  class=SpellE>Jogappa</span> (Hindi: </span></span></span></span><span
  style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span
  style='mso-bookmark:genderidentity-value-set'><span class=SpellE><span
  style='font-family:"Nirmala UI",sans-serif'>जोगप्पा</span></span>)</span></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span
  style='mso-bookmark:genderidentity-value-set'></span></span></span></span>
  <td width=136 valign=top style='width:101.8pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'><span
  style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span
  style='mso-bookmark:genderidentity-value-set'></span></span></span></span>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span style='mso-bookmark:genderidentity-value-set'><o:p>&nbsp;</o:p></span></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span
  style='mso-bookmark:genderidentity-value-set'></span></span></span></span>
  <td width=168 valign=top style='width:125.85pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span style='mso-bookmark:genderidentity-value-set'>Attested
  in English literature since the 1980s. Individuals become <span class=SpellE>jogappa</span>
  through a ceremony known as <span class=SpellE>Kādāta</span>.</span></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span
  style='mso-bookmark:genderidentity-value-set'></span></span></span></span>
  <td width=159 valign=top style='width:119.45pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span style='mso-bookmark:genderidentity-value-set'>GSSO:007861
  [GSSO]</span></span></span></span></p>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span style='mso-bookmark:genderidentity-value-set'>HOMOIT:0000684
  [<span class=SpellE>Homosaurus</span>]</span></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span
  style='mso-bookmark:genderidentity-value-set'></span></span></span></span>
 </tr>
 <tr style='mso-yfti-irow:21'>
  <td width=161 valign=top style='width:120.4pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span style='mso-bookmark:genderidentity-value-set'><span
  class=SpellE>Jogata</span> (Hindi: </span></span></span></span><span
  style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span
  style='mso-bookmark:genderidentity-value-set'><span class=SpellE><span
  style='font-family:"Nirmala UI",sans-serif'>जोगतास</span></span>)</span></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span
  style='mso-bookmark:genderidentity-value-set'></span></span></span></span>
  <td width=136 valign=top style='width:101.8pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'><span
  style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span
  style='mso-bookmark:genderidentity-value-set'></span></span></span></span>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span style='mso-bookmark:genderidentity-value-set'><o:p>&nbsp;</o:p></span></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span
  style='mso-bookmark:genderidentity-value-set'></span></span></span></span>
  <td width=168 valign=top style='width:125.85pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'><span
  style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span
  style='mso-bookmark:genderidentity-value-set'></span></span></span></span>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span style='mso-bookmark:genderidentity-value-set'><o:p>&nbsp;</o:p></span></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span
  style='mso-bookmark:genderidentity-value-set'></span></span></span></span>
  <td width=159 valign=top style='width:119.45pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'><span
  style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span
  style='mso-bookmark:genderidentity-value-set'></span></span></span></span>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span style='mso-bookmark:genderidentity-value-set'><o:p>&nbsp;</o:p></span></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span
  style='mso-bookmark:genderidentity-value-set'></span></span></span></span>
 </tr>
 <tr style='mso-yfti-irow:22'>
  <td width=161 valign=top style='width:120.4pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span style='mso-bookmark:genderidentity-value-set'>Kathoey
  (Thai: </span></span></span></span><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span style='mso-bookmark:genderidentity-value-set'><span
  class=SpellE><span style='font-family:"Leelawadee UI",sans-serif'>กะเทย</span></span>,
  Lao: </span></span></span></span><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span style='mso-bookmark:genderidentity-value-set'><span
  class=SpellE><span style='font-family:"Leelawadee UI",sans-serif'>ກະເທີຍ</span></span>)</span></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span
  style='mso-bookmark:genderidentity-value-set'></span></span></span></span>
  <td width=136 valign=top style='width:101.8pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span style='mso-bookmark:genderidentity-value-set'>Thailand
  (Thais)</span></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span
  style='mso-bookmark:genderidentity-value-set'></span></span></span></span>
  <td width=168 valign=top style='width:125.85pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span style='mso-bookmark:genderidentity-value-set'>Thai
  and Lao term which derives from the Khmer pejorative </span></span></span></span><span
  style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span
  style='mso-bookmark:genderidentity-value-set'><span class=SpellE><span
  style='font-family:"Leelawadee UI",sans-serif'>ខ្ទើយ</span></span>. Attested
  in English literature since the 1990s.</span></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span
  style='mso-bookmark:genderidentity-value-set'></span></span></span></span>
  <td width=159 valign=top style='width:119.45pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span style='mso-bookmark:genderidentity-value-set'>GSSO:002306
  [GSSO]</span></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span
  style='mso-bookmark:genderidentity-value-set'></span></span></span></span>
 </tr>
 <tr style='mso-yfti-irow:23'>
  <td width=161 valign=top style='width:120.4pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span style='mso-bookmark:genderidentity-value-set'><span
  class=SpellE>Khanith</span> (Arabic: </span></span></span></span><span
  style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span
  style='mso-bookmark:genderidentity-value-set'><span class=SpellE><span
  style='font-family:"Times New Roman",serif'>خنيث</span></span>)</span></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span
  style='mso-bookmark:genderidentity-value-set'></span></span></span></span>
  <td width=136 valign=top style='width:101.8pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span style='mso-bookmark:genderidentity-value-set'>Oman
  (Omanis)</span></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span
  style='mso-bookmark:genderidentity-value-set'></span></span></span></span>
  <td width=168 valign=top style='width:125.85pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span style='mso-bookmark:genderidentity-value-set'>Attested
  in English literature since the 1970s.</span></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span
  style='mso-bookmark:genderidentity-value-set'></span></span></span></span>
  <td width=159 valign=top style='width:119.45pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span style='mso-bookmark:genderidentity-value-set'>GSSO:002307
  [GSSO]</span></span></span></span></p>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span style='mso-bookmark:genderidentity-value-set'>HOMOIT:0001517
  [<span class=SpellE>Homosaurus</span>]</span></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span
  style='mso-bookmark:genderidentity-value-set'></span></span></span></span>
 </tr>
 <tr style='mso-yfti-irow:24'>
  <td width=161 valign=top style='width:120.4pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span style='mso-bookmark:genderidentity-value-set'><span
  class=SpellE>Khasua</span> (Hindi: </span></span></span></span><span
  style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span
  style='mso-bookmark:genderidentity-value-set'><span class=SpellE><span
  style='font-family:"Nirmala UI",sans-serif'>खसुआ</span></span>)</span></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span
  style='mso-bookmark:genderidentity-value-set'></span></span></span></span>
  <td width=136 valign=top style='width:101.8pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'><span
  style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span
  style='mso-bookmark:genderidentity-value-set'></span></span></span></span>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span style='mso-bookmark:genderidentity-value-set'><o:p>&nbsp;</o:p></span></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span
  style='mso-bookmark:genderidentity-value-set'></span></span></span></span>
  <td width=168 valign=top style='width:125.85pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'><span
  style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span
  style='mso-bookmark:genderidentity-value-set'></span></span></span></span>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span style='mso-bookmark:genderidentity-value-set'><o:p>&nbsp;</o:p></span></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span
  style='mso-bookmark:genderidentity-value-set'></span></span></span></span>
  <td width=159 valign=top style='width:119.45pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span style='mso-bookmark:genderidentity-value-set'>GSSO:011932
  [GSSO]</span></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span
  style='mso-bookmark:genderidentity-value-set'></span></span></span></span>
 </tr>
 <tr style='mso-yfti-irow:25'>
  <td width=161 valign=top style='width:120.4pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span style='mso-bookmark:genderidentity-value-set'><span
  class=SpellE>Khusara</span> (Hindi: </span></span></span></span><span
  style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span
  style='mso-bookmark:genderidentity-value-set'><span class=SpellE><span
  style='font-family:"Nirmala UI",sans-serif'>खुसरा</span></span>)</span></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span
  style='mso-bookmark:genderidentity-value-set'></span></span></span></span>
  <td width=136 valign=top style='width:101.8pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span style='mso-bookmark:genderidentity-value-set'>India</span></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span
  style='mso-bookmark:genderidentity-value-set'></span></span></span></span>
  <td width=168 valign=top style='width:125.85pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'><span
  style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span
  style='mso-bookmark:genderidentity-value-set'></span></span></span></span>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span style='mso-bookmark:genderidentity-value-set'><o:p>&nbsp;</o:p></span></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span
  style='mso-bookmark:genderidentity-value-set'></span></span></span></span>
  <td width=159 valign=top style='width:119.45pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span style='mso-bookmark:genderidentity-value-set'>GSSO:011931
  [GSSO]</span></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span
  style='mso-bookmark:genderidentity-value-set'></span></span></span></span>
 </tr>
 <tr style='mso-yfti-irow:26'>
  <td width=161 valign=top style='width:120.4pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span style='mso-bookmark:genderidentity-value-set'>Khusra
  (Arabic: </span></span></span></span><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span style='mso-bookmark:genderidentity-value-set'><span
  class=SpellE><span style='font-family:"Times New Roman",serif'>خوسرا</span></span>,
  Punjabi: </span></span></span></span><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span style='mso-bookmark:genderidentity-value-set'><span
  class=SpellE><span style='font-family:"Nirmala UI",sans-serif'>ਖੁਸਰਾ</span></span>)</span></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span
  style='mso-bookmark:genderidentity-value-set'></span></span></span></span>
  <td width=136 valign=top style='width:101.8pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span style='mso-bookmark:genderidentity-value-set'>India,
  Pakistan</span></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span
  style='mso-bookmark:genderidentity-value-set'></span></span></span></span>
  <td width=168 valign=top style='width:125.85pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'><span
  style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span
  style='mso-bookmark:genderidentity-value-set'></span></span></span></span>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span style='mso-bookmark:genderidentity-value-set'><o:p>&nbsp;</o:p></span></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span
  style='mso-bookmark:genderidentity-value-set'></span></span></span></span>
  <td width=159 valign=top style='width:119.45pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span style='mso-bookmark:genderidentity-value-set'>GSSO:007870
  [GSSO]</span></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span
  style='mso-bookmark:genderidentity-value-set'></span></span></span></span>
 </tr>
 <tr style='mso-yfti-irow:27'>
  <td width=161 valign=top style='width:120.4pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span style='mso-bookmark:genderidentity-value-set'>Khwaja
  <span class=SpellE>sira</span> (Urdu: </span></span></span></span><span
  style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span
  style='mso-bookmark:genderidentity-value-set'><span class=SpellE><span
  style='font-family:"Times New Roman",serif'>خواجه</span></span> </span></span></span></span><span
  style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span
  style='mso-bookmark:genderidentity-value-set'><span class=SpellE><span
  style='font-family:"Times New Roman",serif'>سرا</span></span>)</span></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span
  style='mso-bookmark:genderidentity-value-set'></span></span></span></span>
  <td width=136 valign=top style='width:101.8pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span style='mso-bookmark:genderidentity-value-set'>Pakistan
  (Pakistanis), Bangladesh (Bengalis)</span></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span
  style='mso-bookmark:genderidentity-value-set'></span></span></span></span>
  <td width=168 valign=top style='width:125.85pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span style='mso-bookmark:genderidentity-value-set'>Polite
  alternative to hijra in Urdu. Recommended for usage in Pakistan and
  Bangladesh over using hijra.</span></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span
  style='mso-bookmark:genderidentity-value-set'></span></span></span></span>
  <td width=159 valign=top style='width:119.45pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span style='mso-bookmark:genderidentity-value-set'>GSSO:006199
  [GSSO]</span></span></span></span></p>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span style='mso-bookmark:genderidentity-value-set'>HOMOIT:0000689
  [<span class=SpellE>Homosaurus</span>]</span></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span
  style='mso-bookmark:genderidentity-value-set'></span></span></span></span>
 </tr>
 <tr style='mso-yfti-irow:28'>
  <td width=161 valign=top style='width:120.4pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span style='mso-bookmark:genderidentity-value-set'><span
  class=SpellE>Kinnar</span></span></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span
  style='mso-bookmark:genderidentity-value-set'></span></span></span></span>
  <td width=136 valign=top style='width:101.8pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span style='mso-bookmark:genderidentity-value-set'>India</span></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span
  style='mso-bookmark:genderidentity-value-set'></span></span></span></span>
  <td width=168 valign=top style='width:125.85pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'><span
  style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span
  style='mso-bookmark:genderidentity-value-set'></span></span></span></span>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span style='mso-bookmark:genderidentity-value-set'><o:p>&nbsp;</o:p></span></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span
  style='mso-bookmark:genderidentity-value-set'></span></span></span></span>
  <td width=159 valign=top style='width:119.45pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span style='mso-bookmark:genderidentity-value-set'>GSSO:006190
  [GSSO]</span></span></span></span></p>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span style='mso-bookmark:genderidentity-value-set'>HOMOIT:0000690
  [<span class=SpellE>Homosaurus</span>]</span></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span
  style='mso-bookmark:genderidentity-value-set'></span></span></span></span>
 </tr>
 <tr style='mso-yfti-irow:29'>
  <td width=161 valign=top style='width:120.4pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span style='mso-bookmark:genderidentity-value-set'>Kothi
  (Hindi: </span></span></span></span><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span style='mso-bookmark:genderidentity-value-set'><span
  class=SpellE><span style='font-family:"Nirmala UI",sans-serif'>कोथी</span></span>)</span></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span
  style='mso-bookmark:genderidentity-value-set'></span></span></span></span>
  <td width=136 valign=top style='width:101.8pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span style='mso-bookmark:genderidentity-value-set'>India
  (Indians), Nepal (Nepalis), Pakistan (Pakistanis)</span></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span
  style='mso-bookmark:genderidentity-value-set'></span></span></span></span>
  <td width=168 valign=top style='width:125.85pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'><span
  style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span
  style='mso-bookmark:genderidentity-value-set'></span></span></span></span>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span style='mso-bookmark:genderidentity-value-set'><o:p>&nbsp;</o:p></span></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span
  style='mso-bookmark:genderidentity-value-set'></span></span></span></span>
  <td width=159 valign=top style='width:119.45pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span style='mso-bookmark:genderidentity-value-set'>GSSO:002309
  [GSSO]</span></span></span></span></p>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span style='mso-bookmark:genderidentity-value-set'>HOMOIT:0000694
  [<span class=SpellE>Homosaurus</span>]</span></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span
  style='mso-bookmark:genderidentity-value-set'></span></span></span></span>
 </tr>
 <tr style='mso-yfti-irow:30'>
  <td width=161 valign=top style='width:120.4pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span style='mso-bookmark:genderidentity-value-set'><span
  class=SpellE>Laelae</span></span></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span
  style='mso-bookmark:genderidentity-value-set'></span></span></span></span>
  <td width=136 valign=top style='width:101.8pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span style='mso-bookmark:genderidentity-value-set'>Cook
  Islands (Cook Islands Māori)</span></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span
  style='mso-bookmark:genderidentity-value-set'></span></span></span></span>
  <td width=168 valign=top style='width:125.85pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span style='mso-bookmark:genderidentity-value-set'>Attested
  in English literature since the 1990s; used to refer to individuals who may <span
  class=GramE>be considered to be</span> assigned male at birth who is
  considered to be feminine to some degree.</span></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span
  style='mso-bookmark:genderidentity-value-set'></span></span></span></span>
  <td width=159 valign=top style='width:119.45pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'><span
  style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span
  style='mso-bookmark:genderidentity-value-set'></span></span></span></span>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span style='mso-bookmark:genderidentity-value-set'><o:p>&nbsp;</o:p></span></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span
  style='mso-bookmark:genderidentity-value-set'></span></span></span></span>
 </tr>
 <tr style='mso-yfti-irow:31'>
  <td width=161 valign=top style='width:120.4pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span style='mso-bookmark:genderidentity-value-set'><span
  class=SpellE>Māhū</span></span></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span
  style='mso-bookmark:genderidentity-value-set'></span></span></span></span>
  <td width=136 valign=top style='width:101.8pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span style='mso-bookmark:genderidentity-value-set'>Hawaii
  (Kanaka <span class=SpellE>Maoli</span>), Tahiti (<span class=SpellE>Maohi</span>)</span></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span
  style='mso-bookmark:genderidentity-value-set'></span></span></span></span>
  <td width=168 valign=top style='width:125.85pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'><span
  style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span
  style='mso-bookmark:genderidentity-value-set'></span></span></span></span>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span style='mso-bookmark:genderidentity-value-set'><o:p>&nbsp;</o:p></span></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span
  style='mso-bookmark:genderidentity-value-set'></span></span></span></span>
  <td width=159 valign=top style='width:119.45pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span style='mso-bookmark:genderidentity-value-set'>GSSO:002320
  [GSSO]</span></span></span></span></p>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span style='mso-bookmark:genderidentity-value-set'>HOMOIT:0000979
  [<span class=SpellE>Homosaurus</span>]</span></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span
  style='mso-bookmark:genderidentity-value-set'></span></span></span></span>
 </tr>
 <tr style='mso-yfti-irow:32'>
  <td width=161 valign=top style='width:120.4pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span style='mso-bookmark:genderidentity-value-set'><span
  class=SpellE>Māhū</span> <span class=SpellE>kāne</span></span></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span
  style='mso-bookmark:genderidentity-value-set'></span></span></span></span>
  <td width=136 valign=top style='width:101.8pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span style='mso-bookmark:genderidentity-value-set'>Hawaii
  (Kanaka <span class=SpellE>Maoli</span>), Tahiti (<span class=SpellE>Maohi</span>)</span></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span
  style='mso-bookmark:genderidentity-value-set'></span></span></span></span>
  <td width=168 valign=top style='width:125.85pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span style='mso-bookmark:genderidentity-value-set'>Kanaka
  <span class=SpellE>Maoli</span> term coined in the early 2000s, meant to
  represent the specific experiences of Kanaka <span class=SpellE>Maoli</span>
  trans men.</span></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span
  style='mso-bookmark:genderidentity-value-set'></span></span></span></span>
  <td width=159 valign=top style='width:119.45pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'><span
  style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span
  style='mso-bookmark:genderidentity-value-set'></span></span></span></span>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span style='mso-bookmark:genderidentity-value-set'><o:p>&nbsp;</o:p></span></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span
  style='mso-bookmark:genderidentity-value-set'></span></span></span></span>
 </tr>
 <tr style='mso-yfti-irow:33'>
  <td width=161 valign=top style='width:120.4pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span style='mso-bookmark:genderidentity-value-set'><span
  class=SpellE>Māhūwahine</span></span></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span
  style='mso-bookmark:genderidentity-value-set'></span></span></span></span>
  <td width=136 valign=top style='width:101.8pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span style='mso-bookmark:genderidentity-value-set'>Hawaii
  (Kanaka <span class=SpellE>Maoli</span>), Tahiti (<span class=SpellE>Maohi</span>)</span></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span
  style='mso-bookmark:genderidentity-value-set'></span></span></span></span>
  <td width=168 valign=top style='width:125.85pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span style='mso-bookmark:genderidentity-value-set'>Kanaka
  <span class=SpellE>Maoli</span> term coined in the early 2000s, meant to
  represent the specific experiences of Kanaka <span class=SpellE>Maoli</span>
  trans women.</span></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span
  style='mso-bookmark:genderidentity-value-set'></span></span></span></span>
  <td width=159 valign=top style='width:119.45pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'><span
  style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span
  style='mso-bookmark:genderidentity-value-set'></span></span></span></span>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span style='mso-bookmark:genderidentity-value-set'><o:p>&nbsp;</o:p></span></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span
  style='mso-bookmark:genderidentity-value-set'></span></span></span></span>
 </tr>
 <tr style='mso-yfti-irow:34'>
  <td width=161 valign=top style='width:120.4pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span style='mso-bookmark:genderidentity-value-set'><span
  class=SpellE>Mak</span> <span class=SpellE>nyah</span></span></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span
  style='mso-bookmark:genderidentity-value-set'></span></span></span></span>
  <td width=136 valign=top style='width:101.8pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span style='mso-bookmark:genderidentity-value-set'>Singapore
  (Singaporeans)</span></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span
  style='mso-bookmark:genderidentity-value-set'></span></span></span></span>
  <td width=168 valign=top style='width:125.85pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'><span
  style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span
  style='mso-bookmark:genderidentity-value-set'></span></span></span></span>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span style='mso-bookmark:genderidentity-value-set'><o:p>&nbsp;</o:p></span></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span
  style='mso-bookmark:genderidentity-value-set'></span></span></span></span>
  <td width=159 valign=top style='width:119.45pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span style='mso-bookmark:genderidentity-value-set'>GSSO:007930
  [GSSO]</span></span></span></span></p>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span style='mso-bookmark:genderidentity-value-set'>HOMOIT:0000980
  [<span class=SpellE>Homosaurus</span>]</span></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span
  style='mso-bookmark:genderidentity-value-set'></span></span></span></span>
 </tr>
 <tr style='mso-yfti-irow:35'>
  <td width=161 valign=top style='width:120.4pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span style='mso-bookmark:genderidentity-value-set'><span
  class=SpellE>Manang</span> <span class=SpellE>bali</span></span></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span
  style='mso-bookmark:genderidentity-value-set'></span></span></span></span>
  <td width=136 valign=top style='width:101.8pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span style='mso-bookmark:genderidentity-value-set'>Indonesia
  (Iban)</span></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span
  style='mso-bookmark:genderidentity-value-set'></span></span></span></span>
  <td width=168 valign=top style='width:125.85pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'><span
  style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span
  style='mso-bookmark:genderidentity-value-set'></span></span></span></span>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span style='mso-bookmark:genderidentity-value-set'><o:p>&nbsp;</o:p></span></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span
  style='mso-bookmark:genderidentity-value-set'></span></span></span></span>
  <td width=159 valign=top style='width:119.45pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'><span
  style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span
  style='mso-bookmark:genderidentity-value-set'></span></span></span></span>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span style='mso-bookmark:genderidentity-value-set'><o:p>&nbsp;</o:p></span></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span
  style='mso-bookmark:genderidentity-value-set'></span></span></span></span>
 </tr>
 <tr style='mso-yfti-irow:36'>
  <td width=161 valign=top style='width:120.4pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span style='mso-bookmark:genderidentity-value-set'><span
  class=SpellE>Mangaiko</span></span></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span
  style='mso-bookmark:genderidentity-value-set'></span></span></span></span>
  <td width=136 valign=top style='width:101.8pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span style='mso-bookmark:genderidentity-value-set'>Democratic
  Republic of the Congo (<span class=SpellE>Mbo</span>)</span></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span
  style='mso-bookmark:genderidentity-value-set'></span></span></span></span>
  <td width=168 valign=top style='width:125.85pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'><span
  style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span
  style='mso-bookmark:genderidentity-value-set'></span></span></span></span>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span style='mso-bookmark:genderidentity-value-set'><o:p>&nbsp;</o:p></span></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span
  style='mso-bookmark:genderidentity-value-set'></span></span></span></span>
  <td width=159 valign=top style='width:119.45pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span style='mso-bookmark:genderidentity-value-set'>GSSO:007928
  [GSSO]</span></span></span></span></p>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span style='mso-bookmark:genderidentity-value-set'>HOMOIT:0000987
  [<span class=SpellE>Homosaurus</span>]</span></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span
  style='mso-bookmark:genderidentity-value-set'></span></span></span></span>
 </tr>
 <tr style='mso-yfti-irow:37'>
  <td width=161 valign=top style='width:120.4pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span style='mso-bookmark:genderidentity-value-set'><span
  class=SpellE>Muxe</span></span></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span
  style='mso-bookmark:genderidentity-value-set'></span></span></span></span>
  <td width=136 valign=top style='width:101.8pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span style='mso-bookmark:genderidentity-value-set'>Mexico
  (Zapotec)</span></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span
  style='mso-bookmark:genderidentity-value-set'></span></span></span></span>
  <td width=168 valign=top style='width:125.85pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'><span
  style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span
  style='mso-bookmark:genderidentity-value-set'></span></span></span></span>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span style='mso-bookmark:genderidentity-value-set'><o:p>&nbsp;</o:p></span></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span
  style='mso-bookmark:genderidentity-value-set'></span></span></span></span>
  <td width=159 valign=top style='width:119.45pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span style='mso-bookmark:genderidentity-value-set'>HOMOIT:0001034
  [<span class=SpellE>Homosaurus</span>]</span></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span
  style='mso-bookmark:genderidentity-value-set'></span></span></span></span>
 </tr>
 <tr style='mso-yfti-irow:38'>
  <td width=161 valign=top style='width:120.4pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span style='mso-bookmark:genderidentity-value-set'><span
  class=SpellE>Okule</span></span></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span
  style='mso-bookmark:genderidentity-value-set'></span></span></span></span>
  <td width=136 valign=top style='width:101.8pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span style='mso-bookmark:genderidentity-value-set'>Uganda,
  Democratic Republic of the Congo, South Sudan (<span class=SpellE>Lugbara</span>)</span></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span
  style='mso-bookmark:genderidentity-value-set'></span></span></span></span>
  <td width=168 valign=top style='width:125.85pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'><span
  style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span
  style='mso-bookmark:genderidentity-value-set'></span></span></span></span>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span style='mso-bookmark:genderidentity-value-set'><o:p>&nbsp;</o:p></span></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span
  style='mso-bookmark:genderidentity-value-set'></span></span></span></span>
  <td width=159 valign=top style='width:119.45pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'><span
  style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span
  style='mso-bookmark:genderidentity-value-set'></span></span></span></span>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span style='mso-bookmark:genderidentity-value-set'><o:p>&nbsp;</o:p></span></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span
  style='mso-bookmark:genderidentity-value-set'></span></span></span></span>
 </tr>
 <tr style='mso-yfti-irow:39'>
  <td width=161 valign=top style='width:120.4pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span style='mso-bookmark:genderidentity-value-set'><span
  class=SpellE>Omegiid</span></span></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span
  style='mso-bookmark:genderidentity-value-set'></span></span></span></span>
  <td width=136 valign=top style='width:101.8pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span style='mso-bookmark:genderidentity-value-set'>Panama
  (Guna)</span></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span
  style='mso-bookmark:genderidentity-value-set'></span></span></span></span>
  <td width=168 valign=top style='width:125.85pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'><span
  style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span
  style='mso-bookmark:genderidentity-value-set'></span></span></span></span>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span style='mso-bookmark:genderidentity-value-set'><o:p>&nbsp;</o:p></span></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span
  style='mso-bookmark:genderidentity-value-set'></span></span></span></span>
  <td width=159 valign=top style='width:119.45pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'><span
  style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span
  style='mso-bookmark:genderidentity-value-set'></span></span></span></span>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span style='mso-bookmark:genderidentity-value-set'><o:p>&nbsp;</o:p></span></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span
  style='mso-bookmark:genderidentity-value-set'></span></span></span></span>
 </tr>
 <tr style='mso-yfti-irow:40'>
  <td width=161 valign=top style='width:120.4pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span style='mso-bookmark:genderidentity-value-set'><span
  class=SpellE>Palao’ana</span></span></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span
  style='mso-bookmark:genderidentity-value-set'></span></span></span></span>
  <td width=136 valign=top style='width:101.8pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span style='mso-bookmark:genderidentity-value-set'>Guam,
  Northern Mariana Islands (Chamorro)</span></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span
  style='mso-bookmark:genderidentity-value-set'></span></span></span></span>
  <td width=168 valign=top style='width:125.85pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'><span
  style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span
  style='mso-bookmark:genderidentity-value-set'></span></span></span></span>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span style='mso-bookmark:genderidentity-value-set'><o:p>&nbsp;</o:p></span></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span
  style='mso-bookmark:genderidentity-value-set'></span></span></span></span>
  <td width=159 valign=top style='width:119.45pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span style='mso-bookmark:genderidentity-value-set'>GSSO:002321
  [GSSO]</span></span></span></span></p>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span style='mso-bookmark:genderidentity-value-set'>HOMOIT:0001070
  [<span class=SpellE>Homosaurus</span>]</span></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span
  style='mso-bookmark:genderidentity-value-set'></span></span></span></span>
 </tr>
 <tr style='mso-yfti-irow:41'>
  <td width=161 valign=top style='width:120.4pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span style='mso-bookmark:genderidentity-value-set'><span
  class=SpellE>Palopa</span></span></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span
  style='mso-bookmark:genderidentity-value-set'></span></span></span></span>
  <td width=136 valign=top style='width:101.8pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span style='mso-bookmark:genderidentity-value-set'>Tuvalu
  (Tuvaluans)</span></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span
  style='mso-bookmark:genderidentity-value-set'></span></span></span></span>
  <td width=168 valign=top style='width:125.85pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'><span
  style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span
  style='mso-bookmark:genderidentity-value-set'></span></span></span></span>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span style='mso-bookmark:genderidentity-value-set'><o:p>&nbsp;</o:p></span></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span
  style='mso-bookmark:genderidentity-value-set'></span></span></span></span>
  <td width=159 valign=top style='width:119.45pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span style='mso-bookmark:genderidentity-value-set'>GSSO:010335
  [GSSO]</span></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span
  style='mso-bookmark:genderidentity-value-set'></span></span></span></span>
 </tr>
 <tr style='mso-yfti-irow:42'>
  <td width=161 valign=top style='width:120.4pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span style='mso-bookmark:genderidentity-value-set'>Rae
  <span class=SpellE>rae</span></span></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span
  style='mso-bookmark:genderidentity-value-set'></span></span></span></span>
  <td width=136 valign=top style='width:101.8pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span style='mso-bookmark:genderidentity-value-set'>Tahiti
  (<span class=SpellE>Maohi</span>)</span></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span
  style='mso-bookmark:genderidentity-value-set'></span></span></span></span>
  <td width=168 valign=top style='width:125.85pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'><span
  style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span
  style='mso-bookmark:genderidentity-value-set'></span></span></span></span>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span style='mso-bookmark:genderidentity-value-set'><o:p>&nbsp;</o:p></span></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span
  style='mso-bookmark:genderidentity-value-set'></span></span></span></span>
  <td width=159 valign=top style='width:119.45pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span style='mso-bookmark:genderidentity-value-set'>GSSO:002323
  [GSSO]</span></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span
  style='mso-bookmark:genderidentity-value-set'></span></span></span></span>
 </tr>
 <tr style='mso-yfti-irow:43'>
  <td width=161 valign=top style='width:120.4pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span style='mso-bookmark:genderidentity-value-set'><span
  class=SpellE>Sekrata</span></span></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span
  style='mso-bookmark:genderidentity-value-set'></span></span></span></span>
  <td width=136 valign=top style='width:101.8pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span style='mso-bookmark:genderidentity-value-set'>Madagascar
  (<span class=SpellE>Sakalava</span>)</span></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span
  style='mso-bookmark:genderidentity-value-set'></span></span></span></span>
  <td width=168 valign=top style='width:125.85pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'><span
  style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span
  style='mso-bookmark:genderidentity-value-set'></span></span></span></span>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span style='mso-bookmark:genderidentity-value-set'><o:p>&nbsp;</o:p></span></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span
  style='mso-bookmark:genderidentity-value-set'></span></span></span></span>
  <td width=159 valign=top style='width:119.45pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span style='mso-bookmark:genderidentity-value-set'>GSSO:008113
  [GSSO]</span></span></span></span></p>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span style='mso-bookmark:genderidentity-value-set'>HOMOIT:0001264
  [<span class=SpellE>Homosaurus</span>]</span></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span
  style='mso-bookmark:genderidentity-value-set'></span></span></span></span>
 </tr>
 <tr style='mso-yfti-irow:44'>
  <td width=161 valign=top style='width:120.4pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span style='mso-bookmark:genderidentity-value-set'>Sistergirl</span></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span
  style='mso-bookmark:genderidentity-value-set'></span></span></span></span>
  <td width=136 valign=top style='width:101.8pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span style='mso-bookmark:genderidentity-value-set'>Australia
  (Indigenous Australians)</span></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span
  style='mso-bookmark:genderidentity-value-set'></span></span></span></span>
  <td width=168 valign=top style='width:125.85pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'><span
  style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span
  style='mso-bookmark:genderidentity-value-set'></span></span></span></span>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span style='mso-bookmark:genderidentity-value-set'><o:p>&nbsp;</o:p></span></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span
  style='mso-bookmark:genderidentity-value-set'></span></span></span></span>
  <td width=159 valign=top style='width:119.45pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span style='mso-bookmark:genderidentity-value-set'>GSSO:002301
  [GSSO]</span></span></span></span></p>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span style='mso-bookmark:genderidentity-value-set'>HOMOIT:0001314
  [<span class=SpellE>Homosaurus</span>]</span></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span
  style='mso-bookmark:genderidentity-value-set'></span></span></span></span>
 </tr>
 <tr style='mso-yfti-irow:45'>
  <td width=161 valign=top style='width:120.4pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span style='mso-bookmark:genderidentity-value-set'><span
  class=SpellE>Thirunangai</span> (Tamil: </span></span></span></span><span
  style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span
  style='mso-bookmark:genderidentity-value-set'><span class=SpellE><span
  style='font-family:"Nirmala UI",sans-serif'>திருநங்கை</span></span>)</span></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span
  style='mso-bookmark:genderidentity-value-set'></span></span></span></span>
  <td width=136 valign=top style='width:101.8pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span style='mso-bookmark:genderidentity-value-set'>India
  (<span class=SpellE>Tamilar</span>)</span></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span
  style='mso-bookmark:genderidentity-value-set'></span></span></span></span>
  <td width=168 valign=top style='width:125.85pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span style='mso-bookmark:genderidentity-value-set'>Term
  coined in the 2010s to be a more respectful version of <span class=SpellE>aravani</span>
  in Tamil Nadu. <span class=SpellE>Thirunangai</span> have been said to be
  hijra, trans women, or as its own designation by various sources.</span></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span
  style='mso-bookmark:genderidentity-value-set'></span></span></span></span>
  <td width=159 valign=top style='width:119.45pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'><span
  style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span
  style='mso-bookmark:genderidentity-value-set'></span></span></span></span>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span style='mso-bookmark:genderidentity-value-set'><o:p>&nbsp;</o:p></span></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span
  style='mso-bookmark:genderidentity-value-set'></span></span></span></span>
 </tr>
 <tr style='mso-yfti-irow:46'>
  <td width=161 valign=top style='width:120.4pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span style='mso-bookmark:genderidentity-value-set'><span
  class=SpellE>Travesti</span></span></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span
  style='mso-bookmark:genderidentity-value-set'></span></span></span></span>
  <td width=136 valign=top style='width:101.8pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span style='mso-bookmark:genderidentity-value-set'>Argentina
  (Argentines), Brazil (Brazilians), Peru (Peruvians)</span></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span
  style='mso-bookmark:genderidentity-value-set'></span></span></span></span>
  <td width=168 valign=top style='width:125.85pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span style='mso-bookmark:genderidentity-value-set'>Romance
  language term (Spanish, Portuguese, Italian, etc.) often considered a
  transphobic slur today, although the term has been reclaimed by some in some
  regions of Central and South America.</span></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span
  style='mso-bookmark:genderidentity-value-set'></span></span></span></span>
  <td width=159 valign=top style='width:119.45pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span style='mso-bookmark:genderidentity-value-set'>GSSO:002324
  [GSSO]</span></span></span></span></p>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span style='mso-bookmark:genderidentity-value-set'>HOMOIT:0001471
  [<span class=SpellE>Homosaurus</span>]</span></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span
  style='mso-bookmark:genderidentity-value-set'></span></span></span></span>
 </tr>
 <tr style='mso-yfti-irow:47'>
  <td width=161 valign=top style='width:120.4pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span style='mso-bookmark:genderidentity-value-set'><span
  class=SpellE>Tutuva’ine</span></span></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span
  style='mso-bookmark:genderidentity-value-set'></span></span></span></span>
  <td width=136 valign=top style='width:101.8pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span style='mso-bookmark:genderidentity-value-set'>Cook
  Islands (Cook Islands Māori)</span></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span
  style='mso-bookmark:genderidentity-value-set'></span></span></span></span>
  <td width=168 valign=top style='width:125.85pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span style='mso-bookmark:genderidentity-value-set'>Term
  attested in English literature in the early 2000s, meaning “like a woman”;
  today used to refer to individuals who may be considered male-to-female cross-dressers
  or drag queens.</span></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span
  style='mso-bookmark:genderidentity-value-set'></span></span></span></span>
  <td width=159 valign=top style='width:119.45pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'><span
  style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span
  style='mso-bookmark:genderidentity-value-set'></span></span></span></span>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span style='mso-bookmark:genderidentity-value-set'><o:p>&nbsp;</o:p></span></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span
  style='mso-bookmark:genderidentity-value-set'></span></span></span></span>
 </tr>
 <tr style='mso-yfti-irow:48'>
  <td width=161 valign=top style='width:120.4pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span style='mso-bookmark:genderidentity-value-set'><span
  class=SpellE>Tututane</span></span></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span
  style='mso-bookmark:genderidentity-value-set'></span></span></span></span>
  <td width=136 valign=top style='width:101.8pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span style='mso-bookmark:genderidentity-value-set'>Cook
  Islands (Cook Islands Māori)</span></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span
  style='mso-bookmark:genderidentity-value-set'></span></span></span></span>
  <td width=168 valign=top style='width:125.85pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span style='mso-bookmark:genderidentity-value-set'>Term
  attested in English literature in the early 2000s, meaning “like a man”;
  today used to refer to individuals who may be considered female-to-male
  cross-dressers or drag kings.</span></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span
  style='mso-bookmark:genderidentity-value-set'></span></span></span></span>
  <td width=159 valign=top style='width:119.45pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'><span
  style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span
  style='mso-bookmark:genderidentity-value-set'></span></span></span></span>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span style='mso-bookmark:genderidentity-value-set'><o:p>&nbsp;</o:p></span></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span
  style='mso-bookmark:genderidentity-value-set'></span></span></span></span>
 </tr>
 <tr style='mso-yfti-irow:49'>
  <td width=161 valign=top style='width:120.4pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span style='mso-bookmark:genderidentity-value-set'>Two-Spirit</span></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span
  style='mso-bookmark:genderidentity-value-set'></span></span></span></span>
  <td width=136 valign=top style='width:101.8pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span style='mso-bookmark:genderidentity-value-set'>North
  America, Central America (Native Americans, First Nations)</span></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span
  style='mso-bookmark:genderidentity-value-set'></span></span></span></span>
  <td width=168 valign=top style='width:125.85pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'><span
  style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span
  style='mso-bookmark:genderidentity-value-set'></span></span></span></span>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span style='mso-bookmark:genderidentity-value-set'><o:p>&nbsp;</o:p></span></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span
  style='mso-bookmark:genderidentity-value-set'></span></span></span></span>
  <td width=159 valign=top style='width:119.45pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span style='mso-bookmark:genderidentity-value-set'>GSSO:007398
  [GSSO]</span></span></span></span></p>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span style='mso-bookmark:genderidentity-value-set'>HOMOIT:0001914
  [<span class=SpellE>Homosaurus</span>]</span></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span
  style='mso-bookmark:genderidentity-value-set'></span></span></span></span>
 </tr>
 <tr style='mso-yfti-irow:50'>
  <td width=161 valign=top style='width:120.4pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span style='mso-bookmark:genderidentity-value-set'>Two-Spirit</span></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span
  style='mso-bookmark:genderidentity-value-set'></span></span></span></span>
  <td width=136 valign=top style='width:101.8pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span style='mso-bookmark:genderidentity-value-set'>Australia,
  New Zealand</span></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span
  style='mso-bookmark:genderidentity-value-set'></span></span></span></span>
  <td width=168 valign=top style='width:125.85pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'><span
  style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span
  style='mso-bookmark:genderidentity-value-set'></span></span></span></span>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span style='mso-bookmark:genderidentity-value-set'><o:p>&nbsp;</o:p></span></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span
  style='mso-bookmark:genderidentity-value-set'></span></span></span></span>
  <td width=159 valign=top style='width:119.45pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span style='mso-bookmark:genderidentity-value-set'>GSSO:011273
  [GSSO]</span></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span
  style='mso-bookmark:genderidentity-value-set'></span></span></span></span>
 </tr>
 <tr style='mso-yfti-irow:51'>
  <td width=161 valign=top style='width:120.4pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span style='mso-bookmark:genderidentity-value-set'><span
  class=SpellE>Vakasalewalewa</span></span></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span
  style='mso-bookmark:genderidentity-value-set'></span></span></span></span>
  <td width=136 valign=top style='width:101.8pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span style='mso-bookmark:genderidentity-value-set'>Fiji
  (Fijians)</span></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span
  style='mso-bookmark:genderidentity-value-set'></span></span></span></span>
  <td width=168 valign=top style='width:125.85pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'><span
  style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span
  style='mso-bookmark:genderidentity-value-set'></span></span></span></span>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span style='mso-bookmark:genderidentity-value-set'><o:p>&nbsp;</o:p></span></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span
  style='mso-bookmark:genderidentity-value-set'></span></span></span></span>
  <td width=159 valign=top style='width:119.45pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span style='mso-bookmark:genderidentity-value-set'>GSSO:010334
  [GSSO]</span></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span
  style='mso-bookmark:genderidentity-value-set'></span></span></span></span>
 </tr>
 <tr style='mso-yfti-irow:52'>
  <td width=161 valign=top style='width:120.4pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span style='mso-bookmark:genderidentity-value-set'><span
  class=SpellE>Wakatane</span></span></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span
  style='mso-bookmark:genderidentity-value-set'></span></span></span></span>
  <td width=136 valign=top style='width:101.8pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span style='mso-bookmark:genderidentity-value-set'>New
  Zealand (Māori)</span></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span
  style='mso-bookmark:genderidentity-value-set'></span></span></span></span>
  <td width=168 valign=top style='width:125.85pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'><span
  style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span
  style='mso-bookmark:genderidentity-value-set'></span></span></span></span>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span style='mso-bookmark:genderidentity-value-set'><o:p>&nbsp;</o:p></span></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span
  style='mso-bookmark:genderidentity-value-set'></span></span></span></span>
  <td width=159 valign=top style='width:119.45pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span style='mso-bookmark:genderidentity-value-set'>GSSO:007720
  [GSSO]</span></span></span></span></p>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span style='mso-bookmark:genderidentity-value-set'>HOMOIT:0001499
  [<span class=SpellE>Homosaurus</span>]</span></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span
  style='mso-bookmark:genderidentity-value-set'></span></span></span></span>
 </tr>
 <tr style='mso-yfti-irow:53'>
  <td width=161 valign=top style='width:120.4pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span style='mso-bookmark:genderidentity-value-set'><span
  class=SpellE>Waria</span></span></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span
  style='mso-bookmark:genderidentity-value-set'></span></span></span></span>
  <td width=136 valign=top style='width:101.8pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span style='mso-bookmark:genderidentity-value-set'>Indonesia
  (Indonesians)</span></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span
  style='mso-bookmark:genderidentity-value-set'></span></span></span></span>
  <td width=168 valign=top style='width:125.85pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'><span
  style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span
  style='mso-bookmark:genderidentity-value-set'></span></span></span></span>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span style='mso-bookmark:genderidentity-value-set'><o:p>&nbsp;</o:p></span></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span
  style='mso-bookmark:genderidentity-value-set'></span></span></span></span>
  <td width=159 valign=top style='width:119.45pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span style='mso-bookmark:genderidentity-value-set'>GSSO:002325
  [GSSO]</span></span></span></span></p>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span style='mso-bookmark:genderidentity-value-set'>HOMOIT:0001501
  [<span class=SpellE>Homosaurus</span>]</span></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span
  style='mso-bookmark:genderidentity-value-set'></span></span></span></span>
 </tr>
 <tr style='mso-yfti-irow:54'>
  <td width=161 valign=top style='width:120.4pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span style='mso-bookmark:genderidentity-value-set'><span
  class=SpellE>Whakawāhine</span></span></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span
  style='mso-bookmark:genderidentity-value-set'></span></span></span></span>
  <td width=136 valign=top style='width:101.8pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span style='mso-bookmark:genderidentity-value-set'>New
  Zealand (Māori)</span></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span
  style='mso-bookmark:genderidentity-value-set'></span></span></span></span>
  <td width=168 valign=top style='width:125.85pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'><span
  style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span
  style='mso-bookmark:genderidentity-value-set'></span></span></span></span>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span style='mso-bookmark:genderidentity-value-set'><o:p>&nbsp;</o:p></span></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span
  style='mso-bookmark:genderidentity-value-set'></span></span></span></span>
  <td width=159 valign=top style='width:119.45pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span style='mso-bookmark:genderidentity-value-set'>GSSO:007721
  [GSSO]</span></span></span></span></p>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span style='mso-bookmark:genderidentity-value-set'>HOMOIT:0001502
  [<span class=SpellE>Homosaurus</span>]</span></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span
  style='mso-bookmark:genderidentity-value-set'></span></span></span></span>
 </tr>
 <tr style='mso-yfti-irow:55;mso-yfti-lastrow:yes'>
  <td width=161 valign=top style='width:120.4pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span style='mso-bookmark:genderidentity-value-set'>X-gender
  (</span></span></span></span><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span style='mso-bookmark:genderidentity-value-set'><span
  class=SpellE><span style='font-family:"MS Mincho";mso-bidi-font-family:"MS Mincho"'>Ｘじぇんだ</span></span></span></span></span></span><span
  style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span
  style='mso-bookmark:genderidentity-value-set'><span style='font-family:"MS Mincho";
  mso-bidi-font-family:"MS Mincho"'>ー</span>)</span></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span
  style='mso-bookmark:genderidentity-value-set'></span></span></span></span>
  <td width=136 valign=top style='width:101.8pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span style='mso-bookmark:genderidentity-value-set'>Japan
  (Japanese)</span></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span
  style='mso-bookmark:genderidentity-value-set'></span></span></span></span>
  <td width=168 valign=top style='width:125.85pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span style='mso-bookmark:genderidentity-value-set'>Japanese
  neologism known in English literature since the 1990s; considered to be
  similar in some ways to English terms like “genderqueer” and “nonbinary”.</span></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span
  style='mso-bookmark:genderidentity-value-set'></span></span></span></span>
  <td width=159 valign=top style='width:119.45pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span style='mso-bookmark:genderidentity-value-set'>GSSO:002327
  [GSSO]</span></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span
  style='mso-bookmark:genderidentity-value-set'></span></span></span></span>
 </tr>
</table>

<p class=MsoBodyText><span style='mso-bookmark:appendices'><span
style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span style='mso-bookmark:genderidentity-value-set'>Note
that terms like “MTF”, “FTM”, “male-to-female transsexual”, and “female-to-male
transsexual”, etc. <span class=SpellE>were</span> not included. </span></span></span></span><a
href="https://doi.org/10.1093/jamia/ocab136"><span style='mso-bookmark:appendices'><span
style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span style='mso-bookmark:genderidentity-value-set'><span
class=SpellE>Kronk</span> noted in an article with 16 other trans authors</span></span></span></span></a><span
style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span
style='mso-bookmark:genderidentity-value-set'> in various health care fields
that “[t]<span class=SpellE>hese</span> options are antiquated and problematic.
The first two (FTM and MTF) have largely fallen out of use among transgender
people and in transgender-related literature because they fundamentally assume
a ‘change’ in gender—that a transgender person was ‘female’ and now is ‘male’
(FTM), usually due to, or following, some sort of medicalization process
(hormone replacement therapy and/or gender affirming surgery, for instance)
[91,92,93,94,95]. This contradicts how many trans people understand their
identity and can confuse patients. All four terms center cisgender people,
reserving unqualified ‘male’ and ‘female’ for them while trans people are
segregated into the separate, qualified categories of ‘MTF’, ‘FTM’,
‘transgender male’, ‘transgender female’, and ‘transgender’. Fundamentally,
this implies trans women and trans men are deviant and not actually female or male,
respectively, especially when the selection is ordered as “male”, “female”,
“MTF”, “FTM” [96,97,98]. Further, by separating these groups in the first
place, “male” and “female” are presented as the norm while “transgender male”
and “transgender female” are othered [96,97,98,99,100]. The separation can
insinuate that transgender people are not their stated gender and that
separation is cited heavily in transphobic and exclusionary actions
[101,102,103]”. In practice, many transgender persons would answer “male” or
“female” over “transgender male” or “transgender female”.</span></span></span></span></p>

<p class=MsoBodyText><span style='mso-bookmark:appendices'><span
style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span style='mso-bookmark:genderidentity-value-set'>When
a person is transgender, intersex, and/or gender-diverse, this is noted by an
incongruence between a gender identity datum and a sex for clinical use datum
(or data). The specific incongruence can be noted using the Comment and Linked
Clinical Observation.</span></span></span></span></p>

<h3><span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'>Entity: Pronouns
to Use, Attribute: Pronoun Set</span></span></span></h3>

<h4><span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'>Introduction</span></span></span></h4>

<p class=FirstParagraph><span style='mso-bookmark:appendices'><span
style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'>The attribute Pronoun Set in the
entity Pronouns to Use has a minimum value set which is extensible. At the time
of writing, information regarding non-English pronoun set systems was not well
represented in the HL7 Gender Harmony Project group. Therefore, only
English-language pronoun sets are provided in the minimum value set for the
time being, for use in Anglosphere countries (the United States, the United
Kingdom, Canada, Australia, New Zealand, etc.). However, in further
considerations, we will list some potential options to consider in future work
outside of the Anglosphere, which could potentially be adopted in other jurisdictions
with more representation from those jurisdictions.</span></span></span></p>

<p class=MsoBodyText><span style='mso-bookmark:appendices'><span
style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'>English-language pronoun sets are
shown in the following order for the purposes of declination:</span></span></span></p>

<p class=MsoBodyText style='margin-left:.5in;text-indent:-.25in;mso-list:l3 level1 lfo3'><span
style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><![if !supportLists]><span
style='font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol'><span style='mso-list:Ignore'>·<span style='font:7.0pt "Times New Roman"'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span></span><![endif]>Subject pronoun (Example: “<b>She</b> went to
the park.”)</span></span></span></p>

<p class=MsoBodyText style='margin-left:.5in;text-indent:-.25in;mso-list:l3 level1 lfo3'><span
style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><![if !supportLists]><span
style='font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol'><span style='mso-list:Ignore'>·<span style='font:7.0pt "Times New Roman"'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span></span><![endif]>Object pronoun (Example: “I went with <b>her</b>.”)</span></span></span></p>

<p class=MsoBodyText style='margin-left:.5in;text-indent:-.25in;mso-list:l3 level1 lfo3'><span
style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><![if !supportLists]><span
style='font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol'><span style='mso-list:Ignore'>·<span style='font:7.0pt "Times New Roman"'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span></span><![endif]>Possessive determiner (Example: “She<b> </b>brought
<b>her </b>frisbee.”)</span></span></span></p>

<p class=MsoBodyText style='margin-left:.5in;text-indent:-.25in;mso-list:l3 level1 lfo3'><span
style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><![if !supportLists]><span
style='font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol'><span style='mso-list:Ignore'>·<span style='font:7.0pt "Times New Roman"'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span></span><![endif]>Possessive pronoun (Example: “At least I think
it was <b>hers</b>.”)</span></span></span></p>

<p class=MsoBodyText style='margin-left:.5in;text-indent:-.25in;mso-list:l3 level1 lfo3'><span
style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><![if !supportLists]><span
style='font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol'><span style='mso-list:Ignore'>·<span style='font:7.0pt "Times New Roman"'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span></span><![endif]>Reflexive (Example: “She threw the frisbee to <b>herself</b>.”)</span></span></span></p>

<p class=MsoBodyText><span style='mso-bookmark:appendices'><span
style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'>Individual forms are separated by
commas (“,”) because some pronoun sets include the “/” character within them,
which would make programmatic parsing more difficult.</span></span></span></p>

<p class=MsoBodyText><span style='mso-bookmark:appendices'><span
style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'>Individuals may use more than one set
of pronouns at the same time. For instance, an individual may use she/her
pronouns and they/them pronouns (often represented as she/they). In this case,
the individual would select both “she, her, her, hers, herself” and “they,
them, their, theirs, themselves”. This is why the cardinality of pronouns is <span
class=GramE>0..</span><i>n</i>.</span></span></span></p>

<p class=MsoBodyText><span style='mso-bookmark:appendices'><span
style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><a name="_Hlk101263888">The primary
code system utilized is a subset of the LOINC answer list for Personal Pronouns
- Reported, LL5144-2 Personal pronouns / Answers: 10; Scale: Nom; Code: -;
Score: -.</a></span></span></span></p>

<span style='mso-bookmark:_Hlk101263888'></span>

<h4><span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'>Required Value
Names, Descriptions, and Example Code Systems</span></span></span></h4>

<table class=MsoTableGrid border=1 cellspacing=0 cellpadding=0
 style='border-collapse:collapse;border:none;mso-border-alt:solid windowtext .5pt;
 mso-yfti-tbllook:1184;mso-padding-alt:0in 5.4pt 0in 5.4pt'>
 <tr style='mso-yfti-irow:0;mso-yfti-firstrow:yes'>
  <td width=208 valign=top style='width:155.8pt;border:solid windowtext 1.0pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText align=center style='text-align:center'><span
  style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><b>Value Name
  (English)<o:p></o:p></b></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <td width=208 valign=top style='width:155.85pt;border:solid windowtext 1.0pt;
  border-left:none;mso-border-left-alt:solid windowtext .5pt;mso-border-alt:
  solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText align=center style='text-align:center'><span
  style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><b>Description<o:p></o:p></b></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <td width=208 valign=top style='width:155.85pt;border:solid windowtext 1.0pt;
  border-left:none;mso-border-left-alt:solid windowtext .5pt;mso-border-alt:
  solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText align=center style='text-align:center'><span
  style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><b>Example Code
  System<o:p></o:p></b></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
 </tr>
 <tr style='mso-yfti-irow:1'>
  <td width=208 valign=top style='width:155.8pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'>he, him, his, his, himself</span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <td width=208 valign=top style='width:155.85pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'>English-language pronouns usually
  associated with masculinity and/or maleness, that are to be used to refer to
  the person who uses them.</span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <td width=208 valign=top style='width:155.85pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'>LA29518-0 [LOINC]</span></span></span></p>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'>GSSO:010399 [GSSO]</span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
 </tr>
 <tr style='mso-yfti-irow:2'>
  <td width=208 valign=top style='width:155.8pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'>she, her, her, hers, herself</span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <td width=208 valign=top style='width:155.85pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'>English-language pronouns usually
  associated with femininity and/or femaleness, that are to be used to refer to
  the person who uses them.</span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <td width=208 valign=top style='width:155.85pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'>LA29519-8 [LOINC]</span></span></span></p>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'>GSSO:010398 [GSSO]</span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
 </tr>
 <tr style='mso-yfti-irow:3'>
  <td width=208 valign=top style='width:155.8pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'>they, them, their, theirs, themself</span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <td width=208 valign=top style='width:155.85pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'>Epicene English-language pronouns
  usually considered gender-neutral and/or gender-expansive, that are to be
  used to refer to the person who uses them.</span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <td width=208 valign=top style='width:155.85pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'>LA29520-6 [LOINC]</span></span></span></p>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'>GSSO:011490 [GSSO]</span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
 </tr>
 <tr style='mso-yfti-irow:4;mso-yfti-lastrow:yes'>
  <td width=208 valign=top style='width:155.8pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'>unknown</span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <td width=208 valign=top style='width:155.85pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'><span
  style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><o:p>&nbsp;</o:p></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <td width=208 valign=top style='width:155.85pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span class=SpellE>nullFlavor</span>
  UNK [HL7]</span></span></span></p>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'>Unknown, 261665006 [SNOMED CT]</span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
 </tr>
</table>

<h4><span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'>Further
Considerations</span></span></span></h4>

<p class=MsoBodyText><span style='mso-bookmark:appendices'><span
style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'>[additional <span class=SpellE>nullFlavor</span>
options]</span></span></span></p>

<p class=MsoBodyText><span style='mso-bookmark:appendices'><span
style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span class=GramE>A number of</span> English
neopronouns (<span class=SpellE>neologistic</span> pronouns) exist in addition
to the English <span class=SpellE>paleopronouns</span> (<span class=SpellE>paleologistic</span>
pronouns) included previously. A few of these are shown below.</span></span></span></p>

<table class=MsoTableGrid border=1 cellspacing=0 cellpadding=0
 style='border-collapse:collapse;border:none;mso-border-alt:solid windowtext .5pt;
 mso-yfti-tbllook:1184;mso-padding-alt:0in 5.4pt 0in 5.4pt'>
 <tr style='mso-yfti-irow:0;mso-yfti-firstrow:yes'>
  <td width=208 valign=top style='width:155.8pt;border:solid windowtext 1.0pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText align=center style='text-align:center'><span
  style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><b>Value Name
  (English)<o:p></o:p></b></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <td width=208 valign=top style='width:155.85pt;border:solid windowtext 1.0pt;
  border-left:none;mso-border-left-alt:solid windowtext .5pt;mso-border-alt:
  solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText align=center style='text-align:center'><span
  style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><b>Description<o:p></o:p></b></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <td width=208 valign=top style='width:155.85pt;border:solid windowtext 1.0pt;
  border-left:none;mso-border-left-alt:solid windowtext .5pt;mso-border-alt:
  solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText align=center style='text-align:center'><span
  style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><b>Example Code
  System<o:p></o:p></b></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
 </tr>
 <tr style='mso-yfti-irow:1'>
  <td width=208 valign=top style='width:155.8pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'>co, co, cos, cos, <span
  class=SpellE>coself</span></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <td width=208 valign=top style='width:155.85pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'><span
  style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><o:p>&nbsp;</o:p></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <td width=208 valign=top style='width:155.85pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'>LA29515-6 [LOINC]</span></span></span></p>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'>GSSO:011647 [GSSO]</span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
 </tr>
 <tr style='mso-yfti-irow:2'>
  <td width=208 valign=top style='width:155.8pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span class=SpellE>en</span>, <span
  class=SpellE>en</span>, <span class=SpellE>ens</span>, <span class=SpellE>ens</span>,
  <span class=SpellE>enself</span></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <td width=208 valign=top style='width:155.85pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'><span
  style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><o:p>&nbsp;</o:p></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <td width=208 valign=top style='width:155.85pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'>LA29516-4 [LOINC]</span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
 </tr>
 <tr style='mso-yfti-irow:3'>
  <td width=208 valign=top style='width:155.8pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span class=SpellE>ey</span>, <span
  class=SpellE>em</span>, <span class=SpellE>eir</span>, <span class=SpellE>eirs</span>,
  <span class=SpellE>emself</span></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <td width=208 valign=top style='width:155.85pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'><span
  style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><o:p>&nbsp;</o:p></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <td width=208 valign=top style='width:155.85pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'>LA29517-2 [LOINC]</span></span></span></p>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'>GSSO:011577 [GSSO]</span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
 </tr>
 <tr style='mso-yfti-irow:4'>
  <td width=208 valign=top style='width:155.8pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span class=SpellE>ve</span>, vis, <span
  class=SpellE>ver</span>, <span class=SpellE>ver</span>, <span class=SpellE>verself</span></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <td width=208 valign=top style='width:155.85pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'><span
  style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><o:p>&nbsp;</o:p></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <td width=208 valign=top style='width:155.85pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'>LA29524-8 [LOINC]</span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
 </tr>
 <tr style='mso-yfti-irow:5'>
  <td width=208 valign=top style='width:155.8pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span class=SpellE>xie</span>, hir,
  hir, hirs, hirself</span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <td width=208 valign=top style='width:155.85pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'><span
  style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><o:p>&nbsp;</o:p></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <td width=208 valign=top style='width:155.85pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'>LA29521-4 [LOINC]</span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
 </tr>
 <tr style='mso-yfti-irow:6'>
  <td width=208 valign=top style='width:155.8pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span class=SpellE>yo</span>, <span
  class=SpellE>yo</span>, <span class=SpellE>yos</span>, <span class=SpellE>yos</span>,
  <span class=SpellE>yoself</span></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <td width=208 valign=top style='width:155.85pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'><span
  style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><o:p>&nbsp;</o:p></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <td width=208 valign=top style='width:155.85pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'>LA29522-2 [LOINC]</span></span></span></p>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'>GSSO:011555 [GSSO]</span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
 </tr>
 <tr style='mso-yfti-irow:7;mso-yfti-lastrow:yes'>
  <td width=208 valign=top style='width:155.8pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'>ze, <span class=SpellE>zir</span>, <span
  class=SpellE>zir</span>, <span class=SpellE>zirs</span>, <span class=SpellE>zirself</span></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <td width=208 valign=top style='width:155.85pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'><span
  style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><o:p>&nbsp;</o:p></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <td width=208 valign=top style='width:155.85pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'>LA29523-0 [LOINC]</span></span></span></p>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'>GSSO:011556 [GSSO]</span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
 </tr>
</table>

<p class=MsoBodyText><span style='mso-bookmark:appendices'><span
style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'>Several other languages which use
gendered pronouns should also consider constructing similar structures in their
electronic health records. However, they should never automatically map
pronouns in one language to pronouns in another language, as the connotations
involved as language specific. A few potential examples to consider are
included below in some languages, but these are not meant to be exhaustive, and
should only be implemented with appropriate jurisdictional feedback. The sets
are derived from the respective pages in </span></span></span><a
href="https://pronouns.page/"><span style='mso-bookmark:appendices'><span
style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span class=SpellE>Pronouns.page</span></span></span></span></a><span
style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'>.</span></span></span></p>

<table class=MsoTableGrid border=1 cellspacing=0 cellpadding=0
 style='border-collapse:collapse;border:none;mso-border-alt:solid windowtext .5pt;
 mso-yfti-tbllook:1184;mso-padding-alt:0in 5.4pt 0in 5.4pt'>
 <tr style='mso-yfti-irow:0;mso-yfti-firstrow:yes'>
  <td width=208 valign=top style='width:155.8pt;border:solid windowtext 1.0pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText align=center style='text-align:center'><span
  style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><b>Value Name
  (German)<o:p></o:p></b></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <td width=208 valign=top style='width:155.85pt;border:solid windowtext 1.0pt;
  border-left:none;mso-border-left-alt:solid windowtext .5pt;mso-border-alt:
  solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText align=center style='text-align:center'><span
  style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><b>Description<o:p></o:p></b></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <td width=208 valign=top style='width:155.85pt;border:solid windowtext 1.0pt;
  border-left:none;mso-border-left-alt:solid windowtext .5pt;mso-border-alt:
  solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText align=center style='text-align:center'><span
  style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><b>Example Code
  System<o:p></o:p></b></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
 </tr>
 <tr style='mso-yfti-irow:1'>
  <td width=208 valign=top style='width:155.8pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span class=SpellE>sie</span>, <span
  class=SpellE>ihr</span></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <td width=208 valign=top style='width:155.85pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'><span
  style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><o:p>&nbsp;</o:p></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <td width=208 valign=top style='width:155.85pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'><span
  style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><o:p>&nbsp;</o:p></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
 </tr>
 <tr style='mso-yfti-irow:2'>
  <td width=208 valign=top style='width:155.8pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'>er, <span class=SpellE>ihm</span></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <td width=208 valign=top style='width:155.85pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'><span
  style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><o:p>&nbsp;</o:p></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <td width=208 valign=top style='width:155.85pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'><span
  style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><o:p>&nbsp;</o:p></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
 </tr>
 <tr style='mso-yfti-irow:3'>
  <td width=208 valign=top style='width:155.8pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'>es, <span class=SpellE>ihm</span></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <td width=208 valign=top style='width:155.85pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'><span
  style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><o:p>&nbsp;</o:p></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <td width=208 valign=top style='width:155.85pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'><span
  style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><o:p>&nbsp;</o:p></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
 </tr>
 <tr style='mso-yfti-irow:4'>
  <td width=208 valign=top style='width:155.8pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span class=SpellE>dey</span>, <span
  class=SpellE>denen</span></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <td width=208 valign=top style='width:155.85pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'><span
  style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><o:p>&nbsp;</o:p></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <td width=208 valign=top style='width:155.85pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'><span
  style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><o:p>&nbsp;</o:p></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
 </tr>
 <tr style='mso-yfti-irow:5'>
  <td width=208 valign=top style='width:155.8pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'>die, <span class=SpellE>denen</span></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <td width=208 valign=top style='width:155.85pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'><span
  style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><o:p>&nbsp;</o:p></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <td width=208 valign=top style='width:155.85pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'><span
  style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><o:p>&nbsp;</o:p></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
 </tr>
 <tr style='mso-yfti-irow:6'>
  <td width=208 valign=top style='width:155.8pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span class=SpellE>el</span>, <span
  class=SpellE>em</span></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <td width=208 valign=top style='width:155.85pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'><span
  style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><o:p>&nbsp;</o:p></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <td width=208 valign=top style='width:155.85pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'><span
  style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><o:p>&nbsp;</o:p></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
 </tr>
 <tr style='mso-yfti-irow:7'>
  <td width=208 valign=top style='width:155.8pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span class=SpellE>em</span>, <span
  class=SpellE>em</span></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <td width=208 valign=top style='width:155.85pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'><span
  style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><o:p>&nbsp;</o:p></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <td width=208 valign=top style='width:155.85pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'><span
  style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><o:p>&nbsp;</o:p></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
 </tr>
 <tr style='mso-yfti-irow:8'>
  <td width=208 valign=top style='width:155.8pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span class=SpellE>en</span>, <span
  class=SpellE>en</span></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <td width=208 valign=top style='width:155.85pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'><span
  style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><o:p>&nbsp;</o:p></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <td width=208 valign=top style='width:155.85pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'><span
  style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><o:p>&nbsp;</o:p></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
 </tr>
 <tr style='mso-yfti-irow:9'>
  <td width=208 valign=top style='width:155.8pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span class=SpellE>en</span>, <span
  class=SpellE>em</span></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <td width=208 valign=top style='width:155.85pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'><span
  style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><o:p>&nbsp;</o:p></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <td width=208 valign=top style='width:155.85pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'><span
  style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><o:p>&nbsp;</o:p></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
 </tr>
 <tr style='mso-yfti-irow:10'>
  <td width=208 valign=top style='width:155.8pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'>et, <span class=SpellE>siem</span></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <td width=208 valign=top style='width:155.85pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'><span
  style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><o:p>&nbsp;</o:p></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <td width=208 valign=top style='width:155.85pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'><span
  style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><o:p>&nbsp;</o:p></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
 </tr>
 <tr style='mso-yfti-irow:11'>
  <td width=208 valign=top style='width:155.8pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span class=SpellE>ey</span>, <span
  class=SpellE>emm</span></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <td width=208 valign=top style='width:155.85pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'><span
  style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><o:p>&nbsp;</o:p></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <td width=208 valign=top style='width:155.85pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'><span
  style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><o:p>&nbsp;</o:p></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
 </tr>
 <tr style='mso-yfti-irow:12'>
  <td width=208 valign=top style='width:155.8pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span class=SpellE>hän</span>, sim</span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <td width=208 valign=top style='width:155.85pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'><span
  style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><o:p>&nbsp;</o:p></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <td width=208 valign=top style='width:155.85pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'><span
  style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><o:p>&nbsp;</o:p></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
 </tr>
 <tr style='mso-yfti-irow:13'>
  <td width=208 valign=top style='width:155.8pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'>hen, hem</span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <td width=208 valign=top style='width:155.85pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'><span
  style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><o:p>&nbsp;</o:p></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <td width=208 valign=top style='width:155.85pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'><span
  style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><o:p>&nbsp;</o:p></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
 </tr>
 <tr style='mso-yfti-irow:14'>
  <td width=208 valign=top style='width:155.8pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'>hie, hiem</span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <td width=208 valign=top style='width:155.85pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'><span
  style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><o:p>&nbsp;</o:p></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <td width=208 valign=top style='width:155.85pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'><span
  style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><o:p>&nbsp;</o:p></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
 </tr>
 <tr style='mso-yfti-irow:15'>
  <td width=208 valign=top style='width:155.8pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span class=SpellE>iks</span>, <span
  class=SpellE>iks</span></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <td width=208 valign=top style='width:155.85pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'><span
  style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><o:p>&nbsp;</o:p></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <td width=208 valign=top style='width:155.85pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'><span
  style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><o:p>&nbsp;</o:p></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
 </tr>
 <tr style='mso-yfti-irow:16'>
  <td width=208 valign=top style='width:155.8pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span class=SpellE>ind</span>, <span
  class=SpellE>inde</span></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <td width=208 valign=top style='width:155.85pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'><span
  style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><o:p>&nbsp;</o:p></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <td width=208 valign=top style='width:155.85pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'><span
  style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><o:p>&nbsp;</o:p></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
 </tr>
 <tr style='mso-yfti-irow:17'>
  <td width=208 valign=top style='width:155.8pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span class=SpellE>nin</span>, <span
  class=SpellE>nim</span></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <td width=208 valign=top style='width:155.85pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'><span
  style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><o:p>&nbsp;</o:p></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <td width=208 valign=top style='width:155.85pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'><span
  style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><o:p>&nbsp;</o:p></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
 </tr>
 <tr style='mso-yfti-irow:18'>
  <td width=208 valign=top style='width:155.8pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span class=SpellE>oj</span>, <span
  class=SpellE>ojm</span></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <td width=208 valign=top style='width:155.85pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'><span
  style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><o:p>&nbsp;</o:p></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <td width=208 valign=top style='width:155.85pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'><span
  style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><o:p>&nbsp;</o:p></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
 </tr>
 <tr style='mso-yfti-irow:19'>
  <td width=208 valign=top style='width:155.8pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'>per, per</span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <td width=208 valign=top style='width:155.85pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'><span
  style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><o:p>&nbsp;</o:p></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <td width=208 valign=top style='width:155.85pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'><span
  style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><o:p>&nbsp;</o:p></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
 </tr>
 <tr style='mso-yfti-irow:20'>
  <td width=208 valign=top style='width:155.8pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'>ser, <span class=SpellE>sem</span></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <td width=208 valign=top style='width:155.85pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'><span
  style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><o:p>&nbsp;</o:p></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <td width=208 valign=top style='width:155.85pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'><span
  style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><o:p>&nbsp;</o:p></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
 </tr>
 <tr style='mso-yfti-irow:21'>
  <td width=208 valign=top style='width:155.8pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span class=SpellE>sier</span>, <span
  class=SpellE>siem</span></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <td width=208 valign=top style='width:155.85pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'><span
  style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><o:p>&nbsp;</o:p></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <td width=208 valign=top style='width:155.85pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'><span
  style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><o:p>&nbsp;</o:p></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
 </tr>
 <tr style='mso-yfti-irow:22'>
  <td width=208 valign=top style='width:155.8pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'>they, them</span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <td width=208 valign=top style='width:155.85pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'><span
  style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><o:p>&nbsp;</o:p></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <td width=208 valign=top style='width:155.85pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'><span
  style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><o:p>&nbsp;</o:p></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
 </tr>
 <tr style='mso-yfti-irow:23'>
  <td width=208 valign=top style='width:155.8pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span class=SpellE>xier</span>, <span
  class=SpellE>xiem</span></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <td width=208 valign=top style='width:155.85pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'><span
  style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><o:p>&nbsp;</o:p></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <td width=208 valign=top style='width:155.85pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'><span
  style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><o:p>&nbsp;</o:p></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
 </tr>
 <tr style='mso-yfti-irow:24'>
  <td width=208 valign=top style='width:155.8pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span class=SpellE>zet</span>, <span
  class=SpellE>zerm</span></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <td width=208 valign=top style='width:155.85pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'><span
  style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><o:p>&nbsp;</o:p></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <td width=208 valign=top style='width:155.85pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'><span
  style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><o:p>&nbsp;</o:p></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
 </tr>
 <tr style='mso-yfti-irow:25;mso-yfti-lastrow:yes'>
  <td width=208 valign=top style='width:155.8pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span class=SpellE>ersie</span>, <span
  class=SpellE>ihmihr</span></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <td width=208 valign=top style='width:155.85pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'><span
  style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><o:p>&nbsp;</o:p></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <td width=208 valign=top style='width:155.85pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'><span
  style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><o:p>&nbsp;</o:p></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
 </tr>
</table>

<p class=MsoBodyText><span style='mso-bookmark:appendices'><span
style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><o:p>&nbsp;</o:p></span></span></span></p>

<table class=MsoTableGrid border=1 cellspacing=0 cellpadding=0
 style='border-collapse:collapse;border:none;mso-border-alt:solid windowtext .5pt;
 mso-yfti-tbllook:1184;mso-padding-alt:0in 5.4pt 0in 5.4pt'>
 <tr style='mso-yfti-irow:0;mso-yfti-firstrow:yes'>
  <td width=208 valign=top style='width:155.8pt;border:solid windowtext 1.0pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText align=center style='text-align:center'><span
  style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><b>Value Name
  (Spanish)<o:p></o:p></b></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <td width=208 valign=top style='width:155.85pt;border:solid windowtext 1.0pt;
  border-left:none;mso-border-left-alt:solid windowtext .5pt;mso-border-alt:
  solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText align=center style='text-align:center'><span
  style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><b>Description<o:p></o:p></b></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <td width=208 valign=top style='width:155.85pt;border:solid windowtext 1.0pt;
  border-left:none;mso-border-left-alt:solid windowtext .5pt;mso-border-alt:
  solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText align=center style='text-align:center'><span
  style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><b>Example Code
  System<o:p></o:p></b></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
 </tr>
 <tr style='mso-yfti-irow:1'>
  <td width=208 valign=top style='width:155.8pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span class=SpellE>ella</span>, la</span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <td width=208 valign=top style='width:155.85pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'><span
  style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><o:p>&nbsp;</o:p></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <td width=208 valign=top style='width:155.85pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'><span
  style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><o:p>&nbsp;</o:p></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
 </tr>
 <tr style='mso-yfti-irow:2'>
  <td width=208 valign=top style='width:155.8pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span class=SpellE>él</span>, lo</span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <td width=208 valign=top style='width:155.85pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'><span
  style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><o:p>&nbsp;</o:p></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <td width=208 valign=top style='width:155.85pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'><span
  style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><o:p>&nbsp;</o:p></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
 </tr>
 <tr style='mso-yfti-irow:3'>
  <td width=208 valign=top style='width:155.8pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span class=SpellE>elle</span>, le</span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <td width=208 valign=top style='width:155.85pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'><span
  style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><o:p>&nbsp;</o:p></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <td width=208 valign=top style='width:155.85pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'><span
  style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><o:p>&nbsp;</o:p></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
 </tr>
 <tr style='mso-yfti-irow:4'>
  <td width=208 valign=top style='width:155.8pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span class=SpellE>ellu</span>, <span
  class=SpellE>lu</span></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <td width=208 valign=top style='width:155.85pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'><span
  style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><o:p>&nbsp;</o:p></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <td width=208 valign=top style='width:155.85pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'><span
  style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><o:p>&nbsp;</o:p></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
 </tr>
 <tr style='mso-yfti-irow:5'>
  <td width=208 valign=top style='width:155.8pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span class=SpellE>elli</span>, li</span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <td width=208 valign=top style='width:155.85pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'><span
  style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><o:p>&nbsp;</o:p></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <td width=208 valign=top style='width:155.85pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'><span
  style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><o:p>&nbsp;</o:p></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
 </tr>
 <tr style='mso-yfti-irow:6'>
  <td width=208 valign=top style='width:155.8pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span class=SpellE>elloa</span>,
  loa</span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <td width=208 valign=top style='width:155.85pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'><span
  style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><o:p>&nbsp;</o:p></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <td width=208 valign=top style='width:155.85pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'><span
  style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><o:p>&nbsp;</o:p></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
 </tr>
 <tr style='mso-yfti-irow:7'>
  <td width=208 valign=top style='width:155.8pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'>il, li</span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <td width=208 valign=top style='width:155.85pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'><span
  style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><o:p>&nbsp;</o:p></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <td width=208 valign=top style='width:155.85pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'><span
  style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><o:p>&nbsp;</o:p></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
 </tr>
 <tr style='mso-yfti-irow:8'>
  <td width=208 valign=top style='width:155.8pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span class=SpellE>ól</span>, <span
  class=SpellE>ol</span></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <td width=208 valign=top style='width:155.85pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'><span
  style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><o:p>&nbsp;</o:p></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <td width=208 valign=top style='width:155.85pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'><span
  style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><o:p>&nbsp;</o:p></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
 </tr>
 <tr style='mso-yfti-irow:9;mso-yfti-lastrow:yes'>
  <td width=208 valign=top style='width:155.8pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span class=SpellE>xelle</span>, le</span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <td width=208 valign=top style='width:155.85pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'><span
  style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><o:p>&nbsp;</o:p></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <td width=208 valign=top style='width:155.85pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'><span
  style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><o:p>&nbsp;</o:p></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
 </tr>
</table>

<p class=MsoBodyText><span style='mso-bookmark:appendices'><span
style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><o:p>&nbsp;</o:p></span></span></span></p>

<table class=MsoTableGrid border=1 cellspacing=0 cellpadding=0
 style='border-collapse:collapse;border:none;mso-border-alt:solid windowtext .5pt;
 mso-yfti-tbllook:1184;mso-padding-alt:0in 5.4pt 0in 5.4pt'>
 <tr style='mso-yfti-irow:0;mso-yfti-firstrow:yes'>
  <td width=208 valign=top style='width:155.8pt;border:solid windowtext 1.0pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText align=center style='text-align:center'><span
  style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><b>Value Name
  (French)<o:p></o:p></b></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <td width=208 valign=top style='width:155.85pt;border:solid windowtext 1.0pt;
  border-left:none;mso-border-left-alt:solid windowtext .5pt;mso-border-alt:
  solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText align=center style='text-align:center'><span
  style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><b>Description<o:p></o:p></b></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <td width=208 valign=top style='width:155.85pt;border:solid windowtext 1.0pt;
  border-left:none;mso-border-left-alt:solid windowtext .5pt;mso-border-alt:
  solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText align=center style='text-align:center'><span
  style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><b>Example Code
  System<o:p></o:p></b></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
 </tr>
 <tr style='mso-yfti-irow:1'>
  <td width=208 valign=top style='width:155.8pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span class=SpellE>iel</span>, lea</span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <td width=208 valign=top style='width:155.85pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'><span
  style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><o:p>&nbsp;</o:p></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <td width=208 valign=top style='width:155.85pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'><span
  style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><o:p>&nbsp;</o:p></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
 </tr>
 <tr style='mso-yfti-irow:2'>
  <td width=208 valign=top style='width:155.8pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'>al, lea</span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <td width=208 valign=top style='width:155.85pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'><span
  style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><o:p>&nbsp;</o:p></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <td width=208 valign=top style='width:155.85pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'><span
  style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><o:p>&nbsp;</o:p></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
 </tr>
 <tr style='mso-yfti-irow:3'>
  <td width=208 valign=top style='width:155.8pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span class=SpellE>ael</span>, lea</span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <td width=208 valign=top style='width:155.85pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'><span
  style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><o:p>&nbsp;</o:p></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <td width=208 valign=top style='width:155.85pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'><span
  style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><o:p>&nbsp;</o:p></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
 </tr>
 <tr style='mso-yfti-irow:4'>
  <td width=208 valign=top style='width:155.8pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span class=SpellE>el</span>, lea</span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <td width=208 valign=top style='width:155.85pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'><span
  style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><o:p>&nbsp;</o:p></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <td width=208 valign=top style='width:155.85pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'><span
  style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><o:p>&nbsp;</o:p></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
 </tr>
 <tr style='mso-yfti-irow:5'>
  <td width=208 valign=top style='width:155.8pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span class=SpellE>em</span>, lea</span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <td width=208 valign=top style='width:155.85pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'><span
  style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><o:p>&nbsp;</o:p></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <td width=208 valign=top style='width:155.85pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'><span
  style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><o:p>&nbsp;</o:p></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
 </tr>
 <tr style='mso-yfti-irow:6'>
  <td width=208 valign=top style='width:155.8pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span class=SpellE>ielle</span>,
  lea</span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <td width=208 valign=top style='width:155.85pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'><span
  style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><o:p>&nbsp;</o:p></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <td width=208 valign=top style='width:155.85pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'><span
  style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><o:p>&nbsp;</o:p></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
 </tr>
 <tr style='mso-yfti-irow:7'>
  <td width=208 valign=top style='width:155.8pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span class=SpellE>ille</span>, lea</span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <td width=208 valign=top style='width:155.85pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'><span
  style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><o:p>&nbsp;</o:p></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <td width=208 valign=top style='width:155.85pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'><span
  style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><o:p>&nbsp;</o:p></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
 </tr>
 <tr style='mso-yfti-irow:8'>
  <td width=208 valign=top style='width:155.8pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span class=SpellE>im</span>, lea</span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <td width=208 valign=top style='width:155.85pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'><span
  style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><o:p>&nbsp;</o:p></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <td width=208 valign=top style='width:155.85pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'><span
  style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><o:p>&nbsp;</o:p></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
 </tr>
 <tr style='mso-yfti-irow:9'>
  <td width=208 valign=top style='width:155.8pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span class=SpellE>ol</span>, lo</span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <td width=208 valign=top style='width:155.85pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'><span
  style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><o:p>&nbsp;</o:p></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <td width=208 valign=top style='width:155.85pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'><span
  style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><o:p>&nbsp;</o:p></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
 </tr>
 <tr style='mso-yfti-irow:10'>
  <td width=208 valign=top style='width:155.8pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span class=SpellE>ul</span>, <span
  class=SpellE>lu</span></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <td width=208 valign=top style='width:155.85pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'><span
  style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><o:p>&nbsp;</o:p></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <td width=208 valign=top style='width:155.85pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'><span
  style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><o:p>&nbsp;</o:p></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
 </tr>
 <tr style='mso-yfti-irow:11'>
  <td width=208 valign=top style='width:155.8pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span class=SpellE>yel</span>, lea</span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <td width=208 valign=top style='width:155.85pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'><span
  style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><o:p>&nbsp;</o:p></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <td width=208 valign=top style='width:155.85pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'><span
  style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><o:p>&nbsp;</o:p></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
 </tr>
 <tr style='mso-yfti-irow:12;mso-yfti-lastrow:yes'>
  <td width=208 valign=top style='width:155.8pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span class=SpellE>yelle</span>,
  lea</span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <td width=208 valign=top style='width:155.85pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'><span
  style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><o:p>&nbsp;</o:p></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <td width=208 valign=top style='width:155.85pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'><span
  style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><o:p>&nbsp;</o:p></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
 </tr>
</table>

<p class=MsoBodyText><span style='mso-bookmark:appendices'><span
style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><o:p>&nbsp;</o:p></span></span></span></p>

<table class=MsoTableGrid border=1 cellspacing=0 cellpadding=0
 style='border-collapse:collapse;border:none;mso-border-alt:solid windowtext .5pt;
 mso-yfti-tbllook:1184;mso-padding-alt:0in 5.4pt 0in 5.4pt'>
 <tr style='mso-yfti-irow:0;mso-yfti-firstrow:yes'>
  <td width=208 valign=top style='width:155.8pt;border:solid windowtext 1.0pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText align=center style='text-align:center'><span
  style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><b>Value Name
  (Dutch)<o:p></o:p></b></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <td width=208 valign=top style='width:155.85pt;border:solid windowtext 1.0pt;
  border-left:none;mso-border-left-alt:solid windowtext .5pt;mso-border-alt:
  solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText align=center style='text-align:center'><span
  style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><b>Description<o:p></o:p></b></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <td width=208 valign=top style='width:155.85pt;border:solid windowtext 1.0pt;
  border-left:none;mso-border-left-alt:solid windowtext .5pt;mso-border-alt:
  solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText align=center style='text-align:center'><span
  style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><b>Example Code
  System<o:p></o:p></b></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
 </tr>
 <tr style='mso-yfti-irow:1'>
  <td width=208 valign=top style='width:155.8pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span class=SpellE>zij</span>, <span
  class=SpellE>haar</span>, <span class=SpellE>haar</span></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <td width=208 valign=top style='width:155.85pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'><span
  style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><o:p>&nbsp;</o:p></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <td width=208 valign=top style='width:155.85pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'><span
  style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><o:p>&nbsp;</o:p></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
 </tr>
 <tr style='mso-yfti-irow:2'>
  <td width=208 valign=top style='width:155.8pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span class=SpellE>hij</span>, hem,
  <span class=SpellE>zijn</span></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <td width=208 valign=top style='width:155.85pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'><span
  style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><o:p>&nbsp;</o:p></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <td width=208 valign=top style='width:155.85pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'><span
  style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><o:p>&nbsp;</o:p></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
 </tr>
 <tr style='mso-yfti-irow:3'>
  <td width=208 valign=top style='width:155.8pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'>hen, hen, <span class=SpellE>hun</span></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <td width=208 valign=top style='width:155.85pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'><span
  style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><o:p>&nbsp;</o:p></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <td width=208 valign=top style='width:155.85pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'><span
  style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><o:p>&nbsp;</o:p></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
 </tr>
 <tr style='mso-yfti-irow:4'>
  <td width=208 valign=top style='width:155.8pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'>hen, <span class=SpellE>hun</span>,
  <span class=SpellE>hun</span></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <td width=208 valign=top style='width:155.85pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'><span
  style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><o:p>&nbsp;</o:p></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <td width=208 valign=top style='width:155.85pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'><span
  style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><o:p>&nbsp;</o:p></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
 </tr>
 <tr style='mso-yfti-irow:5'>
  <td width=208 valign=top style='width:155.8pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'>die, hen, <span class=SpellE>hun</span></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <td width=208 valign=top style='width:155.85pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'><span
  style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><o:p>&nbsp;</o:p></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <td width=208 valign=top style='width:155.85pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'><span
  style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><o:p>&nbsp;</o:p></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
 </tr>
 <tr style='mso-yfti-irow:6'>
  <td width=208 valign=top style='width:155.8pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'>hen, hen, hens</span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <td width=208 valign=top style='width:155.85pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'><span
  style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><o:p>&nbsp;</o:p></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <td width=208 valign=top style='width:155.85pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'><span
  style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><o:p>&nbsp;</o:p></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
 </tr>
 <tr style='mso-yfti-irow:7'>
  <td width=208 valign=top style='width:155.8pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'>die, die, <span class=SpellE>diens</span></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <td width=208 valign=top style='width:155.85pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'><span
  style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><o:p>&nbsp;</o:p></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <td width=208 valign=top style='width:155.85pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'><span
  style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><o:p>&nbsp;</o:p></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
 </tr>
 <tr style='mso-yfti-irow:8'>
  <td width=208 valign=top style='width:155.8pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'>dee, dem, <span class=SpellE>dijr</span></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <td width=208 valign=top style='width:155.85pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'><span
  style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><o:p>&nbsp;</o:p></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <td width=208 valign=top style='width:155.85pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'><span
  style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><o:p>&nbsp;</o:p></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
 </tr>
 <tr style='mso-yfti-irow:9'>
  <td width=208 valign=top style='width:155.8pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span class=SpellE>dij</span>, dem,
  <span class=SpellE>dijr</span></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <td width=208 valign=top style='width:155.85pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'><span
  style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><o:p>&nbsp;</o:p></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <td width=208 valign=top style='width:155.85pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'><span
  style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><o:p>&nbsp;</o:p></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
 </tr>
 <tr style='mso-yfti-irow:10'>
  <td width=208 valign=top style='width:155.8pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span class=SpellE>nij</span>, <span
  class=SpellE>ner</span>, <span class=SpellE>nijr</span></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <td width=208 valign=top style='width:155.85pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'><span
  style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><o:p>&nbsp;</o:p></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <td width=208 valign=top style='width:155.85pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'><span
  style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><o:p>&nbsp;</o:p></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
 </tr>
 <tr style='mso-yfti-irow:11'>
  <td width=208 valign=top style='width:155.8pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span class=SpellE>vij</span>, <span
  class=SpellE>vijn</span>, <span class=SpellE>vijns</span></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <td width=208 valign=top style='width:155.85pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'><span
  style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><o:p>&nbsp;</o:p></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <td width=208 valign=top style='width:155.85pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'><span
  style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><o:p>&nbsp;</o:p></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
 </tr>
 <tr style='mso-yfti-irow:12'>
  <td width=208 valign=top style='width:155.8pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span class=SpellE>vij</span>, her,
  <span class=SpellE>zaar</span></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <td width=208 valign=top style='width:155.85pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'><span
  style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><o:p>&nbsp;</o:p></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <td width=208 valign=top style='width:155.85pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'><span
  style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><o:p>&nbsp;</o:p></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
 </tr>
 <tr style='mso-yfti-irow:13'>
  <td width=208 valign=top style='width:155.8pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span class=SpellE>zhij</span>, <span
  class=SpellE>zhaar</span>, <span class=SpellE>zhaar</span></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <td width=208 valign=top style='width:155.85pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'><span
  style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><o:p>&nbsp;</o:p></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <td width=208 valign=top style='width:155.85pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'><span
  style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><o:p>&nbsp;</o:p></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
 </tr>
 <tr style='mso-yfti-irow:14;mso-yfti-lastrow:yes'>
  <td width=208 valign=top style='width:155.8pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span class=SpellE>zem</span>, <span
  class=SpellE>zeer</span>, <span class=SpellE>zeer</span></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <td width=208 valign=top style='width:155.85pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'><span
  style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><o:p>&nbsp;</o:p></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <td width=208 valign=top style='width:155.85pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'><span
  style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><o:p>&nbsp;</o:p></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
 </tr>
</table>

<p class=MsoBodyText><span style='mso-bookmark:appendices'><span
style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><o:p>&nbsp;</o:p></span></span></span></p>

<table class=MsoTableGrid border=1 cellspacing=0 cellpadding=0
 style='border-collapse:collapse;border:none;mso-border-alt:solid windowtext .5pt;
 mso-yfti-tbllook:1184;mso-padding-alt:0in 5.4pt 0in 5.4pt'>
 <tr style='mso-yfti-irow:0;mso-yfti-firstrow:yes'>
  <td width=208 valign=top style='width:155.8pt;border:solid windowtext 1.0pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText align=center style='text-align:center'><span
  style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><b>Value Name (Bokmål)<o:p></o:p></b></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <td width=208 valign=top style='width:155.85pt;border:solid windowtext 1.0pt;
  border-left:none;mso-border-left-alt:solid windowtext .5pt;mso-border-alt:
  solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText align=center style='text-align:center'><span
  style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><b>Description<o:p></o:p></b></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <td width=208 valign=top style='width:155.85pt;border:solid windowtext 1.0pt;
  border-left:none;mso-border-left-alt:solid windowtext .5pt;mso-border-alt:
  solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText align=center style='text-align:center'><span
  style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><b>Example Code
  System<o:p></o:p></b></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
 </tr>
 <tr style='mso-yfti-irow:1'>
  <td width=208 valign=top style='width:155.8pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span class=SpellE>han</span>, ham</span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <td width=208 valign=top style='width:155.85pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'><span
  style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><o:p>&nbsp;</o:p></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <td width=208 valign=top style='width:155.85pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'><span
  style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><o:p>&nbsp;</o:p></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
 </tr>
 <tr style='mso-yfti-irow:2'>
  <td width=208 valign=top style='width:155.8pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span class=SpellE>hun</span>, <span
  class=SpellE>henne</span></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <td width=208 valign=top style='width:155.85pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'><span
  style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><o:p>&nbsp;</o:p></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <td width=208 valign=top style='width:155.85pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'><span
  style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><o:p>&nbsp;</o:p></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
 </tr>
 <tr style='mso-yfti-irow:3'>
  <td width=208 valign=top style='width:155.8pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'>hen, hens</span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <td width=208 valign=top style='width:155.85pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'><span
  style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><o:p>&nbsp;</o:p></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <td width=208 valign=top style='width:155.85pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'><span
  style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><o:p>&nbsp;</o:p></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
 </tr>
 <tr style='mso-yfti-irow:4;mso-yfti-lastrow:yes'>
  <td width=208 valign=top style='width:155.8pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span class=SpellE>hin</span>, <span
  class=SpellE>hins</span></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <td width=208 valign=top style='width:155.85pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'><span
  style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><o:p>&nbsp;</o:p></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <td width=208 valign=top style='width:155.85pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'><span
  style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><o:p>&nbsp;</o:p></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
 </tr>
</table>

<p class=MsoBodyText><span style='mso-bookmark:appendices'><span
style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><o:p>&nbsp;</o:p></span></span></span></p>

<table class=MsoTableGrid border=1 cellspacing=0 cellpadding=0
 style='border-collapse:collapse;border:none;mso-border-alt:solid windowtext .5pt;
 mso-yfti-tbllook:1184;mso-padding-alt:0in 5.4pt 0in 5.4pt'>
 <tr style='mso-yfti-irow:0;mso-yfti-firstrow:yes'>
  <td width=208 valign=top style='width:155.8pt;border:solid windowtext 1.0pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText align=center style='text-align:center'><span
  style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><b>Value Name
  (Polish)<o:p></o:p></b></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <td width=208 valign=top style='width:155.85pt;border:solid windowtext 1.0pt;
  border-left:none;mso-border-left-alt:solid windowtext .5pt;mso-border-alt:
  solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText align=center style='text-align:center'><span
  style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><b>Description<o:p></o:p></b></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <td width=208 valign=top style='width:155.85pt;border:solid windowtext 1.0pt;
  border-left:none;mso-border-left-alt:solid windowtext .5pt;mso-border-alt:
  solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText align=center style='text-align:center'><span
  style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><b>Example Code
  System<o:p></o:p></b></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
 </tr>
 <tr style='mso-yfti-irow:1'>
  <td width=208 valign=top style='width:155.8pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span class=SpellE>ona</span>, <span
  class=SpellE>jej</span></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <td width=208 valign=top style='width:155.85pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'><span
  style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><o:p>&nbsp;</o:p></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <td width=208 valign=top style='width:155.85pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'><span
  style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><o:p>&nbsp;</o:p></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
 </tr>
 <tr style='mso-yfti-irow:2'>
  <td width=208 valign=top style='width:155.8pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'>on, <span class=SpellE>jego</span></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <td width=208 valign=top style='width:155.85pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'><span
  style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><o:p>&nbsp;</o:p></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <td width=208 valign=top style='width:155.85pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'><span
  style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><o:p>&nbsp;</o:p></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
 </tr>
 <tr style='mso-yfti-irow:3'>
  <td width=208 valign=top style='width:155.8pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span class=SpellE>onu</span>, <span
  class=SpellE>jenu</span></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <td width=208 valign=top style='width:155.85pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'><span
  style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><o:p>&nbsp;</o:p></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <td width=208 valign=top style='width:155.85pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'><span
  style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><o:p>&nbsp;</o:p></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
 </tr>
 <tr style='mso-yfti-irow:4'>
  <td width=208 valign=top style='width:155.8pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span class=SpellE>onu</span>, <span
  class=SpellE>jejo</span></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <td width=208 valign=top style='width:155.85pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'><span
  style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><o:p>&nbsp;</o:p></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <td width=208 valign=top style='width:155.85pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'><span
  style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><o:p>&nbsp;</o:p></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
 </tr>
 <tr style='mso-yfti-irow:5'>
  <td width=208 valign=top style='width:155.8pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'>ne, <span class=SpellE>nego</span></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <td width=208 valign=top style='width:155.85pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'><span
  style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><o:p>&nbsp;</o:p></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <td width=208 valign=top style='width:155.85pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'><span
  style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><o:p>&nbsp;</o:p></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
 </tr>
 <tr style='mso-yfti-irow:6;mso-yfti-lastrow:yes'>
  <td width=208 valign=top style='width:155.8pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span class=SpellE>onu</span>, <span
  class=SpellE>jegu</span></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <td width=208 valign=top style='width:155.85pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'><span
  style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><o:p>&nbsp;</o:p></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <td width=208 valign=top style='width:155.85pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'><span
  style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><o:p>&nbsp;</o:p></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
 </tr>
</table>

<p class=MsoBodyText><span style='mso-bookmark:appendices'><span
style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><o:p>&nbsp;</o:p></span></span></span></p>

<table class=MsoTableGrid border=1 cellspacing=0 cellpadding=0
 style='border-collapse:collapse;border:none;mso-border-alt:solid windowtext .5pt;
 mso-yfti-tbllook:1184;mso-padding-alt:0in 5.4pt 0in 5.4pt'>
 <tr style='mso-yfti-irow:0;mso-yfti-firstrow:yes'>
  <td width=208 valign=top style='width:155.8pt;border:solid windowtext 1.0pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText align=center style='text-align:center'><span
  style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><b>Value Name
  (Portuguese)<o:p></o:p></b></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <td width=208 valign=top style='width:155.85pt;border:solid windowtext 1.0pt;
  border-left:none;mso-border-left-alt:solid windowtext .5pt;mso-border-alt:
  solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText align=center style='text-align:center'><span
  style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><b>Description<o:p></o:p></b></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <td width=208 valign=top style='width:155.85pt;border:solid windowtext 1.0pt;
  border-left:none;mso-border-left-alt:solid windowtext .5pt;mso-border-alt:
  solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText align=center style='text-align:center'><span
  style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><b>Example Code
  System<o:p></o:p></b></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
 </tr>
 <tr style='mso-yfti-irow:1'>
  <td width=208 valign=top style='width:155.8pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'>a, <span class=SpellE>ela</span>, a</span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <td width=208 valign=top style='width:155.85pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'><span
  style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><o:p>&nbsp;</o:p></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <td width=208 valign=top style='width:155.85pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'><span
  style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><o:p>&nbsp;</o:p></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
 </tr>
 <tr style='mso-yfti-irow:2'>
  <td width=208 valign=top style='width:155.8pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'>o, <span class=SpellE>ele</span>, o</span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <td width=208 valign=top style='width:155.85pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'><span
  style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><o:p>&nbsp;</o:p></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <td width=208 valign=top style='width:155.85pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'><span
  style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><o:p>&nbsp;</o:p></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
 </tr>
 <tr style='mso-yfti-irow:3'>
  <td width=208 valign=top style='width:155.8pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'>ê, <span class=SpellE>elu</span>, e</span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <td width=208 valign=top style='width:155.85pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'><span
  style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><o:p>&nbsp;</o:p></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <td width=208 valign=top style='width:155.85pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'><span
  style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><o:p>&nbsp;</o:p></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
 </tr>
 <tr style='mso-yfti-irow:4'>
  <td width=208 valign=top style='width:155.8pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'>ê, <span class=SpellE>ilu</span>, e</span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <td width=208 valign=top style='width:155.85pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'><span
  style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><o:p>&nbsp;</o:p></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <td width=208 valign=top style='width:155.85pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'><span
  style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><o:p>&nbsp;</o:p></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
 </tr>
 <tr style='mso-yfti-irow:5'>
  <td width=208 valign=top style='width:155.8pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'>ê, <span class=SpellE>ile</span>, e</span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <td width=208 valign=top style='width:155.85pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'><span
  style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><o:p>&nbsp;</o:p></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <td width=208 valign=top style='width:155.85pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'><span
  style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><o:p>&nbsp;</o:p></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
 </tr>
 <tr style='mso-yfti-irow:6'>
  <td width=208 valign=top style='width:155.8pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'>ê, <span class=SpellE>el</span>, e</span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <td width=208 valign=top style='width:155.85pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'><span
  style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><o:p>&nbsp;</o:p></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <td width=208 valign=top style='width:155.85pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'><span
  style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><o:p>&nbsp;</o:p></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
 </tr>
 <tr style='mso-yfti-irow:7'>
  <td width=208 valign=top style='width:155.8pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span class=SpellE>i</span>, <span
  class=SpellE>ili</span>, <span class=SpellE>i</span></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <td width=208 valign=top style='width:155.85pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'><span
  style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><o:p>&nbsp;</o:p></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <td width=208 valign=top style='width:155.85pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'><span
  style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><o:p>&nbsp;</o:p></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
 </tr>
 <tr style='mso-yfti-irow:8'>
  <td width=208 valign=top style='width:155.8pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'>ê, <span class=SpellE>ily</span>, e</span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <td width=208 valign=top style='width:155.85pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'><span
  style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><o:p>&nbsp;</o:p></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <td width=208 valign=top style='width:155.85pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'><span
  style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><o:p>&nbsp;</o:p></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
 </tr>
 <tr style='mso-yfti-irow:9'>
  <td width=208 valign=top style='width:155.8pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'>ê, <span class=SpellE>éli</span>, e</span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <td width=208 valign=top style='width:155.85pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'><span
  style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><o:p>&nbsp;</o:p></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <td width=208 valign=top style='width:155.85pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'><span
  style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><o:p>&nbsp;</o:p></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
 </tr>
 <tr style='mso-yfti-irow:10'>
  <td width=208 valign=top style='width:155.8pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'>ê, <span class=SpellE>elé</span>, e</span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <td width=208 valign=top style='width:155.85pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'><span
  style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><o:p>&nbsp;</o:p></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <td width=208 valign=top style='width:155.85pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'><span
  style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><o:p>&nbsp;</o:p></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
 </tr>
 <tr style='mso-yfti-irow:11'>
  <td width=208 valign=top style='width:155.8pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span class=SpellE>i</span>, <span
  class=SpellE>ilo</span>, <span class=SpellE>i</span></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <td width=208 valign=top style='width:155.85pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'><span
  style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><o:p>&nbsp;</o:p></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <td width=208 valign=top style='width:155.85pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'><span
  style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><o:p>&nbsp;</o:p></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
 </tr>
 <tr style='mso-yfti-irow:12'>
  <td width=208 valign=top style='width:155.8pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'>ê, <span class=SpellE>êlu</span>, e</span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <td width=208 valign=top style='width:155.85pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'><span
  style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><o:p>&nbsp;</o:p></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <td width=208 valign=top style='width:155.85pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'><span
  style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><o:p>&nbsp;</o:p></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
 </tr>
 <tr style='mso-yfti-irow:13'>
  <td width=208 valign=top style='width:155.8pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'>y, <span class=SpellE>yn</span>, y</span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <td width=208 valign=top style='width:155.85pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'><span
  style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><o:p>&nbsp;</o:p></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <td width=208 valign=top style='width:155.85pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'><span
  style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><o:p>&nbsp;</o:p></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
 </tr>
 <tr style='mso-yfti-irow:14'>
  <td width=208 valign=top style='width:155.8pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'>y, ale, y</span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <td width=208 valign=top style='width:155.85pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'><span
  style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><o:p>&nbsp;</o:p></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <td width=208 valign=top style='width:155.85pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'><span
  style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><o:p>&nbsp;</o:p></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
 </tr>
 <tr style='mso-yfti-irow:15'>
  <td width=208 valign=top style='width:155.8pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'>ae, <span class=SpellE>ael</span>,
  e</span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <td width=208 valign=top style='width:155.85pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'><span
  style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><o:p>&nbsp;</o:p></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <td width=208 valign=top style='width:155.85pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'><span
  style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><o:p>&nbsp;</o:p></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
 </tr>
 <tr style='mso-yfti-irow:16;mso-yfti-lastrow:yes'>
  <td width=208 valign=top style='width:155.8pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'>ae, <span class=SpellE>elae</span>,
  e</span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <td width=208 valign=top style='width:155.85pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'><span
  style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><o:p>&nbsp;</o:p></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <td width=208 valign=top style='width:155.85pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'><span
  style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><o:p>&nbsp;</o:p></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
 </tr>
</table>

<p class=MsoBodyText><span style='mso-bookmark:appendices'><span
style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><o:p>&nbsp;</o:p></span></span></span></p>

<table class=MsoTableGrid border=1 cellspacing=0 cellpadding=0
 style='border-collapse:collapse;border:none;mso-border-alt:solid windowtext .5pt;
 mso-yfti-tbllook:1184;mso-padding-alt:0in 5.4pt 0in 5.4pt'>
 <tr style='mso-yfti-irow:0;mso-yfti-firstrow:yes'>
  <td width=208 valign=top style='width:155.8pt;border:solid windowtext 1.0pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText align=center style='text-align:center'><span
  style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><b>Value Name <o:p></o:p></b></span></span></span></p>
  <p class=MsoBodyText align=center style='text-align:center'><span
  style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><b>(Mandarin
  Chinese)<o:p></o:p></b></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <td width=208 valign=top style='width:155.85pt;border:solid windowtext 1.0pt;
  border-left:none;mso-border-left-alt:solid windowtext .5pt;mso-border-alt:
  solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText align=center style='text-align:center'><span
  style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><b>Description<o:p></o:p></b></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <td width=208 valign=top style='width:155.85pt;border:solid windowtext 1.0pt;
  border-left:none;mso-border-left-alt:solid windowtext .5pt;mso-border-alt:
  solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText align=center style='text-align:center'><span
  style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><b>Example Code
  System<o:p></o:p></b></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
 </tr>
 <tr style='mso-yfti-irow:1'>
  <td width=208 valign=top style='width:155.8pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span style='font-family:"MS Mincho";
  mso-bidi-font-family:"MS Mincho"'>他, 你</span></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <td width=208 valign=top style='width:155.85pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'><span
  style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><o:p>&nbsp;</o:p></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <td width=208 valign=top style='width:155.85pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'><span
  style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><o:p>&nbsp;</o:p></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
 </tr>
 <tr style='mso-yfti-irow:2'>
  <td width=208 valign=top style='width:155.8pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span style='font-family:"MS Mincho";
  mso-bidi-font-family:"MS Mincho"'>她, 你</span></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <td width=208 valign=top style='width:155.85pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'><span
  style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><o:p>&nbsp;</o:p></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <td width=208 valign=top style='width:155.85pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'><span
  style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><o:p>&nbsp;</o:p></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
 </tr>
 <tr style='mso-yfti-irow:3'>
  <td width=208 valign=top style='width:155.8pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span style='font-family:"MS Mincho";
  mso-bidi-font-family:"MS Mincho"'>她, 妳</span></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <td width=208 valign=top style='width:155.85pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'><span
  style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><o:p>&nbsp;</o:p></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <td width=208 valign=top style='width:155.85pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'><span
  style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><o:p>&nbsp;</o:p></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
 </tr>
 <tr style='mso-yfti-irow:4'>
  <td width=208 valign=top style='width:155.8pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span class=SpellE>tā</span>, </span></span></span><span
  style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span
  style='font-family:"MS Mincho";mso-bidi-font-family:"MS Mincho"'>你</span></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <td width=208 valign=top style='width:155.85pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'><span
  style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><o:p>&nbsp;</o:p></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <td width=208 valign=top style='width:155.85pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'><span
  style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><o:p>&nbsp;</o:p></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
 </tr>
 <tr style='mso-yfti-irow:5'>
  <td width=208 valign=top style='width:155.8pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span class=SpellE>X<span
  style='font-family:"MS Mincho";mso-bidi-font-family:"MS Mincho"'>也</span></span></span></span></span><span
  style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span
  style='font-family:"MS Mincho";mso-bidi-font-family:"MS Mincho"'>, 你</span></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <td width=208 valign=top style='width:155.85pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'><span
  style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><o:p>&nbsp;</o:p></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <td width=208 valign=top style='width:155.85pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'><span
  style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><o:p>&nbsp;</o:p></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
 </tr>
 <tr style='mso-yfti-irow:6'>
  <td width=208 valign=top style='width:155.8pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span class=SpellE><span
  style='font-family:"MS Mincho";mso-bidi-font-family:"MS Mincho"'>无也</span></span></span></span></span><span
  style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span
  style='font-family:"MS Mincho";mso-bidi-font-family:"MS Mincho"'>, 你</span></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <td width=208 valign=top style='width:155.85pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'><span
  style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><o:p>&nbsp;</o:p></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <td width=208 valign=top style='width:155.85pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'><span
  style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><o:p>&nbsp;</o:p></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
 </tr>
 <tr style='mso-yfti-irow:7;mso-yfti-lastrow:yes'>
  <td width=208 valign=top style='width:155.8pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span class=SpellE><span
  style='font-family:"PMingLiU",serif;mso-bidi-font-family:PMingLiU'>ㄊㄚ</span></span></span></span></span><span
  style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span
  style='font-family:"PMingLiU",serif;mso-bidi-font-family:PMingLiU'>, </span></span></span></span><span
  style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span
  style='font-family:"MS Mincho";mso-bidi-font-family:"MS Mincho"'>你</span></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <td width=208 valign=top style='width:155.85pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'><span
  style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><o:p>&nbsp;</o:p></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <td width=208 valign=top style='width:155.85pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'><span
  style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><o:p>&nbsp;</o:p></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
 </tr>
</table>

<p class=MsoBodyText><span style='mso-bookmark:appendices'><span
style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><o:p>&nbsp;</o:p></span></span></span></p>

<h3><span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'>Entity: Recorded
Sex or Gender, Attribute: Source Recorded Sex or Gender</span></span></span></h3>

<h4><span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'>Introduction</span></span></span></h4>

<p class=MsoBodyText><span style='mso-bookmark:appendices'><span
style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'>The attribute Source Recorded Sex or
Gender in the entity Recorded Sex or Gender has no minimum value set, due
primarily to linguistic differences between regions. This section will review
some of those differences for various jurisdictions to consider.</span></span></span></p>

<h4><span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'>Required Value
Names, Descriptions, and Example Code Systems</span></span></span></h4>

<p class=MsoBodyText><span style='mso-bookmark:appendices'><span
style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'>There are no required value names,
descriptions, or example code systems for the attribute Source Recorded Sex or
Gender. For examples of some values utilized herein, see further considerations.</span></span></span></p>

<h4><span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'>Further
Considerations</span></span></span></h4>

<p class=MsoBodyText><span style='mso-bookmark:appendices'><span
style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'>While international standards (see
“Entity: Recorded Sex or Gender, Attribute: International Equivalent Recorded
Sex or Gender”) typically utilize ‘M’, ‘F’, or ‘X’, other sources provide a
much wider array of potential jurisdictional values which may provide more
specific and necessary information. A table of some of the observed values is
shown below. Note than inclusion of jurisdiction is necessary, as different
jurisdictions may use different definitions for the same value. Note that this
table is non-exhaustive.</span></span></span></p>

<table class=MsoTableGrid border=1 cellspacing=0 cellpadding=0
 style='border-collapse:collapse;border:none;mso-border-alt:solid windowtext .5pt;
 mso-yfti-tbllook:1184;mso-padding-alt:0in 5.4pt 0in 5.4pt'>
 <tr style='mso-yfti-irow:0;mso-yfti-firstrow:yes'>
  <td width=125 valign=top style='width:93.5pt;border:solid windowtext 1.0pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText align=center style='text-align:center'><span
  style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><b>Source Value<o:p></o:p></b></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <td width=125 valign=top style='width:93.5pt;border:solid windowtext 1.0pt;
  border-left:none;mso-border-left-alt:solid windowtext .5pt;mso-border-alt:
  solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText align=center style='text-align:center'><span
  style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><b>International
  Equivalent<o:p></o:p></b></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <td width=125 valign=top style='width:93.5pt;border:solid windowtext 1.0pt;
  border-left:none;mso-border-left-alt:solid windowtext .5pt;mso-border-alt:
  solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText align=center style='text-align:center'><span
  style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><b>Description<o:p></o:p></b></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <td width=125 valign=top style='width:93.5pt;border:solid windowtext 1.0pt;
  border-left:none;mso-border-left-alt:solid windowtext .5pt;mso-border-alt:
  solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText align=center style='text-align:center'><span
  style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><b>Example
  Documents<o:p></o:p></b></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <td width=125 valign=top style='width:93.5pt;border:solid windowtext 1.0pt;
  border-left:none;mso-border-left-alt:solid windowtext .5pt;mso-border-alt:
  solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText align=center style='text-align:center'><span
  style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><b>Example
  Jurisdictions<o:p></o:p></b></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
 </tr>
 <tr style='mso-yfti-irow:1'>
  <td width=125 valign=top style='width:93.5pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'>[blank]</span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <td width=125 valign=top style='width:93.5pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'>X</span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <td width=125 valign=top style='width:93.5pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'>Reportedly interpreted as
  “indeterminate” in the German context.</span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <td width=125 valign=top style='width:93.5pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'>Birth certificates</span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <td width=125 valign=top style='width:93.5pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'>Argentina; Germany; United States
  (California, Minnesota)</span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
 </tr>
 <tr style='mso-yfti-irow:2'>
  <td width=125 valign=top style='width:93.5pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'>-- [two dashes]</span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <td width=125 valign=top style='width:93.5pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'>X</span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <td width=125 valign=top style='width:93.5pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'><span
  style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><o:p>&nbsp;</o:p></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <td width=125 valign=top style='width:93.5pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'>Birth certificates</span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <td width=125 valign=top style='width:93.5pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'>United States (California)</span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
 </tr>
 <tr style='mso-yfti-irow:3'>
  <td width=125 valign=top style='width:93.5pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'>divers</span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <td width=125 valign=top style='width:93.5pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'>X</span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <td width=125 valign=top style='width:93.5pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'>Meaning “diverse”.</span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <td width=125 valign=top style='width:93.5pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'>Birth certificates</span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <td width=125 valign=top style='width:93.5pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'>Austria; Germany</span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
 </tr>
 <tr style='mso-yfti-irow:4'>
  <td width=125 valign=top style='width:93.5pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'>E</span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <td width=125 valign=top style='width:93.5pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'>X</span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <td width=125 valign=top style='width:93.5pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'>Meaning “eunuch”.</span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <td width=125 valign=top style='width:93.5pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'>Passports</span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <td width=125 valign=top style='width:93.5pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'>India</span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
 </tr>
 <tr style='mso-yfti-irow:5'>
  <td width=125 valign=top style='width:93.5pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'>F</span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <td width=125 valign=top style='width:93.5pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'>F</span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <td width=125 valign=top style='width:93.5pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'>Meaning “female”.</span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <td width=125 valign=top style='width:93.5pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'>National identity cards; Passports;
  Vehicular licenses</span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <td width=125 valign=top style='width:93.5pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'>Belgium; Netherlands</span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
 </tr>
 <tr style='mso-yfti-irow:6'>
  <td width=125 valign=top style='width:93.5pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'>Female</span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <td width=125 valign=top style='width:93.5pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'>F</span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <td width=125 valign=top style='width:93.5pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'><span
  style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><o:p>&nbsp;</o:p></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <td width=125 valign=top style='width:93.5pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'>Birth certificates</span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <td width=125 valign=top style='width:93.5pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'>United States (Connecticut)</span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
 </tr>
 <tr style='mso-yfti-irow:7'>
  <td width=125 valign=top style='width:93.5pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'>female</span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <td width=125 valign=top style='width:93.5pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'>F</span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <td width=125 valign=top style='width:93.5pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'><span
  style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><o:p>&nbsp;</o:p></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <td width=125 valign=top style='width:93.5pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'><span
  style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><o:p>&nbsp;</o:p></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <td width=125 valign=top style='width:93.5pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'><span
  style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><o:p>&nbsp;</o:p></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
 </tr>
 <tr style='mso-yfti-irow:8'>
  <td width=125 valign=top style='width:93.5pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'>female (khwaja <span class=SpellE>sira</span>)</span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <td width=125 valign=top style='width:93.5pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'>F <i>or </i>X?</span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <td width=125 valign=top style='width:93.5pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'><span
  style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><o:p>&nbsp;</o:p></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <td width=125 valign=top style='width:93.5pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'>National identity cards</span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <td width=125 valign=top style='width:93.5pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'>Pakistan</span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
 </tr>
 <tr style='mso-yfti-irow:9'>
  <td width=125 valign=top style='width:93.5pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'>INTERSEX</span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <td width=125 valign=top style='width:93.5pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'>X</span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <td width=125 valign=top style='width:93.5pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'><span
  style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><o:p>&nbsp;</o:p></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <td width=125 valign=top style='width:93.5pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'>Birth certificates</span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <td width=125 valign=top style='width:93.5pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'>United States (Colorado)</span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
 </tr>
 <tr style='mso-yfti-irow:10'>
  <td width=125 valign=top style='width:93.5pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'>K</span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <td width=125 valign=top style='width:93.5pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'>M</span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <td width=125 valign=top style='width:93.5pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'>Meaning “male”.</span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <td width=125 valign=top style='width:93.5pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'>Passports</span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <td width=125 valign=top style='width:93.5pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'>Azerbaijan</span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
 </tr>
 <tr style='mso-yfti-irow:11'>
  <td width=125 valign=top style='width:93.5pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span class=SpellE>khunsā</span>-e-<span
  class=SpellE>mushkil</span></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <td width=125 valign=top style='width:93.5pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'>X</span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <td width=125 valign=top style='width:93.5pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'><span
  style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><o:p>&nbsp;</o:p></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <td width=125 valign=top style='width:93.5pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'>National identity cards</span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <td width=125 valign=top style='width:93.5pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'>Pakistan</span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
 </tr>
 <tr style='mso-yfti-irow:12'>
  <td width=125 valign=top style='width:93.5pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'>M</span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <td width=125 valign=top style='width:93.5pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'>M</span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <td width=125 valign=top style='width:93.5pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'>Meaning “male”.</span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <td width=125 valign=top style='width:93.5pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'>Passports; Vehicular licenses</span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <td width=125 valign=top style='width:93.5pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'>Argentina; Australia; India; New
  Zealand; United States</span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
 </tr>
 <tr style='mso-yfti-irow:13'>
  <td width=125 valign=top style='width:93.5pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'>Male</span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <td width=125 valign=top style='width:93.5pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'>M</span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <td width=125 valign=top style='width:93.5pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'><span
  style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><o:p>&nbsp;</o:p></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <td width=125 valign=top style='width:93.5pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'>Birth certificates</span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <td width=125 valign=top style='width:93.5pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'>United States (Connecticut)</span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
 </tr>
 <tr style='mso-yfti-irow:14'>
  <td width=125 valign=top style='width:93.5pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'>male</span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <td width=125 valign=top style='width:93.5pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'>M</span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <td width=125 valign=top style='width:93.5pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'><span
  style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><o:p>&nbsp;</o:p></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <td width=125 valign=top style='width:93.5pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'><span
  style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><o:p>&nbsp;</o:p></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <td width=125 valign=top style='width:93.5pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'><span
  style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><o:p>&nbsp;</o:p></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
 </tr>
 <tr style='mso-yfti-irow:15'>
  <td width=125 valign=top style='width:93.5pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'>male (khwaja <span class=SpellE>sira</span>)</span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <td width=125 valign=top style='width:93.5pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'>M <i>or </i>X?</span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <td width=125 valign=top style='width:93.5pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'><span
  style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><o:p>&nbsp;</o:p></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <td width=125 valign=top style='width:93.5pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'>National identity cards</span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <td width=125 valign=top style='width:93.5pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'>Pakistan</span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
 </tr>
 <tr style='mso-yfti-irow:16'>
  <td width=125 valign=top style='width:93.5pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'>NB</span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <td width=125 valign=top style='width:93.5pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'>X</span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <td width=125 valign=top style='width:93.5pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'>Meaning “no <span class=SpellE>binario</span>”
  (non-binary).</span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <td width=125 valign=top style='width:93.5pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'>Birth certificates</span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <td width=125 valign=top style='width:93.5pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'>Mexico</span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
 </tr>
 <tr style='mso-yfti-irow:17'>
  <td width=125 valign=top style='width:93.5pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'>No <span class=SpellE>binario</span></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <td width=125 valign=top style='width:93.5pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'>X</span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <td width=125 valign=top style='width:93.5pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'><span
  style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><o:p>&nbsp;</o:p></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <td width=125 valign=top style='width:93.5pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'>Birth certificates</span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <td width=125 valign=top style='width:93.5pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'>Argentina</span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
 </tr>
 <tr style='mso-yfti-irow:18'>
  <td width=125 valign=top style='width:93.5pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'>Non-Binary</span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <td width=125 valign=top style='width:93.5pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'>X</span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <td width=125 valign=top style='width:93.5pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'><span
  style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><o:p>&nbsp;</o:p></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <td width=125 valign=top style='width:93.5pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'>Birth certificates</span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <td width=125 valign=top style='width:93.5pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'>United States (Connecticut)</span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
 </tr>
 <tr style='mso-yfti-irow:19'>
  <td width=125 valign=top style='width:93.5pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'>non-binary</span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <td width=125 valign=top style='width:93.5pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'>X</span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <td width=125 valign=top style='width:93.5pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'><span
  style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><o:p>&nbsp;</o:p></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <td width=125 valign=top style='width:93.5pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'><span
  style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><o:p>&nbsp;</o:p></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <td width=125 valign=top style='width:93.5pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'><span
  style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><o:p>&nbsp;</o:p></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
 </tr>
 <tr style='mso-yfti-irow:20'>
  <td width=125 valign=top style='width:93.5pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'>nonbinary</span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <td width=125 valign=top style='width:93.5pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'>X</span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <td width=125 valign=top style='width:93.5pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'><span
  style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><o:p>&nbsp;</o:p></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <td width=125 valign=top style='width:93.5pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'><span
  style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><o:p>&nbsp;</o:p></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <td width=125 valign=top style='width:93.5pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'><span
  style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><o:p>&nbsp;</o:p></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
 </tr>
 <tr style='mso-yfti-irow:21'>
  <td width=125 valign=top style='width:93.5pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'>not yet determined</span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <td width=125 valign=top style='width:93.5pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'>X</span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <td width=125 valign=top style='width:93.5pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'><span
  style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><o:p>&nbsp;</o:p></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <td width=125 valign=top style='width:93.5pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'>Birth certificates</span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <td width=125 valign=top style='width:93.5pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'>United States (New Jersey, New
  Mexico)</span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
 </tr>
 <tr style='mso-yfti-irow:22'>
  <td width=125 valign=top style='width:93.5pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'>O</span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <td width=125 valign=top style='width:93.5pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'>X</span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <td width=125 valign=top style='width:93.5pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'>Meaning “other”.</span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <td width=125 valign=top style='width:93.5pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'>Passports</span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <td width=125 valign=top style='width:93.5pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'>Nepal</span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
 </tr>
 <tr style='mso-yfti-irow:23'>
  <td width=125 valign=top style='width:93.5pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'>U</span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <td width=125 valign=top style='width:93.5pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'>X</span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <td width=125 valign=top style='width:93.5pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'>Meaning “undetermined”,
  “unspecified”, or “unknown”.</span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <td width=125 valign=top style='width:93.5pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'>Birth certificates; Provincial
  health cards</span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <td width=125 valign=top style='width:93.5pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'>Canada (British Columbia); United
  States (Oregon)</span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
 </tr>
 <tr style='mso-yfti-irow:24'>
  <td width=125 valign=top style='width:93.5pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'>Unknown</span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <td width=125 valign=top style='width:93.5pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'>X</span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <td width=125 valign=top style='width:93.5pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'><span
  style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><o:p>&nbsp;</o:p></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <td width=125 valign=top style='width:93.5pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'>Birth certificates</span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <td width=125 valign=top style='width:93.5pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'>United States (Washington, DC)</span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
 </tr>
 <tr style='mso-yfti-irow:25'>
  <td width=125 valign=top style='width:93.5pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'>Ա</span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <td width=125 valign=top style='width:93.5pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'>M</span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <td width=125 valign=top style='width:93.5pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'>Meaning “<span class=SpellE>Արական</span>”
  (“male”).</span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <td width=125 valign=top style='width:93.5pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'>Passports</span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <td width=125 valign=top style='width:93.5pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'>Armenia</span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
 </tr>
 <tr style='mso-yfti-irow:26'>
  <td width=125 valign=top style='width:93.5pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'>V</span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <td width=125 valign=top style='width:93.5pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'>F</span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <td width=125 valign=top style='width:93.5pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'>Meaning “<span class=SpellE>vrouwelijk</span>”
  (“female”).</span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <td width=125 valign=top style='width:93.5pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'>National identity cards</span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <td width=125 valign=top style='width:93.5pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'>Netherlands</span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
 </tr>
 <tr style='mso-yfti-irow:27'>
  <td width=125 valign=top style='width:93.5pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'>W</span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <td width=125 valign=top style='width:93.5pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'>F</span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <td width=125 valign=top style='width:93.5pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'>Meaning “<span class=SpellE>weiblich</span>”
  (“female”).</span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <td width=125 valign=top style='width:93.5pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'>National identity cards</span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <td width=125 valign=top style='width:93.5pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'>Belgium</span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
 </tr>
 <tr style='mso-yfti-irow:28;mso-yfti-lastrow:yes'>
  <td width=125 valign=top style='width:93.5pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'>X</span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <td width=125 valign=top style='width:93.5pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'>X</span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <td width=125 valign=top style='width:93.5pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'><span
  style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><o:p>&nbsp;</o:p></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <td width=125 valign=top style='width:93.5pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'>Birth certificates; Passports;
  Vehicular licenses</span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <td width=125 valign=top style='width:93.5pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'>Argentina; Australia; Austria;
  Iceland; Netherlands; New Zealand; Pakistan; United States (Arkansas,
  California, Colorado, Connecticut, Hawaii, Illinois, Maine, Michigan, Nevada,
  New Jersey, New Mexico, New York, Ohio, Oregon, Pennsylvania Rhode Island, Utah,
  Washington)</span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
 </tr>
</table>

<p class=MsoBodyText><span style='mso-bookmark:appendices'><span
style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><o:p>&nbsp;</o:p></span></span></span></p>

<h3><span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'>Entity: Recorded Sex
or Gender, Attribute: International Equivalent Recorded Sex or Gender</span></span></span></h3>

<h4><span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'>Introduction</span></span></span></h4>

<p class=FirstParagraph><span style='mso-bookmark:appendices'><span
style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'>The attribute International
Equivalent Recorded Sex or Gender in the entity Recorded Sex or Gender has a
required minimum value set <span class=GramE>in order to</span> facilitate
communication between regions or jurisdictions which use different values for
the attribute Source Recorded Sex or Gender in the entity Recorded Sex or
Gender.</span></span></span></p>

<p class=MsoBodyText><span style='mso-bookmark:appendices'><span
style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span class=GramE>In order to</span>
develop this set, we reviewed all international documentation related to
Recorded Sex or Gender. “Sex” or “Gender” (as it appears in passport documents)
was the only entity found which sufficiently fulfilled these criteria. For that
reason, our minimum value set derives from two International Civil Aviation
Organization (ICAO) documents, being Doc 9303: Machine Readable Travel
Documents, Seventh Edition (2015), Part 7: Machine Readable Visas and Doc 9303:
Machine Readable Travel Documents, Eighth Edition (2021), Part 7: Machine
Readable Visas.</span></span></span></p>

<p class=MsoBodyText><span style='mso-bookmark:appendices'><span
style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'>As defined in those documents, “Sex”
is representative of the “[s]ex of MRV-A holder, when included, is to be
specified by use of the single initial commonly used in the language of the
State of issue. If translation into English, French or Spanish is necessary, followed
by an oblique and the capital letter F for female, M for male, or X for
unspecified.” However, when the data structure is clarified later in the
document it is noted that “F = Female; M = Male; &lt; = non-specified”. This
discrepancy is noted in with the following in the 2021 edition: “Where an
issuing State or organization does not want to identify the sex, the filler
character (&lt;) shall be used in this field in the MRZ and an X in this field
in the VIZ.” This effectively means that ‘X’ and ‘&lt;’ are equivalent, with
‘X’ appearing on the “front-end” and ‘&lt;’ appearing on the “back-end”.</span></span></span></p>

<p class=MsoBodyText><span style='mso-bookmark:appendices'><span
style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'>However, it is important to note that
this system does not include a value that is <i>unknown</i>. We recommend that <span
class=SpellE>nullFlavor</span> UNK [HL7] be used for that purpose. Importantly,
<span class=SpellE>nullFlavor</span> UNK [HL7] has more granular values which
can be used as well, <span class=GramE>as long as</span> some form of unknown
is available. For instance, <span class=SpellE>nullFlavor</span> ASKU (asked
but unknown), <span class=SpellE>nullFlavor</span> NAV (temporarily
unavailable), and <span class=SpellE>nullFlavor</span> NASK (not asked), and <span
class=SpellE>nullFlavor</span> NAVU could be utilized. Situations where other <span
class=SpellE>nullFlavor</span> options may be applicable are discussed in
further considerations.</span></span></span></p>

<h4><span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'>Required Value
Names, Descriptions, and Example Code Systems</span></span></span></h4>

<table class=MsoTableGrid border=1 cellspacing=0 cellpadding=0
 style='border-collapse:collapse;border:none;mso-border-alt:solid windowtext .5pt;
 mso-yfti-tbllook:1184;mso-padding-alt:0in 5.4pt 0in 5.4pt'>
 <tr style='mso-yfti-irow:0;mso-yfti-firstrow:yes'>
  <td width=208 valign=top style='width:155.8pt;border:solid windowtext 1.0pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText align=center style='text-align:center'><span
  style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><b>Value Name
  (English)<o:p></o:p></b></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <td width=208 valign=top style='width:155.85pt;border:solid windowtext 1.0pt;
  border-left:none;mso-border-left-alt:solid windowtext .5pt;mso-border-alt:
  solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText align=center style='text-align:center'><span
  style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><b>Description<o:p></o:p></b></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <td width=208 valign=top style='width:155.85pt;border:solid windowtext 1.0pt;
  border-left:none;mso-border-left-alt:solid windowtext .5pt;mso-border-alt:
  solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText align=center style='text-align:center'><span
  style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><b>Example Code
  System<o:p></o:p></b></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
 </tr>
 <tr style='mso-yfti-irow:1'>
  <td width=208 valign=top style='width:155.8pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'>Female</span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <td width=208 valign=top style='width:155.85pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'>A value which corresponds to ‘F’,
  ‘female’, ‘woman’, or ‘girl’ has been recorded in some context.</span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <td width=208 valign=top style='width:155.85pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'>F [ICAO]</span></span></span></p>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'>LA13504-8 [LOINC]</span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
 </tr>
 <tr style='mso-yfti-irow:2'>
  <td width=208 valign=top style='width:155.8pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'>Male</span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <td width=208 valign=top style='width:155.85pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'>A value which corresponds to ‘M’,
  ‘male’, ‘man’, or ‘boy’ has been recorded in some context.</span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <td width=208 valign=top style='width:155.85pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'>M [ICAO]</span></span></span></p>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'>LA15170-6 [LOINC]</span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
 </tr>
 <tr style='mso-yfti-irow:3'>
  <td width=208 valign=top style='width:155.8pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'>Nonbinary <i>or </i>Unspecified <i>or
  </i>Non-specified</span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <td width=208 valign=top style='width:155.85pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'>A value which corresponds to ‘X’
  has been recorded or the value is otherwise unspecified or non-specified. ‘X’
  has been used to refer to the following in various jurisdictions (please note
  that this list is not exhaustive): (1) another gender identity, (2) gender
  diverse, (3) gender neutral, (4) indeterminate, (5) intersex, (6) neither
  male nor female, (7) nonbinary, (8) undesignated, (9) unreported.</span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <td width=208 valign=top style='width:155.85pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'>X,<i> </i>&lt; [ICAO]</span></span></span></p>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'>LA32969-0 [LOINC]</span></span></span></p>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'>LA32970-8 [LOINC]</span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
 </tr>
 <tr style='mso-yfti-irow:4;mso-yfti-lastrow:yes'>
  <td width=208 valign=top style='width:155.8pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'>Unknown</span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <td width=208 valign=top style='width:155.85pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'>A value is applicable, but not
  known.</span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <td width=208 valign=top style='width:155.85pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span class=SpellE>nullFlavor</span>
  UNK [HL7]</span></span></span></p>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'>Unknown, 261665006 [SNOMED CT]</span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
 </tr>
</table>

<h4><span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'>Further
Considerations</span></span></span></h4>

<p class=MsoBodyText><span style='mso-bookmark:appendices'><span
style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'>HL7’s <span class=SpellE>nullFlavor</span>
can be useful in <span class=GramE>a number of</span> situations for Gender
Identity, outside of <span class=SpellE>nullFlavor</span> UNK [unknown]. Some
of these situations are summarized below. Underneath each value name are value
names known to be utilized in other systems. Also included are some values for
assigned gender at birth questions, a somewhat common subtype of RSG.</span></span></span></p>

<table class=MsoTableGrid border=1 cellspacing=0 cellpadding=0
 style='border-collapse:collapse;border:none;mso-border-alt:solid windowtext .5pt;
 mso-yfti-tbllook:1184;mso-padding-alt:0in 5.4pt 0in 5.4pt'>
 <tr style='mso-yfti-irow:0;mso-yfti-firstrow:yes'>
  <td width=208 valign=top style='width:155.8pt;border:solid windowtext 1.0pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText align=center style='text-align:center'><span
  style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><b>Value Name
  (English)<o:p></o:p></b></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <td width=208 valign=top style='width:155.85pt;border:solid windowtext 1.0pt;
  border-left:none;mso-border-left-alt:solid windowtext .5pt;mso-border-alt:
  solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText align=center style='text-align:center'><span
  style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><b>Description<o:p></o:p></b></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <td width=208 valign=top style='width:155.85pt;border:solid windowtext 1.0pt;
  border-left:none;mso-border-left-alt:solid windowtext .5pt;mso-border-alt:
  solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText align=center style='text-align:center'><span
  style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><b>Example Code
  System<o:p></o:p></b></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
 </tr>
 <tr style='mso-yfti-irow:1'>
  <td width=208 valign=top style='width:155.8pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'>Masked</span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <td width=208 valign=top style='width:155.85pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'>Information is available but has
  not been provided for security or privacy reasons. For instance, an
  individual may not present their assigned gender at birth or another recorded
  sex or gender value in a space considered to be unknown or dangerous. Their recorded
  sex or gender could be masked in a situation like this. Additionally, some recorded
  sex or gender values might not be used very often, and could therefore
  potentially lead to identifying an individual, compromising their privacy. A
  masked value could also be used to help prevent such a situation.</span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <td width=208 valign=top style='width:155.85pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span class=SpellE>nullFlavor</span>
  MSK [HL7]</span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
 </tr>
 <tr style='mso-yfti-irow:2'>
  <td width=208 valign=top style='width:155.8pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'>Something else</span></span></span></p>
  <p class=MsoBodyText style='margin-left:.5in;text-indent:-.25in;mso-list:
  l5 level1 lfo5'><span style='mso-bookmark:appendices'><span style='mso-bookmark:
  appendix-1-proposed-value-sets'><span style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><![if !supportLists]><span
  style='font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
  Symbol'><span style='mso-list:Ignore'>·<span style='font:7.0pt "Times New Roman"'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
  </span></span></span><![endif]>Additional recorded sex or gender</span></span></span></p>
  <p class=MsoBodyText style='margin-left:.5in;text-indent:-.25in;mso-list:
  l5 level1 lfo5'><span style='mso-bookmark:appendices'><span style='mso-bookmark:
  appendix-1-proposed-value-sets'><span style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><![if !supportLists]><span
  style='font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
  Symbol'><span style='mso-list:Ignore'>·<span style='font:7.0pt "Times New Roman"'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
  </span></span></span><![endif]>Another recorded sex or gender</span></span></span></p>
  <p class=MsoBodyText style='margin-left:.5in;text-indent:-.25in;mso-list:
  l5 level1 lfo5'><span style='mso-bookmark:appendices'><span style='mso-bookmark:
  appendix-1-proposed-value-sets'><span style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><![if !supportLists]><span
  style='font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
  Symbol'><span style='mso-list:Ignore'>·<span style='font:7.0pt "Times New Roman"'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
  </span></span></span><![endif]>Another recorded sex or gender not listed</span></span></span></p>
  <p class=MsoBodyText style='margin-left:.5in;text-indent:-.25in;mso-list:
  l5 level1 lfo5'><span style='mso-bookmark:appendices'><span style='mso-bookmark:
  appendix-1-proposed-value-sets'><span style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><![if !supportLists]><span
  style='font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
  Symbol'><span style='mso-list:Ignore'>·<span style='font:7.0pt "Times New Roman"'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
  </span></span></span><![endif]>Assigned gender at birth not listed</span></span></span></p>
  <p class=MsoBodyText style='margin-left:.5in;text-indent:-.25in;mso-list:
  l5 level1 lfo5'><span style='mso-bookmark:appendices'><span style='mso-bookmark:
  appendix-1-proposed-value-sets'><span style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><![if !supportLists]><span
  style='font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
  Symbol'><span style='mso-list:Ignore'>·<span style='font:7.0pt "Times New Roman"'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
  </span></span></span><![endif]>Assigned sex at birth not listed</span></span></span></p>
  <p class=MsoBodyText style='margin-left:.5in;text-indent:-.25in;mso-list:
  l5 level1 lfo5'><span style='mso-bookmark:appendices'><span style='mso-bookmark:
  appendix-1-proposed-value-sets'><span style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><![if !supportLists]><span
  style='font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
  Symbol'><span style='mso-list:Ignore'>·<span style='font:7.0pt "Times New Roman"'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
  </span></span></span><![endif]>Recorded sex or gender not listed above</span></span></span></p>
  <p class=MsoBodyText style='margin-left:.5in;text-indent:-.25in;mso-list:
  l5 level1 lfo5'><span style='mso-bookmark:appendices'><span style='mso-bookmark:
  appendix-1-proposed-value-sets'><span style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><![if !supportLists]><span
  style='font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
  Symbol'><span style='mso-list:Ignore'>·<span style='font:7.0pt "Times New Roman"'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
  </span></span></span><![endif]>Recorded sex or gender not listed here</span></span></span></p>
  <p class=MsoBodyText style='margin-left:.5in;text-indent:-.25in;mso-list:
  l5 level1 lfo5'><span style='mso-bookmark:appendices'><span style='mso-bookmark:
  appendix-1-proposed-value-sets'><span style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><![if !supportLists]><span
  style='font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
  Symbol'><span style='mso-list:Ignore'>·<span style='font:7.0pt "Times New Roman"'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
  </span></span></span><![endif]>Recorded sex or gender not listed</span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <td width=208 valign=top style='width:155.85pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'>The recorded sex or gender value
  provided exists beyond any utilized code system. In these cases, plain-text
  should be provided. Avoid using “other” as much as possible.</span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <td width=208 valign=top style='width:155.85pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span class=SpellE>nullFlavor</span>
  OTH [HL7]</span></span></span></p>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'>GSSO:009484 [GSSO]</span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
 </tr>
 <tr style='mso-yfti-irow:3'>
  <td width=208 valign=top style='width:155.8pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'>Not applicable</span></span></span></p>
  <p class=MsoBodyText style='margin-left:.5in;text-indent:-.25in;mso-list:
  l5 level1 lfo5'><span style='mso-bookmark:appendices'><span style='mso-bookmark:
  appendix-1-proposed-value-sets'><span style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><![if !supportLists]><span
  style='font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
  Symbol'><span style='mso-list:Ignore'>·<span style='font:7.0pt "Times New Roman"'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
  </span></span></span><![endif]>No assigned gender at birth</span></span></span></p>
  <p class=MsoBodyText style='margin-left:.5in;text-indent:-.25in;mso-list:
  l5 level1 lfo5'><span style='mso-bookmark:appendices'><span style='mso-bookmark:
  appendix-1-proposed-value-sets'><span style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><![if !supportLists]><span
  style='font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
  Symbol'><span style='mso-list:Ignore'>·<span style='font:7.0pt "Times New Roman"'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
  </span></span></span><![endif]>No assigned sex at birth</span></span></span></p>
  <p class=MsoBodyText style='margin-left:.5in;text-indent:-.25in;mso-list:
  l5 level1 lfo5'><span style='mso-bookmark:appendices'><span style='mso-bookmark:
  appendix-1-proposed-value-sets'><span style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><![if !supportLists]><span
  style='font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
  Symbol'><span style='mso-list:Ignore'>·<span style='font:7.0pt "Times New Roman"'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
  </span></span></span><![endif]>No recorded sex or gender</span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <td width=208 valign=top style='width:155.85pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'>Having no proper value for a
  recorded sex or gender. For instance, a biological specimen (cells, tissue,
  etc.) does not have a gender identity.</span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <td width=208 valign=top style='width:155.85pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span class=SpellE>nullFlavor</span>
  NA [HL7]</span></span></span></p>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'>GSSO:009485 [GSSO]</span></span></span></p>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><o:p>&nbsp;</o:p></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
 </tr>
 <tr style='mso-yfti-irow:4'>
  <td width=208 valign=top style='width:155.8pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'>Asked but unknown</span></span></span></p>
  <p class=MsoBodyText style='margin-left:.5in;text-indent:-.25in;mso-list:
  l5 level1 lfo5'><span style='mso-bookmark:appendices'><span style='mso-bookmark:
  appendix-1-proposed-value-sets'><span style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><![if !supportLists]><span
  style='font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
  Symbol'><span style='mso-list:Ignore'>·<span style='font:7.0pt "Times New Roman"'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
  </span></span></span><![endif]>Assigned gender at birth not disclosed</span></span></span></p>
  <p class=MsoBodyText style='margin-left:.5in;text-indent:-.25in;mso-list:
  l5 level1 lfo5'><span style='mso-bookmark:appendices'><span style='mso-bookmark:
  appendix-1-proposed-value-sets'><span style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><![if !supportLists]><span
  style='font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
  Symbol'><span style='mso-list:Ignore'>·<span style='font:7.0pt "Times New Roman"'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
  </span></span></span><![endif]>Assigned sex at birth not disclosed</span></span></span></p>
  <p class=MsoBodyText style='margin-left:.5in;text-indent:-.25in;mso-list:
  l5 level1 lfo5'><span style='mso-bookmark:appendices'><span style='mso-bookmark:
  appendix-1-proposed-value-sets'><span style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><![if !supportLists]><span
  style='font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
  Symbol'><span style='mso-list:Ignore'>·<span style='font:7.0pt "Times New Roman"'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
  </span></span></span><![endif]>Chose not to answer</span></span></span></p>
  <p class=MsoBodyText style='margin-left:.5in;text-indent:-.25in;mso-list:
  l5 level1 lfo5'><span style='mso-bookmark:appendices'><span style='mso-bookmark:
  appendix-1-proposed-value-sets'><span style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><![if !supportLists]><span
  style='font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
  Symbol'><span style='mso-list:Ignore'>·<span style='font:7.0pt "Times New Roman"'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
  </span></span></span><![endif]>Does not understand the question</span></span></span></p>
  <p class=MsoBodyText style='margin-left:.5in;text-indent:-.25in;mso-list:
  l5 level1 lfo5'><span style='mso-bookmark:appendices'><span style='mso-bookmark:
  appendix-1-proposed-value-sets'><span style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><![if !supportLists]><span
  style='font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
  Symbol'><span style='mso-list:Ignore'>·<span style='font:7.0pt "Times New Roman"'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
  </span></span></span><![endif]>Recorded sex or gender not disclosed</span></span></span></p>
  <p class=MsoBodyText style='margin-left:.5in;text-indent:-.25in;mso-list:
  l5 level1 lfo5'><span style='mso-bookmark:appendices'><span style='mso-bookmark:
  appendix-1-proposed-value-sets'><span style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><![if !supportLists]><span
  style='font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
  Symbol'><span style='mso-list:Ignore'>·<span style='font:7.0pt "Times New Roman"'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
  </span></span></span><![endif]>Non-disclosed</span></span></span></p>
  <p class=MsoBodyText style='margin-left:.5in;text-indent:-.25in;mso-list:
  l5 level1 lfo5'><span style='mso-bookmark:appendices'><span style='mso-bookmark:
  appendix-1-proposed-value-sets'><span style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><![if !supportLists]><span
  style='font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
  Symbol'><span style='mso-list:Ignore'>·<span style='font:7.0pt "Times New Roman"'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
  </span></span></span><![endif]>Person prefers not to say</span></span></span></p>
  <p class=MsoBodyText style='margin-left:.5in;text-indent:-.25in;mso-list:
  l5 level1 lfo5'><span style='mso-bookmark:appendices'><span style='mso-bookmark:
  appendix-1-proposed-value-sets'><span style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><![if !supportLists]><span
  style='font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
  Symbol'><span style='mso-list:Ignore'>·<span style='font:7.0pt "Times New Roman"'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
  </span></span></span><![endif]>Prefer not to answer</span></span></span></p>
  <p class=MsoBodyText style='margin-left:.5in;text-indent:-.25in;mso-list:
  l5 level1 lfo5'><span style='mso-bookmark:appendices'><span style='mso-bookmark:
  appendix-1-proposed-value-sets'><span style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><![if !supportLists]><span
  style='font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
  Symbol'><span style='mso-list:Ignore'>·<span style='font:7.0pt "Times New Roman"'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
  </span></span></span><![endif]>Prefer not to respond</span></span></span></p>
  <p class=MsoBodyText style='margin-left:.5in;text-indent:-.25in;mso-list:
  l5 level1 lfo5'><span style='mso-bookmark:appendices'><span style='mso-bookmark:
  appendix-1-proposed-value-sets'><span style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><![if !supportLists]><span
  style='font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
  Symbol'><span style='mso-list:Ignore'>·<span style='font:7.0pt "Times New Roman"'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
  </span></span></span><![endif]>Prefer not to say</span></span></span></p>
  <p class=MsoBodyText style='margin-left:.5in;text-indent:-.25in;mso-list:
  l5 level1 lfo5'><span style='mso-bookmark:appendices'><span style='mso-bookmark:
  appendix-1-proposed-value-sets'><span style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><![if !supportLists]><span
  style='font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
  Symbol'><span style='mso-list:Ignore'>·<span style='font:7.0pt "Times New Roman"'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
  </span></span></span><![endif]>Undisclosed</span></span></span></p>
  <p class=MsoBodyText style='margin-left:.5in;text-indent:-.25in;mso-list:
  l5 level1 lfo5'><span style='mso-bookmark:appendices'><span style='mso-bookmark:
  appendix-1-proposed-value-sets'><span style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><![if !supportLists]><span
  style='font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
  Symbol'><span style='mso-list:Ignore'>·<span style='font:7.0pt "Times New Roman"'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
  </span></span></span><![endif]>Unsure</span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <td width=208 valign=top style='width:155.85pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'>Used in situations where a recorded
  sex or gender value was sought but not found. For instance, if a patient
  doesn’t understand the question, or if an individual refuses or prefers to
  not answer the question.</span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <td width=208 valign=top style='width:155.85pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span class=SpellE>nullFlavor</span>
  ASKU [HL7]</span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
 </tr>
 <tr style='mso-yfti-irow:5'>
  <td width=208 valign=top style='width:155.8pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'>Temporarily unavailable</span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <td width=208 valign=top style='width:155.85pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'>An individual’s recorded sex or
  gender is not available at the time but is expected later. For instance, a
  neonate who has not yet been assigned a gender at birth.</span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <td width=208 valign=top style='width:155.85pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span class=SpellE>nullFlavor</span>
  NAV [HL7]</span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
 </tr>
 <tr style='mso-yfti-irow:6'>
  <td width=208 valign=top style='width:155.8pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'>Not asked</span></span></span></p>
  <p class=MsoBodyText style='margin-left:.5in;text-indent:-.25in;mso-list:
  l4 level1 lfo4'><span style='mso-bookmark:appendices'><span style='mso-bookmark:
  appendix-1-proposed-value-sets'><span style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><![if !supportLists]><span
  style='font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
  Symbol'><span style='mso-list:Ignore'>·<span style='font:7.0pt "Times New Roman"'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
  </span></span></span><![endif]>Inappropriate to ask</span></span></span></p>
  <p class=MsoBodyText style='margin-left:.5in;text-indent:-.25in;mso-list:
  l4 level1 lfo4'><span style='mso-bookmark:appendices'><span style='mso-bookmark:
  appendix-1-proposed-value-sets'><span style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><![if !supportLists]><span
  style='font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
  Symbol'><span style='mso-list:Ignore'>·<span style='font:7.0pt "Times New Roman"'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
  </span></span></span><![endif]>Not appropriate to ask</span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <td width=208 valign=top style='width:155.85pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'>An individual has not been asked
  about their recorded sex or gender or that information has not otherwise been
  sought in any form.</span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <td width=208 valign=top style='width:155.85pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span class=SpellE>nullFlavor</span>
  NASK [HL7]</span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
 </tr>
 <tr style='mso-yfti-irow:7'>
  <td width=208 valign=top style='width:155.8pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'>Not available</span></span></span></p>
  <p class=MsoBodyText style='margin-left:.5in;text-indent:-.25in;mso-list:
  l4 level1 lfo4'><span style='mso-bookmark:appendices'><span style='mso-bookmark:
  appendix-1-proposed-value-sets'><span style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><![if !supportLists]><span
  style='font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
  Symbol'><span style='mso-list:Ignore'>·<span style='font:7.0pt "Times New Roman"'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
  </span></span></span><![endif]>Assigned gender at birth inadequately
  described</span></span></span></p>
  <p class=MsoBodyText style='margin-left:.5in;text-indent:-.25in;mso-list:
  l4 level1 lfo4'><span style='mso-bookmark:appendices'><span style='mso-bookmark:
  appendix-1-proposed-value-sets'><span style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><![if !supportLists]><span
  style='font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
  Symbol'><span style='mso-list:Ignore'>·<span style='font:7.0pt "Times New Roman"'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
  </span></span></span><![endif]>Recorded sex or gender inadequately described</span></span></span></p>
  <p class=MsoBodyText style='margin-left:.5in;text-indent:-.25in;mso-list:
  l4 level1 lfo4'><span style='mso-bookmark:appendices'><span style='mso-bookmark:
  appendix-1-proposed-value-sets'><span style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><![if !supportLists]><span
  style='font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
  Symbol'><span style='mso-list:Ignore'>·<span style='font:7.0pt "Times New Roman"'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
  </span></span></span><![endif]>Inadequately described</span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <td width=208 valign=top style='width:155.85pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'>An individual’s recorded sex or
  gender is not available at the time, and there is no expectation that it will
  ever be available. Such a determination could be used if an individual has <span
  class=GramE>died</span> and their documentation has not been ascertained.</span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <td width=208 valign=top style='width:155.85pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span class=SpellE>nullFlavor</span>
  NAVU [HL7]</span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
 </tr>
 <tr style='mso-yfti-irow:8;mso-yfti-lastrow:yes'>
  <td width=208 valign=top style='width:155.8pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'>Not present</span></span></span></p>
  <p class=MsoBodyText style='margin-left:.5in;text-indent:-.25in;mso-list:
  l4 level1 lfo4'><span style='mso-bookmark:appendices'><span style='mso-bookmark:
  appendix-1-proposed-value-sets'><span style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><![if !supportLists]><span
  style='font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
  Symbol'><span style='mso-list:Ignore'>·<span style='font:7.0pt "Times New Roman"'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
  </span></span></span><![endif]>Assigned gender at birth not provided</span></span></span></p>
  <p class=MsoBodyText style='margin-left:.5in;text-indent:-.25in;mso-list:
  l4 level1 lfo4'><span style='mso-bookmark:appendices'><span style='mso-bookmark:
  appendix-1-proposed-value-sets'><span style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><![if !supportLists]><span
  style='font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
  Symbol'><span style='mso-list:Ignore'>·<span style='font:7.0pt "Times New Roman"'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
  </span></span></span><![endif]>Assigned sex at birth not provided</span></span></span></p>
  <p class=MsoBodyText style='margin-left:.5in;text-indent:-.25in;mso-list:
  l4 level1 lfo4'><span style='mso-bookmark:appendices'><span style='mso-bookmark:
  appendix-1-proposed-value-sets'><span style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><![if !supportLists]><span
  style='font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
  Symbol'><span style='mso-list:Ignore'>·<span style='font:7.0pt "Times New Roman"'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
  </span></span></span><![endif]>Recorded gender not provided</span></span></span></p>
  <p class=MsoBodyText style='margin-left:.5in;text-indent:-.25in;mso-list:
  l4 level1 lfo4'><span style='mso-bookmark:appendices'><span style='mso-bookmark:
  appendix-1-proposed-value-sets'><span style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><![if !supportLists]><span
  style='font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
  Symbol'><span style='mso-list:Ignore'>·<span style='font:7.0pt "Times New Roman"'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
  </span></span></span><![endif]>Recorded sex not provided</span></span></span></p>
  <p class=MsoBodyText style='margin-left:.5in;text-indent:-.25in;mso-list:
  l4 level1 lfo4'><span style='mso-bookmark:appendices'><span style='mso-bookmark:
  appendix-1-proposed-value-sets'><span style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><![if !supportLists]><span
  style='font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
  Symbol'><span style='mso-list:Ignore'>·<span style='font:7.0pt "Times New Roman"'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
  </span></span></span><![endif]>Recorded sex or gender not provided</span></span></span></p>
  <p class=MsoBodyText style='margin-left:.5in;text-indent:-.25in;mso-list:
  l4 level1 lfo4'><span style='mso-bookmark:appendices'><span style='mso-bookmark:
  appendix-1-proposed-value-sets'><span style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><![if !supportLists]><span
  style='font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
  Symbol'><span style='mso-list:Ignore'>·<span style='font:7.0pt "Times New Roman"'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
  </span></span></span><![endif]>Not provided</span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <td width=208 valign=top style='width:155.85pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'>Used only in messages to indicate
  that a value is not present.</span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
  <td width=208 valign=top style='width:155.85pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span class=SpellE>nullFlavor</span>
  NP [HL7]</span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span></span></span>
 </tr>
</table>

<p class=MsoBodyText><span style='mso-bookmark:appendices'><span
style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'><span class=GramE>A number of</span>
jurisdictions use values outside of those aforementioned. For examples of some
values, see above in “Entity: Recorded Sex or Gender, Attribute: Source Recorded
Sex or Gender”, in the section “Further Considerations”.</span></span></span></p>

<span style='mso-bookmark:Xfe5567a2f7884fa1c7fe74a3646e785cc1de7ca'></span>

<h3><span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><a
name=sexforclinicalusecategory-value-set>Entity: Sex for Clinical Use,
Attribute: Sex Category</a></span></span></h3>

<h4><span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
style='mso-bookmark:sexforclinicalusecategory-value-set'>Introduction</span></span></span></h4>

<p class=FirstParagraph><span style='mso-bookmark:appendices'><span
style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
sexforclinicalusecategory-value-set'>Unlike the other attributes being
discussed the attribute Sex Category in the entity Sex for Clinical Use is
bound required, meaning that additional values beyond the value set will not be
accepted. <span class=GramE>In the event that</span> one attempts to add other
values, they will be recoded as <span class=SpellE>nullFlavor</span> OTH
(other). This binding is utilized because these values are often directly tied
to functions of clinical systems which could break if inappropriate codes are
exchanged.</span></span></span></p>

<p class=MsoBodyText><span style='mso-bookmark:appendices'><span
style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
sexforclinicalusecategory-value-set'>The primary code system utilized is the
LOINC answer list for Sex for clinical use, LL6114-4 / Female, Male, Specified,
Unknown.</span></span></span></p>

<h4><span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
style='mso-bookmark:sexforclinicalusecategory-value-set'>Required Value Names,
Descriptions, and Example Code Systems</span></span></span></h4>

<table class=MsoTableGrid border=1 cellspacing=0 cellpadding=0
 style='border-collapse:collapse;border:none;mso-border-alt:solid windowtext .5pt;
 mso-yfti-tbllook:1184;mso-padding-alt:0in 5.4pt 0in 5.4pt'>
 <tr style='mso-yfti-irow:0;mso-yfti-firstrow:yes'>
  <td width=208 valign=top style='width:155.8pt;border:solid windowtext 1.0pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText align=center style='text-align:center'><span
  style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:sexforclinicalusecategory-value-set'><b>Value Name
  (English)<o:p></o:p></b></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:sexforclinicalusecategory-value-set'></span></span></span>
  <td width=208 valign=top style='width:155.85pt;border:solid windowtext 1.0pt;
  border-left:none;mso-border-left-alt:solid windowtext .5pt;mso-border-alt:
  solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText align=center style='text-align:center'><span
  style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:sexforclinicalusecategory-value-set'><b>Description<o:p></o:p></b></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:sexforclinicalusecategory-value-set'></span></span></span>
  <td width=208 valign=top style='width:155.85pt;border:solid windowtext 1.0pt;
  border-left:none;mso-border-left-alt:solid windowtext .5pt;mso-border-alt:
  solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText align=center style='text-align:center'><span
  style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:sexforclinicalusecategory-value-set'><b>Example Code
  System<o:p></o:p></b></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:sexforclinicalusecategory-value-set'></span></span></span>
 </tr>
 <tr style='mso-yfti-irow:1'>
  <td width=208 valign=top style='width:155.8pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  sexforclinicalusecategory-value-set'>Female Sex for Clinical Use</span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:sexforclinicalusecategory-value-set'></span></span></span>
  <td width=208 valign=top style='width:155.85pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  sexforclinicalusecategory-value-set'>The “female” values apply to this patient,
  in the case of a given procedure or process <span class=GramE>in a given</span>
  context, for instance for a procedure, algorithm, hormone level, organ
  inventory, etc.</span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:sexforclinicalusecategory-value-set'></span></span></span>
  <td width=208 valign=top style='width:155.85pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  sexforclinicalusecategory-value-set'>F, LA3-6 [LOINC]</span></span></span></p>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  sexforclinicalusecategory-value-set'>GSSO:011317 [GSSO]</span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:sexforclinicalusecategory-value-set'></span></span></span>
 </tr>
 <tr style='mso-yfti-irow:2'>
  <td width=208 valign=top style='width:155.8pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  sexforclinicalusecategory-value-set'>Male Sex for Clinical Use</span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:sexforclinicalusecategory-value-set'></span></span></span>
  <td width=208 valign=top style='width:155.85pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  sexforclinicalusecategory-value-set'>The “male” values apply to this patient,
  in the case of a given procedure or process <span class=GramE>in a given</span>
  context, for instance for a procedure, algorithm, hormone level, organ
  inventory, etc.</span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:sexforclinicalusecategory-value-set'></span></span></span>
  <td width=208 valign=top style='width:155.85pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  sexforclinicalusecategory-value-set'>M, LA2-8 [LOINC]</span></span></span></p>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  sexforclinicalusecategory-value-set'>GSSO:011318 [GSSO]</span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:sexforclinicalusecategory-value-set'></span></span></span>
 </tr>
 <tr style='mso-yfti-irow:3'>
  <td width=208 valign=top style='width:155.8pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  sexforclinicalusecategory-value-set'>Specified Sex for Clinical Use</span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:sexforclinicalusecategory-value-set'></span></span></span>
  <td width=208 valign=top style='width:155.85pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  sexforclinicalusecategory-value-set'>This patient has specific documented characteristics
  that do not fully match either male or female <span class=GramE>in a given</span>
  context, for instance for a procedure, algorithm, hormone level, organ
  inventory, etc.</span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:sexforclinicalusecategory-value-set'></span></span></span>
  <td width=208 valign=top style='width:155.85pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  sexforclinicalusecategory-value-set'>S, LA32840-3 [LOINC]</span></span></span></p>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  sexforclinicalusecategory-value-set'>GSSO:011319 [GSSO]</span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:sexforclinicalusecategory-value-set'></span></span></span>
 </tr>
 <tr style='mso-yfti-irow:4;mso-yfti-lastrow:yes'>
  <td width=208 valign=top style='width:155.8pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  sexforclinicalusecategory-value-set'>Unknown Sex for Clinical Use</span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:sexforclinicalusecategory-value-set'></span></span></span>
  <td width=208 valign=top style='width:155.85pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  sexforclinicalusecategory-value-set'>The SFCU cannot be determined because
  there are no <span class=GramE>observations</span> or the observations are
  not sufficient to determine a value. For example, an emergency trauma case
  may require treatment before SFCU can be established.</span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:sexforclinicalusecategory-value-set'></span></span></span>
  <td width=208 valign=top style='width:155.85pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  sexforclinicalusecategory-value-set'>U, LA4489-6 [LOINC]</span></span></span></p>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  sexforclinicalusecategory-value-set'><span class=SpellE>nullFlavor</span> UNK
  [HL7]</span></span></span></p>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  sexforclinicalusecategory-value-set'>Unknown, 261665006 [SNOMED CT]</span></span></span></p>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  sexforclinicalusecategory-value-set'>GSSO:011320 [GSSO]</span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:sexforclinicalusecategory-value-set'></span></span></span>
 </tr>
</table>

<p class=MsoBodyText><span style='mso-bookmark:appendices'><span
style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
sexforclinicalusecategory-value-set'>Given that this value set is intended to
be a categorization of sex observations with the concept “Specified” as a flag
to indicate non-standard sex observations, this value set should be bound
required with no other codes allowed.</span></span></span></p>

<p class=MsoBodyText><span style='mso-bookmark:appendices'><span
style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
sexforclinicalusecategory-value-set'>Instances in which “Specified” could be
utilized include, but are not limited to:</span></span></span></p>

<p class=MsoBodyText style='margin-left:.5in;text-indent:-.25in;mso-list:l6 level1 lfo6'><span
style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
style='mso-bookmark:sexforclinicalusecategory-value-set'><![if !supportLists]><span
style='mso-bidi-font-family:Cambria;mso-bidi-theme-font:minor-latin'><span
style='mso-list:Ignore'>(1)<span style='font:7.0pt "Times New Roman"'> </span></span></span><![endif]>Periods
early in initiation of gender-affirming hormone therapy (GAHT) for transgender
persons, in which inclusion of “male” and “female” reference ranges may be
informative to include.</span></span></span></p>

<p class=MsoBodyText style='margin-left:.5in;text-indent:-.25in;mso-list:l6 level1 lfo6'><span
style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
style='mso-bookmark:sexforclinicalusecategory-value-set'><![if !supportLists]><span
style='mso-bidi-font-family:Cambria;mso-bidi-theme-font:minor-latin'><span
style='mso-list:Ignore'>(2)<span style='font:7.0pt "Times New Roman"'> </span></span></span><![endif]>Instances
wherein neither “male” nor “female” reference ranges are applicable, but
another reference range could be specified, such as triglyceride levels in
trans women using GAHT.</span></span></span></p>

<p class=MsoBodyText style='margin-left:.5in;text-indent:-.25in;mso-list:l6 level1 lfo6'><span
style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
style='mso-bookmark:sexforclinicalusecategory-value-set'><![if !supportLists]><span
style='mso-bidi-font-family:Cambria;mso-bidi-theme-font:minor-latin'><span
style='mso-list:Ignore'>(3)<span style='font:7.0pt "Times New Roman"'> </span></span></span><![endif]>In
instances wherein a provider wishes to have an algorithm utilized which does
not include sex or gender as a variable, such as with eGFR.</span></span></span></p>

<h4><span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
style='mso-bookmark:sexforclinicalusecategory-value-set'>Further Considerations</span></span></span></h4>

<p class=MsoBodyText><span style='mso-bookmark:appendices'><span
style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
sexforclinicalusecategory-value-set'>“Specified” is utilized here instead of
terms like intersex for multiple reasons. The phrase intersex is typically a
particular grouping of congenital conditions and even when used more generally
it would not be considered synonymous or semantically equivalent. “Specified”
is used to indicate that this person has specified observations that are likely
important when considering clinical observations, particularly those that are
impacted by sex-associated conditions.</span></span></span></p>

<p class=MsoBodyText><span style='mso-bookmark:appendices'><span
style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
sexforclinicalusecategory-value-set'>While historical, mostly 19th-century,
models described gay, lesbian, bisexual, intersex, and transgender persons as
“intersexual”, this term (as well as intersex) was not chosen over “specified”
because of its more specific scoped usage by providers, researchers, intersex
activist groups (including <span class=SpellE>interACT</span>, the Intersex
Society of North America, Intersex <span class=SpellE>Initative</span>,
Intersex Peer Support Australia, the Intersex Justice Project, and the Intersex
Campaign for Equality), and wider activist groups (such as Human Rights
Campaign, Human Rights Watch, and ILGA-Europe). One of the authors of the
original HL7 ballot document (<span class=SpellE>Kronk</span>) polled 483 trans
people and found that 475 (98.3%) of them did not feel that all trans people
were covered using the word “intersex”.</span></span></span></p>

<p class=MsoBodyText><span style='mso-bookmark:appendices'><span
style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
sexforclinicalusecategory-value-set'><o:p>&nbsp;</o:p></span></span></span></p>

<h2><span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
style='mso-bookmark:sexforclinicalusecategory-value-set'>8.3 Glossary</span></span></span></h2>

<p class=MsoBodyText><span style='mso-bookmark:appendices'><span
style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
sexforclinicalusecategory-value-set'>Included below are a few terms, in
addition to those defined elsewhere in the document, for reference.</span></span></span></p>

<table class=MsoTableGrid border=1 cellspacing=0 cellpadding=0
 style='border-collapse:collapse;border:none;mso-border-alt:solid windowtext .5pt;
 mso-yfti-tbllook:1184;mso-padding-alt:0in 5.4pt 0in 5.4pt'>
 <tr style='mso-yfti-irow:0;mso-yfti-firstrow:yes'>
  <td width=312 valign=top style='width:233.75pt;border:solid windowtext 1.0pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText align=center style='text-align:center'><span
  style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:sexforclinicalusecategory-value-set'><b>Term<o:p></o:p></b></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:sexforclinicalusecategory-value-set'></span></span></span>
  <td width=312 valign=top style='width:233.75pt;border:solid windowtext 1.0pt;
  border-left:none;mso-border-left-alt:solid windowtext .5pt;mso-border-alt:
  solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText align=center style='text-align:center'><span
  style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:sexforclinicalusecategory-value-set'><b>Definition<o:p></o:p></b></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:sexforclinicalusecategory-value-set'></span></span></span>
 </tr>
 <tr style='mso-yfti-irow:1'>
  <td width=312 valign=top style='width:233.75pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  sexforclinicalusecategory-value-set'>administrative gender</span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:sexforclinicalusecategory-value-set'></span></span></span>
  <td width=312 valign=top style='width:233.75pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'><span
  style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:sexforclinicalusecategory-value-set'></span></span></span>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  sexforclinicalusecategory-value-set'><o:p>&nbsp;</o:p></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:sexforclinicalusecategory-value-set'></span></span></span>
 </tr>
 <tr style='mso-yfti-irow:2'>
  <td width=312 valign=top style='width:233.75pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  sexforclinicalusecategory-value-set'>administrative sex</span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:sexforclinicalusecategory-value-set'></span></span></span>
  <td width=312 valign=top style='width:233.75pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'><span
  style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:sexforclinicalusecategory-value-set'></span></span></span>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  sexforclinicalusecategory-value-set'><o:p>&nbsp;</o:p></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:sexforclinicalusecategory-value-set'></span></span></span>
 </tr>
 <tr style='mso-yfti-irow:3'>
  <td width=312 valign=top style='width:233.75pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  sexforclinicalusecategory-value-set'>assigned gender at birth (AGAB)</span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:sexforclinicalusecategory-value-set'></span></span></span>
  <td width=312 valign=top style='width:233.75pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  sexforclinicalusecategory-value-set'>A sex and/or gender datum that is
  recorded in some system (usually a birth certificate or registry) shortly
  after birth, often based on some sexing methodology. AGAB is a form of <span
  class=GramE>RSG</span> and it is usually indicated as a gender marker on
  birth certificate, although not always.</span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:sexforclinicalusecategory-value-set'></span></span></span>
 </tr>
 <tr style='mso-yfti-irow:4'>
  <td width=312 valign=top style='width:233.75pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  sexforclinicalusecategory-value-set'>cisgender</span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:sexforclinicalusecategory-value-set'></span></span></span>
  <td width=312 valign=top style='width:233.75pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  sexforclinicalusecategory-value-set'>A gender modality in which one has a
  gender identity which is the same as one’s assigned gender at birth and/or
  the gender one was raised or reared as. Considered to be the opposite of <i>transgender</i>.</span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:sexforclinicalusecategory-value-set'></span></span></span>
 </tr>
 <tr style='mso-yfti-irow:5'>
  <td width=312 valign=top style='width:233.75pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  sexforclinicalusecategory-value-set'>dyadic</span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:sexforclinicalusecategory-value-set'></span></span></span>
  <td width=312 valign=top style='width:233.75pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  sexforclinicalusecategory-value-set'>Non-intersex.</span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:sexforclinicalusecategory-value-set'></span></span></span>
 </tr>
 <tr style='mso-yfti-irow:6'>
  <td width=312 valign=top style='width:233.75pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  sexforclinicalusecategory-value-set'><span class=SpellE>endosex</span></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:sexforclinicalusecategory-value-set'></span></span></span>
  <td width=312 valign=top style='width:233.75pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  sexforclinicalusecategory-value-set'>Non-intersex.</span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:sexforclinicalusecategory-value-set'></span></span></span>
 </tr>
 <tr style='mso-yfti-irow:7'>
  <td width=312 valign=top style='width:233.75pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  sexforclinicalusecategory-value-set'>gender</span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:sexforclinicalusecategory-value-set'></span></span></span>
  <td width=312 valign=top style='width:233.75pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  sexforclinicalusecategory-value-set'>A complex umbrella term for
  characteristics which relate to sociocultural designations considered to be
  associated with, but not necessarily casually related to, sex. Elements of
  gender include gender identity, gender modality, gender expression, gender roles,
  and gender markers, among many other representations.</span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:sexforclinicalusecategory-value-set'></span></span></span>
 </tr>
 <tr style='mso-yfti-irow:8'>
  <td width=312 valign=top style='width:233.75pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  sexforclinicalusecategory-value-set'>gender affirmation</span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:sexforclinicalusecategory-value-set'></span></span></span>
  <td width=312 valign=top style='width:233.75pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  sexforclinicalusecategory-value-set'>Any process by which gender dysphoria is
  decreased and/or gender euphoria is increased. Gender affirmation can be
  medical, social, legal, or take various other forms. Cisgender and
  transgender people undergo many processes of gender affirmation, and gender
  affirmation is an individualized experience.</span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:sexforclinicalusecategory-value-set'></span></span></span>
 </tr>
 <tr style='mso-yfti-irow:9'>
  <td width=312 valign=top style='width:233.75pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  sexforclinicalusecategory-value-set'>gender-affirming medical procedure</span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:sexforclinicalusecategory-value-set'></span></span></span>
  <td width=312 valign=top style='width:233.75pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  sexforclinicalusecategory-value-set'>Any of various medical procedures
  performed for the primary purpose of gender affirmation. While transgender
  and <span class=SpellE>ultergender</span> (intersex and transgender) people
  are <span class=GramE>most commonly thought</span> of as undertaking
  gender-affirming medical procedures, cisgender and <span class=SpellE>ipsogender</span>
  (intersex and transgender) people do as well.</span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:sexforclinicalusecategory-value-set'></span></span></span>
 </tr>
 <tr style='mso-yfti-irow:10'>
  <td width=312 valign=top style='width:233.75pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  sexforclinicalusecategory-value-set'>gender-affirming hormone therapy (GAHT)</span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:sexforclinicalusecategory-value-set'></span></span></span>
  <td width=312 valign=top style='width:233.75pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  sexforclinicalusecategory-value-set'>Therapeutic use of exogenous hormones
  for the primary purpose of gender affirmation. Typically, GAHT involves some
  use of anti-androgens, estradiol, progesterone, and/or testosterone by one or
  multiple routes. Many cisgender people and transgender people access GAHT,
  with menopausal cisgender women and cisgender men with sexual dysfunction
  being two groups that utilize GAHT.</span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:sexforclinicalusecategory-value-set'></span></span></span>
 </tr>
 <tr style='mso-yfti-irow:11'>
  <td width=312 valign=top style='width:233.75pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  sexforclinicalusecategory-value-set'>gender-affirming surgery (GAS)</span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:sexforclinicalusecategory-value-set'></span></span></span>
  <td width=312 valign=top style='width:233.75pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  sexforclinicalusecategory-value-set'>Any of various surgical procedures used
  for the primary purpose of gender affirmation. These surgical procedures are
  briefly reviewed in the following sections.</span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:sexforclinicalusecategory-value-set'></span></span></span>
 </tr>
 <tr style='mso-yfti-irow:12'>
  <td width=312 valign=top style='width:233.75pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  sexforclinicalusecategory-value-set'>gender dysphoria</span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:sexforclinicalusecategory-value-set'></span></span></span>
  <td width=312 valign=top style='width:233.75pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  sexforclinicalusecategory-value-set'>Psychological distress or discomfort
  that results from some form of disconnect between one’s sense of gender
  identity and their physical, hormonal, mental, emotional, presentational
  and/or social attributes. While transgender and <span class=SpellE>ultergender</span>
  (transgender and intersex) individuals come to mind when discussing gender
  dysphoria, not all transgender and <span class=SpellE>ultergender</span>
  individuals experience gender dysphoria, and many <span class=GramE>cisgender</span>
  and <span class=SpellE>ipsogender</span> (cisgender and intersex) individuals
  do. For instance, cisgender women with polycystic ovarian syndrome may
  experience hirsutism and grow more noticeable facial hair. In many cultures,
  cisgender women having more noticeable facial hair is seen as a negative
  trait, which can result in duress in relationship with one’s gender identity.</span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:sexforclinicalusecategory-value-set'></span></span></span>
 </tr>
 <tr style='mso-yfti-irow:13'>
  <td width=312 valign=top style='width:233.75pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  sexforclinicalusecategory-value-set'>gender euphoria</span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:sexforclinicalusecategory-value-set'></span></span></span>
  <td width=312 valign=top style='width:233.75pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  sexforclinicalusecategory-value-set'>A state of intense excitement and
  happiness which results from one’s sense of gender identity aligning with an
  aspect of their physical, hormonal, mental, emotional, presentational and/or
  social attributes. For decades, gender euphoria in transgender people,
  especially transgender women, has been inextricably connected to ideas of
  “fetishism”, despite the fact that cisgender people, when expressing the same
  kind of euphoria, would also be labeled as “fetishistic” by the same
  mechanisms.</span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:sexforclinicalusecategory-value-set'></span></span></span>
 </tr>
 <tr style='mso-yfti-irow:14'>
  <td width=312 valign=top style='width:233.75pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  sexforclinicalusecategory-value-set'>gender expression</span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:sexforclinicalusecategory-value-set'></span></span></span>
  <td width=312 valign=top style='width:233.75pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  sexforclinicalusecategory-value-set'>Within a particular sociocultural
  context, one’s expression which is read as gendered. Note that gender
  expression varies immensely based on context; it is not possible to say that
  an individual has a universally “feminine” gender expression, as their
  expression may not be considered feminine in all contexts. Recording of
  gender expression in a structured way in an EHR is discouraged due to the
  item’s inherent lack of interoperability.</span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:sexforclinicalusecategory-value-set'></span></span></span>
 </tr>
 <tr style='mso-yfti-irow:15'>
  <td width=312 valign=top style='width:233.75pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  sexforclinicalusecategory-value-set'>gender identity</span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:sexforclinicalusecategory-value-set'></span></span></span>
  <td width=312 valign=top style='width:233.75pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  sexforclinicalusecategory-value-set'>A person’s self-concept of the gender
  category or categories to which they belong. A person may identify with one
  gender identity label, multiple gender identity labels, or no gender identity
  labels. Additionally, an individual may change gender identity labels over
  the life course. Non-human animals are typically not considered to have a
  gender identity. Gender identity has complex biopsychosocial components.</span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:sexforclinicalusecategory-value-set'></span></span></span>
 </tr>
 <tr style='mso-yfti-irow:16'>
  <td width=312 valign=top style='width:233.75pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  sexforclinicalusecategory-value-set'>gender incongruence</span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:sexforclinicalusecategory-value-set'></span></span></span>
  <td width=312 valign=top style='width:233.75pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  sexforclinicalusecategory-value-set'>A long-term pattern of gender dysphoria,
  which is typically unique to transgender and <span class=SpellE>ultergender</span>
  (intersex and transgender) persons, in which one’s assigned gender at birth
  (or gender of rearing, the gender they were raised as, etc.) differs from
  their gender identity.</span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:sexforclinicalusecategory-value-set'></span></span></span>
 </tr>
 <tr style='mso-yfti-irow:17'>
  <td width=312 valign=top style='width:233.75pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  sexforclinicalusecategory-value-set'>gender marker</span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:sexforclinicalusecategory-value-set'></span></span></span>
  <td width=312 valign=top style='width:233.75pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  sexforclinicalusecategory-value-set'>A marker which indicates gender on a
  given document (such as a driver’s license, birth certificate, etc.) or <span
  class=GramE>in a given</span> database (such as in birth registry, an
  electronic health record, etc.). A gender marker is a type of RSG.</span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:sexforclinicalusecategory-value-set'></span></span></span>
 </tr>
 <tr style='mso-yfti-irow:18'>
  <td width=312 valign=top style='width:233.75pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  sexforclinicalusecategory-value-set'>gender marker on birth certificate</span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:sexforclinicalusecategory-value-set'></span></span></span>
  <td width=312 valign=top style='width:233.75pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  sexforclinicalusecategory-value-set'>The gender marker which appears on one’s
  birth certificate. A gender marker on birth certificate is a type of RSG.</span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:sexforclinicalusecategory-value-set'></span></span></span>
 </tr>
 <tr style='mso-yfti-irow:19'>
  <td width=312 valign=top style='width:233.75pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  sexforclinicalusecategory-value-set'>gender marker on health insurance</span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:sexforclinicalusecategory-value-set'></span></span></span>
  <td width=312 valign=top style='width:233.75pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  sexforclinicalusecategory-value-set'>The gender marker which appears on one’s
  health insurance card, is registered with their health insurance company, or
  otherwise appears in a form or document associated with health insurance.</span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:sexforclinicalusecategory-value-set'></span></span></span>
 </tr>
 <tr style='mso-yfti-irow:20'>
  <td width=312 valign=top style='width:233.75pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  sexforclinicalusecategory-value-set'>gender marker on identity document</span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:sexforclinicalusecategory-value-set'></span></span></span>
  <td width=312 valign=top style='width:233.75pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  sexforclinicalusecategory-value-set'>The gender marker which appears on an
  identity document, such as a national identification card, a driver’s license,
  or a passport. Many times, a gender marker which appears on an identity
  document that is produced by a government, or with some government
  affiliation, is referred to somewhat erroneously as a <i>legal sex </i>or <i>legal
  gender</i>. A gender marker on an identity document is a type of RSG.</span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:sexforclinicalusecategory-value-set'></span></span></span>
 </tr>
 <tr style='mso-yfti-irow:21'>
  <td width=312 valign=top style='width:233.75pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  sexforclinicalusecategory-value-set'>gender modality</span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:sexforclinicalusecategory-value-set'></span></span></span>
  <td width=312 valign=top style='width:233.75pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  sexforclinicalusecategory-value-set'>One’s alignment (or lack thereof)
  between their assigned gender at birth (or the gender they were reared or
  raised as) and their gender identity.</span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:sexforclinicalusecategory-value-set'></span></span></span>
 </tr>
 <tr style='mso-yfti-irow:22'>
  <td width=312 valign=top style='width:233.75pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  sexforclinicalusecategory-value-set'>hermaphrodite</span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:sexforclinicalusecategory-value-set'></span></span></span>
  <td width=312 valign=top style='width:233.75pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  sexforclinicalusecategory-value-set'>An <span class=SpellE>intersexphobic</span>
  slur which has selectively been reclaimed by some intersex people. It should
  not be used by non-intersex people to describe intersex people. However, the
  term hermaphrodite and its derivatives (such as hermaphroditic) are usually
  still considered appropriate when applied to non-human animals (such as
  nematodes).</span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:sexforclinicalusecategory-value-set'></span></span></span>
 </tr>
 <tr style='mso-yfti-irow:23'>
  <td width=312 valign=top style='width:233.75pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  sexforclinicalusecategory-value-set'>intersex</span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:sexforclinicalusecategory-value-set'></span></span></span>
  <td width=312 valign=top style='width:233.75pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  sexforclinicalusecategory-value-set'>An umbrella term referring to variations
  in sex characteristics which, while present congenitally, may become apparent
  at any period of one’s life course. Intersex variations are usually
  anatomical, genetic, or hormonal in nature, but not always. Further, just
  because a particular variation may be considered intersex in some cases, does
  not mean it is intersex in all cases. Intersex people are usually coercively
  assigned (oftentimes via intersex genital mutilation) as “male” or “female”,
  meaning that intersex is usually not an assigned gender at birth (AGAB).
  Intersex as a term should only be used when referring to humans. A gender
  marker on health insurance is a type of RSG.</span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:sexforclinicalusecategory-value-set'></span></span></span>
 </tr>
 <tr style='mso-yfti-irow:24'>
  <td width=312 valign=top style='width:233.75pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  sexforclinicalusecategory-value-set'><span class=SpellE>ipsogender</span></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:sexforclinicalusecategory-value-set'></span></span></span>
  <td width=312 valign=top style='width:233.75pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  sexforclinicalusecategory-value-set'>A gender modality which is intersex and
  cisgender.</span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:sexforclinicalusecategory-value-set'></span></span></span>
 </tr>
 <tr style='mso-yfti-irow:25'>
  <td width=312 valign=top style='width:233.75pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  sexforclinicalusecategory-value-set'>legal gender</span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:sexforclinicalusecategory-value-set'></span></span></span>
  <td width=312 valign=top style='width:233.75pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  sexforclinicalusecategory-value-set'>A misnamed and fictitious social and
  legal construction which is most often used to refer to gender markers (often
  erroneously labeled as ‘sex’) on identity documents, such as birth
  certificates, driver’s licenses, and passports. Because of the difficulties
  involved in changing one’s gender marker on any of these documents, it is
  entirely possible that an individual <span class=GramE>have</span> multiple
  different “legal” genders simultaneously. For this reason, RSG was included
  instead of legal gender, so that multiple RSGs can be recorded and the
  document which the RSG points to can be made <span class=GramE>more clear</span>.</span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:sexforclinicalusecategory-value-set'></span></span></span>
 </tr>
 <tr style='mso-yfti-irow:26'>
  <td width=312 valign=top style='width:233.75pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  sexforclinicalusecategory-value-set'>legal name</span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:sexforclinicalusecategory-value-set'></span></span></span>
  <td width=312 valign=top style='width:233.75pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  sexforclinicalusecategory-value-set'>A misnamed and fictitious social and
  legal construction which is most often used to refer to how one’s name or
  names appear on identity documents, such as birth certificates, driver’s
  licenses, and passports. Because of the difficulties involved in changing
  one’s name on any of these documents, it is entirely possible that an
  individual <span class=GramE>have</span> multiple “legal” names. Oftentimes,
  one’s name on identity documents does not match their actual name, and this
  is often the case for cisgender people and transgender people. For instance,
  an individual with the name “William” on an identity document may have the
  name “Bill”. An individual may take their partner’s surname upon marriage in
  many locales, but not be able to update their passport, with a previous
  surname appearing. Many people outside of the Anglosphere are forced to
  change their names in <span class=GramE>a number of</span> ways in order to
  “fit” into arbitrary boxes decided upon by Anglosphere authorities, including
  fitting into a given name/middle name/surname dichotomy, removal of special
  characters, shortening of names that do not fit, and transliteration which
  may be inaccurate.</span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:sexforclinicalusecategory-value-set'></span></span></span>
 </tr>
 <tr style='mso-yfti-irow:27'>
  <td width=312 valign=top style='width:233.75pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  sexforclinicalusecategory-value-set'>legal sex</span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:sexforclinicalusecategory-value-set'></span></span></span>
  <td width=312 valign=top style='width:233.75pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  sexforclinicalusecategory-value-set'>See <i>legal gender</i>.</span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:sexforclinicalusecategory-value-set'></span></span></span>
 </tr>
 <tr style='mso-yfti-irow:28'>
  <td width=312 valign=top style='width:233.75pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  sexforclinicalusecategory-value-set'>name</span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:sexforclinicalusecategory-value-set'></span></span></span>
  <td width=312 valign=top style='width:233.75pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  sexforclinicalusecategory-value-set'>Occasionally also referred to as a ‘name
  to use’ or a ‘name used’; one’s name is the primary identifier that an
  individual uses and which is used to refer to that individual. Importantly,
  an individual’s name is just their name, it is not ‘chosen’, ‘preferred’,
  ‘affirmed’, etc.</span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:sexforclinicalusecategory-value-set'></span></span></span>
 </tr>
 <tr style='mso-yfti-irow:29'>
  <td width=312 valign=top style='width:233.75pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  sexforclinicalusecategory-value-set'>nonbinary</span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:sexforclinicalusecategory-value-set'></span></span></span>
  <td width=312 valign=top style='width:233.75pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  sexforclinicalusecategory-value-set'>(1) A specific gender identity which is
  neither male nor female.</span></span></span></p>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  sexforclinicalusecategory-value-set'>(2) An umbrella term… </span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:sexforclinicalusecategory-value-set'></span></span></span>
 </tr>
 <tr style='mso-yfti-irow:30'>
  <td width=312 valign=top style='width:233.75pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  sexforclinicalusecategory-value-set'><span class=SpellE>perisex</span></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:sexforclinicalusecategory-value-set'></span></span></span>
  <td width=312 valign=top style='width:233.75pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  sexforclinicalusecategory-value-set'>Non-intersex.</span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:sexforclinicalusecategory-value-set'></span></span></span>
 </tr>
 <tr style='mso-yfti-irow:31'>
  <td width=312 valign=top style='width:233.75pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  sexforclinicalusecategory-value-set'>pronoun</span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:sexforclinicalusecategory-value-set'></span></span></span>
  <td width=312 valign=top style='width:233.75pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'><span
  style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:sexforclinicalusecategory-value-set'></span></span></span>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  sexforclinicalusecategory-value-set'><o:p>&nbsp;</o:p></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:sexforclinicalusecategory-value-set'></span></span></span>
 </tr>
 <tr style='mso-yfti-irow:32'>
  <td width=312 valign=top style='width:233.75pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  sexforclinicalusecategory-value-set'>pronoun set</span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:sexforclinicalusecategory-value-set'></span></span></span>
  <td width=312 valign=top style='width:233.75pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  sexforclinicalusecategory-value-set'>A set of pronouns used commonly together
  and considered to be different forms of one another.</span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:sexforclinicalusecategory-value-set'></span></span></span>
 </tr>
 <tr style='mso-yfti-irow:33'>
  <td width=312 valign=top style='width:233.75pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  sexforclinicalusecategory-value-set'>sex</span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:sexforclinicalusecategory-value-set'></span></span></span>
  <td width=312 valign=top style='width:233.75pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'><span
  style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:sexforclinicalusecategory-value-set'></span></span></span>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  sexforclinicalusecategory-value-set'><o:p>&nbsp;</o:p></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:sexforclinicalusecategory-value-set'></span></span></span>
 </tr>
 <tr style='mso-yfti-irow:34'>
  <td width=312 valign=top style='width:233.75pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  sexforclinicalusecategory-value-set'>sex characteristics</span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:sexforclinicalusecategory-value-set'></span></span></span>
  <td width=312 valign=top style='width:233.75pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  sexforclinicalusecategory-value-set'>A characteristic which</span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:sexforclinicalusecategory-value-set'></span></span></span>
 </tr>
 <tr style='mso-yfti-irow:35'>
  <td width=312 valign=top style='width:233.75pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  sexforclinicalusecategory-value-set'>sex <span class=SpellE>dyadicity</span></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:sexforclinicalusecategory-value-set'></span></span></span>
  <td width=312 valign=top style='width:233.75pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  sexforclinicalusecategory-value-set'>One’s status as intersex or non-intersex
  (also called <span class=SpellE>endosex</span>, <span class=SpellE>perisex</span>,
  or dyadic).</span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:sexforclinicalusecategory-value-set'></span></span></span>
 </tr>
 <tr style='mso-yfti-irow:36'>
  <td width=312 valign=top style='width:233.75pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  sexforclinicalusecategory-value-set'>transgender</span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:sexforclinicalusecategory-value-set'></span></span></span>
  <td width=312 valign=top style='width:233.75pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  sexforclinicalusecategory-value-set'>[1] A gender modality in which one has a
  gender identity which is different from one’s assigned gender at birth and/or
  the gender one was raised or reared as.</span></span></span></p>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  sexforclinicalusecategory-value-set'>[2] An umbrella term referring to gender
  identity, gender expression, gender modality, and/or gender role which does
  not conform to Eurocentric binarism. While this definition was prevalent in
  the 1990s, it has since become less common.</span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:sexforclinicalusecategory-value-set'></span></span></span>
 </tr>
 <tr style='mso-yfti-irow:37;mso-yfti-lastrow:yes'>
  <td width=312 valign=top style='width:233.75pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  sexforclinicalusecategory-value-set'><span class=SpellE>ultergender</span></span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:sexforclinicalusecategory-value-set'></span></span></span>
  <td width=312 valign=top style='width:233.75pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoBodyText><span style='mso-bookmark:appendices'><span
  style='mso-bookmark:appendix-1-proposed-value-sets'><span style='mso-bookmark:
  sexforclinicalusecategory-value-set'>A gender modality which is intersex and
  transgender.</span></span></span></p>
  </td>
  <span style='mso-bookmark:appendices'><span style='mso-bookmark:appendix-1-proposed-value-sets'><span
  style='mso-bookmark:sexforclinicalusecategory-value-set'></span></span></span>
 </tr>
</table>



#### *Further Considerations*
HL7’s nullFlavor can be useful in a number of situations for Gender Identity, outside of nullFlavor UNK [unknown]. Some of these situations are summarized below. Underneath each value name are value names known to be utilized in other systems.


 
|**Value Name (English)**|**Description**|**Example Code System**|
| :--- | :--- | :--- |
|Masked|Information is available but has not been provided for security or privacy reasons. For instance, an individual may present a different gender identity in a space considered to be unknown or dangerous. Their actual gender identity could be masked in a situation like this. Additionally, some gender identities might not be used very often, and could therefore potentially lead to identifying an individual, compromising their privacy. A masked value could also be used to help prevent such a situation.|nullFlavor MSK [HL7]|
|Something else <br/>-Additional gender identity <br />-Another gender identity <br />-Another gender identity not listed <br />-Gender identity not listed above <br /> -Gender identity not listed here <br />-Gender not listed|The gender identity provided exists beyond any utilized code system. In these cases, plain-text should be provided. Avoid using “other” as much as possible.|nullFlavor OTH [HL7]GSSO:009484 [GSSO]|

|Not applicable- No gender identity|Having no proper value for gender identity. For instance, a biological specimen (cells, tissue, etc.) does not have a gender identity. Most psychiatrists and psychologists agree that gender identity forms between the ages of 4 and 7, so before that time “Not applicable” would be used.|nullFlavor NA [HL7]GSSO:009485 [GSSO]|

|Asked but unknown- Chose not to answer- Does not understand the question- Gender identity not disclosed- Non-disclosed- Person prefers not to say- Prefer not to answer- Prefer not to respond- Prefer not to say- Undisclosed- Unsure|Used in situations where a gender identity was sought but not found. For instance, if a patient doesn’t understand the question. Do NOT use this value to indicate if an individual is questioning or exploring their gender identity. Another example would be if an individual decides to not disclose their gender identity.|nullFlavor ASKU [HL7]|

|Temporarily unavailable|An individual’s gender identity is not available at the time but is expected later. For instance, if an individual is unconscious (but is expected to become conscious), their gender identity cannot be obtained.|nullFlavor NAV [HL7]|

|Not asked- Inappropriate to ask- Not appropriate to ask|An individual has not been asked about their gender identity or that information has not otherwise been sought in any form.|nullFlavor NASK [HL7]|

|Not available- Gender identity inadequately described- Inadequately described|An individual’s gender identity is not available at the time, and there is no expectation that it will ever be available. Such a determination could be used if an individual has died and their gender identity has not been ascertained. Could also be used in situations wherein an individual has tried to update from one system to another, and the previous system’s usage of gender (identity) is uncertain or inadequate.|nullFlavor NAVU [HL7]|

|Not present- Gender identity not provided- Not provided|Used only in messages to indicate that a value is not present.|nullFlavor NP [HL7]|
In addition to these values, we highly recommend the following, if appropriate:

|**Value Name (English)**|**Description**|**Example Code System**|
| :--- | :--- | :--- |
|Exploring or questioning gender identity|Indicating that one is exploring or questioning their gender identity can be helpful for providers, and may be a safer label for those who have just recently started thinking about their own gender process.|GSSO:001594 [GSSO]|
|I do not understand the question- I don’t understand- I don’t know|An individual does not understand the gender identity question as phrase, for any of various reasons (language barrier, for instance).|*None at present time*.|
In situations where many LGBTQIA+ patients are expected and more granularity is wanted, some of the following emergent gender identities may be considered. Below we include some of the more commonly known such identities, as of Spring 2022. However, this section is by no means exhaustive, and names and conceptualizations of various identities will shift over time, potentially meaning that some emergent terms might be missing while others have become obsoleted. For instance, the Gender Wiki lists [over 300 gender identities](https://gender.fandom.com/wiki/Category:Gender_Identities), the Nonbinary Wiki lists [over 100 more common gender identities](https://nonbinary.wiki/wiki/Category:Nonbinary_identities) which fall underneath the nonbinary umbrella, and the MOGAI Gender Wiki lists [over 200 gender identities](https://mogai-genders.fandom.com/wiki/Category:Gender). For trends regarding identity terms, many of which are gender identities, we recommend accessing the [Gender Census](https://gendercensus.com/), the 2021 version of included 44,583 usable responses. We utilized trends across the Gender Census in determining which identities to explicitly include below.

|**Value Name (English)**|**Description**|**Example Code System**|
| :--- | :--- | :--- |
|Agender|Attested as a gender identity since the late 1990s. Considered by most to be a lack of gender identity, or synonymous with genderless, non-gendered, or ungendered.|GSSO:002342 [GSSO]HOMOIT:0001927 [Homosaurus]|
|Androgyne|Term which has been utilized to describe gender nonconforming and intersex persons for centuries. By the late 19th and early 20th century, the term was used mostly to describe gay men who were considered to be feminine. By the 1980s, some transgender persons began using the term as a gender identity which have masculine and feminine components. Today, the term is seen as falling under the nonbinary umbrella, being simultaneously masculine and feminine, male and female.|GSSO:000404 [GSSO]|
|Bigender|First defined the 1980s, often to refer to persons who were “dual-gendered”, both male and female. Although many bigender people today still identify as both male and female, many others use various other gender identities: for instance, a person could be both female and nonbinary, or demigender and neutrois, and still be bigender.|GSSO:002336 [GSSO]HOMOIT:0000110 [Homosaurus]|
|Demigender|Defined in the early 2010s as an umbrella term and an identity itself, representing a gender identity which is partially aligned with another gender identity. For instance, an individual who is a demiboy may consider themselves to be partially aligned with a male gender identity.|GSSO:002341 [GSSO]HOMOIT:0001923 [Homosaurus]|
|Genderfluid|Although the concept of gender fluidity has existed for nearly a half century, the concept of genderfluid as a gender identity solidified in the 1990s, becoming increasingly popular in the 2000s and 2010s, representing an identity in which an individual experiences different identities as different times, which may or may not be contingent on a number of select factors.|GSSO:002339 [GSSO]HOMOIT:0000569 [Homosaurus]|
|Intergender|Defined in the 1990s as an “in-between” gender identity, typically defined as being between male and female. In the 2000s and 2010s, the term became known as a more exclusive gender identity meant to be utilized only by intersex persons; its usage by non-intersex (endosex *or* perisex) is considered derogatory.|GSSO:002335 [GSSO]|
|Multigender|An umbrella term and specific identity which was named in the late 2000s or early 2010s, used to refer to gender identities in which more than one identity is experienced, usually at the same time.|GSSO:002330 [GSSO]|
|Neutral|Also known as *gender neutral* or *neutral gender*, being both an umbrella term for gender identities considered to be neutral in nature or a specific gender identity of such a nature, which may also be described as agender, genderless, having no gender identity, or having a gender identity between others. While the term has been present for decades, its usage as a gender identity likely began in the 1980s or 1990s.|GSSO:002334 [GSSO]|
|Neutrois|A gender identity coined in the 1990s which is considered to be similar to, if not nearly identical to, a neutral gender identity.|GSSO:002340 [GSSO]|
|Pangender|A multigender identity in which an individual identifies with a seemingly countless number of separate identities or as a seemingly all-encompassing gender identity, although usually discounting culturally-specific gender identities. The term likely came to exist in the 2000s or 2010s.|GSSO:007680 [GSSO]HOMOIT:0001071 [Homosaurus]|
|Polygender|A multigender identity which typically includes more than two genders, therefore not including bigender persons. The term was likely coined in the late 1990s in English.|GSSO:002338 [GSSO]|
|Trigender|A rarer multigender identity which typically includes three genders; the term likely came to exist in the late 1990s.|GSSO:002337 [GSSO]HOMOIT:0001473 [Homosaurus]|
When additional codes and terms appropriate to specific jurisdictions, locations, and potentially individual persons are needed, an additional value or values should be created that add in the additional concepts. Such values are informally referred to as *culturally-specific gender identities*.

Implementations should be prepared for the addition of other specific gender identities at specific locations. Implementations should be prepared to receive messages or records that contain unrecognized terms. Local policy will establish how to handle unrecognized terms, most likely by preserving the term. Examples of gender identity extensions are given in the non-normative table shown below, with the caveat that this work is produced from an Anglospheric perspective, and that local implementors of these communities may utilize these entities in different ways.

For instance, many of communities do not differentiate between sexual identity and gender identity, and these terms are implicitly combined. More research is necessary in many of these situations in order to effectively prevent miscommunication, but performing such research is beyond the scope of the current report. Note that the following list is scoped and only includes identities attested to be in use in the last century.

|**Transliterated Value Name****(Name in Original Language, if Different)**|**Jurisdiction** **(Ethnic or Cultural Group)**|**Description**|**Example Code System**|
| :--- | :--- | :--- | :--- |
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
|Thirunangai (Tamil: திருநங்கை)|India (Tamilar)|Term coined in the 2010s to be a more respectful version of aravani in Tamil Nadu. Thirunangai have been said to be hijra, trans women, or as its own designation by various sources.||
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
Note that terms like “MTF”, “FTM”, “male-to-female transsexual”, and “female-to-male transsexual”, etc. were not included. [Kronk noted in an article with 16 other trans authors](https://doi.org/10.1093/jamia/ocab136) in various health care fields that “[t]hese options are antiquated and problematic. The first two (FTM and MTF) have largely fallen out of use among transgender people and in transgender-related literature because they fundamentally assume a ‘change’ in gender—that a transgender person was ‘female’ and now is ‘male’ (FTM), usually due to, or following, some sort of medicalization process (hormone replacement therapy and/or gender affirming surgery, for instance) [91,92,93,94,95]. This contradicts how many trans people understand their identity and can confuse patients. All four terms center cisgender people, reserving unqualified ‘male’ and ‘female’ for them while trans people are segregated into the separate, qualified categories of ‘MTF’, ‘FTM’, ‘transgender male’, ‘transgender female’, and ‘transgender’. Fundamentally, this implies trans women and trans men are deviant and not actually female or male, respectively, especially when the selection is ordered as “male”, “female”, “MTF”, “FTM” [96,97,98]. Further, by separating these groups in the first place, “male” and “female” are presented as the norm while “transgender male” and “transgender female” are othered [96,97,98,99,100]. The separation can insinuate that transgender people are not their stated gender and that separation is cited heavily in transphobic and exclusionary actions [101,102,103]”. In practice, many transgender persons would answer “male” or “female” over “transgender male” or “transgender female”.

When a person is transgender, intersex, and/or gender-diverse, this is noted by an incongruence between a gender identity datum and a sex for clinical use datum (or data). The specific incongruence can be noted using the Comment and Linked Clinical Observation.
### **Entity: Pronouns to Use, Attribute: Pronoun Set**
#### *Introduction*
The attribute Pronoun Set in the entity Pronouns to Use has a minimum value set which is extensible. At the time of writing, information regarding non-English pronoun set systems was not well represented in the HL7 Gender Harmony Project group. Therefore, only English-language pronoun sets are provided in the minimum value set for the time being, for use in Anglosphere countries (the United States, the United Kingdom, Canada, Australia, New Zealand, etc.). However, in further considerations, we will list some potential options to consider in future work outside of the Anglosphere, which could potentially be adopted in other jurisdictions with more representation from those jurisdictions.

English-language pronoun sets are shown in the following order for the purposes of declination:

- Subject pronoun (Example: “**She** went to the park.”)
- Object pronoun (Example: “I went with **her**.”)
- Possessive determiner (Example: “She** brought **her** frisbee.”)
- Possessive pronoun (Example: “At least I think it was **hers**.”)
- Reflexive (Example: “She threw the frisbee to **herself**.”)

Individual forms are separated by commas (“,”) because some pronoun sets include the “/” character within them, which would make programmatic parsing more difficult.

Individuals may use more than one set of pronouns at the same time. For instance, an individual may use she/her pronouns and they/them pronouns (often represented as she/they). In this case, the individual would select both “she, her, her, hers, herself” and “they, them, their, theirs, themselves”. This is why the cardinality of pronouns is 0..*n*.

The primary code system utilized is a subset of the LOINC answer list for Personal Pronouns - Reported, LL5144-2 Personal pronouns / Answers: 10; Scale: Nom; Code: -; Score: -.
#### *Required Value Names, Descriptions, and Example Code Systems*

|**Value Name (English)**|**Description**|**Example Code System**|
| :--- | :--- | :--- |
|he, him, his, his, himself|English-language pronouns usually associated with masculinity and/or maleness, that are to be used to refer to the person who uses them.|LA29518-0 [LOINC]GSSO:010399 [GSSO]|
|she, her, her, hers, herself|English-language pronouns usually associated with femininity and/or femaleness, that are to be used to refer to the person who uses them.|LA29519-8 [LOINC]GSSO:010398 [GSSO]|
|they, them, their, theirs, themself|Epicene English-language pronouns usually considered gender-neutral and/or gender-expansive, that are to be used to refer to the person who uses them.|LA29520-6 [LOINC]GSSO:011490 [GSSO]|
|unknown||nullFlavor UNK [HL7]Unknown, 261665006 [SNOMED CT]|
#### *Further Considerations*
[additional nullFlavor options]

A number of English neopronouns (neologistic pronouns) exist in addition to the English paleopronouns (paleologistic pronouns) included previously. A few of these are shown below.

|**Value Name (English)**|**Description**|**Example Code System**|
| :--- | :--- | :--- |
|co, co, cos, cos, coself||LA29515-6 [LOINC]GSSO:011647 [GSSO]|
|en, en, ens, ens, enself||LA29516-4 [LOINC]|
|ey, em, eir, eirs, emself||LA29517-2 [LOINC]GSSO:011577 [GSSO]|
|ve, vis, ver, ver, verself||LA29524-8 [LOINC]|
|xie, hir, hir, hirs, hirself||LA29521-4 [LOINC]|
|yo, yo, yos, yos, yoself||LA29522-2 [LOINC]GSSO:011555 [GSSO]|
|ze, zir, zir, zirs, zirself||LA29523-0 [LOINC]GSSO:011556 [GSSO]|
Several other languages which use gendered pronouns should also consider constructing similar structures in their electronic health records. However, they should never automatically map pronouns in one language to pronouns in another language, as the connotations involved as language specific. A few potential examples to consider are included below in some languages, but these are not meant to be exhaustive, and should only be implemented with appropriate jurisdictional feedback. The sets are derived from the respective pages in [Pronouns.page](https://pronouns.page/).

|**Value Name (German)**|**Description**|**Example Code System**|
| :--- | :--- | :--- |
|sie, ihr|||
|er, ihm|||
|es, ihm|||
|dey, denen|||
|die, denen|||
|el, em|||
|em, em|||
|en, en|||
|en, em|||
|et, siem|||
|ey, emm|||
|hän, sim|||
|hen, hem|||
|hie, hiem|||
|iks, iks|||
|ind, inde|||
|nin, nim|||
|oj, ojm|||
|per, per|||
|ser, sem|||
|sier, siem|||
|they, them|||
|xier, xiem|||
|zet, zerm|||
|ersie, ihmihr|||


|**Value Name (Spanish)**|**Description**|**Example Code System**|
| :--- | :--- | :--- |
|ella, la|||
|él, lo|||
|elle, le|||
|ellu, lu|||
|elli, li|||
|elloa, loa|||
|il, li|||
|ól, ol|||
|xelle, le|||


|**Value Name (French)**|**Description**|**Example Code System**|
| :--- | :--- | :--- |
|iel, lea|||
|al, lea|||
|ael, lea|||
|el, lea|||
|em, lea|||
|ielle, lea|||
|ille, lea|||
|im, lea|||
|ol, lo|||
|ul, lu|||
|yel, lea|||
|yelle, lea|||


|**Value Name (Dutch)**|**Description**|**Example Code System**|
| :--- | :--- | :--- |
|zij, haar, haar|||
|hij, hem, zijn|||
|hen, hen, hun|||
|hen, hun, hun|||
|die, hen, hun|||
|hen, hen, hens|||
|die, die, diens|||
|dee, dem, dijr|||
|dij, dem, dijr|||
|nij, ner, nijr|||
|vij, vijn, vijns|||
|vij, her, zaar|||
|zhij, zhaar, zhaar|||
|zem, zeer, zeer|||


|**Value Name (Bokmål)**|**Description**|**Example Code System**|
| :--- | :--- | :--- |
|han, ham|||
|hun, henne|||
|hen, hens|||
|hin, hins|||


|**Value Name (Polish)**|**Description**|**Example Code System**|
| :--- | :--- | :--- |
|ona, jej|||
|on, jego|||
|onu, jenu|||
|onu, jejo|||
|ne, nego|||
|onu, jegu|||


|**Value Name (Portuguese)**|**Description**|**Example Code System**|
| :--- | :--- | :--- |
|a, ela, a|||
|o, ele, o|||
|ê, elu, e|||
|ê, ilu, e|||
|ê, ile, e|||
|ê, el, e|||
|i, ili, i|||
|ê, ily, e|||
|ê, éli, e|||
|ê, elé, e|||
|i, ilo, i|||
|ê, êlu, e|||
|y, yn, y|||
|y, ale, y|||
|ae, ael, e|||
|ae, elae, e|||


|**Value Name** **(Mandarin Chinese)**|**Description**|**Example Code System**|
| :--- | :--- | :--- |
|他, 你|||
|她, 你|||
|她, 妳|||
|tā, 你|||
|X也, 你|||
|无也, 你|||
|ㄊㄚ, 你|||

### **Entity: Recorded Sex or Gender, Attribute: Source Recorded Sex or Gender**
#### *Introduction*
The attribute Source Recorded Sex or Gender in the entity Recorded Sex or Gender has no minimum value set, due primarily to linguistic differences between regions. This section will review some of those differences for various jurisdictions to consider.
#### *Required Value Names, Descriptions, and Example Code Systems*
There are no required value names, descriptions, or example code systems for the attribute Source Recorded Sex or Gender. For examples of some values utilized herein, see further considerations.
#### *Further Considerations*
While international standards (see “Entity: Recorded Sex or Gender, Attribute: International Equivalent Recorded Sex or Gender”) typically utilize ‘M’, ‘F’, or ‘X’, other sources provide a much wider array of potential jurisdictional values which may provide more specific and necessary information. A table of some of the observed values is shown below. Note than inclusion of jurisdiction is necessary, as different jurisdictions may use different definitions for the same value. Note that this table is non-exhaustive.

|**Source Value**|**International Equivalent**|**Description**|**Example Documents**|**Example Jurisdictions**|
| :--- | :--- | :--- | :--- | :--- |
|[blank]|X|Reportedly interpreted as “indeterminate” in the German context.|Birth certificates|Argentina; Germany; United States (California, Minnesota)|
|-- [two dashes]|X||Birth certificates|United States (California)|
|divers|X|Meaning “diverse”.|Birth certificates|Austria; Germany|
|E|X|Meaning “eunuch”.|Passports|India|
|F|F|Meaning “female”.|National identity cards; Passports; Vehicular licenses|Belgium; Netherlands|
|Female|F||Birth certificates|United States (Connecticut)|
|female|F||||
|female (khwaja sira)|F *or* X?||National identity cards|Pakistan|
|INTERSEX|X||Birth certificates|United States (Colorado)|
|K|M|Meaning “male”.|Passports|Azerbaijan|
|khunsā-e-mushkil|X||National identity cards|Pakistan|
|M|M|Meaning “male”.|Passports; Vehicular licenses|Argentina; Australia; India; New Zealand; United States|
|Male|M||Birth certificates|United States (Connecticut)|
|male|M||||
|male (khwaja sira)|M *or* X?||National identity cards|Pakistan|
|NB|X|Meaning “no binario” (non-binary).|Birth certificates|Mexico|
|No binario|X||Birth certificates|Argentina|
|Non-Binary|X||Birth certificates|United States (Connecticut)|
|non-binary|X||||
|nonbinary|X||||
|not yet determined|X||Birth certificates|United States (New Jersey, New Mexico)|
|O|X|Meaning “other”.|Passports|Nepal|
|U|X|Meaning “undetermined”, “unspecified”, or “unknown”.|Birth certificates; Provincial health cards|Canada (British Columbia); United States (Oregon)|
|Unknown|X||Birth certificates|United States (Washington, DC)|
|Ա|M|Meaning “Արական” (“male”).|Passports|Armenia|
|V|F|Meaning “vrouwelijk” (“female”).|National identity cards|Netherlands|
|W|F|Meaning “weiblich” (“female”).|National identity cards|Belgium|
|X|X||Birth certificates; Passports; Vehicular licenses|Argentina; Australia; Austria; Iceland; Netherlands; New Zealand; Pakistan; United States (Arkansas, California, Colorado, Connecticut, Hawaii, Illinois, Maine, Michigan, Nevada, New Jersey, New Mexico, New York, Ohio, Oregon, Pennsylvania Rhode Island, Utah, Washington)|

### **Entity: Recorded Sex or Gender, Attribute: International Equivalent Recorded Sex or Gender**
#### *Introduction*
The attribute International Equivalent Recorded Sex or Gender in the entity Recorded Sex or Gender has a required minimum value set in order to facilitate communication between regions or jurisdictions which use different values for the attribute Source Recorded Sex or Gender in the entity Recorded Sex or Gender.

In order to develop this set, we reviewed all international documentation related to Recorded Sex or Gender. “Sex” or “Gender” (as it appears in passport documents) was the only entity found which sufficiently fulfilled these criteria. For that reason, our minimum value set derives from two International Civil Aviation Organization (ICAO) documents, being Doc 9303: Machine Readable Travel Documents, Seventh Edition (2015), Part 7: Machine Readable Visas and Doc 9303: Machine Readable Travel Documents, Eighth Edition (2021), Part 7: Machine Readable Visas.

As defined in those documents, “Sex” is representative of the “[s]ex of MRV-A holder, when included, is to be specified by use of the single initial commonly used in the language of the State of issue. If translation into English, French or Spanish is necessary, followed by an oblique and the capital letter F for female, M for male, or X for unspecified.” However, when the data structure is clarified later in the document it is noted that “F = Female; M = Male; < = non-specified”. This discrepancy is noted in with the following in the 2021 edition: “Where an issuing State or organization does not want to identify the sex, the filler character (<) shall be used in this field in the MRZ and an X in this field in the VIZ.” This effectively means that ‘X’ and ‘<’ are equivalent, with ‘X’ appearing on the “front-end” and ‘<’ appearing on the “back-end”.

However, it is important to note that this system does not include a value that is *unknown*. We recommend that nullFlavor UNK [HL7] be used for that purpose. Importantly, nullFlavor UNK [HL7] has more granular values which can be used as well, as long as some form of unknown is available. For instance, nullFlavor ASKU (asked but unknown), nullFlavor NAV (temporarily unavailable), and nullFlavor NASK (not asked), and nullFlavor NAVU could be utilized. Situations where other nullFlavor options may be applicable are discussed in further considerations.
#### *Required Value Names, Descriptions, and Example Code Systems*

|**Value Name (English)**|**Description**|**Example Code System**|
| :--- | :--- | :--- |
|Female|A value which corresponds to ‘F’, ‘female’, ‘woman’, or ‘girl’ has been recorded in some context.|F [ICAO]LA13504-8 [LOINC]|
|Male|A value which corresponds to ‘M’, ‘male’, ‘man’, or ‘boy’ has been recorded in some context.|M [ICAO]LA15170-6 [LOINC]|
|Nonbinary *or* Unspecified *or* Non-specified|A value which corresponds to ‘X’ has been recorded or the value is otherwise unspecified or non-specified. ‘X’ has been used to refer to the following in various jurisdictions (please note that this list is not exhaustive): (1) another gender identity, (2) gender diverse, (3) gender neutral, (4) indeterminate, (5) intersex, (6) neither male nor female, (7) nonbinary, (8) undesignated, (9) unreported.|X,* < [ICAO]LA32969-0 [LOINC]LA32970-8 [LOINC]|
|Unknown|A value is applicable, but not known.|nullFlavor UNK [HL7]Unknown, 261665006 [SNOMED CT]|
#### *Further Considerations*
HL7’s nullFlavor can be useful in a number of situations for Gender Identity, outside of nullFlavor UNK [unknown]. Some of these situations are summarized below. Underneath each value name are value names known to be utilized in other systems. Also included are some values for assigned gender at birth questions, a somewhat common subtype of RSG.

|**Value Name (English)**|**Description**|**Example Code System**|
| :--- | :--- | :--- |
|Masked|Information is available but has not been provided for security or privacy reasons. For instance, an individual may not present their assigned gender at birth or another recorded sex or gender value in a space considered to be unknown or dangerous. Their recorded sex or gender could be masked in a situation like this. Additionally, some recorded sex or gender values might not be used very often, and could therefore potentially lead to identifying an individual, compromising their privacy. A masked value could also be used to help prevent such a situation.|nullFlavor MSK [HL7]|
|Something else- Additional recorded sex or gender- Another recorded sex or gender- Another recorded sex or gender not listed- Assigned gender at birth not listed- Assigned sex at birth not listed- Recorded sex or gender not listed above- Recorded sex or gender not listed here- Recorded sex or gender not listed|The recorded sex or gender value provided exists beyond any utilized code system. In these cases, plain-text should be provided. Avoid using “other” as much as possible.|nullFlavor OTH [HL7]GSSO:009484 [GSSO]|
|Not applicable- No assigned gender at birth- No assigned sex at birth- No recorded sex or gender|Having no proper value for a recorded sex or gender. For instance, a biological specimen (cells, tissue, etc.) does not have a gender identity.|nullFlavor NA [HL7]GSSO:009485 [GSSO]|
|Asked but unknown- Assigned gender at birth not disclosed- Assigned sex at birth not disclosed- Chose not to answer- Does not understand the question- Recorded sex or gender not disclosed- Non-disclosed- Person prefers not to say- Prefer not to answer- Prefer not to respond- Prefer not to say- Undisclosed- Unsure|Used in situations where a recorded sex or gender value was sought but not found. For instance, if a patient doesn’t understand the question, or if an individual refuses or prefers to not answer the question.|nullFlavor ASKU [HL7]|
|Temporarily unavailable|An individual’s recorded sex or gender is not available at the time but is expected later. For instance, a neonate who has not yet been assigned a gender at birth.|nullFlavor NAV [HL7]|
|Not asked- Inappropriate to ask- Not appropriate to ask|An individual has not been asked about their recorded sex or gender or that information has not otherwise been sought in any form.|nullFlavor NASK [HL7]|
|Not available- Assigned gender at birth inadequately described- Recorded sex or gender inadequately described- Inadequately described|An individual’s recorded sex or gender is not available at the time, and there is no expectation that it will ever be available. Such a determination could be used if an individual has died and their documentation has not been ascertained.|nullFlavor NAVU [HL7]|
|Not present- Assigned gender at birth not provided- Assigned sex at birth not provided- Recorded gender not provided- Recorded sex not provided- Recorded sex or gender not provided- Not provided|Used only in messages to indicate that a value is not present.|nullFlavor NP [HL7]|
A number of jurisdictions use values outside of those aforementioned. For examples of some values, see above in “Entity: Recorded Sex or Gender, Attribute: Source Recorded Sex or Gender”, in the section “Further Considerations”.
### **Entity: Sex for Clinical Use, Attribute: Sex Category**
#### *Introduction*
Unlike the other attributes being discussed the attribute Sex Category in the entity Sex for Clinical Use is bound required, meaning that additional values beyond the value set will not be accepted. In the event that one attempts to add other values, they will be recoded as nullFlavor OTH (other). This binding is utilized because these values are often directly tied to functions of clinical systems which could break if inappropriate codes are exchanged.

The primary code system utilized is the LOINC answer list for Sex for clinical use, LL6114-4 / Female, Male, Specified, Unknown.
#### *Required Value Names, Descriptions, and Example Code Systems*

|**Value Name (English)**|**Description**|**Example Code System**|
| :--- | :--- | :--- |
|Female Sex for Clinical Use|The “female” values apply to this patient, in the case of a given procedure or process in a given context, for instance for a procedure, algorithm, hormone level, organ inventory, etc.|F, LA3-6 [LOINC]GSSO:011317 [GSSO]|
|Male Sex for Clinical Use|The “male” values apply to this patient, in the case of a given procedure or process in a given context, for instance for a procedure, algorithm, hormone level, organ inventory, etc.|M, LA2-8 [LOINC]GSSO:011318 [GSSO]|
|Specified Sex for Clinical Use|This patient has specific documented characteristics that do not fully match either male or female in a given context, for instance for a procedure, algorithm, hormone level, organ inventory, etc.|S, LA32840-3 [LOINC]GSSO:011319 [GSSO]|
|Unknown Sex for Clinical Use|The SFCU cannot be determined because there are no observations or the observations are not sufficient to determine a value. For example, an emergency trauma case may require treatment before SFCU can be established.|U, LA4489-6 [LOINC]nullFlavor UNK [HL7]Unknown, 261665006 [SNOMED CT]GSSO:011320 [GSSO]|
Given that this value set is intended to be a categorization of sex observations with the concept “Specified” as a flag to indicate non-standard sex observations, this value set should be bound required with no other codes allowed.

Instances in which “Specified” could be utilized include, but are not limited to:

1) Periods early in initiation of gender-affirming hormone therapy (GAHT) for transgender persons, in which inclusion of “male” and “female” reference ranges may be informative to include.
1) Instances wherein neither “male” nor “female” reference ranges are applicable, but another reference range could be specified, such as triglyceride levels in trans women using GAHT.
1) In instances wherein a provider wishes to have an algorithm utilized which does not include sex or gender as a variable, such as with eGFR.
#### *Further Considerations*
“Specified” is utilized here instead of terms like intersex for multiple reasons. The phrase intersex is typically a particular grouping of congenital conditions and even when used more generally it would not be considered synonymous or semantically equivalent. “Specified” is used to indicate that this person has specified observations that are likely important when considering clinical observations, particularly those that are impacted by sex-associated conditions.

While historical, mostly 19th-century, models described gay, lesbian, bisexual, intersex, and transgender persons as “intersexual”, this term (as well as intersex) was not chosen over “specified” because of its more specific scoped usage by providers, researchers, intersex activist groups (including interACT, the Intersex Society of North America, Intersex Initative, Intersex Peer Support Australia, the Intersex Justice Project, and the Intersex Campaign for Equality), and wider activist groups (such as Human Rights Campaign, Human Rights Watch, and ILGA-Europe). One of the authors of the original HL7 ballot document (Kronk) polled 483 trans people and found that 475 (98.3%) of them did not feel that all trans people were covered using the word “intersex”.

## **8.3 Glossary**
Included below are a few terms, in addition to those defined elsewhere in the document, for reference.

|**Term**|**Definition**|
| :--- | :--- |
|administrative gender||
|administrative sex||
|assigned gender at birth (AGAB)|A sex and/or gender datum that is recorded in some system (usually a birth certificate or registry) shortly after birth, often based on some sexing methodology. AGAB is a form of RSG and it is usually indicated as a gender marker on birth certificate, although not always.|
|cisgender|A gender modality in which one has a gender identity which is the same as one’s assigned gender at birth and/or the gender one was raised or reared as. Considered to be the opposite of *transgender*.|
|dyadic|Non-intersex.|
|endosex|Non-intersex.|
|gender|A complex umbrella term for characteristics which relate to sociocultural designations considered to be associated with, but not necessarily casually related to, sex. Elements of gender include gender identity, gender modality, gender expression, gender roles, and gender markers, among many other representations.|
|gender affirmation|Any process by which gender dysphoria is decreased and/or gender euphoria is increased. Gender affirmation can be medical, social, legal, or take various other forms. Cisgender and transgender people undergo many processes of gender affirmation, and gender affirmation is an individualized experience.|
|gender-affirming medical procedure|Any of various medical procedures performed for the primary purpose of gender affirmation. While transgender and ultergender (intersex and transgender) people are most commonly thought of as undertaking gender-affirming medical procedures, cisgender and ipsogender (intersex and transgender) people do as well.|
|gender-affirming hormone therapy (GAHT)|Therapeutic use of exogenous hormones for the primary purpose of gender affirmation. Typically, GAHT involves some use of anti-androgens, estradiol, progesterone, and/or testosterone by one or multiple routes. Many cisgender people and transgender people access GAHT, with menopausal cisgender women and cisgender men with sexual dysfunction being two groups that utilize GAHT.|
|gender-affirming surgery (GAS)|Any of various surgical procedures used for the primary purpose of gender affirmation. These surgical procedures are briefly reviewed in the following sections.|
|gender dysphoria|Psychological distress or discomfort that results from some form of disconnect between one’s sense of gender identity and their physical, hormonal, mental, emotional, presentational and/or social attributes. While transgender and ultergender (transgender and intersex) individuals come to mind when discussing gender dysphoria, not all transgender and ultergender individuals experience gender dysphoria, and many cisgender and ipsogender (cisgender and intersex) individuals do. For instance, cisgender women with polycystic ovarian syndrome may experience hirsutism and grow more noticeable facial hair. In many cultures, cisgender women having more noticeable facial hair is seen as a negative trait, which can result in duress in relationship with one’s gender identity.|
|gender euphoria|A state of intense excitement and happiness which results from one’s sense of gender identity aligning with an aspect of their physical, hormonal, mental, emotional, presentational and/or social attributes. For decades, gender euphoria in transgender people, especially transgender women, has been inextricably connected to ideas of “fetishism”, despite the fact that cisgender people, when expressing the same kind of euphoria, would also be labeled as “fetishistic” by the same mechanisms.|
|gender expression|Within a particular sociocultural context, one’s expression which is read as gendered. Note that gender expression varies immensely based on context; it is not possible to say that an individual has a universally “feminine” gender expression, as their expression may not be considered feminine in all contexts. Recording of gender expression in a structured way in an EHR is discouraged due to the item’s inherent lack of interoperability.|
|gender identity|A person’s self-concept of the gender category or categories to which they belong. A person may identify with one gender identity label, multiple gender identity labels, or no gender identity labels. Additionally, an individual may change gender identity labels over the life course. Non-human animals are typically not considered to have a gender identity. Gender identity has complex biopsychosocial components.|
|gender incongruence|A long-term pattern of gender dysphoria, which is typically unique to transgender and ultergender (intersex and transgender) persons, in which one’s assigned gender at birth (or gender of rearing, the gender they were raised as, etc.) differs from their gender identity.|
|gender marker|A marker which indicates gender on a given document (such as a driver’s license, birth certificate, etc.) or in a given database (such as in birth registry, an electronic health record, etc.). A gender marker is a type of RSG.|
|gender marker on birth certificate|The gender marker which appears on one’s birth certificate. A gender marker on birth certificate is a type of RSG.|
|gender marker on health insurance|The gender marker which appears on one’s health insurance card, is registered with their health insurance company, or otherwise appears in a form or document associated with health insurance.|
|gender marker on identity document|The gender marker which appears on an identity document, such as a national identification card, a driver’s license, or a passport. Many times, a gender marker which appears on an identity document that is produced by a government, or with some government affiliation, is referred to somewhat erroneously as a *legal sex* or *legal gender*. A gender marker on an identity document is a type of RSG.|
|gender modality|One’s alignment (or lack thereof) between their assigned gender at birth (or the gender they were reared or raised as) and their gender identity.|
|hermaphrodite|An intersexphobic slur which has selectively been reclaimed by some intersex people. It should not be used by non-intersex people to describe intersex people. However, the term hermaphrodite and its derivatives (such as hermaphroditic) are usually still considered appropriate when applied to non-human animals (such as nematodes).|
|intersex|An umbrella term referring to variations in sex characteristics which, while present congenitally, may become apparent at any period of one’s life course. Intersex variations are usually anatomical, genetic, or hormonal in nature, but not always. Further, just because a particular variation may be considered intersex in some cases, does not mean it is intersex in all cases. Intersex people are usually coercively assigned (oftentimes via intersex genital mutilation) as “male” or “female”, meaning that intersex is usually not an assigned gender at birth (AGAB). Intersex as a term should only be used when referring to humans. A gender marker on health insurance is a type of RSG.|
|ipsogender|A gender modality which is intersex and cisgender.|
|legal gender|A misnamed and fictitious social and legal construction which is most often used to refer to gender markers (often erroneously labeled as ‘sex’) on identity documents, such as birth certificates, driver’s licenses, and passports. Because of the difficulties involved in changing one’s gender marker on any of these documents, it is entirely possible that an individual have multiple different “legal” genders simultaneously. For this reason, RSG was included instead of legal gender, so that multiple RSGs can be recorded and the document which the RSG points to can be made more clear.|
|legal name|A misnamed and fictitious social and legal construction which is most often used to refer to how one’s name or names appear on identity documents, such as birth certificates, driver’s licenses, and passports. Because of the difficulties involved in changing one’s name on any of these documents, it is entirely possible that an individual have multiple “legal” names. Oftentimes, one’s name on identity documents does not match their actual name, and this is often the case for cisgender people and transgender people. For instance, an individual with the name “William” on an identity document may have the name “Bill”. An individual may take their partner’s surname upon marriage in many locales, but not be able to update their passport, with a previous surname appearing. Many people outside of the Anglosphere are forced to change their names in a number of ways in order to “fit” into arbitrary boxes decided upon by Anglosphere authorities, including fitting into a given name/middle name/surname dichotomy, removal of special characters, shortening of names that do not fit, and transliteration which may be inaccurate.|
|legal sex|See *legal gender*.|
|name|Occasionally also referred to as a ‘name to use’ or a ‘name used’; one’s name is the primary identifier that an individual uses and which is used to refer to that individual. Importantly, an individual’s name is just their name, it is not ‘chosen’, ‘preferred’, ‘affirmed’, etc.|
|nonbinary|(1) A specific gender identity which is neither male nor female.(2) An umbrella term… |
|perisex|Non-intersex.|
|pronoun||
|pronoun set|A set of pronouns used commonly together and considered to be different forms of one another.|
|sex||
|sex characteristics|A characteristic which|
|sex dyadicity|One’s status as intersex or non-intersex (also called endosex, perisex, or dyadic).|
|transgender|[1] A gender modality in which one has a gender identity which is different from one’s assigned gender at birth and/or the gender one was raised or reared as.[2] An umbrella term referring to gender identity, gender expression, gender modality, and/or gender role which does not conform to Eurocentric binarism. While this definition was prevalent in the 1990s, it has since become less common.|
|ultergender|A gender modality which is intersex and transgender.|

