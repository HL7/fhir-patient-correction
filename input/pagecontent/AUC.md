### Actors

|Actor |Description|
|----|----|
|CorrectionRequester 	| The CorrectionRequester represents a patient’s application, such as a personal health record. A patient or their caregiver uses the application to request a correction to their medical record. |
|RequestFulfiller | The RequestFulfiller represents a provider system – usually an EHR. A Medical Records professional or a clinician uses the provider system to review and process the correction request. The RequestFulfiller may also represent a payer system. |

#### General Actor Sequence

<figure>
  {% include genactorseq.svg %}
</figure>

Following are some common use cases for patient requests for corrections. The diagrams are not intended to be exhaustive, but rather to provide a examples of the interactions between the actors.

### Example 1: A correction request that needs no additional information is applied.

In this use case, a patient requests a correction to their medical record. The request is received by the provider system and is applied with no additional information needed.

#### User Story

Alice uses her patient-facing app to import his medical records from Northside Clinic. She notices that she is listed as an everyday smoker. However, Alice has not smoked in 20 years. Alice uses her patient app to send a message to Northside Clinic requesting that her smoking status be corrected to show she has not smoked in 20 years.

Northside Clinic receives Alice's request.  Alice's general practitioner, that has been seeing Alice for several decades, can verify the request.  Northside Clinic corrects her chart and notifies Alice that her records have been corrected.

A few days later, Alice logs into her patient app and sees the notification that her record has been corrected.

#### Workflow Details

<figure>
  {% include use-case-1.svg %}
  <figcaption>Sequence diagram of a simple use case</figcaption>
</figure>

* Preconditions: 
  * The patient has access to their medical record and has identified an error or discrepancy.  Most likely this review is of the electronic health information accessed on their personal health record application.
  * The patient enters a correction request using their application. The request can be a simple unstructured request, but can also contain additional structured information to provide context or to pinpoint the error and the fix.
* Process:
  1. The **Requester** (Alice) sends the correction request to the appropriate **Fulfiller** (Northside).
  1. The **Fulfiller** (Northside) receives the request and determines it is valid and something that could be corrected there.
  1. The **Fulfiller** (Northside) reviews the request and the patient's records, consulting with providers as needed to determine if the requested correction is appropriate.
  1. The **Fulfiller** (Northside) finds the request is appropriate and does not need further information.
  1. The **Fulfiller** (Northside) applies the correction to the patient's record.
  1. The **Fulfiller** (Northside) notifies the **Requester** (Alice) that the correction is complete.
  1. The **Requester** (Alice) logs into his patient app, sees the notification that his record has been corrected, and agrees with the change made.
* Postconditions:
  * The patient's (Alice's) record at **Fulfiller** (Northside) has been corrected.
  * The patient (Alice) has been notified that the correction is complete.


### Example 2: A correction request that needs additional information is applied.

In this use case, a patient requests a correction to their medical record. The request is received by the provider system, but the provider needs additional information.  Two rounds of dialog occur between the provider and the patient before the correction is applied.

#### User Story

Bob uses his patient-facing app to import his medical records from Eastside Clinic. He notices that he is listed as an everyday smoker, even though he has never smoked. Bob uses his patient app to send a message to Eastside Clinic requesting that his smoking status be corrected to show he is not a smoker.

Eastside Clinic receives Bob's request, but cannot verify his claim - Bob is a new patient and his smoking status was not discussed during her initial visit.

Eastside Clinic asks Bob for some supporting documentation.  Bob provides a screenshot of his record from his previous provider, which lists him as a non-smoker.

Eastside Clinic receives the additional information, but it only contains a portal view of a non-smoker and cannot tell if it is Bob's record.  Eastside Clinic asks Bob to provide a copy of his previous record in its entirety.

Bob sees the request the next time he logs into his patient app and provides a full copy of his record from her previous provider.  Eastside Clinic reviews the information and finds that Bob is correct and his record should be updated.

Eastside Clinic corrects his chart and notifies Bob that his records have been corrected.

#### Workflow Details

<figure>
  {% include use-case-2.svg %}
  <figcaption>Sequence diagram of a simple use case</figcaption>
</figure>

* Preconditions: 
  * The patient has access to their medical record and has identified an error or discrepancy.  Most likely this review is of the electronic health information accessed on their personal health record application.
  * The patient enters a correction request using their application. The request can be a simple unstructured request, but can also contain additional structured information to provide context or to pinpoint the error and the fix.
