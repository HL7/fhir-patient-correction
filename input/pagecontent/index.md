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


As Grace Cordovano describes, today's request for patient correction process is a largely mail and phone based process that is fragmented, lengthy and burdensome for both the patient and the healthcare organization.  The purpose of this guide is to make the request for correction process easier and more automated for both the patient and the healthcare
provider. Now that patients have the ability to download their data into FHIR applications, they are finding errors in their data. Currently, no FHIR implementation guide exists to standardize the method of electronically requesting a
correction to errors and discrepancies to their information. This implementation guide provides a FHIR based standard
way for the communication of a patient's request for corrections.  It includes the ability to request a correction and monitor its progress through completion or rejection as well as the ability to log a disagreement. 
 
This Implementation Guide is designed to work in the Universal Realm.  Both GDPR and HIPAA processes were reviewed in depth.   HIPAA and GDPR regulations are very similar concerning a patient's rights to have their data corrected. There are minor differences in the period of time for covered entities to respond to the patient's initial request for corrections and the preference in GDPR for a means for patient requests to be made electronically. Since HIPAA provides detailed implementation guidance, it was followed in the creation of this Implementation Guide since it includes the patient rights outlined in both regulations. Refer to the [References](#references) section for more information.

### Example Scenarios

#### Patient requests change to smoking status and change is accepted.

1. Bob uses his patient-facing app to import his medical records from Southside Clinic. He notices that he is listed as an everyday smoker. However, Bob has not smoked in 20 years. Bob uses his patient app to send a message to Southside Clinic requesting that his smoking status be corrected to show he has not smoked in 20 years. 
2. Southside Clinic receives Bob request, corrects his chart, and notifies Bob that his records have been corrected.
3. A few days later, Bob logs into his patient app and receives the notification that his record has been corrected. 
4. Bob then requests that Southside Clinic notify his insurance company (MyLifeInsurance.com) that his record has now been corrected. 
5. Southside Clinic notifies Bob that his insurance company has been contacted and given the corrected information. 

#### Patient reviews their Visit Note and notes that the doctor described him as a smoker.  However, he has never smoked.  He requests the change but the change is rejected.

1. Bob uses his patient-facing app to import his medical records from Southside Clinic. He notices that he is listed as an everyday smoker. However, Bob has not smoked in 20 years. Bob uses his patient app to send a message to Southside Clinic requesting that his smoking status be corrected to show he has not smoked in 20 years. 
2. Southside Clinic receives Bob request and denies his request to modify his chart based on a conversation with Bob last year where he stated that he smoked 1 pack per day. 
3. A few days later, Bob logs into his patient app and notices the denial from Southside Clinic. Bob sends a statement disagreeing with the denial, indicating that he did not have an appointment the previous year and wants Southside Clinic to correct his chart. 
4. Southside Clinic sends a rebuttal that they did see Bob and will not modify his chart. 

#### Request to correct multiple items. All accepted.

1. Bob uses his patient-facing app to import his medical records from Southside Clinic. He notices that he is listed as an everyday smoker. He also notices his weight is listed as 275 lb and he has a diagnosis of diabetes. However, Bob has not smoked in 20 years, his weight is 215 lb, and he has never been told he has diabetes. Bob uses his patient app to send a message to Southside Clinic requesting that his smoking status, weight, and diabetes diagnosis be corrected.
2. Southside Clinic receives Bob request, corrects his chart, and notifies Bob that his records have been corrected.
3. A few days later, Bob logs into his patient app and receives the notification that his record has been corrected.
 
#### Request to correct multiple items. Some accepted, some denied.

1. Bob uses his patient-facing app to import his medical records from Southside Clinic. He notices that he is listed as an everyday smoker. He also notices his weight is listed as 275 lb and he has a diagnosis of diabetes. However, Bob has not smoked in 20 years, his weight is 215 lb, and he has never been told he has diabetes. Bob uses his patient app to send a message to Southside Clinic requesting that his smoking status, weight, and diabetes diagnosis be corrected.
2. Southside Clinic receives Bob request. They accept his request to modify his smoking status and diabetes diagnosis. They tell him he must come into the office to be weighed before they can change his chart because his chart indicates he weighed 275 lb at his appointment last year.  
3. A few days later, Bob logs into his patient app and notices the acceptance of the smoking status and diagnosis change plus the denial of weight change from Southside Clinic. Bob sends a statement disagreeing with the denial indicating that he did not have an appointment the previous year and wants Southside Clinic to correct his chart.
4. Southside Clinic sends a rebuttal that they did see Bob and will not modify his chart.

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
