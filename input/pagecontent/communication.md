### Communication-only alternative

With the Communication-only alternative, only [Communication](StructureDefinition-patient-correction-communication.html) is used, both for the initial correction request, and for all of the subsequent back and forth conversation regarding the request.

### RESTful interactions

This model is using Communication resource with the server being inside the Fulfilling organization.

<div>
{%include comm-rest-request.svg%}
</div>

### Sequence 

The same Communication resource is used for each of the following message types.

#### Initial Correction Request

This Communication is the initial communication initiated by the Patient to the Organization or Practitioner that is responsible for the healthcare information that needs a correction. This communication includes the explanation of the request, and may include pointers to the exact records by identifier or reference. When an identifier or reference is not known to the Patient, but where the patient has a copy of the healthcare information in question, this may be included in the Communication. This communication may be sent by the Patient or a RelatedPerson on-behalf of the Patient.

* The [Profiled Communication Resource](StructureDefinition-patient-correction-communication.html)
* An [Example Simple text based Initial Change Request](Communication-ex-CommunicationInitial.html)
* An [Example of an Initial Change Request with reference to the smoking observation that is wrong](Communication-ex-CommunicationInitial.html)

##### Questions on modeling

* For simple text messaging between parties, should we use .note or .payloadString. 
  * The note element is defined as an Annotation allowing markdown.
  * The note element is described in Communication as being additional information, not the primary.
  * The payloadString is just a string. It is not markdown.
* The model here uses "Question" for the intermediate communications from the Organization or Practitioner to the Patient. It is possible that the communication may not be a question specifically. Example would be when there is simply an update of status to indicate that processing is still happening. These may not be questions, but seem close enough word for this pattern direction.
* The model here for followup messages from the patient to the organization are characterized here as "Response". Again these may be adhoc, and thus not formally a response. These may be questions by the patient. 

#### Questions to the Patient
This Communication is used when there are questions about the Correction Request for the Patient to respond to. This Communication will reference the Initial Correction Request, and will be directed to the Patient or their RelatedPerson.

* The [Profiled Communication Resource](StructureDefinition-patient-correction-communication.html)
* An [Example of a simple Question on a Change Request](Communication-ex-CommunicationQuestion1.html)
* An [Example of a fancy Question on a Change Request](Communication-ex-CommunicationQuestion2.html)

#### Response from the Patient to a Questions
This Communication is used by the Patient or a RelatedPerson on-behalf of the Patient to respond to Questions. This Communication will reference the Initial Correction Request, and will be directed to the Organization or Practitioner.

* The [Profiled Communication Resource](StructureDefinition-patient-correction-communication.html)
* An [Example of a simple Response to a question on a Change Request](Communication-ex-CommunicationResponse1.html)
* An [Example of a fancy Response to a question on a Change Request](Communication-ex-CommunicationResponse2.html)
* An [Example of an ad-hoc status update request by the patient on a Change Request](Communication-ex-CommunicationResponse3.html)

#### Conclusion of the Correction Request
This Communication is used when the Organization or Practitioner has concluded the Correction Request. This may be an Acceptance, Denial, or a partial Acceptance of the Correction Request. This Communication will reference the Initial Correction Request, and will be directed to the Patient or their RelatedPerson.

* The [Profiled Communication Resource](StructureDefinition-patient-correction-communication.html)
* An [Example of a Conclusion on a Change Request](Communication-ex-CommunicationConclusion.html)

#### Disagreement and Rebuttal
TODO: Add example of a disagreement, using the same Communication resource.
