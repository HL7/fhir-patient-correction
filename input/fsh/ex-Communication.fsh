Instance: ex-CommunicationInitial
InstanceOf: PatientCorrectionCommunication
Description: "Example of a Initial Request for Correction

* request to correct smoking status
* sent to the organization"
Usage: #example
* subject = Reference(ex-patient)
* sender = Reference(ex-patient)
* recipient = Reference(ex-organization)
* status = #completed
* category = #medRecCxReq
* priority = #asap
* topic.text = "Patient Request for Correction"
* payload[0].contentString = "My chart states that I smoke two packs a day.  

**I do not smoke.**"
* sent = "2020-12-12T19:28:17+10:00"


Instance: ex-CommunicationInitial2
InstanceOf: PatientCorrectionCommunication
Description: "Example of a Initial Request for Correction

* request to correct smoking status
* sent to the organization
* with reference to the FHIR Observation indicating smoking"
Usage: #example
* subject = Reference(ex-patient)
* sender = Reference(ex-patient)
* recipient = Reference(ex-organization)
* status = #completed
* category = #medRecCxReq
* priority = #asap
* topic.text = "Patient Request for Correction"
* payload[0].contentString = "My chart states that I smoke two packs a day.  

**I do not smoke.**"
* sent = "2020-12-12T19:28:17+10:00"
* payload.contentReference = Reference(ex-smoking)


Instance: ex-CommunicationQuestion1
InstanceOf: PatientCorrectionCommunication
Description: "Example of a practitioner at the organization asking for clarification

* When did you stop smoking?"
Usage: #example
* about = Reference(ex-CommunicationInitial)
* subject = Reference(ex-patient)
* recipient = Reference(ex-patient)
* sender = Reference(ex-practitioner)
* status = #completed
* category = #medRecCxReq
* priority = #asap
* topic.text = "Patient Request for Correction"
* payload[0].contentString = "Hi Mr Schmidt,

This is John Schmitt.  I work for nowhere organization.  I have been assigned to your Correction Request from *December 12th, 2020*. 

I do see that your chart does show that you are a smoker.

When did you stop smoking?"
* sent = "2020-12-13T19:28:17+10:00"


Instance: ex-CommunicationResponse1
InstanceOf: PatientCorrectionCommunication
Description: "Example of the patient clarifying information as requested

* I stopped smoking in 1998"
Usage: #example
* about = Reference(ex-CommunicationInitial)
* inResponseTo = Reference(ex-CommunicationQuestion1)
* subject = Reference(ex-patient)
* sender = Reference(ex-patient)
* recipient = Reference(ex-practitioner)
* status = #completed
* category = #medRecCxReq
* priority = #asap
* topic.text = "Patient Request for Correction"
* payload[0].contentString = "Hi John,

It is nice to hear you are working on my request. I stopped smoking in 1998.

Signed John Jacob Jingleheimer Schmidt"
* sent = "2020-12-14T19:28:17+10:00"


Instance: ex-CommunicationQuestion2
InstanceOf: PatientCorrectionCommunication
Description: "Example of a practitioner at the organization asking for clarification

* asking for clarification given a set of data from the chart"
Usage: #example
* about = Reference(ex-CommunicationInitial)
* inResponseTo = Reference(ex-CommunicationResponse1)
* subject = Reference(ex-patient)
* recipient = Reference(ex-patient)
* sender = Reference(ex-practitioner)
* status = #completed
* category = #medRecCxReq
* priority = #asap
* topic.text = "Patient Request for Correction"
* payload[0].contentString = "Hi Mr. Schmidt,

This is John Schmitt.  I work for nowhere organization.  I have been assigned to your Correction Request from *December 12th, 2020*. 

I received your clarification on *December 14th, 2020* indicating that you have stopped smoking in **1998**. Your chart shows that you have started and stopped smoking a few times.

| Status | Date |
|--------|----|
| started | 1969 |
| stopped | 1972 |
| started | 1983 |


is this accurate?"
* sent = "2020-12-15T19:28:17+10:00"


Instance: ex-CommunicationResponse2
InstanceOf: PatientCorrectionCommunication
Description: "Example of the patient clarifying information as requested

* This response indicates it is a response to both questions
* Indicating that the smoking did continue beyond 1972 to 1977"
Usage: #example
* about = Reference(ex-CommunicationInitial)
* inResponseTo = Reference(ex-CommunicationQuestion1)
* inResponseTo = Reference(ex-CommunicationQuestion2)
* subject = Reference(ex-patient)
* sender = Reference(ex-patient)
* recipient = Reference(ex-practitioner)
* status = #completed
* category = #medRecCxReq
* priority = #asap
* topic.text = "Patient Request for Correction"
* payload[0].contentString = "Hi John,

It is nice to hear you are working on my request. I stopped smoking in 1998.

| Status | Date |
|--------|----|
| started | 1969 |
| ~~stopped~~ | ~~1972~~ |
| stopped | **1977** |
| started | 1983 |
| stopped | **1998** |

Signed John Jacob Jingleheimer Schmidt"
* sent = "2020-12-16T19:28:17+10:00"


Instance: ex-CommunicationResponse3
InstanceOf: PatientCorrectionCommunication
Description: "Example of the patient asking for a status update

* This is adhoc, so not in response to any prior communication, just the initial
* Is my Correction Request continuing?"
Usage: #example
* about = Reference(ex-CommunicationInitial)
* subject = Reference(ex-patient)
* sender = Reference(ex-patient)
* recipient = Reference(ex-practitioner)
* status = #completed
* category = #medRecCxReq
* priority = #asap
* topic.text = "Patient Request for Correction"
* payload[0].contentString = "Hi John,

# Are you continuing to work on my Correction Request?

Signed John Jacob Jingleheimer Schmidt"
* sent = "2020-12-14T19:28:17+10:00"


Instance: ex-CommunicationConclusion
InstanceOf: PatientCorrectionCommunication
Description: "Example of a clinician telling the patient that the correction has been accepted and applied

* all done"
Usage: #example
* about = Reference(ex-CommunicationInitial)
* subject = Reference(ex-patient)
* recipient = Reference(ex-patient)
* sender = Reference(ex-practitioner)
* status = #completed
* category = #medRecCxReq
* priority = #asap
* topic.text = "Patient Request for Correction"
* payload[0].contentString = "Your records have been corrected. Thank you"
* sent = "2020-12-20T19:28:17+10:00"
