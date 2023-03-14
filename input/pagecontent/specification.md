### Communication with Task

A patient request for correction is initiated by invoking the [$correction-request](OperationDefinition-correction-request.html) operation. The input for the operation is a [Patient Correction Bundle](StructureDefinition-patient-correction-bundle.html) which includes a  [Patient Correction Communication](StructureDefinition-patient-correction-communication.html) resource that describes the specific request. The invocation of the operation on the fulfiller results in the posting of the [Patient Correction Communication](StructureDefinition-patient-correction-communication.html) resource on the fulfiller.  It is also expected to result in the creation of a [Patient Correction Task](StructureDefinition-patient-correction-task.html) resource which can be used to track the status of the request. 

All Communications related to the correction request can be located by searching the **about** field for the original Communication.

The Communication **recipient** and **sender** fields are used to track whether each Communication is from the patient to the fulfiller, or vice versa.

### RESTful interactions

<div>
{%include task-comm-request.svg%}
</div>

### Linkages between resources

Certain fields in Task and Communication provide important linkage information.

Communication **about** will be empty for the initial Communication when the $correction-request operation is made to the server.  Communication **about** for the initial Communication will then be populated with a reference to the correction Task when the Task for the request is spawned as result of the operation.

All subsequent Communication resources will point to the initial Communication resource for the correction request in their Communication **about** fields.

The Communication **recipient** and **sender** fields are used to track whether each Communication is from the patient to the fulfiller, or vice versa.

Task **input** points to the Communication that contains the initial request details, and Task **output** points to the Communication that contains the final results (amendment or denial details).

The Task **reasonReference** field is used to link a Log Disagreement Task to the related Correction Request Task.

The following diagrams show the Communication and Task linkages.

#### Amendment requested and accepted

{% include img.html img="amendment-requested-and-accepted.png" %}

#### Amendment requested and rejected

{% include img.html img="amendment-requested-and-rejected.png" %}

#### Logging a disagreement

{% include img.html img="logging-a-disagreement.png" %}

### Task Status

The **Task.status** and **Task.businessStatus** are used to convey the the state of the patient correction.

Task.status | Task.businessStatus (Code) | Task.businessStatus (Display) | Task.businessStatus Definition
---|---|---|---|---
ready | queued | Queued | A request to correct a record or log a disagreement has been received by the fulfiller (e.g. provider) but has not yet been reviewed.
in-progress | in-review | In Review | Review is in progress.  
in-progress | waiting-for-information | Waiting for Information | The fulfiller (e.g. provider) is waiting for additional information.
cancelled | requester-cancelled | Cancelled | The request has been cancelled by the requester (e.g. patient).
in-progress | accepted | Accepted | Decision was made to accept the correction request.
in-progress | partial-accept | Partial Accept | Part of the correction request was accepted, and part was denied.  
completed | amendment-completed | Amendment Completed | The record has been amended (corrected).
completed | denied | Denied | The request has been denied.  
completed | disagreement-logged | Disagreement Logged | The fulfiller (e.g. provider) has logged the requester’s (e.g. patient’s) disagreement with the correction request denial.
completed | inform-rebuttal-option | Inform Rebuttal Option | The fulfiller (e.g. provider) has logged the requester’s (e.g. patient’s) disagreement with the correction request denial, and provided a formal rebuttal.
completed |  partial-amendment-completed | Partial Amendment Completed |  The record has been partially amended (corrected).
{: .grid}

#### Task Status state machine

<div>{%include state-diagram.svg%}</div>

Please note that statuses shown containing underscores in this diagram actually use hyphens instead. For example, "in_review" should be interpreted as "in-review".
### Must Support

Must Support on any profile data element **SHALL** be interpreted as follows:

* content creators  
  * **SHALL** be capable of populating all data elements marked Must Support.
  * when the Must Support element is known, it **SHALL** be populated.
* content consumers 
  * **SHALL** be capable of processing resource instances containing the Must Support data elements without generating an error or causing the application to fail. 
  * **SHALL** interpret missing data elements within resource instances as data not present.
  * **SHOULD** be capable of displaying the data elements for human use or storing it for other purposes.
  
NOTE: The above definition of Must Support is derived from HL7v2 concept “Required but may be empty - RE” described in HL7v2 V28_CH02B_Conformance.doc.
NOTE: Readers are advised to understand FHIR Terminology requirements, FHIR RESTful API based on the HTTP protocol, along with FHIR Data Types, FHIR Search and FHIR Resource formats before implementing US Core requirements.

### Security

The Patient Request for Corrections workflow is a bidirectional communication between a patient (or their proxy) and a fulfiller.  Proper authentication is critical so that the communication is not exploited by malicious actors resulting in exposure of patient data. All transactions in the Patient Request for Corrections workflow must be secured appropriately with access to limited authorized individuals, data protected in transit, and appropriate audit measures taken.

* Implementers **SHALL** be aware of and conform to [security guidance](http://hl7.org/fhir/R4/security.html) associated with FHIR transactions.  
* Systems **SHOULD** establish a risk analysis and management regime.   
* Systems **SHALL** reference a single time source to establish a common time base for security auditing, as well as clinical data records, among computing systems.
* Systems **SHALL** keep audit logs of the various transactions.
* Systems **SHALL** use TLS version 1.2 or higher for all transmissions not taking place over a secure network connection. (Using TLS even within a secured network environment is still encouraged to provide defense in depth.) 
* For Authentication and Authorization, systems **SHOULD** support the [SMART App Launch Framework](http://www.hl7.org/fhir/smart-app-launch/history.html) for client <-> server interactions. NOTE: The SMART on FHIR specifications include the required OAuth 2.0 scopes for enabling security decisions.  In lieu of SMART on FHIR, an alternative framework for authentication and authorization **SHOULD** be followed (example, [Security for Scalable Registration, Authentication, and Authorization](http://hl7.org/fhir/us/udap-security/2021Sep/b2b.html) which uses UDAP).
* Systems **MAY** protect the confidentiality of data at rest via encryption and associated access controls. The policies and methods used are outside the scope of this specification.
