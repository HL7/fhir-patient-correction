Instance: correctionrequestprocess2
InstanceOf: PatientCorrectionTask
Description: "Example of request for correction additional information needed Task"
Usage: #example
* authoredOn = "2021-05-19T10:00:17-00:00"
* businessStatus = PatientCorrectionBusinessStatus#waiting-for-information
* code = PatientCorrectionTaskTypes#medRecCxReq
* for = Reference(ex-patient)
* input.type = PatientCorrectionCommunicationTypes#medRecCxReq
* input.valueReference = Reference(initialrequestforcorrection)
* intent = #order
* lastModified = "2021-05-20T10:00:17-00:00"
* meta.versionId = "2"
* owner = Reference(ex-practitioner)
* requester = Reference(ex-patient)
* status = #in-progress
