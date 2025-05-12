### Background

> "So you get a copy of your medical records & dive in, reading line by line, trying to make sense of your new lung cancer diagnosis.
>
> 'Wait a second, this doesn’t sound right. This is a mistake. I don’t have a history of a heart condition & I don’t smoke cigarettes,' you mutter to yourself.
>
> You call your oncologist’s office to report the mistake you found & ask to have it updated. You’re told to write down the correction & fax it to the office. You do exactly as you are told.
>
> A month later at your next follow up appointment, you ask your doctor if your record was updated & the correction was made. He looks up at you with a deer-in-headlights-look that clearly signifies a NO.
>
> On your way out, you stop at the front desk, write the correction down again, & the staff assures you they’ll take care of it.
>
> Lather, rinse, repeat. Months later, it’s still not corrected. You also find out your cancer is progressing. The nurse asks if you are still smoking cigarettes. 
> Your treatment options are discussed but there are concerns of trying new medications because of your heart condition. Cardiotoxicity is a common side effect of many cancer treatments. 
> It may exclude you from a clinical trial.
>
> There are endless stories of errors & omissions that patients have found upon reviewing their medical records."
>
> -- Grace Cordovano, PhD, BCPA

As Grace Cordovano describes, today's request for patient correction process is a largely mail and phone based process that is fragmented, lengthy and burdensome for both the patient and the healthcare organization.  The purpose of this guide is to make the request for correction process easier and more automated for both the patient and the healthcare provider. Now that patients have the ability to download their data into FHIR applications, they are finding errors in their data. Currently, no FHIR implementation guide exists to standardize the method of electronically requesting a correction to errors and discrepancies to their information. This implementation guide provides a FHIR based standard
way for the communication of a patient's request for corrections.  It includes the ability to request a correction and monitor its progress through completion or rejection as well as the ability to log a disagreement. 
 
