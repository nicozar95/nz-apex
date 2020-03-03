public with sharing class test {
    @InvocableMethod
    public static void test(Opportunity opportunity, Account account) {
        opportunity.Date = Date.newInstance(2030, 12, 30);
        if(opportunity.Name.equals('opp') && account.equals('app') ) {
            opportunity.Name = 'opp - acc';
        }

        update opportunity;
    }
}
