public with sharing class test {
    @InvocableMethod
    public static void test(Opportunity opportunity) {
        opportunity.date = Date.newInstance(2030, 12, 30);
        if(opportunity.Name.equals('opp') && opportunity.account.name.equals('app') ) {
            opportunity.Name = 'opp - acc';
        }

        update opportunity;
    }
}
