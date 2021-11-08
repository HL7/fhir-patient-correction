Profile:        PatientCorrectionBundle
Parent:         Bundle
Id:             patient-correction-bundle
Title:          "Patient Correction Bundle"
Description:    "The Patient Correction Bundle contains a Patient Correction Communication and other resources related to a patient request for correction."

* type only code
* type = #collection (exactly)

* total 0..0

* entry ^slicing.discriminator.type = #value
* entry ^slicing.discriminator.path = "resource"
* entry ^slicing.rules = #openAtEnd

// Slice for Patient Correction Communication

* entry contains PatientCommRes 1..1
* entry[PatientCommRes].link 1..1
* entry[PatientCommRes].fullUrl 1..1
* entry[PatientCommRes].resource 1..1
* entry[PatientCommRes].resource ^short = "A Patient Correction Communication resource (required), specifying correction request, back and forth conversation, or log of disagreement."

// Slice for other resources

* entry contains AdditionalRes 0..*
* entry[AdditionalRes].link 1..1
* entry[AdditionalRes].fullUrl 1..1
* entry[AdditionalRes].resource 1..1
* entry[AdditionalRes].resource ^short = "Additional resources which provide information and context about the request."
