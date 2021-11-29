Instance: correctionrequestprocess
InstanceOf: PatientCorrectionTask
Description: "Example of an initial request for correction Task"
Usage: #example
* authoredOn = "2021-05-19T10:00:17-00:00"
* businessStatus.text = "New Request"
* code = PatientCorrectionTaskTypes#medRecCxReq
* for = Reference(ex-patient)
* input.type = PatientCorrectionCommunicationTypes#medRecCxReq
* input.valueReference = Reference(initialrequestforcorrection)
* intent = #order
* meta.versionId = "1"
* owner = Reference(ex-practitioner)
* requester = Reference(ex-patient)
* status = #ready
