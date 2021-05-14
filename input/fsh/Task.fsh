Profile:        PatientCorrectionTask
Parent:         Task
Id:             patient-correction-task
Title:          "Patient Correction Task"
Description:    "A Task representing patient correction request. This Task may be linked to by one or more Communication."

* identifier MS
* identifier 0..*
* identifier ^short = "A business identifier for the correction process. It could be assigned by requester or fulfiller."

* status MS
* status 1..1
* status ^short = "The status of the correction request."

* statusReason MS
* statusReason 0..1
* statusReason ^short = "The reason for the correction request status."

* businessStatus MS
* businessStatus 0..1
* description ^short = "Provide further detail on status. Examples include Extended to represent that the consideration of an amendment request has been extended."

* intent 1..1
* intent only code
* intent = #order (exactly)

* code MS
* code 1..1
* code ^short = "Code and code.text to represent patient correction, or Code and code.text to represent a disagreement."
* code from PatientCorrectionTaskTypesVS

* description MS
* description 1..1
* description ^short = "Human-readable indication that this is a patient correction request."

* for MS
* for 1..1
* for only Reference(Patient)
* for ^short = "The patient whose record this correction references."

* executionPeriod MS
* executionPeriod 0..1
* executionPeriod ^short = "If the requester needs the correction to be done by a specific date, this is specified in ExecutionPeriod.end."

* authoredOn MS
* authoredOn 1..1
* authoredOn ^short = "The date/time that the original correction request was authored."

* lastModified MS
* lastModified 0..1
* lastModified ^short = ""

* requester MS
* requester 0..1
* requester only Reference(Patient or RelatedPerson)
* requester ^short = "The entity that requests the correction, such as the patient or caregiver."

* owner MS
* owner 0..1
* owner only Reference(Practitioner or PractitionerRole or Organization or CareTeam or HealthcareService)
* owner ^short = "The entity that is responsibility for fulfilling the request.  Especially important to indicate owner on Fulfiller side."

* reasonReference only Reference(PatientCorrectionTask)
* reasonReference ^short = "The original correction request Task."
* reasonReference obeys task-reasonreference

* note 0..*
* note ^short = "Used to convey any back and forth conversation between Fulfiller and Requester, for example, to clarify the request."
* note obeys task-note

* restriction 0..0
* restriction ^short = ""

* input 0..*
* input ^short = "Details of the Correction Request or of the Disagreement to Correction Denial."

* input.value[x] 1..1
* input.value[x] only string or Attachment or Reference
* input obeys task-input

* output 0..*
* output ^short = "Formal Response from Fulfiller to the Correction Request or to the Disagreement to Correction Denial."
* output obeys task-output1 and task-output2 and task-output3

* output.value[x] 1..1
* output.value[x] only string

// not used, so forbidden (would rather mark as "If you send, it can be ignored"). 
* encounter 0..0
* basedOn 0..0
* partOf 0..0


Invariant: task-reasonreference
Description: "If Task.code indicates this is a Disagreement Task, this field SHALL reference the original Request for Correction Task."
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
Description:  "CodeSystem of defines Task code for use in Patient Correction Request"
* #medRecCxReq "Correction request by the Patient or RelatedPerson"
* #medRecCxDenialDisagree "Disagreement with a denial correction request by the Patient or RelatedPerson"


ValueSet: PatientCorrectionTaskTypesVS
* PatientCorrectionTaskTypes#medRecCxReq
* PatientCorrectionTaskTypes#medRecCxDenialDisagree
