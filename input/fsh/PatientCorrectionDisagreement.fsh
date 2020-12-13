Profile:        PatientCorrectionDisagreement
Parent:         Task
Id:             patient-correction-disagreement
Title:          "Patient Correction Disagreement"
Description:    "A disagreement to a patient correction request."

* identifier MS
* identifier 0..*
* identifier ^short = "A business identifier for the disagreement process. It could be assigned by requester or fulfiller."

* status MS
* status 1..1
* status ^short = "Value Set - certain values recommended. Some must be supported."

* statusReason MS
* statusReason 0..1

* businessStatus MS
* businessStatus 0..1
* description ^short = "Provide further detail on status. Examples include Extended to represent that the consideration of an amendment request has been extended."

* intent 1..1
* intent ^short = "\"Order\""

* code MS
* code 1..1
* code ^short = "Code and code.text represent that this is a \"patient disagreement with denial\" request."

* description MS
* description 1..1
* description ^short = "Human readable description of the specific disagreement. For example: \"I do not agree that you continue to record that I am a smoker. I do not and never have smoked.\""

* for MS
* for 1..1
* for ^short = "The patient whose record this correction references."

* encounter 0..1
* encounter ^short = "This is to indicate that this specific task originated in a specific encounter. Correction requests from patients are expected to usually originate outside of an encounter. An exception might be requests for correction sent from the inpatient bedside by patient or caregiver."

* authoredOn MS
* authoredOn 1..1
* authoredOn ^short = "Date/time disagreement was authored."

* lastModified MS
* lastModified 0..1

* requester MS
* requester 0..1
* requester ^short = "The entity that disagrees with the denial. Examples - Patient, CareGiver, Clinician."

* owner MS
* owner 0..1
* owner ^short = "The entity that is responsibility for fulfilling the request.  Especially important to indicate owner on Fulfiller side."

* reasonReference MS
* reasonReference 1..1
* reasonReference only Reference(Task)
* reasonReference ^short = "The original correction request Task."

* note ^short = "Notes from those that are working on the disagreement on the fulfiller side."

* restriction 0..0

* input 0..*
* input ^short = "Provides details about the disagreement to a correction denial."

* input.type 1..1
* input.type ^short = "Possible types: 1) Encounter in which error was made, 2) Original Correction Request that was Denied, 3) Additional Details on Disagreement."

* input.value[x] 1..1
* input.value[x] only string or Reference
* input.value[x] ^short = "1) Reference (Encounter), 2) Reference (Task), 3) String"

* output 0..*
* output ^short = "Additional information for the requester, such as the text of a provider provided rebuttal."

* output.type 1..1
* output.type ^short = "Type indicating \"Additional Information.\""

* output.value[x] 1..1
* output.value[x] only string
