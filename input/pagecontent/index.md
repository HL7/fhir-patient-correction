> **NOTE:** For now, the Task resources mappings are being developed in a [Google Sheets spreadsheet](https://docs.google.com/spreadsheets/d/1kPMzWTA8iXRzcra6SMehgIQDb6VxpNp6B_BQpCN3VRQ/edit?usp=sharing). The Task resources in this draft IG are being regularly updated to relfect the latest spreadsheet, but the spreadsheet contains the most recent changes. Soon we'll switch to making changes directly in this IG.

### Background

Now that patients have the ability to download their data into FHIR applications, they are finding errors in their data. Currently, no FHIR implementation guide exists to standardize the method of electronically exchanging the required information to facilitate the patient’s request for corrections to their information. This implementation guide will provide a FHIR based standard for the communication of required data elements according to the HIPAA implementation guidelines. 

HIPAA has a very detailed implementation specification for a patient’s request for corrections to their information. (See regulation here: https://www.govinfo.gov/content/pkg/CFR-2003-title45-vol1/xml/CFR-2003-title45-vol1-sec164-526.xml) This process is usually handled via mail or phone conversations, making a “paper trail” more difficult to manage. It is also very burdensome for patients and health organizations because of the lengthy process of exchange of information through mail or multiple phone calls. As portals have become more popular since the initial release of this HIPAA regulation, some patients and health organizations have begun to manage the request electronically. 

HIPAA and GDPR are very similar in their regulations concerning patients’ rights to have their data corrected. There are minor differences in the period of time for covered entities to respond to the patient’s initial request for corrections and the preference in GDPR for a means for patient requests to be made electronically. GDPR has no detailed implementation specification, so we will use the HIPAA specifications for our basis because it includes the patient rights outlined in both regulations. Our goal is to consider patient corrections in a global context but our focus in this guide is to follow the HIPAA implementation guidelines due to the details provided in that guide.

### Use Cases

#### Patient requests change to smoking status and change is accepted.

1. Bob uses his patient-facing app to import his medical records from Southside Clinic. He notices that he is listed as an everyday smoker. However, Bob has not smoked in 20 years. Bob uses his patient app to send a message to Southside Clinic requesting that his smoking status be corrected to show he has not smoked in 20 years. 
2. Southside Clinic receives Bob request, corrects his chart, and notifies Bob that his records have been corrected.
3. A few days later, Bob logs into his patient app and receives the notification that his record has been corrected. 
4. Bob then requests that Southside Clinic notify his insurance company (MyLifeInsurance.com) that his record has now been corrected. 
5. Southside Clinic notifies Bob that his insurance company has been contacted and given the corrected information. 

#### Patient requests change to smoking status and change is denied.

1. Bob uses his patient-facing app to import his medical records from Southside Clinic. He notices that he is listed as an everyday smoker. However, Bob has not smoked in 20 years. Bob uses his patient app to send a message to Southside Clinic requesting that his smoking status be corrected to show he has not smoked in 20 years. 
2. Southside Clinic receives Bob request and denies his request to modify his chart based on a conversation with Bob last year where he stated that he smoked 1 pack per day. 
3. A few days later, Bob logs into his patient app and notices the denial from Southside Clinic. Bob sends a statement disagreeing with the denial, indicating that he did not have an appointment the previous year and wants Southside Clinic to correct his chart. 
4. Southside Clinic sends a rebuttal that they did see Bob and will not modify his chart. 

#### Request to correct multiple items. All accepted.

1. Bob uses his patient-facing app to import his medical records from Southside Clinic. He notices that he is listed as an everyday smoker. He also notices his weight is listed as 275 and he has a diagnosis of Diabetes. However, Bob has not smoked in 20 years, his weight is 215, and he has never been told he has diabetes. Bob uses his patient app to send a message to Southside Clinic requesting that his smoking status, weight, and diabetes diagnosis be corrected.
2. Southside Clinic receives Bob request, corrects his chart, and notifies Bob that his records have been corrected.
3. A few days later, Bob logs into his patient app and receives the notification that his record has been corrected.
 
#### Request to correct multiple items. Some accepted, some denied.

1. Bob uses his patient-facing app to import his medical records from Southside Clinic. He notices that he is listed as an everyday smoker. He also notices his weight is listed as 275 and he has a diagnosis of Diabetes. However, Bob has not smoked in 20 years, his weight is 215, and he has never been told he has diabetes. Bob uses his patient app to send a message to Southside Clinic requesting that his smoking status, weight, and diabetes diagnosis be corrected.
2. Southside Clinic receives Bob request. They accept his request to modify his smoking status and diabetes diagnosis. They tell him he must come into the office to be weighed before they can change his chart because his chart indicates he weighed 275 at his appointment last year.  
3. A few days later, Bob logs into his patient app and notices the acceptance of the smoking status and diagnosis change plus the denial of weight change from Southside Clinic. Bob sends a statement disagreeing with the denial indicating that he did not have an appointment the previous year and wants Southside Clinic to correct his chart.
4. Southside Clinic sends a rebuttal that they did see Bob and will not modify his chart.

### Patient Corrections Resources

Patient Corrections calls currently are on Mondays at 3:00pm Eastern Time. Patient Empowerment Workgroup calls currently are Thursdays at 1:00pm Eastern Time. [Meetings calendar](https://confluence.hl7.org/calendar/spacecalendar.action?spaceKey=PE)

[HL7 Patient Corrections Confluence site](https://confluence.hl7.org/display/PE/Patient+Corrections)

[HL7 Patient Empowerment Workgroup Confluence site](https://confluence.hl7.org/display/PE/Patient+Empowerment+Home)

[Patient Corrections IG GitHub repository (TBD)](https://example.com)

[Zulip](https://chat.fhir.org/#narrow/stream/179262-patient-empowerment) channel: #patient empowerment  