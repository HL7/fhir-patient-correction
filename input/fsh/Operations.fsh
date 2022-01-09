Instance: correction-request
InstanceOf: OperationDefinition
Description: "The correction-request operation is used to communicate a request for correction or a logging of a disagreement of a denial from a requester to a fulfiller. It includes the ability to send the request along with attachments. The fulfiller can spawn a task to manage the correction process as part of the operation. For the operation, we expect the server to store the Communication resource, spawn a Task when appropriate, and update the Communication and return the Communication resource with reference to a Task id if a Task is spawned. The correction-request operation is also used whenever the requester provides updates to the fulfiller (additional information, conversation)."
Usage: #definition

* name = "PatientCorrectionRequestOperation"
* title = "Patient Correction Request Operation"
* status = #draft
* kind = #operation
* code = #correctionrequest
* system = false
* type = true
* instance = false
* resource[0] = #Communication

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
