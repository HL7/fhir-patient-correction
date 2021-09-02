This is the profile for the Patient Correction Communication, which is used for back and forth conversation about a patient’s request for correction to their medical record.  Each Patient Correction Communication resource instance represents a message in the bidirectional conversation needed to complete a patient’s request for correction to their medical record or for logging their disagreement to a correction denial.   This profile sets minimum expectations for the Communication resource to support this workflow.  It is expected to be used in conjunction with the Patient Correction Task profile.

### Mandatory and Must Support Data Elements

The following data-elements must always be present (Mandatory definition]) or must be supported if the data is present in the sending system (Must Support definition). They are presented below in a simple human-readable explanation. Profile specific guidance is provided as well. The Formal Profile Definition below provides the formal summary, definitions, and terminology requirements.  Refer to the Examples section of the guide for example resources provided in the context of an example workflow.

**Each implementation of CorrectionCommunication must provide:**

1.	id: An id
2.	status: fixed to “completed”
3.	category: indicates whether it’s a “Request for Correction” or “Log Disagreement” process
4.	subject: the person whose record is to be corrected
5.	sender: who is sending this communication
6.	recipient: who is receiving this communication
7.	sent: date/time communication was sent
8.	about: When the initial Communication request for correction resource is created by the Requester, Communication.about will be empty.  When the Fulfiller spawns a Task to support the request, the Fulfiller sets Communication.about to reference the spawned Task that represents the entire request for correction or log disagreement process.  On all other Communication resources, Communication.about references the Communication resource that contained the initial request.  When a Log Disagreement Task is created, the Fulfiller will update the Communication containing the Log Disagreement request such that Communication.about references the Log Disagreement Task as well as the original correction request Communication.
9.	topic: a heading/subject line for the message being sent.  Could be thought of as the subject line in an email thread.
10.	inResponseTo: points to the prior Communication resource in a conversation thread.
11.	Payload: contains the actual message being communicated, including any attachments or references.

### Profile-specific implementation guidance:

* If the Communication resource represents the start of a Request for Correction or Log Disagreement process, Communication.about will reference the Task representing the overall associated Fulfiller process.   On the start of a Log Disagreement, Communication.about will also reference the Communication resource of the initial correction request that is being disagreed with.
* Additional Communication resources are created to represent each component of the back and forth conversation between the Requester and Fulfiller.  The sender and recipient is set appropriately based on the direction of the conversation.  All Communication resources are stored and queryable on the Fulfiller.
* The Communication resources associated with a request for correction or log disagreement can be assembled into a conversation by first referring to the Communication of the original request, and then finding any Communication resources that reference it in the about field.  If there are any threads of conversation, these are connected via Communication.inResponseTo.  
