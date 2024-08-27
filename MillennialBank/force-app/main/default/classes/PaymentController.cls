public with sharing class PaymentController {
    @AuraEnabled(cacheable=true)
    public static Decimal getMonthlyInterestRatePayment(Id accountId) {
        Account acc = [SELECT Monthly_Interest_Rate_Payments__c FROM Account WHERE Id = :accountId LIMIT 1];
        return acc.Monthly_Interest_Rate_Payments__c;
    }

    @AuraEnabled
    public static void makePayment(Id accountId) {
        Account acc = [SELECT Id, Remaining_Loan_Amount__c, Monthly_Interest_Rate_Payments__c FROM Account WHERE Id = :accountId LIMIT 1];
        
        if (acc.Monthly_Interest_Rate_Payments__c != null && acc.Remaining_Loan_Amount__c != null) {
            acc.Remaining_Loan_Amount__c =  acc.Remaining_Loan_Amount__c - ((acc.Monthly_Interest_Rate_Payments__c)/2);
            System.debug(acc.Remaining_Loan_Amount__c);
            System.debug(acc.Monthly_Interest_Rate_Payments__c);
            System.debug(acc.Remaining_Loan_Amount__c);
            update acc;
        } else {
            throw new AuraHandledException('Missing required payment information.');
        }
    }
}