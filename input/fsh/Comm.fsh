Profile:        CommunicationInitial
Parent:         Communication
Id:             patient-correction-communication-initial
Title:          "Patient Correction Communication Initial"
Description:    "A correction request communication between patient and entity."
* category = CommunicationCategory#Initial
* about 0..0
* about ^short = "holds a link to the initial"
* about ^comment = "The about element will be empty in the initial Correction Request. The about element will point at the initial communication in all other communications. This enables finding all communications related to a Correction Request."
* inResponseTo 0..0
* inResponseTo ^short = "points to other communication this is in response to"
* inResponseTo ^comment = "The inResponse element is used to point at one or more communication for which this is a response. The inResponseTo does not include the initial communication. This element enables linking questions to answers, and answers to follow-up questions."
* status = #in-progress
* status ^short = "always in-progress"
* priority MS
* priority ^short = "priority should be filled to enable prioritizing of the processing"
* topic MS
* topic ^short = "The title of this patient correction request"
* subject 1..1
* subject ^short = "The Patient that the correction request applies to"
* subject only Reference(Patient)
* sender 1..1
* sender only Reference(Patient or RelatedPerson)
* sender ^short = "The Correction Request communication may be by the Patient themselves, or a RelatedPerson who is communicating on their behalf."
* recipient 1..1
* recipient only Reference(Organization or Practitioner )
* recipient ^short = "The recipient is usually broadly the Organization, but may be directed to a specific practitioner."
* sent 1..1
* sent ^short = "The date when this communication is sent helps define the workflow start"
* payload 0..*
* payload MS
* payload ^short = "Specific content this communication is referring to or carrying"
* payload ^comment = "The contents of the communication about the patient correction request. When the patient can point at historic resources needing to be corrected, they are included here."
* note 1..*
* note ^short = "The description of the correction request. This is the main narrative explaining the request."
// not used, so forbidden (would rather mark as "If you send, it can be ignored"). 
* encounter 0..0
* basedOn 0..0
* partOf 0..0




CodeSystem:  CommunicationCategory 
Title: "Communication Categories"
Description:  "CodeSystem of codes that define Communication category code for use in Patient Correction Request"
* #Initial "Correction Request by the Patient or RelatedPerson"
* #Question "Correction Request clarifying question from the Organization or Practitioner at the Organization"
* #Response "Correction Response clarification by Patient"
* #Conclusion "Conclusion of a Correction Request"

ValueSet: CommunicationCategoryVS
Description: "ValueSet of Communication category codes used in the Patient Correction Request"
* include codes from system CommunicationCategory




Profile:        CommunicationQuestion
Parent:         Communication
Id:             patient-correction-communication-question
Title:          "Patient Correction Communication Question"
Description:    "A Request to the Patient about a correction request communication between patient and entity.

The question communication pattern usually will be asking clarifying question. This communication may not be a question, such as providing an update on the processing status."
* category = CommunicationCategory#Question
* about 1..1
* about ^short = "The about element will hold a link to the initial"
* about ^comment = "The about element will be empty in the initial Correction Request. The about element will point at the initial communication in all other communications. This enables finding all communications related to a Correction Request."
* about only Reference(CommunicationInitial)
* inResponseTo 0..*
* inResponseTo only Reference(CommunicationResponse)
* inResponseTo ^short = "points to other communication this is in response to"
* inResponseTo ^comment = "The inResponse element is used to point at one or more communication for which this is a response. The inResponseTo does not include the initial communication. This element enables linking questions to answers, and answers to follow-up questions."
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
Description:    "A correction request response communication between patient and entity.

The response communication pattern usually is in response to questions asked by the organization or a practitioner. This communication may also be used ad-hoc to send in clarifications or ask questions. For example, asking for an update on how the processing is going."
* category = CommunicationCategory#Response
* about 1..1
* about ^short = "The about element will hold a link to the initial"
* about ^comment = "The about element will be empty in the initial Correction Request. The about element will point at the intial communication in all other communications. This enables finding all communications related to a Correction Request."
* about only Reference(CommunicationInitial)
* inResponseTo 0..*
* inResponseTo only Reference(CommunicationQuestion)
* inResponseTo ^short = "points to other communication this is in response to"
* inResponseTo ^comment = "The inResponse element is used to point at one or more communication for which this is a response. The inResponseTo does not include the initial communication. This element enables linking questions to answers, and answers to follow-up questions."
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
* about 1..1
* about ^short = "The about element will hold a link to the initial"
* about ^comment = "The about element will be empty in the initial Correction Request. The about element will point at the initial communication in all other communications. This enables finding all communications related to a Correction Request."
* about only Reference(CommunicationInitial)
* inResponseTo 0..0
* inResponseTo ^short = "The conclusion only references the initial."
* subject 1..1
* subject ^short = "The Patient that the correction request applies to"
* subject only Reference(Patient)
* sender only Reference(Organization or Practitioner )
* sender 1..1
* recipient only Reference(Patient or RelatedPerson)
* recipient 1..1
