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

* note 0..*
* note ^short = "Notes from those that are working on the correction about that work (this is not the correction request itself)."

* restriction 0..0
* restriction ^short = ""

* input 0..*
* input ^short = "Details of the correction request, as well as any follow-up communication from the patient."

* input.value[x] 1..1
* input.value[x] only string or Attachment or Reference

* output 0..*
* output ^short = "Communication from the fulfiller to the patient about the correction request."

* output.value[x] 1..1
* output.value[x] only string

// not used, so forbidden (would rather mark as "If you send, it can be ignored"). 
* encounter 0..0
* basedOn 0..0
* partOf 0..0
