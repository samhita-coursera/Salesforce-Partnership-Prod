@isTest
private class LeadREST_Test{

  public static testmethod void testController(){
    Lead l = new Lead(lastName='test', company='testCo');
    Lead nl = LeadREST.create(l);
  }
}