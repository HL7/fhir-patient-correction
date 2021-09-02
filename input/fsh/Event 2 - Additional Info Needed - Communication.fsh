Alias: $FHIRPatientCorrectionTemp = https://www.maxmddirect.com/fhir/us/mmdtempterminology/6qlB89NQ/CodeSystem/FHIRPatientCorrectionTemp

Instance: additionalinfoneeded
InstanceOf: PatientCorrectionCommunication
Usage: #example
* about = Reference(initialrequestforcorrection)
* category = $FHIRPatientCorrectionTemp#medRecCxReq "medical record correction request"
* payload.contentString = "Upon review of your record, we see that you have a history of smoking.  Is this incorrect, or did you quit smoking at some point?"
* recipient = Reference(ex-patient)
* sender = Reference(ex-practitioner)
* sent = "2021-05-20T10:00:17-00:00"
* status = #completed
* subject = Reference(ex-patient)
* topic.text = "Question about Amendment Request"
