### Actors

Actor | Description
---|---
CorrectionRequester | The CorrectionRequester represents a patient’s application, such as a personal health record. A patient or their caregiver uses the application to request a correction to their medical record.
RequestFulfiller | The RequestFulfiller represents a provider system – usually an EHR. A Medical Records professional or a clinician uses the provider system to review and process the correction request. The RequestFulfiller may also represent a payer system.
{:.grid .table-striped}

#### General Actor Sequence
 
<figure>
{%include overall-sequence.svg%}
</figure>

### Use Cases

|---------------------------------------------------|
 | NOTE: The following list of use cases represent common use cases but is not an exhaustive list. |
 {:.grid .bg-info}

#### Use Case 1: Patient Requests a Correction which is Accepted by the Data Holder.
1. A patient reviews the records received from a provider (most likely this review is of the electronic health information accessed on their personal health record application). 
2. The patient determines that it contains one or more errors or discrepancies. 
1. The patient enters a correction request using their application.
1. The provider system returns an acknowledgement that a Correction Request has been submitted.

#### Use Case 2: Patient Requests a Correction to Their Medical Record Which is Accepted and Corrected.

1. A Patient reviews the records received from a provider (most likely this review is of the electronic health information accessed on their personal health record application). 
2. The patient determines that it contains one or more errors or discrepancies. 
1. The patient enters a correction request using their application. The request can be a simple unstructured request, but can also contain additional structured information to provide context or to pinpoint the error and the fix. 
3. The application (CorrectionRequester) sends the correction request to the appropriate provider system (RequestFulfiller). 
4. The provider (most likely a medical records professional but possibly a clinician) reviews the request on the provider system (EHR). 
4. If needed, the provider reaches out to the patient to further clarify the request and consults as needed with clinicians to determine if a correction is appropriate. 
5. **The request for correction is accepted**. The appropriate personnel corrects the chart (or charts if the error involves multiple charts) and creates formal amendments to the electronic health record. The correction request is marked complete. 
6. If the patient has requested that other parties be notified, notifications of the amendment are sent out accordingly. Meanwhile, the patient has been able to use their application to check for the status of their correction request and is able to determine that it was being reviewed, then was accepted, and later completed.
<figure>
{%include use-case-1.svg%}
<figcaption>Use Case 1 flow</figcaption>
</figure>



#### Use Case 3: Patient Requests a Correction to Their Medical Record Which is Denied.

1. A patient reviews the records received from a provider (most likely this review is of the electronic health information accessed on their personal health record application). 
1. The patient determines that it contains one or more errors or discrepancies. 
1. The patient enters a correction request using their application. The request can be a simple unstructured request, but can also contain additional structured information to provide context or to pinpoint the error and the fix. 
1. The application (CorrectionRequester) sends the correction request to the appropriate provider system (RequestFulfiller). 
1. The provider (most likely a medical records professional but possibly a clinician) reviews the request on the provider system (EHR). 
1. If needed, the provider reaches out to the patient to further clarify the request and consults as needed with clinicians to determine if a correction is appropriate. 
1. It is determined that the chart is in fact correct. **The request for correction is denied**. 
1. The correction request is updated with: 
    1. the reason for the rejection, an explanation that the patient has the right to log a disagreement, 
    1. a statement that the individual may request that the covered entity provide the individual's request for amendment and the denial with any future disclosures of the protected health information that is the subject of the amendment, 
    1. a description of how the individual may complain to the covered entity. 
1. Meanwhile, the patient has been able to use their application to check for the status of their correction request and is able to determine that it is being reviewed and then later denied.
<figure>
{%include use-case-2.svg%}
<figcaption>Use Case 3 flow</figcaption>
</figure>



#### Use Case 4: Patient Disagrees with Correction Request Denial.

|---------------------------------------------------| 
| NOTE: This use case is a continuation from Use Case 3.|
{:.grid .bg-info}

1. Upon receiving a denial to their correction request, the patient decides to log a formal disagreement with the provider. 
1. The patient enters the disagreement using their application.  
1. The application (CorrectionRequester) sends the disagreement to the denied correction request to the appropriate provider system (RequestFulfiller). 
1. The provider (most likely a medical records professional but possibly a clinician) reviews the disagreement on the provider system (EHR) and consults as needed with clinicians. The chart on the EHR might also be reviewed. 
1. The provider determines that the chart is correct and is not swayed by the disagreement. 
1. The provider connects the disagreement to the patient’s electronic chart so that it can be referred to and sent along with the record. 

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
1. The patient enters a correction request using their application. 
1. The application (CorrectionRequester) sends the correction request to the appropriate provider system (RequestFulfiller). 
1. The patient later determines the Correction Request is incorrect or incomplete. For example, the patient may have entered the wrong information, or may want to add a supporting attachment, or a list of contacts to notify upon correction completion. 
1. Their application sends an updated correction request to the provider system. 
1. The provider system updates the correction request accordingly and continues processing it.
<figure>
{%include use-case-4.svg%}
<figcaption>Use Case 5 flow</figcaption>
</figure>


|---------------------------------------------------| 
|Note, in the case of multiple corrections requested, the flow may follow Use Case 3 and/or 4 for each individual correction submitted.|
{:.grid .bg-info}

#### Use Case 6: Patient Requests a Correction to Their Medical Record and the Record is Partially Updated

1. A patient reviews the records received from a provider. 
1. The patient determines that it contains one or more errors or discrepancies. 
1. The patient enters a correction request using their application. 
1. The application (CorrectionRequester) sends the correction request to the appropriate provider system (RequestFulfiller). 
4. The provider (most likely a medical records professional but possibly a clinician) reviews the request on the provider system (EHR). 
4. If needed, the provider reaches out to the patient to further clarify the request and consults as needed with clinicians to determine if a correction is appropriate. 
5. **Portions of the request for correction are accepted, others rejected**. The appropriate personnel corrects the chart (or charts if the error involves multiple charts) and creates formal amendments to the electronic health record. 
1. The correction request is updated with: 
    1. the reason for the rejection of the portions rejected, an explanation that the patient has the right to log a disagreement, 
    1. a statement that the individual may request that the covered entity provide the individual's request for amendment and the denial with any future disclosures of the protected health information that is the subject of the amendment, 
    1. a description of how the individual may complain to the covered entity. 
1. Their application sends an updated correction request to the provider system. 
1. The provider system updates the correction request accordingly and continues processing it.