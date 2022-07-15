# **TODO** - Lead in Page for this section


## HL7 v2
HL7 v2 initially had a single field PID-8 Sex with user-defined values. In V2.4 (2000) this field was renamed to Administrative Sex in recognition that it was insufficient or inappropriate for conveying sex for clinical use. There are now several segments in HL7 v2 that support communicating administrative sex values for various actors. HL7 v2 defines PID-8 Administrative Sex for a patient, IN1-43 for the Insured’s Administrative Sex, GT1-9 for the Guarantor’s Administrative Sex, NK1-15 for the Next of Kin / Associated Party’s Administrative Sex, etc. It is widely recognized that the concept of Administrative Sex is not clearly defined and is very widely overloaded with other concepts in real-world implementations.



## C-CDA / HL7 v3
HL7 took the v2 Administrative Sex attribute and renamed it Administrative Gender in v3, defining it as “the behavioral, cultural, or psychological traits typically associated with one sex”. It contained an explicit caveat that it was not for clinical use and was “a high-level classification [...] for the appropriate allocation of inpatient bed assignment.”

In actual implementation, primarily in CDA, this attribute was typically just transcribed from the v2 messaging PID-8 Administrative Sex field, with all its inherent ambiguities.


## FHIR
Section 8.1.7 of the HL7 FHIR Specification v.4.0.1 (R4 – Mixed Normative and STU) addresses representing Patient Gender and Sex in FHIR resources, and recognizes that many systems and organizations only provide for a single attribute to represent all aspects of a patient’s gender and sex. Documentation and interoperability considerations covered in the FHIR specification include various social and biological aspects, including Administrative Gender. As input to patient matching algorithms, Administrative Gender is often used to interoperate between systems that use a single generic property (patient.gender). Within FHIR, users should note that gender might not match the biological sex as determined by genetics or the individual's preferred identification. As there are other legitimate possibilities than male and female, systems providing decision support or enforcing business rules should ideally do this on the basis of Observations dealing with the specific sex or gender aspect of interest (anatomical, chromosomal, social, etc.) This stance is in-line with the recommendations made in this specification.

Context for use of additional elements, such as Clinical Sex, Clinical Gender, Gender Identity (GI), Sex Assigned at Birth (SAAB) and Legal Sex are also described to encapsulate a broader range of social and biological patient attributes across the health care spectrum. For further information, visit the HL7 FHIR Release 4/8.1 Resource Patient - Content web page.




