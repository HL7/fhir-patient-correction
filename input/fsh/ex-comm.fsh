

Instance: ex-CommunicationInitial
InstanceOf: CommunicationInitial
Description: "Example of a Initial Request for Correction

* request to correct smoking status"
Usage: #example
* category = CommunicationCategory#Initial
* subject = Reference(ex-patient)
* sender = Reference(ex-patient)
* recipient = Reference(ex-practitioner)
* status = #in-progress
* priority = #asap
* topic.text = "Patient Request for Correction"
* note.text = "My chart states that I smoke two packs a day.  I do not smoke"
* sent = "2020-12-12T19:28:17+10:00"

Instance: ex-CommunicationQuestion
InstanceOf: CommunicationQuestion
Description: "Example of a clinician asking for clarification

* When did you stop smoking?"
Usage: #example
* category = CommunicationCategory#Question
* inResponseTo = Reference(ex-CommunicationInitial)
* subject = Reference(ex-patient)
* recipient = Reference(ex-patient)
* sender = Reference(ex-practitioner)
* status = #in-progress
* priority = #asap
* topic.text = "Patient Request for Correction"
* note.text = "When did you stop smoking?"
* sent = "2020-12-13T19:28:17+10:00"

Instance: ex-CommunicationResponse
InstanceOf: CommunicationResponse
Description: "Example of a patient clarifying information as requested

* I stopped smoking in 1998"
Usage: #example
* category = CommunicationCategory#Response
* inResponseTo = Reference(ex-CommunicationInitial)
* subject = Reference(ex-patient)
* sender = Reference(ex-patient)
* recipient = Reference(ex-practitioner)
* status = #in-progress
* priority = #asap
* topic.text = "Patient Request for Correction"
* note.text = "I stopped smoking in 1998."
* sent = "2020-12-14T19:28:17+10:00"

Instance: ex-CommunicationConclusion
InstanceOf: CommunicationConclusion
Description: "Example of a clinician telling the patient that the correction has been accepted and applied

* all done"
Usage: #example
* category = CommunicationCategory#Conclusion
* inResponseTo = Reference(ex-CommunicationInitial)
* subject = Reference(ex-patient)
* recipient = Reference(ex-patient)
* sender = Reference(ex-practitioner)
* status = #in-progress
* priority = #asap
* topic.text = "Patient Request for Correction"
* note.text = "Your records have been corrected. Thank you"
* sent = "2020-12-15T19:28:17+10:00"
