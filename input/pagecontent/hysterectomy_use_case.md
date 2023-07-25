<!-- Updates based on Jira tickets 
Date             Jira ticket        Updated by                   Comment



-->

### Use Case Description:
A trans man (patient) has applied for a hysterectomy and has been denied, as having a "Male" Administrative Sex means that a denial.

### Actors:
- Trans Male Patient – Has requested a hysterectomy.
- Provider – Has submitted the request for a hysterectomy.
- Order Entry System – System in which orders are entered; supports Gender Harmony Model.
- Order Approval System – System by which orders are approved; supports the Gender Harmony Model.

### Scope Statement:
Individual has a particular Administrative Sex ('Male') which has does not allow for a procedure to be submitted (requires 'Female' under current systems). This use case handles how Sex For Clinical Use can be used to allow the procedure to be submitted without issue.

#### Precondition(s):
Currently (pre-Gender Harmony Model), a Provider will need to switch the "Male" Administrative Sex to "Female" and then back to "Male" after the approval.

#### Postcondition(s):
Using Sex For Clinical Use (post-Gender Harmony Model), we can attach a "Female" Sex for Clinical Use, describing in notes the specific situation (that the individual is a trans man, and that "Female" is required for system compliance).

### Workflow/Storyboard:
#### Pre-Gender Harmony Project:
Trans male patient's provider submits for a hysterectomy, which automatically fills "Male" from the record as Patient Sex.
The procedure is denied (as it requires 'Female' for the procedure).
Provider changes the record to "Female" and resubmits the procedure for approval, which records the Patient Sex as 'Female'. The procedure is accepted.
The provider then switches the record back to "Male".
(Note that there may be issues with report matching based on Patient Sex. The gender identity will likely not be preserved in any processes.)

#### Post-Gender Harmony Project:
Trans male patient's provider enters a Sex For Clinical Use (SFCU) "Female" and submits for procedural approval, with notes with the SFCU indicating the specific situation.
(The order also preserves gender identity as well as Name To Use and Pronouns (in English-specific contexts).)
Alternative and/or related Workflow(s):
Alternate actor:
Order Approval System – System by which orders are approved; does not support the Gender Harmony Model.

### Workflow/storyboard:
SFCU could be sent as the Administrative Sex. This needs to be negotiated with the approval-providing system(s). A comment could provide further information about the situation if decided upon.
Alignment and/or Misalignment with Gender Harmony Model:
This use case's primary workflow requires alignment with the Gender Harmony Model in both involved systems; the alternative workflow assumes only the Order Entry System is aligned.
