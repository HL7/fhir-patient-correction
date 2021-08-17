### Communication with Task

A patient request for correction is initiated by creating a Communication resource. This results in the creation
of a Task ([Patient Correction Task](StructureDefinition-patient-correction-task.html)) resource, which can be used
to track the status of the request. The **about** field of the Communication will be empty for the initial Communication, but subsequent Communications will point to the initial Communication for the correction request in the about field.
contains a reference to the Task. 

All Communications related to the correction request can be located by searching the **about** field for the original Communication.

The Communication **recipient** and **sender** fields are used to track whether each Communication is from the patient
to the fulfiller, or vice versa.


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