This Implementation Guide (IG) is designed to work in the Universal Realm.  Both GDPR and HIPAA processes were reviewed in depth.   HIPAA and GDPR regulations are very similar concerning a patient's rights to have their data corrected. There are minor differences in the period of time for covered entities to respond to the patient's initial request for corrections and the preference in GDPR for a means for patient requests to be made electronically. Since HIPAA provides detailed implementation guidance, it was followed in the creation of this Implementation Guide since it includes the patient rights outlined in both regulations. Refer to the [References](#references) section for more information.

This IG allows for several scenarios from a simple correction (such as changing the patient's smoking status) to more complex scenarios that may be accepted or rejected by the data holder.  In addition, the IG handles flows from simple acknowledgement of submission to completion of review and acceptance/rejection.  Use cases are found on the [Actors and Use Cases](AUC.html) page.

### Scope

Patients have increasing access to their medical records via technology such as patient portals and personal health records, and thus are more able to find errors. Regulations such as HIPAA and GDPR provide patients with the right to request corrections/amendments to their health records, however, the current processes are manual, often paper-based, with little communication or status provided, and opaque. A majority of patients do not know how to make a request for a correction to their chart. Since FHIR is now being used to share information between provider organizations and patients millions of times a day, this presents an opportunity for creating a standard for patients to request corrections or amendments to their health record via FHIR.

The scope of this IG is limited to the communication standards between a patient/caregiver and the fulfiller of the request (most likely a provider organization) to:
* communicate the correction request,
* provide a mechanism for tracking the status of the request fulfillment,
* support round-trip communication between patient and provider as needed in the evaluation and fulfillment of the request,
* communicate about the outcome of the request fulfillment, and
* support communication of a disagreement statement from the patient if the request is denied.

For this version of the guide, Task status changes and new Communication resources from the Fulfiller will be detected by the Requester via polling. In future versions of the guide, we hope to add support for subscription based notifications.

It is assumed that the fulfiller is able to process the correction request through to resolution. In most cases, this would be the organization which has the authority to directly correct the error, such as a provider that is the custodian of the record with the error. However, if an intermediary takes responsibility for shepherding the handling of a patient request with the custodial organization, that intermediatory could serve as a fulfiller (for example, a patient advocacy service). It is assumed that in most cases, an HIE or a payer would not serve as fulfillers of requests to correct information unless the error originated from their records, or they wanted to take on the responsibility of mediating.

This IG does not attempt to describe how a fulfiller organization processes a requested correction, nor does it try to resolve conflicting opinions between a patient and their provider.

This guide does not provide a way to automatically correct information on the fulfiller system - it is only about the communication and tracking of the request. Manual intervention to evaluate and fulfill the request is expected.

Finally, this guide is not trying to standardize the requester application or the fulfiller application's user interface that would be used by a patient or caregiver to send their request or the user interface of the fulfilling system. It is limited to standardization of the interoperability between the systems.

### References

1. A patient and family reporting system for perceived ambulatory note mistakes: experience at 3 U.S. healthcare centers: Fabienne C Bourgeois, Alan Fossa, Macda Gerard, Marion E Davis, Yhenneko J Taylor, Crystal D Connor, Tracela Vaden, Andrew McWilliams, Melanie D Spencer, Patricia Folcarelli, Sigall K Bell: Journal of the American Medical Informatics Association, Volume 26, Issue 12, December 2019, Pages 1566–1573, [https://doi.org/10.1093/jamia/ocz142](https://doi.org/10.1093/jamia/ocz142)
2. Medical Record Errors and Common, Hard to Fix, Report Finds: Becker Hospital Review: [https://www.beckershospitalreview.com/ehrs/](https://www.beckershospitalreview.com/ehrs/medical-record-errors-are-common-hard-to-fix-report-finds.html)
3. Examples of Request for Correction Forms and Directions:
* [https://www.memorialhermann.org/-/media/memorial-hermann/org/files/patients-and-visitors/patient-services/request-amendment-of-protected-health-information.ashx?la=en](https://www.memorialhermann.org/-/media/memorial-hermann/org/files/patients-and-visitors/patient-services/request-amendment-of-protected-health-information.ashx?la=en)
* [https://www.premierhealth.com/docs/default-source/default-document-library/amendment-request-form.pdf?sfvrsn=728d9b8b_2](https://www.premierhealth.com/docs/default-source/default-document-library/amendment-request-form.pdf?sfvrsn=728d9b8b_2)
* [https://www.partners.org/Assets/Documents/For-Patients/Medical-Records/Medical-Record-Amendement-Instructions.pdf](https://www.partners.org/Assets/Documents/For-Patients/Medical-Records/Medical-Record-Amendement-Instructions.pdf)
* [https://www.hipaa.cumc.columbia.edu/file/1378/download?token=gKud-5h1](https://www.hipaa.cumc.columbia.edu/file/1378/download?token=gKud-5h1)
* [https://www.datarequests.org/downloads/sample-letter-gdpr-rectification-request-datarequests.org.pdf](https://www.datarequests.org/downloads/sample-letter-gdpr-rectification-request-datarequests.org.pdf)
* [https://ico.org.uk/your-data-matters/your-right-to-get-your-data-corrected/](https://ico.org.uk/your-data-matters/your-right-to-get-your-data-corrected/)
4. HIPAA Amendment of Protected Health Information: [https://www.govinfo.gov/content/pkg/CFR-2003-title45-vol1/xml/CFR-2003-title45-vol1-sec164-526.xml](https://www.govinfo.gov/content/pkg/CFR-2003-title45-vol1/xml/CFR-2003-title45-vol1-sec164-526.xml)
5. General Data Protection Regulation: [https://eur-lex.europa.eu/legal-content/EN/TXT/HTML/?uri=CELEX:32016R0679&from=EN#d1e2589-1-1](https://eur-lex.europa.eu/legal-content/EN/TXT/HTML/?uri=CELEX:32016R0679&from=EN#d1e2589-1-1)

### Known Issues
|--------------------------------------------|
    |Some implementers believe that a more streamlined approach without communication should be considered for the next release.|
{:.grid .bg-info}

### Legal Statements
 While this implementation guide and the underlying FHIR are licensed as public domain under the FHIR license. The license page also describes rules for the use of the FHIR name and logo.

{% include ip-statements.xhtml %}