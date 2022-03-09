Instance: PatientCorrectionCapability
InstanceOf: CapabilityStatement
Title: "Patient Request for Corrections Capability Statement"
Description: "Describes the capabilities for a FHIR server to support patient requests for corrections."
Usage: #definition

* name = "PatientCorrectionCapability"
* status = #draft
* date = "2022-03-04"
* kind = #requirements
* description = "Describes the capabilities for a FHIR server to support patient requests for corrections."
* fhirVersion = #4.0.1
* format[0] = #xml
* format[1] = #json
* implementationGuide = "https://hl7.org/fhir/uv/fhir-patient-corrections"

* rest[0].mode = #server
* rest[0].documentation = "Description of the needed resources to be supported by the FHIR server, and the different possible interactions."

* rest[0].interaction[0].code = #transaction
* rest[0].interaction[1].code = #search-system

* rest[0].resource[0].type = #Communication
* rest[0].resource[0].documentation = "Read a communication between a patient and a fulfiller relating to a patient correction request."
* rest[0].resource[0].interaction[0].code = #read
* rest[0].resource[0].interaction[0].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest[0].resource[0].interaction[0].extension.valueCode = #SHALL

* rest[0].resource[0].type = #Communication
* rest[0].resource[0].documentation = "Create a Communication between a patient and a fulfiller relating to a patient correction request."
* rest[0].resource[0].interaction[1].code = #create
* rest[0].resource[0].interaction[1].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest[0].resource[0].interaction[1].extension.valueCode = #SHALL

* rest[0].resource[0].type = #Communication
* rest[0].resource[0].documentation = "Update a Communication between a patient and a fulfiller relating to a patient correction request."
* rest[0].resource[0].interaction[2].code = #update
* rest[0].resource[0].interaction[2].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest[0].resource[0].interaction[2].extension.valueCode = #SHALL

* rest[0].resource[0].interaction[3].code = #search-type
* rest[0].resource[0].interaction[3].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest[0].resource[0].interaction[3].extension.valueCode = #SHALL

* rest[0].resource[0].searchParam[0].name = "about"
* rest[0].resource[0].searchParam[0].type = #reference
* rest[0].resource[0].searchParam[0].documentation = "Search for PatientCorrectionTask or PatientCorrectionCommunication this PatientCorrectionCommunication is about."
* rest[0].resource[0].searchParam[0].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest[0].resource[0].searchParam[0].extension.valueCode = #SHALL


* rest[0].resource[1].type = #Task
* rest[0].resource[1].documentation = "Read a Task relating to a patient correction request."
* rest[0].resource[1].interaction[0].code = #read
* rest[0].resource[1].interaction[0].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest[0].resource[1].interaction[0].extension.valueCode = #SHALL

* rest[0].resource[1].type = #Communication
* rest[0].resource[1].documentation = "Create a Task relating to a patient correction request."
* rest[0].resource[1].interaction[1].code = #create
* rest[0].resource[1].interaction[1].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest[0].resource[1].interaction[1].extension.valueCode = #SHALL

* rest[0].resource[1].type = #Task
* rest[0].resource[1].documentation = "Update a Task relating to a patient correction request."
* rest[0].resource[1].interaction[2].code = #update
* rest[0].resource[1].interaction[2].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest[0].resource[1].interaction[2].extension.valueCode = #SHALL

* rest[0].resource[1].interaction[3].code = #search-type
* rest[0].resource[1].interaction[3].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest[0].resource[1].interaction[3].extension.valueCode = #SHALL

* rest[0].resource[1].searchParam[0].name = "reasonReference"
* rest[0].resource[1].searchParam[0].type = #reference
* rest[0].resource[1].searchParam[0].documentation = "For Disagreement Tasks, search for the original request for correction Communication."
* rest[0].resource[1].searchParam[0].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest[0].resource[1].searchParam[0].extension.valueCode = #SHALL


* rest[0].resource[2].type = #Bundle
* rest[0].resource[2].documentation = "Create a Patient Correction Bundle which contains a Patient Correction Communication and related resources."
* rest[0].resource[2].interaction[0].code = #create
* rest[0].resource[2].interaction[0].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest[0].resource[2].interaction[0].extension.valueCode = #SHALL

* rest[0].resource[2].type = #Bundle
* rest[0].resource[2].documentation = "Read a Patient Correction Bundle which contains a Patient Correction Communication and related resources."
* rest[0].resource[2].interaction[1].code = #read
* rest[0].resource[2].interaction[1].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest[0].resource[2].interaction[1].extension.valueCode = #SHALL
