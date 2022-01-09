Profile:        PatientCorrectionTask
Parent:         Task
Id:             patient-correction-task
Title:          "Patient Correction Task"
Description:    "Represents the process of reviewing the patient’s request for correction or the patient’s request to log a disagreement to a prior request for correction decision.  This Task is spawned by the Fulfiller as a result of a post of a Communication resource that indicates a new request for correction or a new logging of a disagreement."

* identifier MS
* identifier 0..*
* identifier ^short = "A business identifier for the correction process."

* status MS
* status 1..1
* status ^short = "The current status of the Correction Request or Log Disagreement process.  The status, in conjunction with the business status, can be used to determine the state of the process."
* status from task-status

* statusReason 0..1
* statusReason ^short = "The reason for the correction request status. Codes to identify the reason for current status. These will typically be specific to a particular workflow."

* businessStatus MS
* businessStatus 0..1
* businessStatus ^short = "The business status of the request for correction process or the log disagreement process. The domain-specific business-contextual sub-state of the task. For example:  Waiting on additional information from requester, Waiting on additional information from fulfiller (could be a specific party on the fulfiller side) , more time needed to review request, an amendment will be made to the record, an amendment has been made to the record, current record determined accurate and will not be amended, a partial amendment will be made to the record, a partial amendment has been made to the record, disagreement has been reviewed and  attached to the record, disagreement has been rebutted."

* intent 1..1
* intent only code
* intent = #order (exactly)
* intent ^short = ""

* code MS
* code 1..1
* code ^short = "Code and code.text to represent patient correction, or Code and code.text to represent a disagreement."
* code from PatientCorrectionTaskTypesVS

* for MS
* for 1..1
* for only Reference(Patient)
* for ^short = "The patient whose record this correction references. If request received through Communication resource, must be populated with the value of Communication.subject from the original request for correction Communication resource or log disagreement Communication resource."

* executionPeriod 0..1
* executionPeriod ^short = "ExecutionPeriod.end can be used by the Fulfiller to represent when the request is completed."

* authoredOn MS
* authoredOn 1..1
* authoredOn ^short = "The date/time that the original request was received by the Fulfiller, kicking off the request for correction or log disagreement process. If the request was received within the payload of a Communication resource, it should match Communication.sent from the original request Communication resource."

* lastModified MS
* lastModified 0..1
* lastModified ^short = "Indicates the most recent modification date/time on the correction process – usually would change in conjunction with a status or businessStatus change.  Useful when doing historical version searches as well. lastModified when status = completed gives the process completion date/time."

* requester MS
* requester 0..1
* requester only Reference(Patient or RelatedPerson)
* requester ^short = "The entity that is requesting the correction or logging the disagreement such as the patient themselves or their caregiver."

* owner MS
* owner 0..1
* owner only Reference(Practitioner or PractitionerRole or Organization or CareTeam or HealthcareService)
* owner ^short = "The entity that is responsibility for fulfilling the request. Initially, this could be populated from Communication.recipient on the Communication resource of the initial request.  TheFulfiller can then refine to a specific individual, group, role, or department.  For example, a medical records staff person."

* reasonCode ^short = "Why task is needed.  E.g. Need record correct prior to upcoming surgery."

* reasonReference 0..1
* reasonReference only Reference(PatientCorrectionTask)
* reasonReference ^short = "Used on Log Disagreement Task to point to the original Request for Correction Task."
* reasonReference obeys task-reasonreference

* note ^short = ""

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
* input obeys task-input

* output 0..*
* output ^short = "Formal Response from Fulfiller to the Correction Request or to the Disagreement to Correction Denial."
* output obeys task-output1 and task-output2 and task-output3

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
Description: "If Task.code indicates this is a Disagreement Task, this field SHALL reference the original Request for Correction Communication."
Severity: #error

Invariant: task-note
Description: "Task.note[i] SHALL only be updated or deleted by its initial author."
Severity: #error

Invariant: task-input
Description: "Task.input SHALL only be populated or updated by the CorrectionRequestor."
Severity: #error

Invariant: task-output1
Description: "Task.output SHALL only be populated or updated by the CorrectionFulfiller."
Severity: #error

Invariant: task-output2
Description: "If Task.code indicates this is a Request for Correction Task, this field SHALL contain the formal response to the request (acceptance, denial, partial acceptance/denial)."
Severity: #error

Invariant: task-output3
Description: "If Task.code indicates this is a Disagreement Task, this field SHALL contain the formal response to the disagreement and optionally a rebuttal."
Severity: #error


CodeSystem:  PatientCorrectionTaskTypes
Title: "Patient Correction Task Types"
Description:  "CodeSystem of task types for patient corrections"
* #medRecCxReq "Correction request by the Patient or RelatedPerson"
* #medRecCxDenialDisagree "Disagreement with a denial correction request by the Patient or RelatedPerson"


ValueSet: PatientCorrectionTaskTypesVS
Description: "ValueSet of task types for patient corrections"
* PatientCorrectionTaskTypes#medRecCxReq
* PatientCorrectionTaskTypes#medRecCxDenialDisagree


CodeSystem:  PatientCorrectionOutputTypes
Title: "Patient Correction Output Types"
Description:  "CodeSystem of output types for patient corrections"
* #medRecCxReqResolution "Correction request resolution"


ValueSet: PatientCorrectionOutputTypesVS
Description: "ValueSet of output types for patient corrections"
* PatientCorrectionOutputTypes#medRecCxReqResolution


Instance: PatientCorrectionTask-ReasonReference
InstanceOf: SearchParameter
Title: "Search on the PatientCorrectionTask.reasonReference element"
Description: "Search Parameter extension enabling clients to search on the PatientCorrectionTask.reasonReference element"
Usage: #definition
* url = "http://hl7.org/fhir/uv/patient-corrections/SearchParameter-PatientCorrectionTask-ReasonReference"
* description = "This SearchParameter enables finding all tasks related to a Patient Request for Correction. Each task related to a particular correction request will point to the original communication in the request. There will be a task for the original request, and there may be additional tasks for any disagreements."
* name = "PatientCorrectionTaskReasonReference"
* status = #active
* code = #reasonreference
* base = #Task
* expression = "Task.reasonReference"
* type = #reference
