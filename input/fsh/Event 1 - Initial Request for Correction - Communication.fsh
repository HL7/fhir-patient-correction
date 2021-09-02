Alias: $FHIRPatientCorrectionTemp = https://www.maxmddirect.com/fhir/us/mmdtempterminology/6qlB89NQ/CodeSystem/FHIRPatientCorrectionTemp

Instance: initialrequestforcorrection
InstanceOf: PatientCorrectionCommunication
Usage: #example
* about = Reference(correctionrequestprocess)
* category = $FHIRPatientCorrectionTemp#medRecCxReq "medical record correction request"
* meta.versionId = "1"
* payload.contentReference = Reference(ex-documentreference)
* reasonCode = $FHIRPatientCorrectionTemp#medreccx "Medical Record Correction Request"
* sender = Reference(ex-patient)
* recipient = Reference(ex-practitioner)
* sent = "2021-05-19T10:00:17-00:00"
* status = #completed
* subject = Reference(ex-patient)
