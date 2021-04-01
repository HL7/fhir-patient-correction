Profile:        PatientCorrectionCommunication
Parent:         Communication
Id:             patient-correction-communication
Title:          "Patient Correction Communication"
Description:    "A correction communication between patient and entity."

* basedOn MS
* basedOn 0..*
* basedOn ^short = "The PatientCorrectionRequest that this Communication is part of"
* basedOn only Reference(PatientCorrectionRequest)

* inResponseTo ^short = "The previous PatientCorrectionCommunication that this is in reply to"
* inResponseTo only Reference(PatientCorrectionCommunication)

* subject MS
* subject ^short = "The Patient that the correction request applies to"
* subject only Reference(Patient)

* sent MS
* basedOn 1..*
* sent ^short = "When this communication about the correction request was sent"

* received MS
* received ^short = "When this communication about the correction request was received"

* payload MS
* payload 1..*
* payload ^short = "The contents of the communication about the patient correction request"
