### Task resource

The Task resource is used to convey a patient correction that has been requested, as well as for the various follow-up states that can exist. Each Task has a Status, which is used to convey the the state of the patient correction.

**Task Status definitions:**

Status-Business Status | Definition|
---|---
Requested | Correction Requester has requested a correction
Received | Correction Fulfiller has received the correction and is reviewing
Received-Extended | Correction Fulfiller has received the correction, is reviewing, and requires extended time to complete the review.
Accepted | Correction Fulfiller has accepted the request.
In Progress | Correction Fulfiller is in the progress of fulfilling the request (ie. correcting the chart)
Completed | Correction Fulfiller has corrected the chart
Rejected-Denied | Correction Fulfiller has denied the request.
Rejected-Disagreed | Correction Requester disagrees with the denial.
Rejected-Rebutted | Correction Fulfiller rebuts the Requester’s disagreement.
Canceled | Correction Requester has cancelled the request.
{: .grid}

### An accepted correction request

The following sequence diagram describes an accepted patient correction request.

{% include img.html img="accepted-request-sequence-diagram.png" caption="Figure 1: Accepted correction request sequence diagram" %}

### A rejected correction request

The following sequence diagram describes a rejected patient correction request.

{% include img.html img="rejected-request-sequence-diagram.png" caption="Figure 2: Rejected correction request sequence diagram" %}

### Patient correction sent flow

This illustrates the flow of a patient request that is sent, and then either accepted or rejected.
Each state represents a Task resource with with the indicated Status.

{% include img.html img="accepted-request-flow.png" caption="Figure 3: Patient Correction sent flow" %}

### Patient correction rebuttal flow

This illustrates the flow of a patient rebuttal, following a rejection. Each state represents a Task resource with
with the indicated Status.

{% include img.html img="rejected-request-flow.png" caption="Figure 4: Patient Correction rebuttal flow" %}
