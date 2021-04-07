### Task alone


The Task resource is used to convey a patient correction that has been requested, as well as for the various follow-up states that can exist. Each Task has a Status, which is used to convey the the state of the patient correction.

**Task Status definitions:**

Status-Business Status | Definition|
---|---
Requested | Correction has been requested
Requested-Extended | Correction Fulfiller has received the correction, is reviewing, and requires extended time to complete the review.
Accepted | Correction Fulfiller has accepted the request.
In Progress | Correction Fulfiller is in the progress of fulfilling the request (i.e. correcting the chart).
Completed | Correction Fulfiller has corrected the chart.
Rejected-Denied | Correction Fulfiller has denied the request.
Rejected-Rebutted | Correction Fulfiller rebuts the Requester’s disagreement.
Canceled | Correction Requester has canceled the request.
{: .grid}

### Patient request state machine


{% include img.html img="patient-request-state-machine.png" %}

### Patient disagrees with correction request rejection state machine

{% include img.html img="patient-disagrees-state-machine.png" %}
