/*
 * Contains pairwise tests.
 */
@isTest
public class AccountPairwiseTest {
	// 2D array where each sub-array contains the input for one test case
    List<List<Object>> testCaseData = new List<List<Object>>{
        // Test Input Blank Name -> Fail
        new List<Object>{'', 50, Schema.SObjectType.Account.getRecordTypeInfosByName().get('Salary Account').getRecordTypeId(), 'test@example.com', 5, 100, true, null, null},
        
        // Test Input With Negative Balance -> Fail
        new List<Object>{'Test Account 2', -10, Schema.SObjectType.Account.getRecordTypeInfosByName().get('Salary Account').getRecordTypeId(), 'test@example.com', 5, 100, true, null, null},
        
        // Test Input With Positive but less than 100 Balance and Salary Account -> Success
        new List<Object>{'Test Account 3', 57, Schema.SObjectType.Account.getRecordTypeInfosByName().get('Salary Account').getRecordTypeId(), 'test@example.com', 5, 100, true, null, null},
        
        // Test Input With Positive but less than 100 Balance and Transactional Account-> Fail
        new List<Object>{'Test Account 4', 57, Schema.SObjectType.Account.getRecordTypeInfosByName().get('Transactional Account').getRecordTypeId(), 'test@example.com', 5, 100, true, null, null},
        
        // Test Input With Positive but less than 100 Balance and Current Account-> Fail
        new List<Object>{'Test Account 5', 57, Schema.SObjectType.Account.getRecordTypeInfosByName().get('Current Account').getRecordTypeId(), 'test@example.com', 5, 100, true, null, null},
    
        // Test Input
       	new List<Object>{'Test Account 5', 57, Schema.SObjectType.Account.getRecordTypeInfosByName().get('Current Account').getRecordTypeId(), 'test@example.com', 5, 100, true, null, null} 
    };

    private static Account createAccountFromIndex(List<List<Object>> inputData, Integer index) {
        List<Object> data = inputData[index];
        
        Account acc = new Account();
        acc.Name = (String)data[0];
        acc.Balance__c = (Decimal)data[1];
        acc.RecordTypeId = (Id)data[2];
        acc.Email__c = (String)data[3];
        acc.Loan_Interest_Rate__c = (Decimal)data[4];
        acc.Total_Loan_Amount__c = (Decimal)data[5];
        acc.Active__c = (String)data[6];
        acc.Calculated_Interest__c = (Decimal)data[7];
        acc.Remaining_Loan_Amount__c = (Decimal)data[8];
        
        return acc;
    }
}