* Process:
  1. The **Requester** (Bob) sends the correction request to the appropriate **Fulfiller** (Eastside).
  1. The **Fulfiller** (Eastside) receives the request and determines it is valid and something that could be corrected there.
  1. The **Fulfiller** (Eastside) reviews the request and the patient's records, consulting with providers as needed to determine if the requested correction is appropriate.
  1. The **Fulfiller** (Eastside) believes the request is appropriate but needs additional information and asks for it.
  1. The **Requester** (Bob) provides the additional information.
  1. The **Fulfiller** (Eastside) reviews the additional information but needs further clarification - they need the full documents instead of just the provided excerpt.
  1. The **Requester** (Bob) provides the full documentation.
  1. The **Fulfiller** (Eastside) has enough information that they can make the requested record changes.
  1. The **Fulfiller** (Eastside) applies the correction to the patient's record.
  1. The **Fulfiller** (Eastside) notifies the **Requester** (Bob) that the correction is complete.
  1. The **Requester** (Bob) logs into his patient app, sees the notification that his record has been corrected, and agrees with the change made.
* Postconditions:
  * The patient's (Bob's) record at **Fulfiller** (Eastside) has been corrected.
  * The patient (Bob) has been notified that the correction is complete.



### Example 3: A correction request is denied.

In this use case, a patient requests a correction to their medical record. The request is received by the provider system, but the provider does not agree that the record can be changed.  The patient agrees with the justification for no change.

#### User Story

Claire uses her patient-facing app to import her medical records from Southside Clinic. She notices that her latest record shows her as possibly pre-diabetic, but she remembers that she had not fasted properly before her most recent blood test. Claire uses her patient app to send a message to Southside Clinic requesting that her pre-diabetic status be corrected.

Southside reviews the request and the patient's records, consulting with providers as needed to determine if the requested correction is appropriate.  Southside determines that the record is correct and does not need to be changed.  Southside notifies Claire that the correction will not be made, explaining that the test should not be removed and that everything will naturally be corrected after her next test.

Claire logs into her patient app, sees the notification that her record has not been changed, but agrees with the justification for no change

#### Workflow Details

<figure>
  {% include use-case-3.svg %}
  <figcaption>Sequence diagram of a simple use case</figcaption>
</figure>

* Preconditions: 
  * The patient has access to their medical record and has identified an error or discrepancy.  Most likely this review is of the electronic health information accessed on their personal health record application.
  * The patient enters a correction request using their application. The request can be a simple unstructured request, but can also contain additional structured information to provide context or to pinpoint the error and the fix.
* Process:
  1. The **Requester** (Claire) sends the correction request to the appropriate **Fulfiller** (Southside).
  1. The **Fulfiller** (Southside) receives the request and determines it is valid and something that could be corrected there.
  1. The **Fulfiller** (Southside) reviews the request and the patient's records, consulting with providers as needed to determine if the requested correction is appropriate.
  1. The **Fulfiller** (Southside) believes the request is not appropriate.
  1. The **Fulfiller** (Southside) notifies the **Requester** (Claire) that the correction will not be made, with justification.
  1. The **Requester** (Claire) logs into her patient app, sees the notification that her record has not been changed, but agrees with the justification.
* Postconditions:
  * The patient's (Claire's) record at **Fulfiller** (Southside) has not been modified.
  * The patient (Claire) has been notified why no change was made.
  * The patient (Claire) agrees with the justification for no change.



### Example 4: Patient Disagrees with Correction Request Denial.

In this use case, a patient requests a correct to their medical record. The request is received by the provider system, but the provider needs information that the patient cannot provide and thus does not agree that the record can be changed.  The patient disagrees with the justification for no change and logs a formal disagreement.

#### User Story

David uses his patient-facing app to import his medical records from Westside Clinic. He notices that his latest record shows a medication that he has never taken. David uses his patient app to send a message to Westside Clinic requesting that the medication be removed from his record.

Westside reviews the request and the patient's records, consulting with providers as needed to determine if the requested correction is appropriate. Westside asks David for additional information, but David cannot proof that he has never taken the medication. Westside does not feel comfortable removing the medication from his record.  Westside notifies David that the correction will not be made, explaining that the medication was prescribed but never taken.  David logs into his patient app and sees the notification that his record has not been changed, but disagrees with the justification for no change.  David uses his patient app to log a formal disagreement with the provider.

Westside receives the disagreement, but does not change their stance. Westside logs the disagreement and notifies David that the disagreement has been logged.


#### Workflow Details

<figure>
  {% include use-case-4.svg %}
  <figcaption>Sequence diagram of a simple use case</figcaption>
</figure>

* Preconditions: 
  * The patient has access to their medical record and has identified an error or discrepancy.  Most likely this review is of the electronic health information accessed on their personal health record application.
  * The patient enters a correction request using their application. The request can be a simple unstructured request, but can also contain additional structured information to provide context or to pinpoint the error and the fix.
