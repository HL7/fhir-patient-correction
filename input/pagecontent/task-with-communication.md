### Task with Communication alternative

With the Task with Communication alternative, a Task ([Patient Correction Task](StructureDefinition-patient-correction-task.html)) is used to describe the correction request and to track the result. Back and forth communications and conversation regarding the correction request are then done using Communication.

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
