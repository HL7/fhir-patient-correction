Profile:        PatientCorrectionCommunication
Parent:         Communication
Id:             patient-correction-communication
Title:          "Patient Correction Communication"
Description:    "A Communication between a patient and a fulfiller relating to a patient correction request."

* about 0..1
* about only Reference(PatientCorrectionCommunication)
* about ^short = "The original Patient Correction Request Communication associated with this correction request (unless this is the original communication, in which case this will be empty)."
* about ^comment = "The about element will be empty in the initial Patient Correction Request Communication. The about element will point at the initial communication in all other communications. This allows for searching for all communications related to a patient correction request."

* inResponseTo 0..1
* inResponseTo only Reference(PatientCorrectionCommunication)
* inResponseTo ^short = "Patient Correction Request Communication that this is in response to. Empty for the initial Patient Correction Communication. "
* inResponseTo ^comment = "The inResponse element is used to point at the Communication for which this is a response. This element enables linking questions to answers, and answers to follow-up questions."

* status = #in-progress
* status ^short = "The status is always in-progress."

* category from PatientCorrectionCommunicationTypesVS

* priority MS
* priority ^short = "Priority may be used to enable prioritizing of the processing."

* topic MS
* topic ^short = "The title of this Patient Correction Request."

* subject 1..1
* subject ^short = "The Patient that the correction request applies to."
* subject only Reference(Patient)

* sender 1..1
* sender only Reference(Patient or RelatedPerson or Practitioner or PractitionerRole or Organization or HealthcareService)
* sender ^short = "Depending on the direction of the patient correction communication, the sender of the communication may be the Patient (or a RelatedPerson who is communicating on their behalf), or it may be the fulfiller."

* recipient 1..1
* recipient only Reference(Patient or RelatedPerson or Practitioner or PractitionerRole or Organization or CareTeam or HealthcareService)
* recipient ^short = "Depending on the direction of the patient correction communication, the recipient of the communication may be the fulfiller, or it may be the Patient (or a RelatedPerson who is communicating on their behalf)."

* sent 1..1
* sent ^short = "The date that this patient correction communication was sent."

* payload 0..*
* payload MS
* payload ^short = "The contents of the patient correction request. If this is the original correction request communication from the patient, the payload would contain the request."
* payload ^comment = "The contents of the the patient correction request. When the patient can point at historic resources needing to be corrected, they are included here."

* note 0..*
* note ^short = "Notes from those that are working on the correction about that work (this is not the correction request itself)."

// not used, so forbidden (would rather mark as "If you send, it can be ignored"). 
* encounter 0..0
* basedOn 0..0
* partOf 0..0


CodeSystem:  PatientCorrectionCommunicationTypes
Title: "Patient Correction Communication Types"
Description:  "CodeSystem of defines Communication category for use in Patient Correction Request"
* #medRecCxReq "Correction request by the Patient or RelatedPerson"
* #medRecCxDenialDisagree "Disagreement with a denial correction request by the Patient or RelatedPerson"


ValueSet: PatientCorrectionCommunicationTypesVS
* PatientCorrectionCommunicationTypes#medRecCxReq
* PatientCorrectionCommunicationTypes#medRecCxDenialDisagree


Instance: Communication-About
InstanceOf: SearchParameter
Title: "Search on the Communication.about element"
Description: "Search Parameter extension enabling clients to search on the Communication.about element"
Usage: #definition
* url = "http://hl7.org/fhir/uv/patient-corrections/SearchParameter-Communication-About"
* description = "This SearchParameter enables finding all communications related to a Patient Request for Correction. Each communication related to a particular correction request will point to the original communication in the request."
* name = "About"
* status = #active
* code = #about
* base = #PatientCorrectionCommunication
* expression = "Communication.about"
* type = #reference
