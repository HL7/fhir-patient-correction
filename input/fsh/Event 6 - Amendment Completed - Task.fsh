Alias: $FHIRPatientCorrectionTemp = https://www.maxmddirect.com/fhir/us/mmdtempterminology/6qlB89NQ/CodeSystem/FHIRPatientCorrectionTemp

Instance: correctionrequestprocess6
InstanceOf: PatientCorrectionTask
Usage: #example
* authoredOn = "2021-05-19T10:00:17-00:00"
* businessStatus.text = "Amendment Complete"
* code = $FHIRPatientCorrectionTemp#medRecCxReq "medical record correction request"
* for = Reference(ex-patient)
* input.type.text = "Request"
* input.valueReference = Reference(initialrequestforcorrection)
* intent = #order
* lastModified = "2021-05-25T12:00:17-00:00"
* meta.versionId = "6"
* output.type.text = "Resolution"
* output.valueReference = Reference(recordamended)
* owner = Reference(ex-practitioner)
* requester = Reference(ex-patient)
* status = #completed