* Process:
  1. The **Requester** (David) sends the correction request to the appropriate **Fulfiller** (Westside).
  1. The **Fulfiller** (Westside) receives the request and determines it is valid and something that could be corrected there.
  1. The **Fulfiller** (Westside) reviews the request and the patient's records, consulting with providers as needed to determine if the requested correction is appropriate.
  1. The **Fulfiller** (Westside) is unsure about the request and requests additional information from the patient (David).
  1. The **Requester** (David) has no information to provide.
  1. The **Fulfiller** (Westside) believes the change is not appropriate.
  1. The **Fulfiller** (Westside) notifies the **Requester** (David) that the correction will not be made, with justification.
  1. The **Requester** (David) logs into her patient app, sees the notification that her record has not been changed, disagrees with the justification, and submits a disagreement.
  1. The **Fulfiller** (Westside) receives the disagreement and processes it, deciding there is no further action to be taken.
  1. The **Fulfiller** (Westside) notifies the **Requester** (David) that the disagreement has been logged.
* Postconditions:
  * The Requester's (David's) record at **Fulfiller** (Westside) has not been modified.
  * The Requester (David) has been notified why no change was made.
  * The Requester (David) disagrees with the justification for no change.
  * The Requester's (David's) record at **Fulfiller** (Westside) has been marked with his request for a change and that it has been denied.


----


### Example 5: Patient Requests a Correction to Their Medical Record and Later Sends an Update to Their Correction Request.

#### User Story

David reviews his records received from Westside on their personal health record application and notices that it contains a few discrepancies.  Using his PHR, he enters a correction request containing an unstructured request and some additional structured information to provide context to help pinpoint the error and the fix.

THe PHR sends the correction request to his provider system and gets an acknowledgement that the request has been received.

He later determines the Correction Request is incorrect as he has entered some wrong information, and also wants to add a list of contacts to notify upon correction completion.

THe PHR sends an updated correction request to the provider system  and the provider system updates the correction request accordingly and continues processing it.
#### Workflow Details
<figure>
{%include use-case-4.svg%}
<figcaption>Use Case 5 flow</figcaption>
</figure>


|---------------------------------------------------| 
|Note, in the case of multiple corrections requested, the flow may follow Use Case 3 and/or 4 for each individual correction submitted.|
{:.grid .bg-info}

### Example 6: Patient Requests a Correction to Their Medical Record and the Record is Partially Updated

|---------------------------------------------------| 
|Note that use case 6 would also include the ability for dialog (status, clarifications) as in the other use cases.  This is left out of this description for simplicity.|
{:.grid .bg-info}
#### User Story
David reviews his records received from Westside on their PHR portal and determines that it contains errors or discrepancies. He enters a correction request through the portal.  The PHR sends the correction request to the provider system and gets an acknowledgement that the request has been received.

The provider reviews the request on the Westside system (EHR). **Portions of the request are accepted** and portions are denied. The request is therefore partially accepted.  
David is notified of partial acceptance and how to disagree with the denied portion. While the portion of the request that is accepted is corrected in the chart and the correction request is marked complete.
#### Workflow Details
<figure>
{%include use-case-6.svg%}
<figcaption>Use Case 6 flow</figcaption>
</figure>


Each event below includes links to example [Patient Correction Bundle](StructureDefinition-patient-correction-bundle.html), [Patient Correction Communication](StructureDefinition-patient-correction-communication.html), or [Patient Correction Task](StructureDefinition-patient-correction-task.html) resources.

Preconditions:
* The patient has access to their medical record and has identified an error or discrepancy. Most likely this review is of the electronic health information accessed on their personal health record application.
* The patient enters a correction request using their application. The request can be a simple unstructured request, but can also contain additional structured information to provide context or to pinpoint the error and the fix.

Process:
1. The **Requester** (David) sends the correction request to the appropriate **Fulfiller** (Westside).
1. The **Fulfiller** (Westside) receives the request and determines it is valid and something that could be corrected there.
1. The **Fulfiller** (Westside) reviews the request and the patient’s records, consulting with providers as needed to determine if the requested correction is appropriate.
1. The **Requester** (David) sends the correction request to the **Fulfiller** (Westside) and gets an acknowledgement that the request has been received.
1. The **Fulfiller** (Westside) reviews the request on the provider system (EHR).
1. **Portions of the request are accepted** and portions are denied. The request is therefore partially accepted.  
1. The **Requester** (David) is notified of partial acceptance and how to disagree with the denied portion.
1. The portion of the request accepted is corrected in the chart and the correction request is marked complete.

Postconditions:
* The Requester’s (David’s) record at **Fulfiller** (Westside) has been updated.
* The Requester (David) has been notified that some of the requested changes were made.
* The Requester’s (David’s) record at **Fulfiller** (Westside) has been marked with his request for a change and that it has been partially accepted.
