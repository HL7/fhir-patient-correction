Profile:        PatientCorrectionCommunication
Parent:         Communication
Id:             patient-correction-communication
Title:          "Patient Correction Communication"
Description:    "A correction communication between patient and entity."

* partOf MS
* partOf 0..*
* partOf ^short = "The PatientCorrectionRequest or PatientCorrectionDisagreement that this Communication is part of"
* partOf only Reference(PatientCorrectionRequest or PatientCorrectionDisagreement)

* inResponseTo ^short = "The previous PatientCorrectionCommunication that this is in reply to"
* inResponseTo only Reference(PatientCorrectionCommunication)

* subject MS
* subject ^short = "The Patient that the PatientCorrectionRequest and this PatientCorrectionCommunication are related to"
* subject only Reference(Patient)

* payload ^short = "The text of the communication about the patient correction request"
