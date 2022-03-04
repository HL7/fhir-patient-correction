Profile:        PatientCorrectionBundle
Parent:         Bundle
Id:             patient-correction-bundle
Title:          "Patient Correction Bundle"
Description:    "The Patient Correction Bundle contains a Patient Correction Communication and other resources related to a patient request for correction."

* type = #collection (exactly)
* entry 1..* MS
* entry ^slicing.discriminator.type = #type
* entry ^slicing.discriminator.path = "resource"
* entry ^slicing.rules = #open
* entry ^slicing.description = "Slice different resources included in the bundle"
* entry contains PatientCommResource 1..1 MS
* entry[PatientCommResource].resource only PatientCorrectionCommunication


Instance: BundleExample
InstanceOf: PatientCorrectionBundle
Description: "Example of an initial request for correction Bundle"
Usage: #example

* type = #collection

//* entry[PatientCommResource].link = 
* entry[0].fullUrl = "initialrequestforcorrection"
* entry[0].resource = initialrequestforcorrection

//* entry[AdditionalResource].link = 
// * entry[1].fullUrl = "ex-documentreference"
// * entry[1].resource = ex-documentreference
