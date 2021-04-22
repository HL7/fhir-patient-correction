### Actors

Actor | Description
---|---
CorrectionRequester | The CorrectionRequester represents a patient’s application, such as a personal health record. A patient or their caregiver uses the application to request a correction to their medical record.
RequestFulfiller | The RequestFulfiller represents a provider system – usually an EHR. A Medical Records professional or clinician uses the provider system to review and process the correction request.

#### General Actor Sequence
 
<div>
{%include overall-sequence.svg%}
</div>

### Use cases

> NOTE: The following list of use cases represent common use cases but is not an exhaustive list. These use cases are designed to follow the HIPAA Request for Amendment workflow.

#### Use Case 1: Patient Requests a Correction to Their Medical Record Which is Accepted and Corrected

A patient reviews the records received from a provider (most likely this review is of the electronic health information accessed on their personal health record application). The patient determines that it contains one or more errors or discrepancies. The patient enters a correction request using their application. The request can be a simple unstructured request, but can also contain additional structured information to provide context or to pinpoint the error and the fix. The application (CorrectionRequester) sends the correction request to the appropriate provider system (RequestFulfiller). The provider (most likely a medical records professional but possibly a clinician) reviews the request on the provider system (EHR) and consults as needed with clinicians. The chart on the EHR is reviewed to determine if the correction is appropriate. The request for correction is accepted. The appropriate personnel corrects the chart (or charts if the error involves multiple charts) and creates formal amendments to the electronic health record. The correction request is marked complete. If the patient has requested that other parties be notified, notifications of the amendment are sent out accordingly. Meanwhile, the patient has been able to use their application to check for the status of their correction request and is able to determine that it was being reviewed, then was accepted, and later completed.

 
<div>
{%include overall-sequence.svg%}
</div>

##### old sequence (to be removed)

{% include img.html img="use-case-1.png" %}

#### Use Case 2: Patient Requests a Correction to Their Medical Record Which is Rejected

A patient reviews the records received from a provider (most likely this review is of the electronic health information accessed on their personal health record application). The patient determines that it contains one or more errors or discrepancies. The patient enters a correction request using their application. The request can be a simple unstructured request, but can also contain additional structured information to provide context or to pinpoint the error and the fix. The application (CorrectionRequester) sends the correction request to the appropriate provider system (RequestFulfiller). The provider (most likely a medical records professional but possibly a clinician) reviews the request on the provider system (EHR) and consults as needed with clinicians. The chart on the EHR is reviewed to determine if the correction is appropriate. It is determined that the chart is in fact correct. The request for correction is rejected. The correction request is updated with: the reason for the rejection, an explanation that the patient has the right to log a disagreement, a statement that the individual may request the covered entity provide the individual's request for amendment and the denial with any future disclosures of the protected health information that is the subject of the amendment, a description of how the individual may complain to the covered entity. Meanwhile, the patient has been able to use their application to check for the status of their correction request and is able to determine that it is being reviewed and then later rejected.


<div>
{%include use-case-2.svg%}
</div>

##### old sequence (to be removed)

{% include img.html img="use-case-2.png" %}

#### Use Case 3: Patient Disagrees with Rejections to their Correction Request

Upon receiving a rejection to their correction request, the patient decides to log a formal disagreement with the provider. The patient enters the disagreement using their application.  The application (CorrectionRequester) sends the disagreement to the rejected correction request to the appropriate provider system (RequestFulfiller). The provider (most likely a medical records professional but possibly a clinician) reviews the disagreement on the provider system (EHR) and consults as needed with clinicians. The chart on the EHR might also be reviewed. The provider determines that the chart is correct and is not swayed by the disagreement. The provider connects the disagreement to the patient’s electronic chart so that it can be referred to and sent along with the record. The provider also potentially provides a formal rebuttal. Meanwhile, the patient has been able to use their application to check for the status of their disagreement and is able to determine that it is being reviewed and then later accepted.


<div>
{%include use-case-3.svg%}
</div>

##### old sequence (to be removed)

{% include img.html img="use-case-3.png" %}

#### Use Case 4: Patient Requests a Correction to Their Medical Record and Later Sends an Update to Their Correction Request

A patient reviews the records received from a provider (most likely this review is of the electronic health information accessed on their personal health record application). The patient determines that it contains one or more errors or discrepancies. The patient enters a correction request using their application. The application (CorrectionRequester) sends the correction request to the appropriate provider system (RequestFulfiller). The patient later determines the Correction Request is incorrect or incomplete. For example, the patient may have entered the wrong information, or may want to add a supporting attachment, or a list of contacts to notify upon correction completion. Their application sends an updated correction request to the provider system. The provider system updates the correction request accordingly and continues processing it.


<div>
{%include use-case-4.svg%}
</div>

##### old sequence (to be removed)

{% include img.html img="use-case-4.png" %}
