Profile:        PatientCorrectionTask
Parent:         Task
Id:             patient-correction-task
Title:          "Patient Correction Task"
Description:    "Represents the process of reviewing the patient&apos;s request for correction or the patient's request to log a disagreement to a prior request for correction decision.  This Task is spawned by the Fulfiller as a result of a post of a Communication resource that indicates a new request for correction or a new logging of a disagreement."
 
* obeys task-reasonreference
* obeys task-output2

* identifier MS
* identifier 0..*
* identifier ^short = "A business identifier for the correction process."

* status obeys task-status-allowed
* status MS
* status 1..1
* status ^short   = "Current status of a Correction Request or Log Disagreement."
* status ^comment = "The current status of the Correction Request or Log Disagreement process. This status together with the business status can be used to determine the state of the process."
* status from task-status

* statusReason 0..1
* statusReason ^short   = "Reason for the correction request status."
* statusReason ^comment = "The reason for the correction request status. Codes to identify the reason for current status. These will typically be specific to a particular workflow."

* businessStatus MS
* businessStatus 0..1
* businessStatus ^short = "Business status of the request for correction process or the log disagreement process."
* businessStatus ^comment = "The business status of the request for correction process or the log disagreement process. The domain-specific business-contextual sub-state of the task. For example:  Waiting on additional information from requester, waiting on additional information from fulfiller (could be a specific party on the fulfiller side), more time needed to review request, an amendment will be made to the record, an amendment has been made to the record, current record determined accurate and will not be amended, a partial amendment will be made to the record, a partial amendment has been made to the record, disagreement has been reviewed and  attached to the record, disagreement has been rebutted."
* businessStatus from PatientCorrectionBusinessStatusVS

* intent 1..1
* intent only code
* intent = #order (exactly)
* intent ^short = "Indicates the actionability associated with the Task."

* code MS
* code 1..1
* code ^short      = "Correction Task type."
* code ^definition = "Either a patient correction or a disagreement."
* code from PatientCorrectionTaskTypesVS
* code ^condition = task-output2
* code ^condition = task-reasonreference

* for MS
* for 1..1
* for only Reference(Patient)
* for ^short = "Patient this correction or disagreement relates to."
* for ^comment = "The patient whose record this correction or disagreement references. If this task was created in response to a request received through a Communication resource, this value SHALL be populated with the value of `Communication.subject` from the original request."

* executionPeriod 0..1
* executionPeriod ^short = "When the request is completed by the Fulfiller."

* authoredOn MS
* authoredOn 1..1
* authoredOn ^short = "When this Task was created."
* authoredOn ^comment = "The date/time that the original request was received by the Fulfiller, kicking off the request for correction or log disagreement process. If the request was received within the payload of a Communication resource, it SHOULD match `Communication.sent` from the original request Communication resource."

* lastModified MS
* lastModified 0..1
* lastModified ^short = "When the correction task was last modified."
* lastModified ^comment = "Indicates the most recent modification date/time for the correction process. Usually this will change in conjunction with a status or businessStatus change. When `status = completed`, this element gives the process completion date/time. Note that this element is useful when doing historical version searches."

* requester MS
* requester 0..1
* requester only Reference(Patient or RelatedPerson)
* requester ^short      = "Entity requesting the correction or logging the disagreement."
* requester ^definition = "The entity that is requesting the correction or logging the disagreement, such as a patient or their caregiver."

* owner MS
* owner 0..1
* owner only Reference(Practitioner or PractitionerRole or Organization or CareTeam or HealthcareService)
* owner ^short = "The entity that is responsibility for fulfilling the request. Initially, this could be populated from Communication.recipient on the Communication resource of the initial request.  TheFulfiller can then refine to a specific individual, group, role, or department.  For example, a medical records staff person."

* reasonCode ^short = "Why task is needed.  E.g., need record correct prior to upcoming surgery."

* reasonReference 0..1
* reasonReference only Reference(PatientCorrectionTask)
* reasonReference ^short = "Log Disagreement Task to point to the original Request for Correction Task."
* reasonReference ^comment = "Used on Log Disagreement Task to point to the original Request for Correction Task."
* reasonReference ^condition = task-reasonreference
// * reasonReference obeys task-reasonreference

* note ^short   = "Non-actionable notes about this communication."
* note ^comment = "Notes from Requestors SHOULD be placed into additional communications instead of notes, so that Fulfillers review them. This element SHALL NOT contain actionable requests from either Requestors or Fulfillers."

* restriction 0..0
* restriction ^short = ""

* input 0..*

* input.id 0..0
* input.extension 0..0
* input.modifierExtension 0..0

* input.type ^short = "Label for input"
* input.type from PatientCorrectionCommunicationTypesVS

* input.value[x] 1..1
* input.value[x] only string or Attachment or Reference(PatientCorrectionCommunication)
// * input obeys task-input

