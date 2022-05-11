### V2 Gender Harmony 

#### Sexual Orientation, Gender Identity, Administrative Sex, Birth Sex etc

Given that SOGI data is typically not collected by laboratories nor is it critical to performing and interpreting lab tests, inclusion of this data as part of the ELR ORU message is not the best long-term solution to capturing and sharing SOGI observations.

The electronic case reporting standards already include a profile (FHIR) and template (CDA) for Gender Identity and should be expanded to support other SOGI-related concepts, such as Sexual Orientation, and then used to convey this data to Public Health.

However, in the short term, during the COVID-19 pandemic, ELR may be the most viable method of collecting this data. This should not be construed as an endorsement of requiring labs and other ELR submitters to collect and transmit this data, but rather recognition of the fact that it may be necessary in the immediate short-term to make this data available to Public Health.

Because laboratories often don’t have direct interaction with the patient, the specimen is often collected off-site and transported to the lab, the collection of SOGI data may need to be performed by providers and transmitted to the lab via the ordering process. Where electronic order exchange (e.g. LOI) is used, this will likely require updates to the order message to include this content. Implementers will need to consider the necessary data collection workflows and work with providers and other patient-facing groups to collect and share this data with the labs.

SOGI data is sensitive personal information with significant privacy and security considerations. Before exchanging SOGI data, trading partners should understand all the local regulatory and policy considerations surrounding patient consent and sharing SOGI data. Guidance in the area of when to exchange SOGI data and the necessary privacy, security and consent requirements around exchanging SOGI data is beyond the scope of this group and is left to the implementers who understand the local requirements. Please see the comments section of this page for discussion regarding patient consent.

When conveying additional SOGI concepts in a message, implementers must consider how the business requirements of the receiving system will be satisfied when consuming SOGI data elements. Depending on the use case, a hierarchy of data elements may need to be constructed in order to ensure that business requirements are met appropriately. For example, in a billing use case, if both PID-8 and Gender Identity are populated in a message, the receiving system may choose to prioritize PID-8 over Gender Identity based on the needs of the use case.

Administrative Sex
Administrative Sex - normally sent in PID-8 in V2 is different from the concepts below. Definitions and how this element is used may vary by project.

Definitional text from V2.9:

Definition: This field contains the patient's sex. Refer to User-defined Table 0001 - Administrative Sex in Chapter 2C, Code Tables, for suggested values. = https://terminology.hl7.org/CodeSystem-v2-0001.html

#### Short Term: SOGI Data Exchange Profile
[Short Term: SOGI Data Exchange Profile](http://www.hl7.org/documentcenter/public/standards/Short%20Term_%20SOGI%20Data%20Exchange%20Profile-v26-20220426_123605.pdf)


