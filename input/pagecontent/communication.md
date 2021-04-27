### Communication-only alternative

With the Communication-only alternative, only Communication is used, both for the initial correction request, and for all of the subsequent back and forth conversation regarding the request,

### RESTful interactions

This model is using Communication resource with the server being inside the Fulfilling organization.

<div>
{%include comm-rest-request.svg%}
</div>

### old RESTful interactions

{% include img.html img="restful-interactions.png" %}

### PUSH interactions

This model is using Communication resource with the communication happening asynchronous at the time of initiating of the communication. The PUSH is a Communication resource, the means of transporting the PUSH is not defined. 

The means might be 
- a RESTful post to a Patient identified FHIR Server
- a secure e-Mail (e.g. Direct Project) carrying the Communication resource targeting the Patient's e-mail (Direct address)
- an unsecured e-Mail carrying the Communication resource targeting the Patient's e-mail (HHS has made it clear this is allowed)
- some other method 

<div>
{%include comm-push-request.svg%}
</div>

