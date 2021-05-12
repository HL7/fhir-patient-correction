This is the profile for the Patient Correction Task, which is used to track a patient correction.

### Usage

If Task alone is used, then the Task resource below is used to create the initial patient correction request, and
it is continually updated as back and forth conversation or status updates occur. If Task is used with Communication,
then the Task resource below is created as a result of the initial Communication,and this Task is used to track the
correction request status.

*input* is used by the patient to provide the request or follow-up information to the fulfiller.

*output* is used by the fulfiller to provide information back to the patient about the correction request.

*input* and *output* are continually appended to each time the Task is updated, as necessary and appropriate.