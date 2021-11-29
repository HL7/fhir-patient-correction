Instance: initialrequestforcorrection
InstanceOf: PatientCorrectionCommunication
Description: "Example of an initial request for correction Communication"
Usage: #example
* about = Reference(correctionrequestprocess)
* category = PatientCorrectionCommunicationTypes#medRecCxReq
* meta.versionId = "1"
* payload.contentReference = Reference(ex-documentreference)
// * reasonCode = $FHIRPatientCorrectionTemp#medreccx "Medical Record Correction Request"
* sender = Reference(ex-patient)
* recipient = Reference(ex-practitioner)
* sent = "2021-05-19T10:00:17-00:00"
* status = #completed
* subject = Reference(ex-patient)
