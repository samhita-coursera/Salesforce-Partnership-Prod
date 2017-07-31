///services/apexrest/LeadREST
@RestResource(urlMapping='/LeadREST')
global class LeadREST  {

    //@HttpGet
    //global static Lead show() {

    //    Lead obj;

    //    return obj;

    //}

  @HttpPost
  global static Lead create(Lead newLead) {
    system.debug('NEW LEAD !!!!!'+newLead);
    String recordTypeName = Label.Lead_REST_Record_Type;
    Id recordTypeId = [select Id, Name, sobjectType from RecordType where sobjecttype='Lead' and Name = :recordTypeName].id;
    Lead l = new Lead();
    Schema.DescribeSObjectResult dResult = Lead.sObjectType.getDescribe();
    Map <String, Schema.SObjectField> fieldMap = dResult.fields.getMap();
    l.recordTypeId = recordTypeId;
    for(Schema.SObjectField sfield : fieldMap.Values()){
      schema.describefieldresult dfield = sfield.getDescribe();
      try{
        system.debug('!!!!!!!!!!!!!'+dfield.getName()+'--'+newLead.get(dfield.getName()));
        if(newLead.get(dfield.getName())!=null){
          l.put(dfield.getName(),newLead.get(dfield.getName()));
        }
      }
      catch(exception e){
          system.debug('EXCEPTION-----'+e.getmessage());
      }
    }
    system.debug('LEAD------'+l);
    insert l;
    return l;

  }

    //@HttpPut
    //global static Lead updateObject() {

    //    Lead obj;

    //    return obj;

    //}

    //@HttpDelete
    //global static void remove() {

    //}
//Content-Type : application/json
//{
//"newLead" : { "lastName": "GARRIKTEST2", "company":"GARRIK TEST2"}
//}


}