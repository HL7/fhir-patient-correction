Profile:        PatientCorrectionCommunication
Parent:         Communication
Id:             patient-correction-communication
Title:          "Patient Correction Communication"
Description:    "A Communication between a patient and a fulfiller relating to a patient correction request."

* about MS
* about 0..2
* about only Reference(PatientCorrectionTask or PatientCorrectionCommunication)
* about ^short = "If this is the original Patient Correction Request  then Communication.about will initially be empty when posted by the Requester but populated with the Request for Correction Task reference by the Fulfiller when the Fulfiller spawn a Task to represent the Request for Correction or Logging of Disagreement process. For all subsequent Communication resources that represent conversations help between Requester and Fulfiller as part of the process,,Communication.about references the Communication resource that contains the original request. If this Communication represents the start of a Log Disagreement request, then when the Fulfiller spawns a Task to support the logging of the disagreement, Communication.about will also reference the spawned Task."

* inResponseTo MS
* inResponseTo 0..1
* inResponseTo only Reference(PatientCorrectionCommunication)
* inResponseTo ^short = "Patient Correction Request Communication that this is in response to. This will only be filled in if it represents a response to another Communication resource.  It can be used to query and assemble conversation threads related to the request process."

* status = #completed
* status ^short = "Fixed: completed."

* category MS
* category 1..1
* category from PatientCorrectionCommunicationTypesVS

* topic MS
* topic ^short = "A heading/subject line for the message being sent. Could be thought of as the subject line in an email thread."

* subject MS
* subject 1..1
* subject ^short = "The Patient that the correction request or the log disagreement applies to."
* subject only Reference(Patient)

* sender MS
* sender 1..1
* sender only Reference(Patient or RelatedPerson or Practitioner or PractitionerRole or Organization or HealthcareService)
* sender ^short = "Depending on the direction of the patient correction communication, the sender of the communication may be the Requester or it may be the Fulfiller.  On the initial request for correction or logging of disagreement, the Fulfiller will use sender to represent the Task.requester."

* recipient MS
* recipient 1..1
* recipient only Reference(Patient or RelatedPerson or Practitioner or PractitionerRole or Organization or CareTeam or HealthcareService)
* recipient ^short = "Depending on the direction of the patient correction communication, the recipient of the communication may be the Fulfiller, or it may be the Requester."

* sent 1..1
* sent ^short = "The date that this particular part of the conversation is sent.  On the initial request from the Requestor for either correction or logging a disagreement, this date/time will be used as Task.authoredOn to signify when the process was initiated on the Fulfiller."

* payload 0..*
* payload MS
* payload ^short = "The contents of this particular conversation component. If this is the original correction request or logging of a disagreement, then the payload would contain the request. If it is the final outcome of the request, then the payload would contain the final outcome information.  Otherwise it contains a single message in back and forth conversation needed to process the initial request. Since it is possible to have a Communication resource reference a conversation held outside of the FHIR Rest protocol (email, mail, portal messaging – see Communication.channel) the minimum cardinality is zero.  However, it is expected in most cases payload will be valued."

* note 0..*
* note ^short = "Notes from those that are working on the correction about that work (this is not the correction request itself)."

// not used, so forbidden (would rather mark as "If you send, it can be ignored"). 
* encounter 0..0
* basedOn 0..0
* partOf 0..0


CodeSystem:  PatientCorrectionCommunicationTypes
Title: "Patient Correction Communication Types"
Description: "CodeSystem of Communication categories for use in Patient Correction Request"
* #medRecCxReq "Correction request by the Patient or RelatedPerson"
* #medRecCxDenialDisagree "Disagreement with a denial correction request by the Patient or RelatedPerson"


ValueSet: PatientCorrectionCommunicationTypesVS
Description: "ValueSet of Communication types for use in Patient Correction Request"
* PatientCorrectionCommunicationTypes#medRecCxReq
* PatientCorrectionCommunicationTypes#medRecCxDenialDisagree


Instance: Communication-About
InstanceOf: SearchParameter
Title: "Search on the PatientCorrectionCommunication.about element"
Description: "Search Parameter extension enabling clients to search on the PatientCorrectionCommunication.about element"
Usage: #definition
* url = "http://hl7.org/fhir/uv/patient-corrections/SearchParameter-PatientCorrectionCommunication-About"
* description = "This SearchParameter enables finding all communications related to a Patient Request for Correction. Each communication related to a particular correction request will point to the original communication in the request."
* name = "PatientCorrectionCommunicationAbout"
* status = #active
* code = #about
* base = #Communication
* expression = "PatientCorrectionCommunication.about"
* type = #reference
