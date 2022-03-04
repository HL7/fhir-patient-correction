Instance: correctionrequestprocess6
InstanceOf: PatientCorrectionTask
Description: "Example of request for correction ammendment completed Task"
Usage: #example
* authoredOn = "2021-05-19T10:00:17-00:00"
* businessStatus = PatientCorrectionBusinessStatus#amendment-completed
* code = PatientCorrectionTaskTypes#medRecCxReq
* for = Reference(ex-patient)
* input.type = PatientCorrectionCommunicationTypes#medRecCxReq
* input.valueReference = Reference(initialrequestforcorrection)
* intent = #order
* lastModified = "2021-05-25T12:00:17-00:00"
* meta.versionId = "6"
* output.type = PatientCorrectionOutputTypes#medRecCxReqResolution
* output.valueReference = Reference(recordamended)
* owner = Reference(ex-practitioner)
* requester = Reference(ex-patient)
* status = #completed
