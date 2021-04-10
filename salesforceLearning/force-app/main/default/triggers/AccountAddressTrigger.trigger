trigger AccountAddressTrigger on Account (before insert, before update) {
  List<Account> acclst = new List<Account>();
  for (account a : trigger.new) {
    if (a.Match_Billing_Address__c==true&&a.BillingPostalCode!=null) {
      a.ShippingPostalCode=a.BillingPostalCode;
    }
  }
}