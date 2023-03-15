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
 
This Implementation Guide is designed to work in the Universal Realm.  Both GDPR and HIPAA processes were reviewed in depth.   HIPAA and GDPR regulations are very similar concerning a patient's rights to have their data corrected. There are minor differences in the period of time for covered entities to respond to the patient's initial request for corrections and the preference in GDPR for a means for patient requests to be made electronically. Since HIPAA provides detailed implementation guidance, it was followed in the creation of this Implementation Guide since it includes the patient rights outlined in both regulations. Refer to the [References](#references) section for more information.

This IG allows for several scenarios from a simple correction (such as changing the patient's smoking status) to more complex scenarios that may be accepted or rejected by the data holder.  In addition, the IG handles flows from simple acknowledgement of submission to completion of review and acceptance/rejection.  Use cases are found on the [Actors and Use Case](actors-and-use-cases.html) page.

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

### Legal Statements
 While this implementation guide and the underlying FHIR are licensed as public domain under the FHIR license. The license page also describes rules for the use of the FHIR name and logo.

{% include ip-statements.xhtml %}