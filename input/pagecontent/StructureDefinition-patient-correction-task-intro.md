This is the profile for the Patient Correction Task, which is used to summarize the Fulfiller process to support either a patient’s request for correction to their medical record or their logging of a disagreement to a correction denial.  A Requester can query the Patient Correction Task (or request notifications) to understand the current state and history of the process for carrying out the request on the Fulfiller side.  It can determine the type of process (Request for Correction or Log Disagreement), the current state of the process, timing information about the process (when did it start, when did it move through states, when did it complete), who made the original request on behalf of the Patient, and who owns the process on the Fulfiller side.  This profile sets minimum expectations for the Task resource to support this workflow.  It is expected to be used in conjunction with the [Patient Correction Communication](StructureDefinition-patient-correction-communication.html) profile.

### Mandatory and Must Support Data Elements

The following data-elements must always be present ([Mandatory](https://www.hl7.org/fhir/us/core/conformance-expectations.html#mandatory-elements)) definition]) or must be supported if the data is present ([Must Support](https://www.hl7.org/fhir/us/core/conformance-expectations.html#must-support-elements)) definition). They are presented below in a simple human-readable explanation. Profile specific guidance is provided as well. The Formal Profile Definition below provides the formal summary, definitions, and terminology requirements.  Refer to the [Examples](examples.html) section of the guide for example resources provided in the context of an example workflow.

**Each implementation of PatientCorrectionTask must provide:**

1.	`id`: An id
2.	`status`: status combined with businessStatus provide the state of the process
3.	`businessStatus`: status combined with businessStatus provide the state of the process
4.	`intent`: fixed to “order”
5.	`code`: indicates whether it’s a “Request Correction” or “Log Disagreement” process
6.	`for`: the patient whose record is to be corrected
7.	`requestor`: the person who asked for the correction on behalf of the patient in Task.for.
8.	`authoredOn`: date/time when the request was received on the Fulfiller side
9.	`lastModified`: date/time of last update to the process.
10.	`input`: points to the Communication resource containing the original patient correction or log disagreement request.
11.	`output`: points to the Communication resource containing the resolution of the request (for example, the completed amendment report)
12.	`reasonReference`: if the Task represents a disagreement, points to the Task containing the original request for correction process.

### Profile-specific implementation guidance

* The Task is spawned by the Fulfiller as a result of receipt of a Request for a Correction or a Request to Log a Disagreement.  It is expected that in most cases, these requests will be coming through a Communication resource.  However, this specification does not preclude the use of Task when requests are received via alternative means such as paper forms in the mail.  
* When a request for correction or logging of a disagreement is received via a Request for Correction or Log Disagreement Communication resource posting, a Task is spawned and then several fields in the Task must be populated by copying from the Communication resource that contains the original request.  In specific, code, for, requester, input, and authoredOn must be pulled from fields in the original Communication resource (see details on these fields below).
* When the Task is posted on the Fulfiller as a result of an originating Communication resource, the Fulfiller must update the Communication resource to reference the Task in the Communication.about field. 
