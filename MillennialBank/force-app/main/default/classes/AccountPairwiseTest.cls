/*
 * Contains pairwise tests.
 */
@isTest
public class AccountPairwiseTest {
	// 2D array where each sub-array contains the input for one test case
    List<List<Object>> testCaseData = new List<List<Object>>{
        // Test Input Without Name -> Fail
        new List<Object>{'', 50, Schema.SObjectType.Account.getRecordTypeInfosByName().get('Salary Account').getRecordTypeId(), 'test1@example.com', 5, 100, true, null, null},
        // Test Input With Negative Balance -> Fail
        new List<Object>{'Test Account 2', -10, Schema.SObjectType.Account.getRecordTypeInfosByName().get('Salary Account').getRecordTypeId(), 'test2@example.com', 5, 100, true, null, null},
        // Test Input With Zero Balance -> Fail if not Salary Account
        new List<Object>{'Test Account 3', 0, Schema.SObjectType.Account.getRecordTypeInfosByName().get('Salary Account').getRecordTypeId(), 'test2@example.com', 5, 100, true, null, null},
        new List<Object>{'Test Account 4', -10, Schema.SObjectType.Account.getRecordTypeInfosByName().get('Salary Account').getRecordTypeId(), 'test2@example.com', 5, 100, true, null, null},
        new List<Object>{'Test Account 5', -10, Schema.SObjectType.Account.getRecordTypeInfosByName().get('Salary Account').getRecordTypeId(), 'test2@example.com', 5, 100, true, null, null}
        // Add more test cases up to 173 here...
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