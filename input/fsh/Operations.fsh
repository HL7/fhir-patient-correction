Instance: correction-request
InstanceOf: OperationDefinition
Description: "The correctionrequest operation is used to communicate a request for correction from a requester to a fulfiller.  It includes the ability to send the request along with attachments.  The fulfiller can spawn a task to manage the correction process as part of the operation.  For the operation, we expect the server to store the Communication resource, spawn a task when appropriate, and update the Communication and return the Communication resource with reference to a Task id if a Task is spawned."
Usage: #definition

* name = "PatientCorrectionRequestOperation"
* title = "Patient Correction Request Operation"
* status = #draft
* kind = #operation
* code = #correctionrequest
* system = false
* type = false
* instance = true
* resource[0] = #PatientCorrectionCommunication

// Parameter: CorrectionRequest
* parameter[+].name = #CorrectionRequest
* parameter[=].use = #in
* parameter[=].min = 1
* parameter[=].max = "1"
* parameter[=].documentation = "Collection of resources representing the correction request, disagreement, or back and forth conversation.  Bundle should follow PatientCorrectionBundle profile"
* parameter[=].type = #Bundle

// Output
* parameter[+].name = #Response
* parameter[=].use = #out
* parameter[=].min = 1
* parameter[=].max = "1"
* parameter[=].documentation = "Communication from requester associated with the request, conversation, or disagreement.  Augmented by fulfiller with newly spawned Task when appropriate."
* parameter[=].type = #Communication