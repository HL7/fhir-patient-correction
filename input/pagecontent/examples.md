### Example Request for Correction Workflow with Links to Example Resources

#### EVENT 1:

A patient makes a request to fix his record – the record says he smokes but he does not smoke. He uses his patient-facing app to import his medical records from Southside Clinic. 
Requester posts a Communication resource to Fulfiller, which then spawns a Task resource to represent the correction process and returns to Task id in Communication.about.

#### EVENT 2:

The medical records staff person assigned to the request needs additional information – the Fulfiller posts a Communication resource on Fulfiller indicating the request for more information. The Task resource on the Fulfiller is updated to show the status of the request for correction process. The Requester gets notification of the request for additional information and the status of the overall process by polling or notifications from the Fulfiller.

#### EVENT 3:

The patient provides the additional information needed. The Requestor posts a Communication resource to the Fulfiller with the additional information provided by the patient. The Task resource on the Fulfiller is updated to show the status of the request for correction process. The Requester gets notification of the request for additional information and the status of the overall process by polling or notifications from the Fulfiller.

#### EVENT 4:

The medical records staff person has all the information needed and refers the request for clinical review. The Task resource on the Fulfiller is updated to show the status of the request for correction process. The Requester gets notification of the status by polling or notifications from the Fulfiller.

#### EVENT 5:

The medical records staff person learns that the amendment has been accepted. The change, however, has not yet been done. The Task resource on the Fulfiller is updated to show the status of the request for correction process. The Requester gets notification of the status by polling or notifications from the Fulfiller.

#### EVENT 6 Variant 1:

The amendment has been completed. The Task resource on the Fulfiller is updated to show the completion of the request for correction process and provided an amendment report in Task.output. The Requester gets notification of the status and the resulting amendment report by polling or notifications from the Fulfiller.

#### EVENT 6 Variant 2:

The amendment has been completed. The Task resource on the Fulfiller is updated to show the completion of the request for correction process. A Communication resource is posted on the Fulfiller that provides the amendment report. The Requester gets notification of the status and the resulting amendment report by polling or notifications from the Fulfiller.
