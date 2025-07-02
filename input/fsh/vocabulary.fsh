CodeSystem:  PatientCorrectionCommunicationTypes
Title: "Patient Correction Communication Types"
Description: "CodeSystem of Communication categories for use in Patient Correction Request"
* ^caseSensitive = false
* ^experimental = false
* ^status = #active
* #medRecCxReq "Correction Request" "Correction request by the Patient or RelatedPerson"
* #medRecCxDenialDisagree "Disagreement" "Disagreement by the Patient or RelatedPerson regarding the denied correction request"


ValueSet: PatientCorrectionCommunicationTypesVS
Title: "Patient Correction Communication Types Value Set"
Description: "ValueSet of Communication types for patient request for corrections"
* ^experimental = false
* include codes from system  PatientCorrectionCommunicationTypes

CodeSystem:  PatientCorrectionTaskTypes
Title: "Patient Correction Task Types"
Description:  "CodeSystem of task types for patient request for corrections"
* ^caseSensitive = false
* ^experimental = false
* ^status = #active
* #medRecCxReq "Correction Request" "Correction request by the Patient or RelatedPerson"
* #medRecCxDenialDisagree "Disagreement" "Disagreement by the Patient or RelatedPerson regarding the denied requested correction."


ValueSet: PatientCorrectionTaskTypesVS
Title: "Patient Correction Task Types Values Set"
Description: "ValueSet of task types for patient requests for corrections"
* ^experimental = false
* include codes from system  PatientCorrectionTaskTypes


CodeSystem:  PatientCorrectionOutputTypes
Title: "Patient Correction Output Types"
Description:  "CodeSystem of output types for patient request for corrections"
* ^caseSensitive = false
* ^experimental = false
* ^status = #active
* #medRecCxReqResolution "Resolution" "Correction request resolution"


ValueSet: PatientCorrectionOutputTypesVS
Title: "Patient Correction Output Types Value Set" 
Description: "ValueSet of output types for patient corrections"
* ^experimental = false

* include codes from system  PatientCorrectionOutputTypes


CodeSystem:  PatientCorrectionBusinessStatus
Title: "Patient Correction Business Statuses"
Description:  "CodeSystem of business statuses for patient request for corrections"
* ^caseSensitive = false
* ^experimental = false
* ^status = #active
* #queued "Queued" "A request to correct a record or log a disagreement has been received by the fulfiller (e.g. provider) but has not yet been reviewed."
* #in-review "In-Review" "Review is in progress."
* #waiting-for-information "Waiting For Info" "The fulfiller (e.g. provider) is waiting for additional information."
* #requester-cancelled "Cancelled" "The request has been cancelled by the requester."
* #accepted "Accepted" "Decision was made to accept the correction request."
* #partial-accept "Partail Acceptance" "Part of the correction request was accepted, and part was denied."
* #amendment-completed "Amended" "The record has been amended (corrected)."
* #denied "Denied" "The request has been denied."
* #disagreement-logged "Disagreement logged" "The fulfiller (e.g. provider) has logged the requester’s (eg patient’s) disagreement with the correction request denial."
* #completed "Completed" "The fulfiller (e.g. provider) has logged the requester’s (e.g. patient’s) disagreement with the correction request denial, and provided a formal rebuttal."


ValueSet: PatientCorrectionBusinessStatusVS
Title: "Patient Correction Business Status"
Description: "ValueSet of business statuses for patient request for corrections"
* ^experimental = false
* include codes from system  PatientCorrectionBusinessStatus

