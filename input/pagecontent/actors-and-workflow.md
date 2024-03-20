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

The workflow covers several use cases and involves many optional or conditional steps.  Generally, the workflow can be broken down into:
* The **Requester** making a request to correct a medical record.
* The **Fulfiller** either rejecting or agreeing to process the request.
  * Optionally, additional information being requested by the **Fulfiller** and provided by the **Requester**.
* The **Fulfiller** completing the request.
  * This could be by making the correction, making a partial correction, or denying the request.
* Optionally, the **Requester** submitting a disagreement with the correction.
  * The **Fulfiller** processing any submitted disagreements.
  * This could be modifying the correction, partially modifying the correction, or simply logging the disagreement.

For more detailed information about workflow with concrete examples, see the [Examples](examples.html) page.