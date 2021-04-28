### Task-only alternative

With the Task-only alternative, a Task resource (PatientCorrectionRequest) is used to convey a patient correction request. The Task is updated as needed to reflect back and forth communication as well as for the various follow-up states that can exist.

### RESTful interactions

<div>
{%include task-rest-request.svg%}
</div>

### Task Status

The Task Status is used to convey the the state of the patient correction.

Status | Definition |
---|---
Ready | Task received by Fulfiller
In-Progress | Fulfiller working on request
Completed | Fulfiller has completed the request (examples include amending the record, denying the amendment request, partially amending and partially denying, logging the disagreement, and rebutting a disagreement.
Canceled | Fulfiller canceled request based on Requester.
{: .grid}

### State machine

{% include img.html img="patient-request-state-machine.png" %}
