@isTest public class AccountTriggerHandlerTest {
    static RecordType salaryRecordType;
    static RecordType transactionalRecordType;
    static RecordType currentRecordType;
    
    @TestSetup static void setTestData(){
        salaryRecordType = [SELECT Id FROM RecordType 
                            WHERE SObjectType = 'Account' AND DeveloperName = 'Salary_Account' 
                            LIMIT 1];
        transactionalRecordType = [SELECT Id FROM RecordType 
                                   WHERE SObjectType = 'Account' AND DeveloperName = 'Transactional_Account' 
                                   LIMIT 1];
        currentRecordType = [SELECT Id FROM RecordType 
                             WHERE SObjectType = 'Account' AND DeveloperName = 'Current_Account' 
                             LIMIT 1];
    }
    
    @isTest static void testBeforeInsert(){
        List<Account> salaryAccounts = new List<Account>{
            new Account(Name = 'TestAcc1', 
                        RecordTypeId = salaryRecordType.Id,
                        Active__c = 'Yes',
                        Balance__c = 100000, 
                        Email__c = 'nathan.diaz062@gmail.com',
                        Loan_Type__c = 'Home Loan',
                        Total_Loan_Amount__c = 100000),
                
            new Account(Name = 'TestAcc2', 
                        RecordTypeId = salaryRecordType.Id,
                        Active__c = 'Yes',
                        Balance__c = 100000, 
                        Email__c = 'nathan.diaz062@gmail.com',
                        Loan_Type__c = 'Home Loan',
                        Total_Loan_Amount__c = 500000),
                
            new Account(Name = 'TestAcc3', 
                        RecordTypeId = salaryRecordType.Id,
                        Active__c = 'Yes',
                        Balance__c = 100000, 
                        Email__c = 'nathan.diaz062@gmail.com',
                        Loan_Type__c = 'Home Loan',
                        Total_Loan_Amount__c = 1000000),
                
            new Account(Name = 'TestAcc4', 
                        RecordTypeId = salaryRecordType.Id,
                        Active__c = 'Yes',
                        Balance__c = 100000, 
                        Email__c = 'nathan.diaz062@gmail.com',
                        Loan_Type__c = 'Car Loan',
                        Total_Loan_Amount__c = 100000),
                
            new Account(Name = 'TestAcc5', 
                        RecordTypeId = salaryRecordType.Id,
                        Active__c = 'Yes',
                        Balance__c = 100000, 
                        Email__c = 'nathan.diaz062@gmail.com',
                        Loan_Type__c = 'Car Loan',
                        Total_Loan_Amount__c = 500000),
                
            new Account(Name = 'TestAcc6', 
                        RecordTypeId = salaryRecordType.Id,
                        Active__c = 'Yes',
                        Balance__c = 100000, 
                        Email__c = 'nathan.diaz062@gmail.com',
                        Loan_Type__c = 'Car Loan',
                        Total_Loan_Amount__c = 600000)
        };
        
        List<Account> transactionalAccounts = new List<Account>{
            new Account(Name = 'TestAcc1', 
                        RecordTypeId = transactionalRecordType.Id,
                        Active__c = 'Yes',
                        Balance__c = 100000, 
                        Email__c = 'nathan.diaz062@gmail.com',
                        Loan_Type__c = 'Home Loan',
                        Total_Loan_Amount__c = 100000),
                
            new Account(Name = 'TestAcc2', 
                        RecordTypeId = transactionalRecordType.Id,
                        Active__c = 'Yes',
                        Balance__c = 100000, 
                        Email__c = 'nathan.diaz062@gmail.com',
                        Loan_Type__c = 'Home Loan',
                        Total_Loan_Amount__c = 500000),
                
             new Account(Name = 'TestAcc3', 
                        RecordTypeId = transactionalRecordType.Id,
                        Active__c = 'Yes',
                        Balance__c = 100000, 
                        Email__c = 'nathan.diaz062@gmail.com',
                        Loan_Type__c = 'Home Loan',
                        Total_Loan_Amount__c = 1000000),
                
             new Account(Name = 'TestAcc4', 
                        RecordTypeId = transactionalRecordType.Id,
                        Active__c = 'Yes',
                        Balance__c = 100000, 
                        Email__c = 'nathan.diaz062@gmail.com',
                        Loan_Type__c = 'Car Loan',
                        Total_Loan_Amount__c = 100000),
                
             new Account(Name = 'TestAcc5', 
                        RecordTypeId = transactionalRecordType.Id,
                        Active__c = 'Yes',
                        Balance__c = 100000, 
                        Email__c = 'nathan.diaz062@gmail.com',
                        Loan_Type__c = 'Car Loan',
                        Total_Loan_Amount__c = 500000),
                
             new Account(Name = 'TestAcc6', 
                        RecordTypeId = transactionalRecordType.Id,
                        Active__c = 'Yes',
                        Balance__c = 100000, 
                        Email__c = 'nathan.diaz062@gmail.com',
                        Loan_Type__c = 'Car Loan',
                        Total_Loan_Amount__c = 1000000)
        };
            
        List<Account> currentAccounts = new List<Account>{
            new Account(Name = 'TestAcc1', 
                        RecordTypeId = currentRecordType.Id,
                        Active__c = 'Yes',
                        Balance__c = 100000, 
                        Email__c = 'nathan.diaz062@gmail.com',
                        Loan_Type__c = 'Home Loan',
                        Total_Loan_Amount__c = 1000000),
                
            new Account(Name = 'TestAcc2', 
                        RecordTypeId = currentRecordType.Id,
                        Active__c = 'Yes',
                        Balance__c = 100000, 
                        Email__c = 'nathan.diaz062@gmail.com',
                        Loan_Type__c = 'Home Loan',
                        Total_Loan_Amount__c = 5000000),
                
            new Account(Name = 'TestAcc3', 
                        RecordTypeId = currentRecordType.Id,
                        Active__c = 'Yes',
                        Balance__c = 100000, 
                        Email__c = 'nathan.diaz062@gmail.com',
                        Loan_Type__c = 'Home Loan',
                        Total_Loan_Amount__c = 10000000),
                
            new Account(Name = 'TestAcc4', 
                        RecordTypeId = currentRecordType.Id,
                        Active__c = 'Yes',
                        Balance__c = 100000, 
                        Email__c = 'nathan.diaz062@gmail.com',
                        Loan_Type__c = 'Car Loan',
                        Total_Loan_Amount__c = 1000000),
                
            new Account(Name = 'TestAcc5', 
                        RecordTypeId = currentRecordType.Id,
                        Active__c = 'Yes',
                        Balance__c = 100000, 
                        Email__c = 'nathan.diaz062@gmail.com',
                        Loan_Type__c = 'Car Loan',
                        Total_Loan_Amount__c = 5000000),
                
            new Account(Name = 'TestAcc6', 
                        RecordTypeId = currentRecordType.Id,
                        Active__c = 'Yes',
                        Balance__c = 100000, 
                        Email__c = 'nathan.diaz062@gmail.com',
                        Loan_Type__c = 'Car Loan',
                        Total_Loan_Amount__c = 10000000)
        };
            
        List<Account> allAccounts = new List<Account>();
        allAccounts.addAll(salaryAccounts);
        allAccounts.addAll(transactionalAccounts);
        allAccounts.addAll(currentAccounts);
        
        Test.startTest();
        Database.SaveResult[] results = Database.insert(allAccounts, false);
        Test.stopTest();
    }
    
    @isTest static void testBeforeUpdate(){
        
    }
}