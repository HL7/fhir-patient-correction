### Communication with Task alternative

With the Communication with Task alternative, a Task ([Patient Correction Task](StructureDefinition-patient-correction-task.html)) is created as a result of the initial Communication. Back and forth communications and conversation regarding the correction request are done using Communication, but the status of the request can be tracked using the Task.

### RESTful interactions

<div>
{%include task-comm-request.svg%}
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
