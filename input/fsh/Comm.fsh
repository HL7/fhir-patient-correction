Profile:        CommunicationInitial
Parent:         Communication
Id:             patient-correction-communication-initial
Title:          "Patient Correction Communication Initial"
Description:    "A correction request communication between patient and entity."
* category = CommunicationCategory#Initial
// Initial Communication Request can not have a previous
* inResponseTo 0..0
* status = #in-progress
* priority MS
* topic MS
* topic ^short = "The title of this patient correction request"
* subject 1..1
* subject ^short = "The Patient that the correction request applies to"
* subject only Reference(Patient)
* sender 1..1
* sender only Reference(Patient or RelatedPerson)
* recipient 1..1
* recipient only Reference(Organization or Practitioner )
* sent 1..1
* payload 0..*
* payload MS
* payload ^short = "The contents of the communication about the patient correction request. When the patient can point at historic resources needing to be corrected, they are included here. "
* note 1..*
* note ^short = "The description of the correction request. This is the main narrative explaining the request."
// not used, so forbidden (would rather mark as "If you send, it can be ignored"). 
* about 0..0
* encounter 0..0
* basedOn 0..0
* partOf 0..0

CodeSystem:  CommunicationCategory 
Title: "Communication Categories"
Description:  "To define Communication category code to use in Patient Correction Request"
* #Initial "Correction Request by the Patient"
* #Question "Correction Request clarifying question from Clinician"
* #Response "Correction Response clarification by Patient"
* #Conclusion "Conclusion of a Correction Request"

ValueSet: CommunicationCategoryVS
* include codes from system CommunicationCategory


Profile:        CommunicationQuestion
Parent:         Communication
Id:             patient-correction-communication-request
Title:          "Patient Correction Communication Request"
Description:    "A Request to the Patient about a correction request communication between patient and entity."
* category = CommunicationCategory#Question
// TODO: Do we want to force the initial to always be referenced? Or do we want this to be a linked list?
* inResponseTo 1..1
* inResponseTo ^short = "The previous Patient Correction Communication that this is in reply to"
* inResponseTo only Reference(CommunicationInitial or CommunicationResponse)
* subject 1..1
* subject ^short = "The Patient that the correction request applies to"
* subject only Reference(Patient)
* sender only Reference(Organization or Practitioner)
* sender 1..1
* recipient only Reference(Patient or RelatedPerson)
* recipient 1..1

Profile:        CommunicationResponse
Parent:         Communication
Id:             patient-correction-communication-response
Title:          "Patient Correction Communication Response"
Description:    "A correction request response communication between patient and entity."
* category = CommunicationCategory#Response
* inResponseTo 1..1
* inResponseTo ^short = "The previous Patient Correction Communication that this is in reply to"
* inResponseTo only Reference(CommunicationQuestion)
* subject 1..1
* subject ^short = "The Patient that the correction request applies to"
* subject only Reference(Patient)
* sender 1..1
* sender only Reference(Patient or RelatedPerson)
* recipient 1..1
* recipient only Reference(Organization or Practitioner )

Profile: CommunicationConclusion
Parent: Communication
Id: patient-correction-communication-conclusion
Title: "Patient Correction Communication Conclusion"
Description: "A conclusion of a communication request"
* category = CommunicationCategory#Conclusion
// TODO: Do we want to force the initial to always be referenced? Or do we want this to be a linked list?
* inResponseTo 1..1
* inResponseTo ^short = "The previous Patient Correction Communication that this is in reply to"
* inResponseTo only Reference(CommunicationInitial or CommunicationResponse)
* subject 1..1
* subject ^short = "The Patient that the correction request applies to"
* subject only Reference(Patient)
* sender only Reference(Organization or Practitioner )
* sender 1..1
* recipient only Reference(Patient or RelatedPerson)
* recipient 1..1
