public with sharing class test {
    @InvocableMethod
    public static void test(List<Opportunity> opportunities) {
        for(Opportunity opportunity: opportunities){
            opportunity.closedate = Date.newInstance(2030, 12, 30);
            if(opportunity.Name.equals('opp') && opportunity.account.name.equals('app') ) {
                opportunity.Name = 'opp - acc';
            }
            update opportunity;
        }
    }
}
