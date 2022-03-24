### Supported profiles

#### PatientCorrectionBundle

Conformance expectation: **SHALL**

Reference policy: `resolves`

Profile interaction summary:

* **SHALL** support `$correction-request`
* **SHALL** support `read`
* **MAY** support `vread`, `history-instance`, `search-type`

Fetch and search criteria:

* A server **SHOULD** be capable of returning a Bundle resource using: `GET [base]/Bundle/[id]`

#### PatientCorrectionCommunication

Conformance expectation: **SHALL**

Reference policy: `resolves`

Profile interaction summary:

* **SHALL** support `search-type`, `read`
* **SHOULD** support `vread`, `history-instance`

Fetch and search criteria:

* A server **SHALL** be capable of returning a Communication resource using: `GET [base]/Communication/[id]`
* A server **SHALL** support the following searches for Communication resources:
  * `About`
  * `Patient`
  * `Category`
  * `Identifier`
  * `Sent`
  * `Topic`
* A server **SHOULD** support the following searches for Communication resources:
  * `Sender`
  * `Recipient`
  * `Encounter`

#### PatientCorrectionTask

Conformance expectation: **SHALL**

Reference policy: `resolves`

Profile interaction summary:

* **SHALL** support `search-type`, `read`
* **SHOULD** support `vread`, `history-instance`

Fetch and search criteria:

* A Server **SHALL** be capable of returning a Task resource using: `GET [base]/Task/[id]`
* A server **SHALL** support the following searches for Task resources:
  * `Patient`
  * `Identifier`
  * `Code`
  * `Status`
* A server **SHOULD** support the following searches for Task resources:
  * `ReasonReference`
  * `Authored-on`
  * `Modified`
  * `Requester`
  * `Encounter`
  * `Owner`
  * `BusinessStatus`
