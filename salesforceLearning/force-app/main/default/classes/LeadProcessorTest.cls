@isTest
public with sharing class LeadProcessorTest {
   static testMethod void testMethod1(){
       List<Lead> leadList = new List<Lead>();
       for(Integer i=0;i<200;i++) {
           Lead lead = new Lead();
           lead.FirstName = 'FirstName';
           lead.LastName = 'LastName'+i;
           lead.Company = 'demo' + i;
           leadList.add(lead);
       }
       insert leadList;
       Test.startTest();
       LeadProcessor obj = new LeadProcessor();
       DataBase.executeBatch(obj);

       Test.stopTest();
   }
}
