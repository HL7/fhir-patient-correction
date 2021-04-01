### Patient Correction profiles

This implementation guide describes three possible profiles for how patient correction requests are handled.

#### Task only

The originating application creates a Task (PatientCorrectionReqestTask) to initiate the correction request. Back and forth communications regarding the correction request are done by updating the Task.

#### Task with Communication

The originating application creates a Task (PatientCorrectionReqestTask) to initiate the correction request, as well as a Communication (PatientRequestCommunication) that points to this Task. Back and forth communications regarding the correction request are done by creating new Communications. Each Communication is linked to the previous so that a chain of Communications is established.

#### Communication only

The orginating application creates a Communication (PatientRequestCommunication) to initiate the correction request. Back and forth communications regarding the correction request are done by creating new Communications. Each Communication is linked to the previous so that a chain of Communications is established.

### Task resource

For the "Task only" and "Task with Communication" profiles, the Task resource is used to convey a patient correction that has been requested. Each Task has a Status, which is used to convey the the state of the patient correction.

more details here...

**Task Status definitions:**

Status-Business Status | Definition|
---|---
Ready | Task received by Fulfiller
In-Progress | Fulfiller working on request
Completed | Fulfiller has completed the request (examples include amending the record, denying the amendment request, partially amending and partially denying, logging the disagreement, and rebutting a disagreement.
Canceled | Fulfiller canceled request based on Requester.
{: .grid}

### Communication resource

For the "Task with Communication" profile, the Communication resource is used to provide back and forth communication after the initial patient correction Task has been created. For the "Communication only" profile, the Communication resource is used to initiate the patient correction request, and also to convey the subsequent back and forth communication regarding the request. 

more details here...

### RESTful interactions

{% include img.html img="restful-interactions.png" %}

### Patient request state machine

{% include img.html img="patient-request-state-machine.png" %}
