### Actors

Patient requests for corrections involve the following actors.  In this documentation:

#### Requester

**Requester** refers to a FHIR application that is acting on behalf of a patient, their caregiver, or their representative. The **Requester** can be the same application a person uses to review the medical record, or it can be a separate application.

#### Fulfiller

**Fulfiller** refers to a FHIR application that is acting on behalf of a patient record custodian, such as en EHR in a clinical provider setting. The **Fulfiller** can be the same application a person uses to review and modify the medical record, or it can be a separate application.


#### Workflow Overview

While the interactions between the **Requester** and the **Fulfiller** can be complex, the following diagram provides a high-level overview of the workflow. The CorrectionRequester initiates the request for a correction, and the RequestFulfiller processes the request. The RequestFulfiller may accept or deny the request, and the CorrectionRequester may log a disagreement with the decision. The RequestFulfiller may also provide a rebuttal to the disagreement. The workflow may also include the CorrectionRequester updating the correction request.

<figure>
  {% include actor-sequence.svg %}
  <figcaption>Sequence diagram of a complete request for corrections workflow</figcaption>
</figure>

The general workflow includes the following steps:
* The **Requester** making a request to correct a medical record.
* The **Fulfiller** either rejecting or processing the request.
  * Optionally, additional information being requested by the **Fulfiller** and provided by the **Requester**.
* The **Fulfiller** completing the request.
  * This could be by making the correction, making a partial correction, or denying the request.
* Optionally, the **Requester** submitting a disagreement with the correction.
  * The **Fulfiller** processing any submitted disagreements.


### Use Cases

Following are some common use cases for patient requests for corrections. The diagrams are not intended to be exhaustive, but rather to provide a examples of the interactions between the actors.

#### Use Case 1: A correction request that needs no additional information is applied.

In this use case, a patient requests a correction to their medical record. The request is received by the provider system and is applied with no additional information needed.

##### User Story

Bob uses his patient-facing app to import his medical records from Northside Clinic. He notices that he is listed as an everyday smoker. However, Bob has not smoked in 20 years. Bob uses his patient app to send a message to Northside Clinic requesting that his smoking status be corrected to show he has not smoked in 20 years.

Northside Clinic receives Bob's request.  Bob's general practitioner, that has been seeing Bob for several decades, can verify the request.  Northside Clinic corrects his chart and notifies Bob that his records have been corrected.

A few days later, Bob logs into his patient app and sees the notification that his record has been corrected.

##### Use Case Details

<figure>
  {% include use-case-1.svg %}
  <figcaption>Sequence diagram of a simple use case</figcaption>
</figure>

* Preconditions: 
  * The patient has access to their medical record and has identified an error or discrepancy.  Most likely this review is of the electronic health information accessed on their personal health record application.
  * The patient enters a correction request using their application. The request can be a simple unstructured request, but can also contain additional structured information to provide context or to pinpoint the error and the fix.
* Process:
  1. The **Requester** sends the correction request to the appropriate **Fulfiller**.
  1. The **Fulfiller** reviews the request and the patient's records, consulting with providers as needed to determine if the requested correction is appropriate.
  1. The **Fulfiller** finds the request is appropriate and does not need further information.
  1. The **Fulfiller** applies the correction to the patient's record.
  1. The **Fulfiller** notifies the **Requester** that the correction is complete.
* Postconditions:
  * The patient's record at **Fulfiller** has been corrected.
  * The patient has been notified that the correction is complete.


#### Use Case 2: A correction request that needs additional information is applied.

In this use case, a patient requests a correction to their medical record. The request is received by the provider system, but the provider needs additional information.  Two rounds of dialog occur between the provider and the patient before the correction is applied.

##### User Story

Alice uses her patient-facing app to import her medical records from Eastside Clinic. She notices that she is listed as an everyday smoker, though she has never smoked. Alice uses her patient app to send a message to Eastside Clinic requesting that her smoking status be corrected to show she is not a smoker.

Eastside Clinic receives Alice's request, but cannot verify her claim - Alice is a new patient and her smoking status was not discussed during her initial visit.

Eastside Clinic asks Alice for some supporting documentation.  Alice provides a screenshot of her record from her previous provider, which lists her as a non-smoker.

Eastside Clinic receives the additional information, but it only contains a portal view of a non-smoker and cannot tell if it is Alice's record.  Eastside Clinic asks Alice to provide a copy of her previous record in its entirety.

Alice sees the request the next time she logs into her patient app and provides a full copy of her record from her previous provider.  Eastside Clinic reviews the information and finds that Alice is correct and her record should be updated.

Eastside Clinic corrects her chart and notifies Alice that her records have been corrected.

##### Use Case Details

##### User Story

##### Use Case Details

<figure>
  {% include use-case-2.svg %}
  <figcaption>Sequence diagram of a simple use case</figcaption>
</figure>


* Preconditions: 
  * The patient has access to their medical record and has identified an error or discrepancy.  Most likely this review is of the electronic health information accessed on their personal health record application.
  * The patient enters a correction request using their application. The request can be a simple unstructured request, but can also contain additional structured information to provide context or to pinpoint the error and the fix.
