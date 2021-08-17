This is the profile for the Patient Correction Communication, which is used for back and forth communications about a patient correction.

### Usage

The same Communication profile, described below, is used for all back and forth communications between the patient and the fulfiller. There will also be a Task created by the fulfiller's server as a result of the initial Communication.

The *sender* and *recipient* should be set appropriately for each Communication, depending on whether the Communication is from patient to fulfiller, or fulfiller to patient. For the initial Communication, *inResponseTo* will be empty, but subsequent Communications should always point to the Communication that they are responding to. The *about* field should always point to the initial Communication from the patient. In th4e initial Communication, **about** should be empty.

The text or other content of the communication should be put in *payload*. *note* should only be used for notes from those that are working on the correction, about the process of making that correction. It should not be used for the correction request itself, or subsequent messages between patient and fulfiller.
