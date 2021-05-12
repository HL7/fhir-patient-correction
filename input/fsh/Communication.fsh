Profile:        PatientCorrectionCommunication
Parent:         Communication
Id:             patient-correction-communication
Title:          "Patient Correction Communication"
Description:    "A Communication between a patient and a fulfiller relating to a patient correction request."

* about 0..1
* about only Reference(PatientCorrectionTask or PatientCorrectionCommunication)
* about ^short = "The Patient Correction Task associated with this correction request, if any. Otherwise this would point to the initial Communication, unless this is the initial one."
* about ^comment = "The about element will be empty in the initial correction request. The about element will point at the Task or the initial Communication in all other communications. This enables finding all Communications related to a correction request."

* inResponseTo 0..*
* inResponseTo only Reference(PatientCorrectionCommunication)
* inResponseTo ^short = "Patient Correction Communications (zero or more) that this is in response to. Empty for the initial Patient Correction Communication. "
* inResponseTo ^comment = "The inResponse element is used to point at one or more communication for which this is a response. This element enables linking questions to answers, and answers to follow-up questions."

* status = #in-progress
* status ^short = "The status is always in-progress."

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
