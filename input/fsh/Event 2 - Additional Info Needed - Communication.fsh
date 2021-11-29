Instance: additionalinfoneeded
InstanceOf: PatientCorrectionCommunication
Description: "Example of request for correction additional information needed Communication"
Usage: #example
* about = Reference(initialrequestforcorrection)
* category = PatientCorrectionCommunicationTypes#medRecCxReq
* payload.contentString = "Upon review of your record, we see that you have a history of smoking.  Is this incorrect, or did you quit smoking at some point?"
* recipient = Reference(ex-patient)
* sender = Reference(ex-practitioner)
* sent = "2021-05-20T10:00:17-00:00"
* status = #completed
* subject = Reference(ex-patient)
* topic.text = "Question about Amendment Request"
