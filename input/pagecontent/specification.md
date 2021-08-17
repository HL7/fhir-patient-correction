### Using Communication with Task

The recommended approach for creating and managing patient requests or corrections is to use a Communication resource, which results in the creation of a Task resource.

* [Using Communication with Task](communication-with-task.html)

### Bundle

TODO: define how a Bundle can be used to carry the above for task/communication, with also in the bundle the clinical information of interest. In this way any references would be carried.

### Must Support

Must Support on any profile data element SHALL be interpreted as follows:

* content creators  
  * SHALL be capable of populating all data elements marked Must Support.
  * when the Must Support element is known, it SHALL be populated.
* content consumers 
  * SHALL be capable of processing resource instances containing the Must Support data elements without generating an error or causing the application to fail. 
  * SHOULD be capable of displaying the data elements for human use or storing it for other purposes.
  * SHALL interpret missing data elements within resource instances as data not present.
  
NOTE: The above definition of Must Support is derived from HL7v2 concept “Required but may be empty - RE” described in HL7v2 V28_CH02B_Conformance.doc.
NOTE: Readers are advised to understand FHIR Terminology requirements, FHIR RESTful API based on the HTTP protocol, along with FHIR Data Types, FHIR Search and FHIR Resource formats before implementing US Core requirements.
