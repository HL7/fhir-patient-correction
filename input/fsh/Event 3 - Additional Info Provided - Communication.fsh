Instance: additionalinfoprovided
InstanceOf: PatientCorrectionCommunication
Usage: #example
* about = Reference(initialrequestforcorrection)
* category.text = "Request for Correction"
* inResponseTo = Reference(additionalinfoneeded)
* meta.versionId = "1"
* payload.contentString = "I quit smoking over 2 years ago on Dec 10th, 2018."
* recipient = Reference(ex-practitioner)
* sender = Reference(ex-patient)
* sent = "2021-05-20T11:00:17-00:00"
* status = #completed
* subject = Reference(ex-patient)
* topic.text = "Question About Amendment Request"
