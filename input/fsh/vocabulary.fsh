CodeSystem:  PatientCorrectionCommunicationTypes
Title: "Patient Correction Communication Types"
Description: "CodeSystem of Communication categories for use in Patient Correction Request"
* ^caseSensitive = false
* ^experimental = false
* #medRecCxReq "Correction request by the Patient or RelatedPerson"
* #medRecCxDenialDisagree "Disagreement with a denial correction request by the Patient or RelatedPerson"


ValueSet: PatientCorrectionCommunicationTypesVS
Title: "Patient Correction Communication Types Value Set"
Description: "ValueSet of Communication types for patient request for corrections"
* ^experimental = false
* PatientCorrectionCommunicationTypes#medRecCxReq
* PatientCorrectionCommunicationTypes#medRecCxDenialDisagree


CodeSystem:  PatientCorrectionTaskTypes
Title: "Patient Correction Task Types"
Description:  "CodeSystem of task types for patient request for corrections"
* ^caseSensitive = false
* ^experimental = false
* #medRecCxReq "Correction request by the Patient or RelatedPerson"
* #medRecCxDenialDisagree "Disagreement by the Patient or RelatedPerson regarding a denied requested correction."


ValueSet: PatientCorrectionTaskTypesVS
Title: "Patient Correction Task Types Values Set"
Description: "ValueSet of task types for patient requestion for corrections"
* ^experimental = false

* PatientCorrectionTaskTypes#medRecCxReq
* PatientCorrectionTaskTypes#medRecCxDenialDisagree


CodeSystem:  PatientCorrectionOutputTypes
Title: "Patient Correction Output Types"
Description:  "CodeSystem of output types for patient request for corrections"
* ^caseSensitive = false
* ^experimental = false
* #medRecCxReqResolution "Correction request resolution"


ValueSet: PatientCorrectionOutputTypesVS
Title: "Patient Correction Output Types Value Set" 
Description: "ValueSet of output types for patient corrections"
* ^experimental = false

* PatientCorrectionOutputTypes#medRecCxReqResolution


CodeSystem:  PatientCorrectionBusinessStatus
Title: "Patient Correction Business Statuses"
Description:  "CodeSystem of business statuses for patient request for corrections"
* ^caseSensitive = false
* ^experimental = false
* #queued "A request to correct a record or log a disagreement has been received by the fulfiller (e.g. provider) but has not yet been reviewed."
* #in-review "Review is in progress."
* #waiting-for-information "The fulfiller (e.g. provider) is waiting for additional information."
* #requester-cancelled "The request has been cancelled by the requester."
* #accepted "Decision was made to accept the correction request."
* #partial-accept "Part of the correction request was accepted, and part was denied."
* #amendment-completed "The record has been amended (corrected)."
* #denied "The request has been denied."
* #disagreement-logged "The fulfiller (e.g. provider) has logged the requester’s (eg patient’s) disagreement with the correction request denial."
* #completed "The fulfiller (e.g. provider) has logged the requester’s (e.g. patient’s) disagreement with the correction request denial, and provided a formal rebuttal."


ValueSet: PatientCorrectionBusinessStatusVS
Title: "Patient Correction Business Status"
Description: "ValueSet of business statuses for patient request for corrections"
* ^experimental = false

* PatientCorrectionBusinessStatus#queued
* PatientCorrectionBusinessStatus#in-review
* PatientCorrectionBusinessStatus#waiting-for-information
* PatientCorrectionBusinessStatus#requester-cancelled
* PatientCorrectionBusinessStatus#accepted
* PatientCorrectionBusinessStatus#partial-accept
* PatientCorrectionBusinessStatus#amendment-completed
* PatientCorrectionBusinessStatus#denied
* PatientCorrectionBusinessStatus#disagreement-logged
* PatientCorrectionBusinessStatus#completed
