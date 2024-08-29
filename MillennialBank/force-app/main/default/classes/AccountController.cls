public with sharing class AccountController {
    @AuraEnabled public static Account getAccount(Id accId) {
        return [ select id,
                        Name, 
                        Active__c, 
                        Balance__c, 
                        Interest_Rate__c, 
                        Loan_Type__c, 
                        Loan_Interest_Rate__c, 
                        Total_Loan_Amount__c, 
                        Remaining_Loan_Amount__c 
                 from Account 
                 where Id =: accId 
                 limit 1 ];
    }

    @AuraEnabled public static Integer getMonth(){
        return Date.today().month();
    }
}