### Communication with Task

A patient request for correction is initiated by creating a [Patient Correction Communication](StructureDefinition-patient-correction-communication.html) resource. This results in the creation
of a [Patient Correction Task](StructureDefinition-patient-correction-task.html) resource, which can be used
to track the status of the request. The **about** field of the Communication will be empty for the initial Communication, but subsequent Communications will point to the initial Communication for the correction request in the about field.
contains a reference to the Task. 

All Communications related to the correction request can be located by searching the **about** field for the original Communication.

The Communication **recipient** and **sender** fields are used to track whether each Communication is from the patient
to the fulfiller, or vice versa.

### Linkages between resources

#### Amendment requested and accepted

{% include img.html img="amendment-requested-and-accepted.png" %}

#### Amendment requested and rejected

{% include img.html img="amendment-requested-and-rejected.png" %}

#### Logging a disagreement

{% include img.html img="logging-a-disagreement.png" %}

### RESTful interactions

<div>
{%include task-comm-request.svg%}
</div>

### Task Status

The Task Status is used to convey the the state of the patient correction.

Status | Definition |
---|---
Received | Task received by Fulfiller
In-Progress | Fulfiller working on request
Completed | Fulfiller has completed the request (examples include amending the record, denying the amendment request, partially amending and partially denying, logging the disagreement, and rebutting a disagreement.
Canceled | Fulfiller canceled request based on Requester.
{: .grid}

### State machine

{% include img.html img="patient-request-state-machine.png" %}

### Must Support

Must Support on any profile data element SHALL be interpreted as follows:

* content creators  
  * SHALL be capable of populating all data elements marked Must Support.
  * when the Must Support element is known, it SHALL be populated.
* content consumers 
  * SHALL be capable of processing resource instances containing the Must Support data elements without generating an error or causing the application to fail. 
  * SHOULD be capable of displaying the data elements for human use or storing it for other purposes.
  * SHALL interpret missing data elements within resource instances as data not present.
  
NOTE: The above definition of Must Support is derived from HL7v2 concept “Required but may be empty - RE” described in HL7v2 V28_CH02B_Conformance.doc.
NOTE: Readers are advised to understand FHIR Terminology requirements, FHIR RESTful API based on the HTTP protocol, along with FHIR Data Types, FHIR Search and FHIR Resource formats before implementing US Core requirements.
