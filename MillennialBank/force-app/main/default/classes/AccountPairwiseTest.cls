/*
 * Contains pairwise tests.
 */
@isTest
public class AccountPairwiseTest {
    private static Account createAccountFromIndex(List<List<Object>> inputData, Integer index) {
        List<Object> data = inputData[index];
        System.debug(data);
        Account acc = new Account();
        acc.Name = (String)data[0];
        if (data[1] != null) {
            acc.Balance__c = (Decimal)data[1];
        }
        acc.RecordTypeId = Schema.SObjectType.Account.getRecordTypeInfosByDeveloperName().get((String)data[2]).getRecordTypeId();
        if (data[3] != null) {
            acc.Calculated_Interest__c = (Decimal)data[3];
        }
        acc.Email__c = (String)data[4];
        if (data[5] != null) {
            acc.Loan_Interest_Rate__c = (Decimal)data[5];
        }
        acc.Loan_Type__c = (String)data[6];
        //acc.Remaining_Loan_Amount__c = {data[10]};
        if (data[7] != null) {
            acc.Total_Loan_Amount__c = (Decimal)data[7];
        }
        acc.Active__c = (String)data[8];
            
        return acc;
    }

    private static Account updateAccountFromIndex(List<List<Object>> inputData, Integer index, Account acc) {
        List<Object> data = inputData[index];

        acc.Name = (String)data[0];
        if (data[1] != null) {
            acc.Balance__c = (Decimal)data[1];
        }
        acc.RecordTypeId = Schema.SObjectType.Account.getRecordTypeInfosByName().get((String)data[2]).getRecordTypeId();
        if (data[3] != null) {
            acc.Calculated_Interest__c = (Decimal)data[3];
        }
        acc.Email__c = (String)data[4];
        if (data[5] != null) {
            acc.Loan_Interest_Rate__c = (Decimal)data[5];
        }
        acc.Loan_Type__c = (String)data[6];
        //acc.Remaining_Loan_Amount__c = {data[10]};
        if (data[7] != null) {
            acc.Total_Loan_Amount__c = (Decimal)data[7];
        }

        return acc;
    }

    // 2D array where each sub-array contains the input for one test case
    static List<List<Object>> testCaseData = new List<List<Object>> {
        
    };

    
}