Profile:        PatientCorrectionBundle
Parent:         Bundle
Id:             patient-correction-bundle
Title:          "Patient Correction Bundle"
Description:    """The Patient Correction Bundle contains a Patient Correction Communication and other resources related to a patient request for correction.
Note that the operation has a bundle as its only parameter, as opposed to having multiple parameters for the input and output. The main reasons for this approach are:

    The bundle enables the expression of the relationships among the various resources that carry the necessary information.
    The entries in the bundle are full resources, which:
        allows the use of the profiling mechanisms to describe the different requirements for the different steps of the process
        sets the stage for future different RESTful approaches as an incremental change to the current specification
"""

* type = #collection (exactly)
* entry 1..* MS
* entry ^slicing.discriminator.type = #type
* entry ^slicing.discriminator.path = "resource"
* entry ^slicing.rules = #open
* entry ^slicing.description = "Slice different resources included in the bundle"
* entry contains PatientCommResource 1..1 MS
* entry[PatientCommResource].resource only PatientCorrectionCommunication


Instance: BundleExample
InstanceOf: PatientCorrectionBundle
Description: "Example of an initial request for correction Bundle"
Usage: #example

* type = #collection

//* entry[PatientCommResource].link = 
* entry[0].fullUrl = "http://hl7.org/fhir/uv/patient-corrections/Task/initialrequestforcorrection"
* entry[0].resource = initialrequestforcorrection

//* entry[AdditionalResource].link = 
// * entry[1].fullUrl = "ex-documentreference"
// * entry[1].resource = ex-documentreference
