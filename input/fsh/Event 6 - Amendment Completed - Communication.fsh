Alias: $FHIRPatientCorrectionTemp = https://www.maxmddirect.com/fhir/us/mmdtempterminology/6qlB89NQ/CodeSystem/FHIRPatientCorrectionTemp

Instance: recordamended
InstanceOf: PatientCorrectionCommunication
Usage: #example
* about = Reference(initialrequestforcorrection)
* category = $FHIRPatientCorrectionTemp#medRecCxReq "medical record correction request"
* payload[0].contentString = "Your record has been amended as requested.  See attached."
* payload[+].contentReference = Reference(ex-document)
* recipient = Reference(ex-patient)
* sender = Reference(ex-practitioner)
* sent = "2021-05-25T12:00:17-00:00"
* status = #completed
* subject = Reference(ex-patient)
* topic.text = "Your Record Has Been Amended"
