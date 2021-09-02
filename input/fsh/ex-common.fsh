// This file contains example resources used in the Correction Request examples. 
// These resources are not fundamental to explaining the Resource constraints. 
// These resources are contextual for the examples. For example an example patient with example observations etc.

Instance:   ex-patient
InstanceOf: Patient
Title:      "Dummy Patient example"
Description: "Dummy patient example for completeness sake. No actual use of this resource other than an example target"
// history - http://playgroundjungle.com/2018/02/origins-of-john-jacob-jingleheimer-schmidt.html
* meta.security = http://terminology.hl7.org/CodeSystem/v3-ActReason#HTEST
* name[+].use = #usual
* name[=].family = "Schmidt"
* name[=].given = "John"
* name[+].use = #old
* name[=].family = "Schnidt"
* name[=].given[+] = "John"
* name[=].given[+] = "Jacob"
* name[=].given[+] = "Jingle"
* name[=].given[+] = "Heimer"
* name[=].period.end = "1960"
* name[+].use = #official
* name[=].family = "Schmidt"
* name[=].given[+] = "John"
* name[=].given[+] = "Jacob"
* name[=].given[+] = "Jingleheimer"
* name[=].period.start = "1960-01-01"
* name[+].use = #nickname
* name[=].family = "Schmidt"
* name[=].given = "Jack"
* gender = #other
* birthDate = "1923-07-25"
* address.state = "WI"
* address.country = "USA"

Instance:   ex-organization
InstanceOf: Organization
Title:      "Dummy Organization example"
Description: "Dummy Organization example for completeness sake. No actual use of this resource other than an example target."
* meta.security = http://terminology.hl7.org/CodeSystem/v3-ActReason#HTEST
* name = "nowhere"

Instance: ex-practitioner
InstanceOf: Practitioner
Title: "Dummy Practitioner example"
Description: "Dummy Practitioner example for completeness sake. No actual use of this resource other than an example target."
* meta.security = http://terminology.hl7.org/CodeSystem/v3-ActReason#HTEST
* name[+].use = #official
* name[=].family = "Schmitt"
* name[=].given[+] = "John"

Instance: ex-practitioner2
InstanceOf: Practitioner
Title: "Dummy Practitioner (PCP) example"
Description: "Dummy Practitioner (PCP) example for completeness sake. No actual use of this resource other than an example target."
* meta.security = http://terminology.hl7.org/CodeSystem/v3-ActReason#HTEST
* name[+].use = #official
* name[=].family = "Schmitt"
* name[=].given[+] = "Alice"

Instance: ex-smoking
InstanceOf: Observation
Title: "Dummy Patient is smoking"
Description: "Dummy Patient is a smoker. No actual use of this resource other than as an exmaple target."
* meta.security = http://terminology.hl7.org/CodeSystem/v3-ActReason#HTEST
* status = #final
* category = http://terminology.hl7.org/CodeSystem/observation-category#social-history
* code = http://loinc.org#72166-2
* subject = Reference(ex-patient)
* issued = "1983-12-12T05:27:04Z"
* valueCodeableConcept = http://snomed.info/sct#428041000124106 "Occasional tobacco smoker"

//Instance:   ex-document
//InstanceOf: DocumentReference
//Title:      "Dummy Document example"
//Description: "Dummy Document example for completeness sake. No actual use of this resource other than an example target."
//* status = #final
//* content ???