* Process:
  1. The **Requester** sends the correction request to the appropriate **Fulfiller**.
  1. The **Fulfiller** reviews the request and the patient's records, consulting with providers as needed to determine if the requested correction is appropriate.
  1. The **Fulfiller** finds the request is appropriate but needs additional information and asks for it.
  1. The **Requester** provides the additional information.
  1. The **Fulfiller** reviews the additional information but needs further clarification - they need the full documents instead of just the provided excerpt.
  1. The **Requester** provides the full documentation.
  1. The **Fulfiller** finds the request is appropriate and does not need further information.
  1. The **Fulfiller** applies the correction to the patient's record.
  1. The **Fulfiller** notifies the **Requester** that the correction is complete.
* Postconditions:
  * The patient's record at **Fulfiller** has been corrected.
  * The patient has been notified that the correction is complete.




#### Use Case 3: A correction request is denied.

In this use case, a patient requests a correction to their medical record. The request is received by the provider system, but the provider needs additional information.  Two rounds of dialog occur between the provider and the patient before the correction is applied.

##### User Story


##### Use Case Details

1. A patient reviews the records received from a provider (most likely this review is of the electronic health information accessed on their personal health record application). 
2. The patient determines that it contains one or more errors or discrepancies.
3. The patient enters a correction request using their application. The request can be a simple unstructured request,but can also contain additional structured information to provide context or to pinpoint the error and the fix.
4. The application (CorrectionRequester) sends the correction request to the appropriate provider system (RequestFulfiller) and gets an acknowledgement that the request has been received.
5. The provider (most likely a medical records professional but possibly a clinician) reviews the request on the provider system (EHR).
6. If needed, the provider reaches out to the patient to further clarify the request and consults as needed with clinicians to determine if a correction is appropriate.
7. It is determined that the chart is in fact correct. The request for correction is denied.  Note that the rejection may include details such as the reason for the rejection, a patient’s rights to submit a disagreement, etc.
8. Meanwhile, the patient has been able to use their application to check for the status of their correction request and is able to determine that it is being reviewed and then later denied.

<figure>
{%include use-case-2.svg%}
<figcaption>Use Case 3 flow</figcaption>
</figure>



#### Use Case 4: Patient Disagrees with Correction Request Denial.

|---------------------------------------------------| 
| NOTE: This use case is a continuation from Use Case 3.|
{:.grid .bg-info}

1. Upon receiving a denial to their correction request, the patient decides to log a formal disagreement with the provider.
2. The patient enters the disagreement using their application.
3. The application (CorrectionRequester) sends the disagreement to the denied correction request to the appropriate provider system (RequestFulfiller) and gets an acknowledgement that the disagreement has been received.
4. The provider (most likely a medical records professional but possibly a clinician) reviews the disagreement on the provider system (EHR) and consults as needed with clinicians. The chart on the EHR might also be reviewed.
5. The provider determines that the chart is correct and is not swayed by the disagreement.  They may provide an explanation or rebuttal.  
6. Meanwhile, the patient has been able to use their application to check for the status of their disagreement.


<figure>
{%include use-case-3.svg%}
<figcaption>Use Case 4 flow</figcaption>
</figure>

#### Use Case 4b: Provider provides Rebuttal

|---------------------------------------------------| 
| NOTE: This is a continuance of Use Case 4. |
{:.grid .bg-info}

1. The provider also potentially provides a formal rebuttal. 
1. Meanwhile, the patient has been able to use their application to check for the status of their disagreement and is able to determine that it is being reviewed and then later denied.



#### Use Case 5: Patient Requests a Correction to Their Medical Record and Later Sends an Update to Their Correction Request.

1. A patient reviews the records received from a provider (most likely this review is of the electronic health information accessed on their personal health record application). 
1. The patient determines that it contains one or more errors or discrepancies.
1. The patient enters a correction request using their application. The request can be a simple unstructured request,but can also contain additional structured information to provide context or to pinpoint the error and the fix.
1. The application (CorrectionRequester) sends the correction request to the appropriate provider system (RequestFulfiller) and gets an acknowledgement that the request has been received.
1. The patient later determines the Correction Request is incorrect or incomplete. For example, the patient may have entered the wrong information, or may want to add a supporting attachment, or a list of contacts to notify upon correction completion.
1. Their application (CorrectionRequestor) sends an updated correction request to the provider system (RequestFulfiller).
1. The provider system updates the correction request accordingly and continues processing it.

<figure>
{%include use-case-4.svg%}
<figcaption>Use Case 5 flow</figcaption>
</figure>


|---------------------------------------------------| 
|Note, in the case of multiple corrections requested, the flow may follow Use Case 3 and/or 4 for each individual correction submitted.|
{:.grid .bg-info}

#### Use Case 6: Patient Requests a Correction to Their Medical Record and the Record is Partially Updated

|---------------------------------------------------| 
|Note that use case 6 would also include the ability for dialog (status, clarifications) as in the other use cases.  This is left out of this description for simplicity.|
{:.grid .bg-info}

1. A patient reviews the records received from a provider (most likely this review is of the electronic health information accessed on their personal health record application). 
1. The patient determines that it contains one or more errors or discrepancies.
1. The patient enters a correction request using their application. 
1. The application (CorrectionRequester) sends the correction request to the appropriate provider system (RequestFulfiller) and gets an acknowledgement that the request has been received.
1. The provider (most likely a medical records professional but possibly a clinician) reviews the request on the provider system (EHR).
1. **Portions of the request are accepted** and portions are denied. The request is therefore partially accepted.  The patient is notified of partial acceptance and how to disagree with the denied portion.
1. The portion of the request accepted is corrected in the chart and the correction request is marked complete.
<figure>
{%include use-case-6.svg%}
<figcaption>Use Case 6 flow</figcaption>
</figure>