* output 0..*
* output ^short = "Formal Response from Fulfiller to the Correction Request or to the Disagreement to Correction Denial."
* output ^condition = task-output2
// * output obeys task-output2
// * output obeys task-output1 and task-output2 and task-output3

* output.id 0..0
* output.extension 0..0
* output.modifierExtension 0..0

* output.type from PatientCorrectionOutputTypesVS

* output.value[x] 1..1
* output.value[x] only string or Attachment or Reference(PatientCorrectionCommunication)

// not used, so forbidden (would rather mark as "If you send, it can be ignored"). 
* encounter 0..0
* basedOn 0..0
* partOf 0..0


Invariant: task-reasonreference
Description: "If this is a Disagreement Task, there SHALL be a reference to the original Request for Correction Communication."
Expression: "Task.code.coding.exists(code = 'medRecCxDenialDisagree' and system = 'http://hl7.org/fhir/uv/patient-corrections/CodeSystem/PatientCorrectionTaskTypes') implies Task.reasonReference.exists()"
Severity: #error

// Invariant: task-note
// Description: "Task.note[i] SHALL only be updated or deleted by its initial author."
// Expression: "true"
// Severity: #error

// Invariant: task-input
// Description: "Task.input SHALL only be populated or updated by the CorrectionRequestor."
// Expression: "true"
// Severity: #error

// Invariant: task-output1
// Description: "Task.output SHALL only be populated or updated by the CorrectionFulfiller."
// Expression: "true"
// Severity: #error

Invariant: task-output2
Description: "If this is a completed Request for Correction Task, there SHALL be a formal response to the request (acceptance, denial, partial acceptance/denial)."
Expression: "(Task.code.coding.exists(code = 'medRecCxReq' and system = 'http://hl7.org/fhir/uv/patient-corrections/CodeSystem/PatientCorrectionTaskTypes') and Task.status = 'completed') implies Task.output.type.coding.exists(code = 'medRecCxReqResolution' and system = 'http://hl7.org/fhir/uv/patient-corrections/CodeSystem/PatientCorrectionOutputTypes')"
Severity: #error

// Invariant: task-output3
// Description: "If Task.code indicates this is a Disagreement Task, this field SHALL contain the formal response to the disagreement and optionally a rebuttal."
// Expression: "true"
// Severity: #error

Invariant:  task-status-allowed
Description: "The status of the Task SHALL be one of the following: ready, in-progress, cancelled, completed."
Expression: "$this in ('ready' | 'in-progress' | 'cancelled' | 'completed')"
Severity:   #error

Invariant:  task-status-ready-business-status
Description: "If the status of the Task is ready, the allowed businessStatus is queued."
Expression: "status = 'ready' implies businessStatus.where(coding.system = 'http://hl7.org/fhir/uv/patient-corrections/CodeSystem/PatientCorrectionBusinessStatus' and coding.code = 'queued')"
Severity:   #error

Invariant:  task-status-in-progress-business-status
Description: "If the status of the Task is in-progress, the allowed businessStatus values are in-review, waiting-for-information, accepted, or partial-accept."
Expression: "status = 'ready' implies businessStatus.where(coding.system = 'http://hl7.org/fhir/uv/patient-corrections/CodeSystem/PatientCorrectionBusinessStatus' and coding.code in 'in-review' | 'waiting-for-information' | 'accepted' | 'partial-accept')"
Severity:   #error

Invariant:  task-status-cancelled-business-status
Description: "If the status of the Task is cancelled, the allowed businessStatus is requester-cancelled."
Expression: "status = 'cancelled' implies businessStatus.where(coding.system = 'http://hl7.org/fhir/uv/patient-corrections/CodeSystem/PatientCorrectionBusinessStatus' and coding.code = 'requester-cancelled')"
Severity:   #error

Invariant:  task-status-completed-business-status
Description: "If the status of the Task is completed, the allowed businessStatus values are amendment-completed, denied, disagreement-logged, inform-rebuttal-option, or partial-amendment-completed."
Expression: "status = 'completed' implies businessStatus.where(coding.system = 'http://hl7.org/fhir/uv/patient-corrections/CodeSystem/PatientCorrectionBusinessStatus' and coding.code = 'amendment-completed' | 'denied' | 'disagreement-logged' | 'inform-rebuttal-option' | 'partial-amendment-completed)"
Severity:   #error


Instance: ReasonReference
InstanceOf: SearchParameter
Title: "Search on the PatientCorrectionTask.reasonReference element"
Description: "Search Parameter extension enabling clients to search on the PatientCorrectionTask.reasonReference element"
Usage: #definition
* url = "http://hl7.org/fhir/uv/patient-corrections/SearchParameter/ReasonReference"
* description = "This SearchParameter enables finding all tasks related to a Patient Request for Correction. Each task related to a particular correction request will point to the original communication in the request. There will be a task for the original request, and there may be additional tasks for any disagreements."
* name = "ReasonReferenceSearchParameter"
* status = #active
* code = #reasonreference
* base = #Task
* expression = "Task.reasonReference"
* type = #reference
