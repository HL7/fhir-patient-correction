Instance: recordamended
InstanceOf: PatientCorrectionCommunication
Description: "Example of request for correction amendment completed Communication"
Usage: #example
* about = Reference(correctionrequestprocess)
* partOf = Reference(initialrequestforcorrection)
* category = PatientCorrectionCommunicationTypes#medRecCxReq
* payload[0].contentString = "Your record has been amended as requested. See attached."
* payload[+].contentReference = Reference(ex-documentreference)
* recipient = Reference(ex-patient)
* sender = Reference(ex-practitioner)
* sent = "2021-05-25T12:00:17-00:00"
* status = #completed
* subject = Reference(ex-patient)
* topic.text = "Your Record Has Been Amended"
* inResponseTo = Reference(additionalinfoprovided)
