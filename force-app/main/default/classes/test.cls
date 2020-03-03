public with sharing class test {
    @InvocableMethod
    public static void test(Integer opportunityId) {
        Opportunity opportunity = [ SELECT Id FROM Opportunity WHERE id=:opportunityId];
        opportunity.Date = Date.newInstance(2030, 12, 30);
        if(opportunity.Name.equals('opp') && opportunity.account.name.equals('app') ) {
            opportunity.Name = 'opp - acc';
        }

        update opportunity;
    }
}
