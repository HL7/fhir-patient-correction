This is the profile for the Patient Correction Task, which is used to track a patient correction.

### Usage

The Task resource below is created as a result of the initial Communication, and this Task is used to track the
correction request status. The **reasonReference** field should always point to the original Patient Correction Request Communication associated with the correction request. If Task.code indicates this is a Disagreement Task, this field should still reference the original Request for Correction Communication, not the disagreement Communication.
