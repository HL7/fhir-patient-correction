Profile:        PatientCorrectionRequest
Parent:         Task
Id:             patient-correction-request
Title:          "Patient Correction Request"
Description:    "A correction request orginating from a patient."

* identifier MS
* identifier 0..*

* basedOn 0..*

* groupIdentifier 0..1

* partOf 0..*

* status MS
* status 1..1

* statusReason MS
* statusReason 0..1

* businessStatus MS
* businessStatus 0..1

* intent 1..1

* priority 0..1

* code MS
* code 1..1

* description MS
* description 1..1
* description ^short = "Human readable text of the requested correction."

* focus MS
* focus 0..1

* for MS
* for 1..1
* for ^short = "The patient whose record this correction references."

* encounter 0..1
* for ^short = "This is to indicate that this specific task originated in a specific encounter. Correction requests from patients are expected to usually originate outside of an encounter. An exception might be requests for correction sent from the inpatient bedside by patient or caregiver."

* executionPeriod MS
* executionPeriod 0..1
* executionPeriod ^short = "By when does the correction need to happen."

* authoredOn MS
* authoredOn 1..1

* lastModified MS
* lastModified 0..1

* requester MS
* requester 1..1
* requester ^short = "The entity that requests the correction.  Examples - Patient, CareGiver, Clinician."

* owner MS
* owner 0..1
* owner ^short = "The entity that is responsibility for fulfilling the request.  Especially important to indicate owner on Fulfiller side."

* note MS
* note ^short = "Notes from those that are working on the correction about that work."

* restriction 0..0

* input 0..*

* output 0..*


Profile:        PatientCorrectionDisagreement
Parent:         Task
Id:             patient-correction-disagreement
Title:          "Patient Correction Disagreement"
Description:    "A disagreement to a patient correction request."

* identifier MS
* identifier 0..*

* basedOn 0..*

* groupIdentifier 0..1

* partOf 0..*

* status MS
* status 1..1

* statusReason MS
* statusReason 0..1

* businessStatus MS
* businessStatus 0..1

* intent 1..1

* priority 0..1

* code MS
* code 1..1

* description MS
* description 1..1
* description ^short = "Human readable text of the requested correction."

* focus MS
* focus 0..1

* for MS
* for 1..1
* for ^short = "The patient whose record this correction references."

* encounter 0..1
* for ^short = "This is to indicate that this specific task originated in a specific encounter. Correction requests from patients are expected to usually originate outside of an encounter. An exception might be requests for correction sent from the inpatient bedside by patient or caregiver."

* executionPeriod MS
* executionPeriod 0..1
* executionPeriod ^short = "By when does the correction need to happen."

* authoredOn MS
* authoredOn 1..1

* lastModified MS
* lastModified 0..1

* requester MS
* requester 1..1
* requester ^short = "The entity that requests the correction.  Examples - Patient, CareGiver, Clinician."

* owner MS
* owner 0..1
* owner ^short = "The entity that is responsibility for fulfilling the request.  Especially important to indicate owner on Fulfiller side."

* note MS
* note ^short = "Notes from those that are working on the correction about that work."

* restriction 0..0

* input 0..*

* output 0..*
