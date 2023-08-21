Profile:        PatientCorrectionCommunication
Parent:         Communication
Id:             patient-correction-communication
Title:          "Patient Correction Communication"
Description:    "A Communication between a patient and a fulfiller relating to a patient correction request."

* about ^slicing.discriminator.type = #type
* about ^slicing.discriminator.path = "reference"
* about ^slicing.rules = #open
* about ^slicing.ordered = false 
* about ^slicing.description = "Slice based on reference type"
* about contains correctionTask 0..1 MS
* about[correctionTask] only Reference(PatientCorrectionTask)
* about[correctionTask] ^short = "Patient Correction Task requesting a correction."
* about[correctionTask] ^definition = "A server-created Correction Task for servicing this correction request."
* about[correctionTask] ^comment = "When creating an initial correction request, this element SHALL be empty. If a processing system creates a Task resource related to a correction request, the server SHALL add a reference to that Task here. Any subsequent communication requests regarding the same correction request SHALL reference the relevant Task if present."

// "If this is the original Patient Correction Request  then Communication.about will initially be empty when posted by the Requester but populated with the Request for Correction Task reference by the Fulfiller when the Fulfiller spawn a Task to represent the Request for Correction or Logging of Disagreement process. For all subsequent Communication resources that represent conversations help between Requester and Fulfiller as part of the process, Communication.about references the Communication resource that contains the original request. If this Communication represents the start of a Log Disagreement request, then when the Fulfiller spawns a Task to support the logging of the disagreement, Communication.about will also reference the spawned Task."

// "* When creating an initial correction request, this element SHALL be empty.\r\n* If a processing system creates a Task resource related to a correction request, the server SHALL add a reference to that Task here.\r\n* Any subsequent communication requests regarding the same correction request SHALL reference the initial Communication and SHOULD reference the relevant Task if present.\r\n* "

* partOf 0..1 MS
* partOf only Reference(PatientCorrectionCommunication)
* partOf ^short      = "Initial Patient Correction Communication resource for this request."
* partOf ^definition = "The initial communication sent by a Requester for a record correction."
* partOf ^comment    = "When creating an initial correct request, this element SHALL be empty. Subsequent communications in either direction (to or from the patient) SHALL populate this element with a reference to the original communication requesting a correction."

* inResponseTo MS
* inResponseTo 0..1
* inResponseTo only Reference(PatientCorrectionCommunication)
* inResponseTo ^comment = "Patient Correction Request Communication that this is in response to. This will only be filled in if it represents a response to another Communication resource. It can be used to query and assemble conversation threads related to the request process."

* status = #completed
* status ^short = "Fixed: completed."

* category MS
* category 1..1
* category from PatientCorrectionCommunicationTypesVS

* topic MS
* topic ^short = "A heading/subject line for the message being sent."
* topic ^comment = "Equivalent to the subject line in an email thread."

* subject MS
* subject 1..1
* subject ^short = "The Patient that the correction request or the log disagreement applies to."
* subject only Reference(Patient)

* sender MS
* sender 1..1
* sender only Reference(Patient or RelatedPerson or Practitioner or PractitionerRole or Organization or HealthcareService)
* sender ^short   = "Message sender: either a Requestor or a Fulfiller"
* sender ^comment = "Depending on the direction of the patient correction communication, the sender of the communication may be the Requester or it may be the Fulfiller. If spawning a Task relating to an initial request (for either correction or logging of disagreement), the Fulfiller SHALL use this sender to represent the `Task.requester`."

* recipient MS
* recipient 1..*
* recipient only Reference(Patient or RelatedPerson or Practitioner or PractitionerRole or Organization or CareTeam or HealthcareService)
* recipient ^short   = "Message recipient: either a Requestor or a Fulfiller"
* recipient ^comment = "Depending on the direction of the patient correction communication, the recipient of the communication may be the Fulfiller or it may be the Requester."

* sent 1..1
* sent ^short   = "When this communication was sent"
* sent ^comment = "The date that this particular part of the conversation is sent.  On the initial request from the Requestor for either correction or logging a disagreement, this date/time will be used as `Task.authoredOn` to signify when the process was initiated on the Fulfiller."

* payload 0..*
* payload MS
* payload ^short = "Contents of this communication."
* payload ^comment = "The contents of this particular conversation component. If this is the original correction request or logging of a disagreement, then the payload would contain the request. If it is the final outcome of the request, then the payload would contain the final outcome information.  Otherwise it contains a single message in back and forth conversation needed to process the initial request. Since it is possible to have a Communication resource reference a conversation held outside of the FHIR Rest protocol (email, mail, portal messaging - see Communication.channel) the minimum cardinality is zero.  However, it is expected in most cases payload will be valued."

* note 0..*
* note ^short   = "Non-actionable notes about this communication."
* note ^comment = "If there is NOT a Task created to work on a correction request, this element MAY contain notes from those that are working on a correction. Notes from Requestors SHOULD be placed into additional communications, so that Fulfillers review them. This element SHALL NOT contain actionable requests from either Requestors or Fulfillers."

// These elements MAY be needed by others related to patient care.  E.g., a home healthcare worker that has a Task to request a correction on behalf of a patient.
// not used, so forbidden (would rather mark as "If you send, it can be ignored"). 
// * encounter 0..0
// * basedOn 0..0



Instance: About
InstanceOf: SearchParameter
Title: "Search on the PatientCorrectionCommunication.about element"
Description: "Search Parameter extension enabling clients to search on the PatientCorrectionCommunication.about element"
Usage: #definition
* url = "http://hl7.org/fhir/uv/patient-corrections/SearchParameter/About"
* description = "This SearchParameter enables finding all communications related to a Patient Request for Correction. Each communication related to a particular correction request will point to the original communication in the request."
* name = "AboutSearchParameter"
* status = #active
* code = #about
* base = #Communication
* expression = "Communication.about"
* type = #reference
