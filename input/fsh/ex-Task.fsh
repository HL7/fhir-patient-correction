Instance: ex-TaskBasicRequest
InstanceOf: Task
Description: "Basic Patient Request for Correction, using Task without Communication"
Usage: #example
 // Reference to Patient Robert ChartError
* for = Reference(ex-patient)
// Reference to Provider Organization with the Chart in Question
* owner = Reference(ex-practitioner)
// Reference to Patient Robert ChartError
* requester = Reference(ex-patient)
* status = #requested
* intent = #order
* code.text = "Patient Request for Correction"
* description = "My chart states that I smoke two packs a day.  I do not smoke"
* authoredOn = "2020-12-12T19:28:17+10:00"

Instance: ex-TaskBasicRequestAccepted
InstanceOf: Task
Description: "Basic Patient Request for Correction - Request is Accepted, using Task without Communication"
Usage: #example
 
// Reference to Patient Robert ChartError
* for = Reference(ex-patient)
// Reference to Provider Organization with the Chart in Question
* owner = Reference(ex-practitioner)
// Reference to Patient Robert ChartError
* requester = Reference(ex-patient)
* status = #accepted
* intent = #order
* code.text = "Patient Request for Correction"
* description = "My chart states that I smoke two packs a day.  I do not smoke"
* authoredOn = "2020-12-12T19:28:17+10:00"
* lastModified = "2020-12-17T19:28:17+10:00"
* statusReason.text = "Chart is in Error"
* output.type.text = "Communication to Patient"
* output.valueMarkdown = "Your request for amendment has been accepted and your chart will be corrected.  If you would like us to notify other clinicians of the amendment, please provide name and contact information"

Instance: ex-TaskBasicRequestUpdated
InstanceOf: Task
Description: "Basic Patient Request for Correction - Request is Updated, using Task without Communication"
Usage: #example
 
// Reference to Patient Robert ChartError
* for = Reference(ex-patient)
// Reference to Provider Organization with the Chart in Question
* owner = Reference(ex-practitioner)
// Reference to Patient Robert ChartError
* requester = Reference(ex-patient)
* status = #accepted
* intent = #order
* code.text = "Patient Request for Correction"
* description = "My chart states that I smoke two packs a day.  I do not smoke"
* authoredOn = "2020-12-12T19:28:17+10:00"
* lastModified = "2020-12-18T19:28:17+10:00"
* input[0].type.text = "Who to Notify"
// References  CommunicationRequest Resource requesting notification to primary care doctor
* input[0].valueReference = Reference(ex-practitioner2)

Instance: ex-TaskBasicRequestDenied
InstanceOf: Task
Description: "Basic Patient Request for Correction - Request is Denied, using Task without Communication"
Usage: #example
 
// Reference to Patient Robert ChartError
* for = Reference(ex-patient)
// Reference to Provider Organization with the Chart in Question
* owner = Reference(ex-practitioner)
// Reference to Patient Robert ChartError
* requester = Reference(ex-patient)
* status = #rejected
* statusReason.text = "Chart is correct"
* note.text = "Referred to Dr. Alan Mani for review"
* intent = #order
* code.text = "Patient Request for Correction"
* description = "My chart states that I smoke two packs a day.  I do not smoke"
* authoredOn = "2020-12-12T19:28:17+10:00"
* lastModified = "2020-12-18T19:28:17+10:00"
* output[0].type.text = "Denial Explanation"
* output[0].type.text = "Explanation of Denial"
* output[0].valueMarkdown = "While the patient has recently quit smoking, at the time the smoking status was recording, the patient was still a heavy smoker.  The chart correctly represents the patient's medical history."
* output[1].type.text = "Explanation of Right to Disagree"
* output[1].valueMarkdown = "You have a right to provide a written disagreement to this Denial Decision. If you choose to provide a disagreement, it will be attached to your medical record."

Instance: ex-TaskBasicRequestDisagree
InstanceOf: Task
Description: "Disagreement with Request for Correction Denial, using Task without Communication"
Usage: #example
 
// Reference to Patient Robert ChartError
* for = Reference(ex-patient)
// Reference to Patient Robert ChartError
* requester = Reference(ex-patient)
// Reference to Provider Organization with the Chart in Question
* owner = Reference(ex-practitioner)
// Reference to Basic Patient Request for Correction
* reasonReference = Reference(ex-TaskBasicRequest)
* intent = #order
* status = #requested
* authoredOn = "2020-12-20T19:28:17+10:00"
* code.text = "Patient Disagreement with Correction Denial"
* description = "My patient portal does not show that I used to smoke.  It displays that I am a current smoker.  However, I quite smoking over 2 years ago on Dec 10th, 2018."
