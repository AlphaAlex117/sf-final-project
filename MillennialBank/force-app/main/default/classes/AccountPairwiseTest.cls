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
        new List<Object>{'ToUpdate Account', 100, 'Salary Account', null, 'testUpdate@pairwise.test', null, null, null, 'Yes'},
        new List<Object>{'', -7, 'Salary_Account', null, '', 107, 'Car Loan', 661561, 'Yes'},
        new List<Object>{'', -7, 'Salary_Account', 7, '', 0.11, 'Home Loan', 981411, 'Yes'},
        new List<Object>{'', -7, 'Current_Account', null, '', 0.07, 'Car Loan', 287400, 'Yes'},
        new List<Object>{'Pairwise Test Account 4', -7, 'Current_Account', 7, '', null, 'Home Loan', 51596, 'Yes'},
        new List<Object>{'', 135, 'Current_Account', 7, 'test5@pairwise.test', 0.11, '', null, 'Yes'},
        new List<Object>{'', -7, 'Transactional_Account', 7, 'test6@pairwise.test', 0.08, 'Car Loan', 673958, 'Yes'},
        new List<Object>{'', -7, 'Salary_Account', null, 'test7@pairwise.test', 0.125, 'Car Loan', 3110069, 'Yes'},
        new List<Object>{'Pairwise Test Account 8', -7, 'Current_Account', 7, 'test8@pairwise.test', 0.14, 'Car Loan', null, 'Yes'},
        new List<Object>{'', 88, 'Current_Account', null, 'test9@pairwise.test', 0.11, 'Car Loan', 55082, 'Yes'},
        new List<Object>{'', 166, 'Transactional_Account', 7, '', 0.125, 'Car Loan', null, 'Yes'},
        new List<Object>{'Pairwise Test Account 11', -7, 'Salary_Account', 7, 'test11@pairwise.test', 0.125, 'Car Loan', null, 'Yes'},
        new List<Object>{'', -7, 'Transactional_Account', null, 'test12@pairwise.test', 0.10300000000000001, 'Car Loan', 657989, 'Yes'},
        new List<Object>{'', -7, 'Transactional_Account', null, 'test13@pairwise.test', null, 'Car Loan', 684208, 'Yes'},
        new List<Object>{'Pairwise Test Account 14', -7, 'Transactional_Account', null, '', 0.08, '', null, 'Yes'},
        new List<Object>{'', -7, 'Current_Account', 7, '', 0.162, 'Home Loan', 8651974, 'Yes'},
        new List<Object>{'', -7, 'Salary_Account', 7, '', 0.07, 'Car Loan', 745440, 'Yes'},
        new List<Object>{'Pairwise Test Account 17', 75, 'Transactional_Account', null, 'test17@pairwise.test', 0.136, 'Car Loan', 527450, 'Yes'},
        new List<Object>{'', -7, 'Salary_Account', null, '', 0.1, 'Home Loan', 934872, 'Yes'},
        new List<Object>{'Pairwise Test Account 19', 79, 'Salary_Account', 7, 'test19@pairwise.test', 0.10300000000000001, 'Car Loan', 5851077, 'Yes'},
        new List<Object>{'', 97, 'Salary_Account', null, '', 0.07, 'Home Loan', 924288, 'Yes'},
        new List<Object>{'Pairwise Test Account 21', 179, 'Transactional_Account', 7, '', 107, 'Home Loan', 2718241, 'Yes'},
        new List<Object>{'', -7, 'Salary_Account', 7, 'test22@pairwise.test', 107, 'Car Loan', null, 'Yes'},
        new List<Object>{'', 29, 'Transactional_Account', 7, '', 0.159, 'Car Loan', 9329991, 'Yes'},
        new List<Object>{'Pairwise Test Account 24', 149, 'Current_Account', 7, 'test24@pairwise.test', 0.11900000000000001, 'Car Loan', 3209740, 'Yes'},
        new List<Object>{'Pairwise Test Account 25', -7, 'Current_Account', 7, '', 0.125, '', null, 'Yes'},
        new List<Object>{'', null, 'Salary_Account', 7, 'test26@pairwise.test', 0.146, 'Home Loan', 2580146, 'Yes'},
        new List<Object>{'Pairwise Test Account 27', 124, 'Transactional_Account', null, 'test27@pairwise.test', 0.162, 'Car Loan', 54518, 'Yes'},
        new List<Object>{'Pairwise Test Account 28', 169, 'Current_Account', 7, '', 0.08, 'Home Loan', null, 'Yes'},
        new List<Object>{'', -7, 'Current_Account', 7, '', 0.084, 'Home Loan', 297009, 'Yes'},
        new List<Object>{'', null, 'Current_Account', 7, '', 107, 'Home Loan', 797915, 'Yes'},
        new List<Object>{'Pairwise Test Account 31', -7, 'Salary_Account', null, '', 0.08, 'Home Loan', 52019, 'Yes'},
        new List<Object>{'Pairwise Test Account 32', -7, 'Salary_Account', null, 'test32@pairwise.test', 0.109, '', null, 'Yes'},
        new List<Object>{'', 158, 'Salary_Account', null, 'test33@pairwise.test', 0.11900000000000001, 'Home Loan', 8927926, 'Yes'},
        new List<Object>{'Pairwise Test Account 34', 39, 'Current_Account', 7, '', null, '', null, 'Yes'},
        new List<Object>{'Pairwise Test Account 35', -7, 'Salary_Account', null, 'test35@pairwise.test', null, 'Home Loan', 6035201, 'Yes'},
        new List<Object>{'Pairwise Test Account 36', 189, 'Salary_Account', 7, 'test36@pairwise.test', 0.162, 'Car Loan', 4501399, 'Yes'},
        new List<Object>{'', null, 'Current_Account', 7, '', 0.11800000000000001, 'Home Loan', 594430, 'Yes'},
        new List<Object>{'Pairwise Test Account 38', 2, 'Current_Account', null, '', 0.146, 'Car Loan', null, 'Yes'},
        new List<Object>{'', 134, 'Current_Account', 7, 'test39@pairwise.test', 0.146, 'Home Loan', 784631, 'Yes'},
        new List<Object>{'', -7, 'Transactional_Account', 7, 'test40@pairwise.test', 0.146, 'Home Loan', 891039, 'Yes'},
        new List<Object>{'Pairwise Test Account 41', null, 'Transactional_Account', null, 'test41@pairwise.test', 0.08, 'Home Loan', 8930417, 'Yes'},
        new List<Object>{'', 115, 'Transactional_Account', null, 'test42@pairwise.test', null, 'Car Loan', 191768, 'Yes'},
        new List<Object>{'Pairwise Test Account 43', 99, 'Salary_Account', 7, 'test43@pairwise.test', 0.11, 'Car Loan', 547970, 'Yes'},
        new List<Object>{'', 22, 'Salary_Account', null, 'test44@pairwise.test', 0.14, '', null, 'Yes'},
        new List<Object>{'Pairwise Test Account 45', -7, 'Current_Account', null, 'test45@pairwise.test', 0.136, 'Home Loan', null, 'Yes'},
        new List<Object>{'', -7, 'Transactional_Account', 7, 'test46@pairwise.test', 0.14, 'Home Loan', 244082, 'Yes'},
        new List<Object>{'Pairwise Test Account 47', -7, 'Transactional_Account', 7, 'test47@pairwise.test', 107, '', null, 'Yes'},
        new List<Object>{'Pairwise Test Account 48', null, 'Transactional_Account', null, 'test48@pairwise.test', 0.09, 'Car Loan', null, 'Yes'},
        new List<Object>{'', null, 'Transactional_Account', 7, 'test49@pairwise.test', 0.136, '', null, 'Yes'},
        new List<Object>{'Pairwise Test Account 50', -7, 'Current_Account', 7, 'test50@pairwise.test', 107, 'Home Loan', 161939, 'Yes'},
        new List<Object>{'Pairwise Test Account 51', 139, 'Current_Account', null, 'test51@pairwise.test', 0.11800000000000001, 'Home Loan', 29090, 'Yes'},
        new List<Object>{'Pairwise Test Account 52', 155, 'Current_Account', null, 'test52@pairwise.test', 0.1, 'Home Loan', 859992, 'Yes'},
        new List<Object>{'Pairwise Test Account 53', -7, 'Salary_Account', null, 'test53@pairwise.test', 0.159, '', null, 'Yes'},
        new List<Object>{'Pairwise Test Account 54', 57, 'Salary_Account', 7, 'test54@pairwise.test', 0.136, 'Home Loan', 764538, 'Yes'},
        new List<Object>{'', null, 'Salary_Account', 7, '', 0.11, 'Home Loan', 463931, 'Yes'},
        new List<Object>{'Pairwise Test Account 56', 132, 'Transactional_Account', null, '', null, 'Home Loan', null, 'Yes'},
        new List<Object>{'', 168, 'Transactional_Account', 7, '', 0.14, 'Home Loan', 7509951, 'Yes'},
        new List<Object>{'', 56, 'Current_Account', 7, '', 0.14, 'Car Loan', 46099, 'Yes'},
        new List<Object>{'', null, 'Transactional_Account', 7, '', 0.09, 'Home Loan', 13742, 'Yes'},
        new List<Object>{'Pairwise Test Account 60', 10, 'Salary_Account', null, 'test60@pairwise.test', 0.07, '', null, 'Yes'},
        new List<Object>{'Pairwise Test Account 61', null, 'Current_Account', 7, '', 0.109, 'Car Loan', 921108, 'Yes'},
        new List<Object>{'Pairwise Test Account 62', 137, 'Transactional_Account', null, '', 0.10300000000000001, 'Home Loan', 914004, 'Yes'},
        new List<Object>{'Pairwise Test Account 63', null, 'Current_Account', 7, '', 107, 'Home Loan', 29217, 'Yes'},
        new List<Object>{'Pairwise Test Account 64', 197, 'Current_Account', null, 'test64@pairwise.test', 0.125, 'Home Loan', 480251, 'Yes'},
        new List<Object>{'Pairwise Test Account 65', null, 'Transactional_Account', null, '', 0.162, '', null, 'Yes'},
        new List<Object>{'Pairwise Test Account 66', 59, 'Salary_Account', null, 'test66@pairwise.test', 0.1, 'Car Loan', 1919443, 'Yes'},
        new List<Object>{'', 150, 'Current_Account', 7, 'test67@pairwise.test', 0.09, 'Home Loan', 219609, 'Yes'},
        new List<Object>{'Pairwise Test Account 68', null, 'Current_Account', null, 'test68@pairwise.test', 0.159, 'Home Loan', null, 'Yes'},
        new List<Object>{'Pairwise Test Account 69', 5, 'Current_Account', 7, '', 0.162, 'Car Loan', 30811, 'Yes'},
        new List<Object>{'Pairwise Test Account 70', null, 'Current_Account', 7, '', 0.146, 'Car Loan', 55731, 'Yes'},
        new List<Object>{'Pairwise Test Account 71', 0, 'Salary_Account', null, '', 0.11800000000000001, '', null, 'Yes'},
        new List<Object>{'Pairwise Test Account 72', 177, 'Transactional_Account', null, '', 0.07, 'Home Loan', 8482308, 'Yes'},
        new List<Object>{'Pairwise Test Account 73', null, 'Salary_Account', null, '', 0.07, 'Car Loan', 793091, 'Yes'},
        new List<Object>{'Pairwise Test Account 74', null, 'Transactional_Account', null, '', 0.07, 'Car Loan', 85048, 'Yes'},
        new List<Object>{'Pairwise Test Account 75', 138, 'Transactional_Account', null, '', 0.162, 'Home Loan', 641333, 'Yes'},
        new List<Object>{'Pairwise Test Account 76', 122, 'Transactional_Account', null, 'test76@pairwise.test', 0.11800000000000001, 'Car Loan', null, 'Yes'},
        new List<Object>{'Pairwise Test Account 77', 153, 'Current_Account', null, '', 0.10300000000000001, 'Car Loan', 162632, 'Yes'},
        new List<Object>{'Pairwise Test Account 78', 188, 'Current_Account', null, '', 0.159, 'Home Loan', 30805, 'Yes'},
        new List<Object>{'Pairwise Test Account 79', null, 'Current_Account', 7, 'test79@pairwise.test', 0.1, 'Home Loan', 94465, 'Yes'},
        new List<Object>{'Pairwise Test Account 80', 53, 'Salary_Account', null, '', 0.084, 'Car Loan', 13840, 'Yes'},
        new List<Object>{'', 146, 'Current_Account', 7, 'test81@pairwise.test', 0.14, 'Car Loan', 421940, 'Yes'},
        new List<Object>{'', 32, 'Transactional_Account', 7, '', 0.109, 'Car Loan', 151976, 'Yes'},
        new List<Object>{'', null, 'Transactional_Account', null, '', 0.146, 'Home Loan', 6548303, 'Yes'},
        new List<Object>{'', null, 'Current_Account', 7, 'test84@pairwise.test', null, 'Car Loan', 309920, 'Yes'},
        new List<Object>{'Pairwise Test Account 85', 158, 'Transactional_Account', null, 'test85@pairwise.test', null, 'Home Loan', 3090868, 'Yes'},
        new List<Object>{'Pairwise Test Account 86', -7, 'Transactional_Account', 7, 'test86@pairwise.test', 0.1, 'Home Loan', 974306, 'Yes'},
        new List<Object>{'', 55, 'Salary_Account', 7, '', 0.11900000000000001, 'Car Loan', 530692, 'Yes'},
        new List<Object>{'', 74, 'Salary_Account', 7, 'test88@pairwise.test', 0.10300000000000001, 'Car Loan', 627972, 'Yes'},
        new List<Object>{'', null, 'Current_Account', null, 'test89@pairwise.test', 0.10300000000000001, 'Home Loan', 63094, 'Yes'},
        new List<Object>{'Pairwise Test Account 90', null, 'Transactional_Account', 7, '', 0.11800000000000001, 'Home Loan', 7758032, 'Yes'},
        new List<Object>{'Pairwise Test Account 91', 82, 'Salary_Account', null, '', 107, 'Home Loan', 977280, 'Yes'},
        new List<Object>{'', null, 'Current_Account', 7, '', 0.136, 'Home Loan', 46450, 'Yes'},
        new List<Object>{'Pairwise Test Account 93', null, 'Transactional_Account', 7, '', 0.125, 'Car Loan', 612493, 'Yes'},
        new List<Object>{'Pairwise Test Account 94', null, 'Transactional_Account', null, 'test94@pairwise.test', 0.084, '', null, 'Yes'},
        new List<Object>{'Pairwise Test Account 95', -7, 'Salary_Account', null, 'test95@pairwise.test', null, 'Home Loan', 4307562, 'Yes'},
        new List<Object>{'Pairwise Test Account 96', null, 'Salary_Account', null, '', 0.09, 'Home Loan', 758688, 'Yes'},
        new List<Object>{'', -7, 'Current_Account', 7, '', 0.146, 'Home Loan', 337449, 'Yes'},
        new List<Object>{'Pairwise Test Account 98', -7, 'Transactional_Account', 7, 'test98@pairwise.test', 0.159, 'Home Loan', 2972290, 'Yes'},
        new List<Object>{'', 186, 'Transactional_Account', null, '', 0.1, 'Home Loan', null, 'Yes'},
        new List<Object>{'Pairwise Test Account 100', 55, 'Transactional_Account', null, 'test100@pairwise.test', 0.125, 'Home Loan', 6153687, 'Yes'},
        new List<Object>{'', null, 'Transactional_Account', 7, '', 0.10300000000000001, '', null, 'Yes'},
        new List<Object>{'', 107, 'Transactional_Account', 7, '', 0.084, 'Car Loan', 886181, 'Yes'},
        new List<Object>{'', -7, 'Current_Account', 7, 'test103@pairwise.test', 0.1, 'Home Loan', 478082, 'Yes'},
        new List<Object>{'', null, 'Current_Account', null, 'test104@pairwise.test', 0.14, 'Home Loan', 571123, 'Yes'},
        new List<Object>{'Pairwise Test Account 105', null, 'Transactional_Account', 7, 'test105@pairwise.test', null, '', null, 'Yes'},
        new List<Object>{'', 137, 'Transactional_Account', 7, '', 0.084, 'Home Loan', 411478, 'Yes'},
        new List<Object>{'Pairwise Test Account 107', null, 'Transactional_Account', 7, '', 0.11900000000000001, '', null, 'Yes'},
        new List<Object>{'Pairwise Test Account 108', -7, 'Current_Account', 7, 'test108@pairwise.test', null, 'Car Loan', 329105, 'Yes'},
        new List<Object>{'Pairwise Test Account 109', -7, 'Current_Account', 7, 'test109@pairwise.test', 0.11900000000000001, 'Home Loan', 49759, 'Yes'},
        new List<Object>{'', 71, 'Transactional_Account', null, 'test110@pairwise.test', 0.146, '', null, 'Yes'},
        new List<Object>{'', 106, 'Transactional_Account', 7, '', 0.109, 'Home Loan', null, 'Yes'},
        new List<Object>{'', 190, 'Current_Account', 7, 'test112@pairwise.test', 0.109, 'Home Loan', 94944, 'Yes'},
        new List<Object>{'Pairwise Test Account 113', -7, 'Transactional_Account', null, 'test113@pairwise.test', 0.11, 'Home Loan', 2638900, 'Yes'},
        new List<Object>{'Pairwise Test Account 114', -7, 'Salary_Account', 7, '', 0.084, 'Car Loan', 974953, 'Yes'},
        new List<Object>{'Pairwise Test Account 115', 10, 'Transactional_Account', 7, '', null, 'Car Loan', 43478, 'Yes'},
        new List<Object>{'', -7, 'Transactional_Account', null, '', 0.09, 'Car Loan', 2006140, 'Yes'},
        new List<Object>{'Pairwise Test Account 117', 117, 'Salary_Account', null, 'test117@pairwise.test', null, 'Home Loan', null, 'Yes'},
        new List<Object>{'', 53, 'Current_Account', 7, '', 0.09, 'Car Loan', 474117, 'Yes'},
        new List<Object>{'', -7, 'Current_Account', null, 'test119@pairwise.test', 0.136, 'Home Loan', 210424, 'Yes'},
        new List<Object>{'', -7, 'Current_Account', 7, '', 0.146, 'Home Loan', 815684, 'Yes'},
        new List<Object>{'', 144, 'Current_Account', 7, '', 0.11900000000000001, 'Car Loan', 668957, 'Yes'},
        new List<Object>{'', 148, 'Salary_Account', 7, '', 0.08, 'Home Loan', 507082, 'Yes'},
        new List<Object>{'Pairwise Test Account 123', 117, 'Salary_Account', null, '', 0.084, 'Home Loan', 8721095, 'Yes'},
        new List<Object>{'', -7, 'Transactional_Account', 7, '', 0.14, 'Car Loan', 1772603, 'Yes'},
        new List<Object>{'Pairwise Test Account 125', 161, 'Transactional_Account', null, 'test125@pairwise.test', 107, 'Car Loan', 7815464, 'Yes'},
        new List<Object>{'Pairwise Test Account 126', 99, 'Salary_Account', 7, 'test126@pairwise.test', 0.08, 'Home Loan', 3012791, 'Yes'},
        new List<Object>{'Pairwise Test Account 127', 166, 'Salary_Account', null, '', 0.136, 'Car Loan', 9582596, 'Yes'},
        new List<Object>{'', 0, 'Salary_Account', null, 'test128@pairwise.test', 0.09, 'Home Loan', 702606, 'Yes'},
        new List<Object>{'Pairwise Test Account 129', 149, 'Salary_Account', 7, 'test129@pairwise.test', 0.11, 'Home Loan', 954028, 'Yes'},
        new List<Object>{'', 38, 'Current_Account', null, '', 0.09, '', null, 'Yes'},
        new List<Object>{'', 149, 'Transactional_Account', null, '', null, 'Car Loan', 7659963, 'Yes'},
        new List<Object>{'', -7, 'Transactional_Account', null, 'test132@pairwise.test', 0.11800000000000001, 'Car Loan', 160054, 'Yes'},
        new List<Object>{'Pairwise Test Account 133', 144, 'Transactional_Account', 7, 'test133@pairwise.test', 0.11900000000000001, 'Home Loan', null, 'Yes'},
        new List<Object>{'', 130, 'Salary_Account', null, '', null, 'Car Loan', 974658, 'Yes'},
        new List<Object>{'', 73, 'Current_Account', 7, '', 0.1, '', null, 'Yes'},
        new List<Object>{'Pairwise Test Account 136', 69, 'Salary_Account', null, '', 0.125, 'Car Loan', 639431, 'Yes'},
        new List<Object>{'Pairwise Test Account 137', null, 'Current_Account', null, 'test137@pairwise.test', 0.159, 'Home Loan', 503568, 'Yes'},
        new List<Object>{'', null, 'Current_Account', null, '', 0.08, 'Home Loan', 761216, 'Yes'},
        new List<Object>{'', 112, 'Salary_Account', 7, 'test139@pairwise.test', 0.162, 'Car Loan', 586745, 'Yes'},
        new List<Object>{'Pairwise Test Account 140', 137, 'Current_Account', null, 'test140@pairwise.test', 0.162, 'Home Loan', 395058, 'Yes'},
        new List<Object>{'', 150, 'Transactional_Account', null, '', 0.159, 'Home Loan', 773911, 'Yes'},
        new List<Object>{'Pairwise Test Account 142', 24, 'Current_Account', 7, 'test142@pairwise.test', 0.159, 'Home Loan', 140571, 'Yes'},
        new List<Object>{'', 167, 'Current_Account', 7, '', null, 'Home Loan', 911051, 'Yes'},
        new List<Object>{'', null, 'Current_Account', 7, '', 0.10300000000000001, 'Home Loan', null, 'Yes'},
        new List<Object>{'', 41, 'Transactional_Account', null, 'test145@pairwise.test', 0.09, 'Car Loan', 9592092, 'Yes'},
        new List<Object>{'', 198, 'Transactional_Account', null, 'test146@pairwise.test', 0.084, 'Home Loan', null, 'Yes'},
        new List<Object>{'', 198, 'Transactional_Account', null, '', 0.136, 'Home Loan', 3760405, 'Yes'},
        new List<Object>{'Pairwise Test Account 148', 123, 'Transactional_Account', 7, 'test148@pairwise.test', 0.159, 'Home Loan', 661644, 'Yes'},
        new List<Object>{'', 135, 'Transactional_Account', null, 'test149@pairwise.test', 0.11800000000000001, 'Home Loan', 180552, 'Yes'},
        new List<Object>{'', null, 'Transactional_Account', null, 'test150@pairwise.test', 0.11, 'Car Loan', 6897238, 'Yes'},
        new List<Object>{'Pairwise Test Account 151', 90, 'Current_Account', 7, '', 0.11900000000000001, 'Car Loan', 434443, 'Yes'},
        new List<Object>{'Pairwise Test Account 152', null, 'Transactional_Account', null, '', 0.136, 'Car Loan', 853097, 'Yes'},
        new List<Object>{'', 174, 'Salary_Account', 7, 'test153@pairwise.test', 0.109, 'Car Loan', 170985, 'Yes'},
        new List<Object>{'', 36, 'Salary_Account', 7, '', 0.11900000000000001, 'Home Loan', 520623, 'Yes'},
        new List<Object>{'Pairwise Test Account 155', 168, 'Transactional_Account', null, '', 0.109, 'Car Loan', 8502313, 'Yes'},
        new List<Object>{'Pairwise Test Account 156', null, 'Salary_Account', null, 'test156@pairwise.test', 0.07, 'Car Loan', 2437092, 'Yes'},
        new List<Object>{'', 143, 'Salary_Account', null, 'test157@pairwise.test', 0.11800000000000001, 'Home Loan', 1872088, 'Yes'},
        new List<Object>{'Pairwise Test Account 158', 111, 'Transactional_Account', null, '', 0.162, 'Home Loan', null, 'Yes'},
        new List<Object>{'', 59, 'Current_Account', 7, 'test159@pairwise.test', 0.08, 'Car Loan', 405251, 'Yes'},
        new List<Object>{'', 2, 'Salary_Account', 7, '', 0.125, 'Car Loan', 440457, 'Yes'},
        new List<Object>{'Pairwise Test Account 161', 165, 'Transactional_Account', 7, 'test161@pairwise.test', 0.14, 'Home Loan', 793326, 'Yes'},
        new List<Object>{'Pairwise Test Account 162', 77, 'Salary_Account', null, '', 0.09, 'Car Loan', 524247, 'Yes'},
        new List<Object>{'Pairwise Test Account 163', 23, 'Salary_Account', null, 'test163@pairwise.test', 0.07, 'Car Loan', null, 'Yes'},
        new List<Object>{'Pairwise Test Account 164', 121, 'Current_Account', null, '', 0.125, 'Home Loan', 38883, 'Yes'},
        new List<Object>{'Pairwise Test Account 165', 31, 'Current_Account', 7, '', null, 'Car Loan', 85164, 'Yes'},
        new List<Object>{'', -7, 'Transactional_Account', 7, 'test166@pairwise.test', 0.084, 'Car Loan', 2411959, 'Yes'},
        new List<Object>{'', -7, 'Current_Account', null, 'test167@pairwise.test', null, 'Car Loan', 795224, 'Yes'},
        new List<Object>{'', 21, 'Current_Account', null, '', 0.11, 'Home Loan', null, 'Yes'},
        new List<Object>{'Pairwise Test Account 169', -7, 'Current_Account', 7, '', 0.11800000000000001, 'Car Loan', 674855, 'Yes'},
        new List<Object>{'', null, 'Transactional_Account', null, 'test170@pairwise.test', 0.10300000000000001, 'Home Loan', 3000263, 'Yes'},
        new List<Object>{'', 100, 'Current_Account', null, '', 0.109, 'Home Loan', 747478, 'Yes'},
        new List<Object>{'Pairwise Test Account 172', 104, 'Salary_Account', null, 'test172@pairwise.test', 0.1, 'Car Loan', 8716304, 'Yes'},
        new List<Object>{'Pairwise Test Account 173', -7, 'Salary_Account', null, '', 0.109, 'Home Loan', 1353655, 'Yes'}
    };

    @isTest
    public static void testAccount_1() {
        Account acc = createAccountFromIndex(testCaseData, 1);
        insert acc;
        
        updateAccountFromIndex(testCaseData, 1, acc);
        
        try {
            update acc;
            Account testAcc = [SELECT name, balance__c, calculated_interest__c, email__c, interest_rate__c, loan_interest_rate__c, loan_type__c, remaining_loan_amount__c, total_loan_amount__c, active__c FROM Account WHERE name='d' LIMIT 1];
            System.assertEquals(acc.Name, testAcc.Name);
            System.assertEquals(acc.Balance__c, testAcc.Balance__c);
            System.assertEquals(acc.Balance__c * 0.06, testAcc.Calculated_Interest__c);
            System.assertEquals(acc.Email__c, testAcc.Email__c);
            System.assertEquals(acc.Loan_Interest_Rate__c, testAcc.Loan_Interest_Rate__c);
            System.assertEquals(acc.Loan_Type__c, testAcc.Loan_Type__c);
            //System.assertEquals(acc.Total_Loan_Amount__c, testAcc.Remaining_Loan_Amount__c);
            System.assertEquals(acc.Total_Loan_Amount__c, testAcc.Total_Loan_Amount__c);
        } catch (Exception e) {
            System.assert(false, e.getMessage());
        }
        Test.stopTest();
    }
    

    @isTest
    public static void testAccount_2() {
        Account acc = createAccountFromIndex(testCaseData, 2);
        insert acc;
        
        updateAccountFromIndex(testCaseData, 2, acc);
        
        try {
            update acc;
            Account testAcc = [SELECT name, balance__c, calculated_interest__c, email__c, interest_rate__c, loan_interest_rate__c, loan_type__c, remaining_loan_amount__c, total_loan_amount__c, active__c FROM Account WHERE name='d' LIMIT 1];
            System.assertEquals(acc.Name, testAcc.Name);
            System.assertEquals(acc.Balance__c, testAcc.Balance__c);
            System.assertEquals(acc.Balance__c * 0.06, testAcc.Calculated_Interest__c);
            System.assertEquals(acc.Email__c, testAcc.Email__c);
            System.assertEquals(acc.Loan_Interest_Rate__c, testAcc.Loan_Interest_Rate__c);
            System.assertEquals(acc.Loan_Type__c, testAcc.Loan_Type__c);
            //System.assertEquals(acc.Total_Loan_Amount__c, testAcc.Remaining_Loan_Amount__c);
            System.assertEquals(acc.Total_Loan_Amount__c, testAcc.Total_Loan_Amount__c);
        } catch (Exception e) {
            System.assert(false, e.getMessage());
        }
        Test.stopTest();
    }
    

    @isTest
    public static void testAccount_3() {
        Account acc = createAccountFromIndex(testCaseData, 3);
        insert acc;
        
        updateAccountFromIndex(testCaseData, 3, acc);
        
        try {
            update acc;
            Account testAcc = [SELECT name, balance__c, calculated_interest__c, email__c, interest_rate__c, loan_interest_rate__c, loan_type__c, remaining_loan_amount__c, total_loan_amount__c, active__c FROM Account WHERE name='d' LIMIT 1];
            System.assertEquals(acc.Name, testAcc.Name);
            System.assertEquals(acc.Balance__c, testAcc.Balance__c);
            System.assertEquals(acc.Balance__c * 0.038, testAcc.Calculated_Interest__c);
            System.assertEquals(acc.Email__c, testAcc.Email__c);
            System.assertEquals(acc.Loan_Interest_Rate__c, testAcc.Loan_Interest_Rate__c);
            System.assertEquals(acc.Loan_Type__c, testAcc.Loan_Type__c);
            //System.assertEquals(acc.Total_Loan_Amount__c, testAcc.Remaining_Loan_Amount__c);
            System.assertEquals(acc.Total_Loan_Amount__c, testAcc.Total_Loan_Amount__c);
        } catch (Exception e) {
            System.assert(false, e.getMessage());
        }
        Test.stopTest();
    }
    

    @isTest
    public static void testAccount_4() {
        Account acc = createAccountFromIndex(testCaseData, 4);
        insert acc;
        
        updateAccountFromIndex(testCaseData, 4, acc);
        
        try {
            update acc;
            Account testAcc = [SELECT name, balance__c, calculated_interest__c, email__c, interest_rate__c, loan_interest_rate__c, loan_type__c, remaining_loan_amount__c, total_loan_amount__c, active__c FROM Account WHERE name='d' LIMIT 1];
            System.assertEquals(acc.Name, testAcc.Name);
            System.assertEquals(acc.Balance__c, testAcc.Balance__c);
            System.assertEquals(acc.Balance__c * 0.038, testAcc.Calculated_Interest__c);
            System.assertEquals(acc.Email__c, testAcc.Email__c);
            System.assertEquals(acc.Loan_Interest_Rate__c, testAcc.Loan_Interest_Rate__c);
            System.assertEquals(acc.Loan_Type__c, testAcc.Loan_Type__c);
            //System.assertEquals(acc.Total_Loan_Amount__c, testAcc.Remaining_Loan_Amount__c);
            System.assertEquals(acc.Total_Loan_Amount__c, testAcc.Total_Loan_Amount__c);
        } catch (Exception e) {
            System.assert(false, e.getMessage());
        }
        Test.stopTest();
    }
    

    @isTest
    public static void testAccount_5() {
        Test.startTest();
        Account acc = createAccountFromIndex(testCaseData, 5);
        
        try {
            insert acc;
            Account testAcc = [SELECT name, balance__c, calculated_interest__c, email__c, interest_rate__c, loan_interest_rate__c, loan_type__c, remaining_loan_amount__c, total_loan_amount__c, active__c FROM Account WHERE name='e' LIMIT 1];
            System.assertEquals(acc.Name, testAcc.Name);
            System.assertEquals(acc.Balance__c, testAcc.Balance__c);
            System.assertEquals(acc.Balance__c * 0.038, testAcc.Calculated_Interest__c);
            System.assertEquals(acc.Email__c, testAcc.Email__c);
            System.assertEquals(acc.Loan_Interest_Rate__c, testAcc.Loan_Interest_Rate__c);
            System.assertEquals(acc.Loan_Type__c, testAcc.Loan_Type__c);
            //System.assertEquals(acc.Total_Loan_Amount__c, testAcc.Remaining_Loan_Amount__c);
            System.assertEquals(acc.Total_Loan_Amount__c, testAcc.Total_Loan_Amount__c);
        } catch (Exception e) {
            System.assert(false, e.getMessage());
        }
        Test.stopTest();
    }
    

    @isTest
    public static void testAccount_6() {
        Account acc = createAccountFromIndex(testCaseData, 6);
        insert acc;
        
        updateAccountFromIndex(testCaseData, 6, acc);
        
        try {
            update acc;
            Account testAcc = [SELECT name, balance__c, calculated_interest__c, email__c, interest_rate__c, loan_interest_rate__c, loan_type__c, remaining_loan_amount__c, total_loan_amount__c, active__c FROM Account WHERE name='d' LIMIT 1];
            System.assertEquals(acc.Name, testAcc.Name);
            System.assertEquals(acc.Balance__c, testAcc.Balance__c);
            System.assertEquals(acc.Balance__c * 0.05, testAcc.Calculated_Interest__c);
            System.assertEquals(acc.Email__c, testAcc.Email__c);
            System.assertEquals(acc.Loan_Interest_Rate__c, testAcc.Loan_Interest_Rate__c);
            System.assertEquals(acc.Loan_Type__c, testAcc.Loan_Type__c);
            //System.assertEquals(acc.Total_Loan_Amount__c, testAcc.Remaining_Loan_Amount__c);
            System.assertEquals(acc.Total_Loan_Amount__c, testAcc.Total_Loan_Amount__c);
        } catch (Exception e) {
            System.assert(false, e.getMessage());
        }
        Test.stopTest();
    }
    

    @isTest
    public static void testAccount_7() {
        Account acc = createAccountFromIndex(testCaseData, 7);
        insert acc;
        
        updateAccountFromIndex(testCaseData, 7, acc);
        
        try {
            update acc;
            Account testAcc = [SELECT name, balance__c, calculated_interest__c, email__c, interest_rate__c, loan_interest_rate__c, loan_type__c, remaining_loan_amount__c, total_loan_amount__c, active__c FROM Account WHERE name='d' LIMIT 1];
            System.assertEquals(acc.Name, testAcc.Name);
            System.assertEquals(acc.Balance__c, testAcc.Balance__c);
            System.assertEquals(acc.Balance__c * 0.06, testAcc.Calculated_Interest__c);
            System.assertEquals(acc.Email__c, testAcc.Email__c);
            System.assertEquals(acc.Loan_Interest_Rate__c, testAcc.Loan_Interest_Rate__c);
            System.assertEquals(acc.Loan_Type__c, testAcc.Loan_Type__c);
            //System.assertEquals(acc.Total_Loan_Amount__c, testAcc.Remaining_Loan_Amount__c);
            System.assertEquals(acc.Total_Loan_Amount__c, testAcc.Total_Loan_Amount__c);
        } catch (Exception e) {
            System.assert(false, e.getMessage());
        }
        Test.stopTest();
    }
    

    @isTest
    public static void testAccount_8() {
        Account acc = createAccountFromIndex(testCaseData, 8);
        insert acc;
        
        updateAccountFromIndex(testCaseData, 8, acc);
        
        try {
            update acc;
            Account testAcc = [SELECT name, balance__c, calculated_interest__c, email__c, interest_rate__c, loan_interest_rate__c, loan_type__c, remaining_loan_amount__c, total_loan_amount__c, active__c FROM Account WHERE name='d' LIMIT 1];
            System.assertEquals(acc.Name, testAcc.Name);
            System.assertEquals(acc.Balance__c, testAcc.Balance__c);
            System.assertEquals(acc.Balance__c * 0.038, testAcc.Calculated_Interest__c);
            System.assertEquals(acc.Email__c, testAcc.Email__c);
            System.assertEquals(acc.Loan_Interest_Rate__c, testAcc.Loan_Interest_Rate__c);
            System.assertEquals(acc.Loan_Type__c, testAcc.Loan_Type__c);
            //System.assertEquals(acc.Total_Loan_Amount__c, testAcc.Remaining_Loan_Amount__c);
            System.assertEquals(acc.Total_Loan_Amount__c, testAcc.Total_Loan_Amount__c);
        } catch (Exception e) {
            System.assert(false, e.getMessage());
        }
        Test.stopTest();
    }
    

    @isTest
    public static void testAccount_9() {
        Account acc = createAccountFromIndex(testCaseData, 9);
        insert acc;
        
        updateAccountFromIndex(testCaseData, 9, acc);
        
        try {
            update acc;
            Account testAcc = [SELECT name, balance__c, calculated_interest__c, email__c, interest_rate__c, loan_interest_rate__c, loan_type__c, remaining_loan_amount__c, total_loan_amount__c, active__c FROM Account WHERE name='d' LIMIT 1];
            System.assertEquals(acc.Name, testAcc.Name);
            System.assertEquals(acc.Balance__c, testAcc.Balance__c);
            System.assertEquals(acc.Balance__c * 0.038, testAcc.Calculated_Interest__c);
            System.assertEquals(acc.Email__c, testAcc.Email__c);
            System.assertEquals(acc.Loan_Interest_Rate__c, testAcc.Loan_Interest_Rate__c);
            System.assertEquals(acc.Loan_Type__c, testAcc.Loan_Type__c);
            //System.assertEquals(acc.Total_Loan_Amount__c, testAcc.Remaining_Loan_Amount__c);
            System.assertEquals(acc.Total_Loan_Amount__c, testAcc.Total_Loan_Amount__c);
        } catch (Exception e) {
            System.assert(false, e.getMessage());
        }
        Test.stopTest();
    }
    

    @isTest
    public static void testAccount_10() {
        Account acc = createAccountFromIndex(testCaseData, 10);
        insert acc;
        
        updateAccountFromIndex(testCaseData, 10, acc);
        
        try {
            update acc;
            Account testAcc = [SELECT name, balance__c, calculated_interest__c, email__c, interest_rate__c, loan_interest_rate__c, loan_type__c, remaining_loan_amount__c, total_loan_amount__c, active__c FROM Account WHERE name='d' LIMIT 1];
            System.assertEquals(acc.Name, testAcc.Name);
            System.assertEquals(acc.Balance__c, testAcc.Balance__c);
            System.assertEquals(acc.Balance__c * 0.05, testAcc.Calculated_Interest__c);
            System.assertEquals(acc.Email__c, testAcc.Email__c);
            System.assertEquals(acc.Loan_Interest_Rate__c, testAcc.Loan_Interest_Rate__c);
            System.assertEquals(acc.Loan_Type__c, testAcc.Loan_Type__c);
            //System.assertEquals(acc.Total_Loan_Amount__c, testAcc.Remaining_Loan_Amount__c);
            System.assertEquals(acc.Total_Loan_Amount__c, testAcc.Total_Loan_Amount__c);
        } catch (Exception e) {
            System.assert(false, e.getMessage());
        }
        Test.stopTest();
    }
    

    @isTest
    public static void testAccount_11() {
        Account acc = createAccountFromIndex(testCaseData, 11);
        insert acc;
        
        updateAccountFromIndex(testCaseData, 11, acc);
        
        try {
            update acc;
            Account testAcc = [SELECT name, balance__c, calculated_interest__c, email__c, interest_rate__c, loan_interest_rate__c, loan_type__c, remaining_loan_amount__c, total_loan_amount__c, active__c FROM Account WHERE name='d' LIMIT 1];
            System.assertEquals(acc.Name, testAcc.Name);
            System.assertEquals(acc.Balance__c, testAcc.Balance__c);
            System.assertEquals(acc.Balance__c * 0.06, testAcc.Calculated_Interest__c);
            System.assertEquals(acc.Email__c, testAcc.Email__c);
            System.assertEquals(acc.Loan_Interest_Rate__c, testAcc.Loan_Interest_Rate__c);
            System.assertEquals(acc.Loan_Type__c, testAcc.Loan_Type__c);
            //System.assertEquals(acc.Total_Loan_Amount__c, testAcc.Remaining_Loan_Amount__c);
            System.assertEquals(acc.Total_Loan_Amount__c, testAcc.Total_Loan_Amount__c);
        } catch (Exception e) {
            System.assert(false, e.getMessage());
        }
        Test.stopTest();
    }
    

    @isTest
    public static void testAccount_12() {
        Account acc = createAccountFromIndex(testCaseData, 12);
        insert acc;
        
        updateAccountFromIndex(testCaseData, 12, acc);
        
        try {
            update acc;
            Account testAcc = [SELECT name, balance__c, calculated_interest__c, email__c, interest_rate__c, loan_interest_rate__c, loan_type__c, remaining_loan_amount__c, total_loan_amount__c, active__c FROM Account WHERE name='d' LIMIT 1];
            System.assertEquals(acc.Name, testAcc.Name);
            System.assertEquals(acc.Balance__c, testAcc.Balance__c);
            System.assertEquals(acc.Balance__c * 0.05, testAcc.Calculated_Interest__c);
            System.assertEquals(acc.Email__c, testAcc.Email__c);
            System.assertEquals(acc.Loan_Interest_Rate__c, testAcc.Loan_Interest_Rate__c);
            System.assertEquals(acc.Loan_Type__c, testAcc.Loan_Type__c);
            //System.assertEquals(acc.Total_Loan_Amount__c, testAcc.Remaining_Loan_Amount__c);
            System.assertEquals(acc.Total_Loan_Amount__c, testAcc.Total_Loan_Amount__c);
        } catch (Exception e) {
            System.assert(false, e.getMessage());
        }
        Test.stopTest();
    }
    

    @isTest
    public static void testAccount_13() {
        Account acc = createAccountFromIndex(testCaseData, 13);
        insert acc;
        
        updateAccountFromIndex(testCaseData, 13, acc);
        
        try {
            update acc;
            Account testAcc = [SELECT name, balance__c, calculated_interest__c, email__c, interest_rate__c, loan_interest_rate__c, loan_type__c, remaining_loan_amount__c, total_loan_amount__c, active__c FROM Account WHERE name='d' LIMIT 1];
            System.assertEquals(acc.Name, testAcc.Name);
            System.assertEquals(acc.Balance__c, testAcc.Balance__c);
            System.assertEquals(acc.Balance__c * 0.05, testAcc.Calculated_Interest__c);
            System.assertEquals(acc.Email__c, testAcc.Email__c);
            System.assertEquals(acc.Loan_Interest_Rate__c, testAcc.Loan_Interest_Rate__c);
            System.assertEquals(acc.Loan_Type__c, testAcc.Loan_Type__c);
            //System.assertEquals(acc.Total_Loan_Amount__c, testAcc.Remaining_Loan_Amount__c);
            System.assertEquals(acc.Total_Loan_Amount__c, testAcc.Total_Loan_Amount__c);
        } catch (Exception e) {
            System.assert(false, e.getMessage());
        }
        Test.stopTest();
    }
    

    @isTest
    public static void testAccount_14() {
        Account acc = createAccountFromIndex(testCaseData, 14);
        insert acc;
        
        updateAccountFromIndex(testCaseData, 14, acc);
        
        try {
            update acc;
            Account testAcc = [SELECT name, balance__c, calculated_interest__c, email__c, interest_rate__c, loan_interest_rate__c, loan_type__c, remaining_loan_amount__c, total_loan_amount__c, active__c FROM Account WHERE name='d' LIMIT 1];
            System.assertEquals(acc.Name, testAcc.Name);
            System.assertEquals(acc.Balance__c, testAcc.Balance__c);
            System.assertEquals(acc.Balance__c * 0.05, testAcc.Calculated_Interest__c);
            System.assertEquals(acc.Email__c, testAcc.Email__c);
            System.assertEquals(acc.Loan_Interest_Rate__c, testAcc.Loan_Interest_Rate__c);
            System.assertEquals(acc.Loan_Type__c, testAcc.Loan_Type__c);
            //System.assertEquals(acc.Total_Loan_Amount__c, testAcc.Remaining_Loan_Amount__c);
            System.assertEquals(acc.Total_Loan_Amount__c, testAcc.Total_Loan_Amount__c);
        } catch (Exception e) {
            System.assert(false, e.getMessage());
        }
        Test.stopTest();
    }
    

    @isTest
    public static void testAccount_15() {
        Account acc = createAccountFromIndex(testCaseData, 15);
        insert acc;
        
        updateAccountFromIndex(testCaseData, 15, acc);
        
        try {
            update acc;
            Account testAcc = [SELECT name, balance__c, calculated_interest__c, email__c, interest_rate__c, loan_interest_rate__c, loan_type__c, remaining_loan_amount__c, total_loan_amount__c, active__c FROM Account WHERE name='d' LIMIT 1];
            System.assertEquals(acc.Name, testAcc.Name);
            System.assertEquals(acc.Balance__c, testAcc.Balance__c);
            System.assertEquals(acc.Balance__c * 0.038, testAcc.Calculated_Interest__c);
            System.assertEquals(acc.Email__c, testAcc.Email__c);
            System.assertEquals(acc.Loan_Interest_Rate__c, testAcc.Loan_Interest_Rate__c);
            System.assertEquals(acc.Loan_Type__c, testAcc.Loan_Type__c);
            //System.assertEquals(acc.Total_Loan_Amount__c, testAcc.Remaining_Loan_Amount__c);
            System.assertEquals(acc.Total_Loan_Amount__c, testAcc.Total_Loan_Amount__c);
        } catch (Exception e) {
            System.assert(false, e.getMessage());
        }
        Test.stopTest();
    }
    

    @isTest
    public static void testAccount_16() {
        Account acc = createAccountFromIndex(testCaseData, 16);
        insert acc;
        
        updateAccountFromIndex(testCaseData, 16, acc);
        
        try {
            update acc;
            Account testAcc = [SELECT name, balance__c, calculated_interest__c, email__c, interest_rate__c, loan_interest_rate__c, loan_type__c, remaining_loan_amount__c, total_loan_amount__c, active__c FROM Account WHERE name='d' LIMIT 1];
            System.assertEquals(acc.Name, testAcc.Name);
            System.assertEquals(acc.Balance__c, testAcc.Balance__c);
            System.assertEquals(acc.Balance__c * 0.06, testAcc.Calculated_Interest__c);
            System.assertEquals(acc.Email__c, testAcc.Email__c);
            System.assertEquals(acc.Loan_Interest_Rate__c, testAcc.Loan_Interest_Rate__c);
            System.assertEquals(acc.Loan_Type__c, testAcc.Loan_Type__c);
            //System.assertEquals(acc.Total_Loan_Amount__c, testAcc.Remaining_Loan_Amount__c);
            System.assertEquals(acc.Total_Loan_Amount__c, testAcc.Total_Loan_Amount__c);
        } catch (Exception e) {
            System.assert(false, e.getMessage());
        }
        Test.stopTest();
    }
    

    @isTest
    public static void testAccount_17() {
        Account acc = createAccountFromIndex(testCaseData, 17);
        insert acc;
        
        updateAccountFromIndex(testCaseData, 17, acc);
        
        try {
            update acc;
            Account testAcc = [SELECT name, balance__c, calculated_interest__c, email__c, interest_rate__c, loan_interest_rate__c, loan_type__c, remaining_loan_amount__c, total_loan_amount__c, active__c FROM Account WHERE name='d' LIMIT 1];
            System.assertEquals(acc.Name, testAcc.Name);
            System.assertEquals(acc.Balance__c, testAcc.Balance__c);
            System.assertEquals(acc.Balance__c * 0.05, testAcc.Calculated_Interest__c);
            System.assertEquals(acc.Email__c, testAcc.Email__c);
            System.assertEquals(acc.Loan_Interest_Rate__c, testAcc.Loan_Interest_Rate__c);
            System.assertEquals(acc.Loan_Type__c, testAcc.Loan_Type__c);
            //System.assertEquals(acc.Total_Loan_Amount__c, testAcc.Remaining_Loan_Amount__c);
            System.assertEquals(acc.Total_Loan_Amount__c, testAcc.Total_Loan_Amount__c);
        } catch (Exception e) {
            System.assert(false, e.getMessage());
        }
        Test.stopTest();
    }
    

    @isTest
    public static void testAccount_18() {
        Account acc = createAccountFromIndex(testCaseData, 18);
        insert acc;
        
        updateAccountFromIndex(testCaseData, 18, acc);
        
        try {
            update acc;
            Account testAcc = [SELECT name, balance__c, calculated_interest__c, email__c, interest_rate__c, loan_interest_rate__c, loan_type__c, remaining_loan_amount__c, total_loan_amount__c, active__c FROM Account WHERE name='d' LIMIT 1];
            System.assertEquals(acc.Name, testAcc.Name);
            System.assertEquals(acc.Balance__c, testAcc.Balance__c);
            System.assertEquals(acc.Balance__c * 0.06, testAcc.Calculated_Interest__c);
            System.assertEquals(acc.Email__c, testAcc.Email__c);
            System.assertEquals(acc.Loan_Interest_Rate__c, testAcc.Loan_Interest_Rate__c);
            System.assertEquals(acc.Loan_Type__c, testAcc.Loan_Type__c);
            //System.assertEquals(acc.Total_Loan_Amount__c, testAcc.Remaining_Loan_Amount__c);
            System.assertEquals(acc.Total_Loan_Amount__c, testAcc.Total_Loan_Amount__c);
        } catch (Exception e) {
            System.assert(false, e.getMessage());
        }
        Test.stopTest();
    }
    

    @isTest
    public static void testAccount_19() {
        Test.startTest();
        Account acc = createAccountFromIndex(testCaseData, 19);
        
        try {
            insert acc;
            Account testAcc = [SELECT name, balance__c, calculated_interest__c, email__c, interest_rate__c, loan_interest_rate__c, loan_type__c, remaining_loan_amount__c, total_loan_amount__c, active__c FROM Account WHERE name='e' LIMIT 1];
            System.assertEquals(acc.Name, testAcc.Name);
            System.assertEquals(acc.Balance__c, testAcc.Balance__c);
            System.assertEquals(acc.Balance__c * 0.06, testAcc.Calculated_Interest__c);
            System.assertEquals(acc.Email__c, testAcc.Email__c);
            System.assertEquals(acc.Loan_Interest_Rate__c, testAcc.Loan_Interest_Rate__c);
            System.assertEquals(acc.Loan_Type__c, testAcc.Loan_Type__c);
            //System.assertEquals(acc.Total_Loan_Amount__c, testAcc.Remaining_Loan_Amount__c);
            System.assertEquals(acc.Total_Loan_Amount__c, testAcc.Total_Loan_Amount__c);
        } catch (Exception e) {
            System.assert(false, e.getMessage());
        }
        Test.stopTest();
    }
    

    @isTest
    public static void testAccount_20() {
        Test.startTest();
        Account acc = createAccountFromIndex(testCaseData, 20);
        
        try {
            insert acc;
            Account testAcc = [SELECT name, balance__c, calculated_interest__c, email__c, interest_rate__c, loan_interest_rate__c, loan_type__c, remaining_loan_amount__c, total_loan_amount__c, active__c FROM Account WHERE name='e' LIMIT 1];
            System.assertEquals(acc.Name, testAcc.Name);
            System.assertEquals(acc.Balance__c, testAcc.Balance__c);
            System.assertEquals(acc.Balance__c * 0.06, testAcc.Calculated_Interest__c);
            System.assertEquals(acc.Email__c, testAcc.Email__c);
            System.assertEquals(acc.Loan_Interest_Rate__c, testAcc.Loan_Interest_Rate__c);
            System.assertEquals(acc.Loan_Type__c, testAcc.Loan_Type__c);
            //System.assertEquals(acc.Total_Loan_Amount__c, testAcc.Remaining_Loan_Amount__c);
            System.assertEquals(acc.Total_Loan_Amount__c, testAcc.Total_Loan_Amount__c);
        } catch (Exception e) {
            System.assert(false, e.getMessage());
        }
        Test.stopTest();
    }
    

    @isTest
    public static void testAccount_21() {
        Test.startTest();
        Account acc = createAccountFromIndex(testCaseData, 21);
        
        try {
            insert acc;
            Account testAcc = [SELECT name, balance__c, calculated_interest__c, email__c, interest_rate__c, loan_interest_rate__c, loan_type__c, remaining_loan_amount__c, total_loan_amount__c, active__c FROM Account WHERE name='e' LIMIT 1];
            System.assertEquals(acc.Name, testAcc.Name);
            System.assertEquals(acc.Balance__c, testAcc.Balance__c);
            System.assertEquals(acc.Balance__c * 0.05, testAcc.Calculated_Interest__c);
            System.assertEquals(acc.Email__c, testAcc.Email__c);
            System.assertEquals(acc.Loan_Interest_Rate__c, testAcc.Loan_Interest_Rate__c);
            System.assertEquals(acc.Loan_Type__c, testAcc.Loan_Type__c);
            //System.assertEquals(acc.Total_Loan_Amount__c, testAcc.Remaining_Loan_Amount__c);
            System.assertEquals(acc.Total_Loan_Amount__c, testAcc.Total_Loan_Amount__c);
        } catch (Exception e) {
            System.assert(false, e.getMessage());
        }
        Test.stopTest();
    }
    

    @isTest
    public static void testAccount_22() {
        Account acc = createAccountFromIndex(testCaseData, 22);
        insert acc;
        
        updateAccountFromIndex(testCaseData, 22, acc);
        
        try {
            update acc;
            Account testAcc = [SELECT name, balance__c, calculated_interest__c, email__c, interest_rate__c, loan_interest_rate__c, loan_type__c, remaining_loan_amount__c, total_loan_amount__c, active__c FROM Account WHERE name='d' LIMIT 1];
            System.assertEquals(acc.Name, testAcc.Name);
            System.assertEquals(acc.Balance__c, testAcc.Balance__c);
            System.assertEquals(acc.Balance__c * 0.06, testAcc.Calculated_Interest__c);
            System.assertEquals(acc.Email__c, testAcc.Email__c);
            System.assertEquals(acc.Loan_Interest_Rate__c, testAcc.Loan_Interest_Rate__c);
            System.assertEquals(acc.Loan_Type__c, testAcc.Loan_Type__c);
            //System.assertEquals(acc.Total_Loan_Amount__c, testAcc.Remaining_Loan_Amount__c);
            System.assertEquals(acc.Total_Loan_Amount__c, testAcc.Total_Loan_Amount__c);
        } catch (Exception e) {
            System.assert(false, e.getMessage());
        }
        Test.stopTest();
    }
    

    @isTest
    public static void testAccount_23() {
        Account acc = createAccountFromIndex(testCaseData, 23);
        insert acc;
        
        updateAccountFromIndex(testCaseData, 23, acc);
        
        try {
            update acc;
            Account testAcc = [SELECT name, balance__c, calculated_interest__c, email__c, interest_rate__c, loan_interest_rate__c, loan_type__c, remaining_loan_amount__c, total_loan_amount__c, active__c FROM Account WHERE name='d' LIMIT 1];
            System.assertEquals(acc.Name, testAcc.Name);
            System.assertEquals(acc.Balance__c, testAcc.Balance__c);
            System.assertEquals(acc.Balance__c * 0.05, testAcc.Calculated_Interest__c);
            System.assertEquals(acc.Email__c, testAcc.Email__c);
            System.assertEquals(acc.Loan_Interest_Rate__c, testAcc.Loan_Interest_Rate__c);
            System.assertEquals(acc.Loan_Type__c, testAcc.Loan_Type__c);
            //System.assertEquals(acc.Total_Loan_Amount__c, testAcc.Remaining_Loan_Amount__c);
            System.assertEquals(acc.Total_Loan_Amount__c, testAcc.Total_Loan_Amount__c);
        } catch (Exception e) {
            System.assert(false, e.getMessage());
        }
        Test.stopTest();
    }
    

    @isTest
    public static void testAccount_24() {
        Test.startTest();
        Account acc = createAccountFromIndex(testCaseData, 24);
        
        try {
            insert acc;
            Account testAcc = [SELECT name, balance__c, calculated_interest__c, email__c, interest_rate__c, loan_interest_rate__c, loan_type__c, remaining_loan_amount__c, total_loan_amount__c, active__c FROM Account WHERE name='e' LIMIT 1];
            System.assertEquals(acc.Name, testAcc.Name);
            System.assertEquals(acc.Balance__c, testAcc.Balance__c);
            System.assertEquals(acc.Balance__c * 0.038, testAcc.Calculated_Interest__c);
            System.assertEquals(acc.Email__c, testAcc.Email__c);
            System.assertEquals(acc.Loan_Interest_Rate__c, testAcc.Loan_Interest_Rate__c);
            System.assertEquals(acc.Loan_Type__c, testAcc.Loan_Type__c);
            //System.assertEquals(acc.Total_Loan_Amount__c, testAcc.Remaining_Loan_Amount__c);
            System.assertEquals(acc.Total_Loan_Amount__c, testAcc.Total_Loan_Amount__c);
        } catch (Exception e) {
            System.assert(false, e.getMessage());
        }
        Test.stopTest();
    }
    

    @isTest
    public static void testAccount_25() {
        Account acc = createAccountFromIndex(testCaseData, 25);
        insert acc;
        
        updateAccountFromIndex(testCaseData, 25, acc);
        
        try {
            update acc;
            Account testAcc = [SELECT name, balance__c, calculated_interest__c, email__c, interest_rate__c, loan_interest_rate__c, loan_type__c, remaining_loan_amount__c, total_loan_amount__c, active__c FROM Account WHERE name='d' LIMIT 1];
            System.assertEquals(acc.Name, testAcc.Name);
            System.assertEquals(acc.Balance__c, testAcc.Balance__c);
            System.assertEquals(acc.Balance__c * 0.038, testAcc.Calculated_Interest__c);
            System.assertEquals(acc.Email__c, testAcc.Email__c);
            System.assertEquals(acc.Loan_Interest_Rate__c, testAcc.Loan_Interest_Rate__c);
            System.assertEquals(acc.Loan_Type__c, testAcc.Loan_Type__c);
            //System.assertEquals(acc.Total_Loan_Amount__c, testAcc.Remaining_Loan_Amount__c);
            System.assertEquals(acc.Total_Loan_Amount__c, testAcc.Total_Loan_Amount__c);
        } catch (Exception e) {
            System.assert(false, e.getMessage());
        }
        Test.stopTest();
    }
    

    @isTest
    public static void testAccount_26() {
        Account acc = createAccountFromIndex(testCaseData, 26);
        insert acc;
        
        updateAccountFromIndex(testCaseData, 26, acc);
        
        try {
            update acc;
            Account testAcc = [SELECT name, balance__c, calculated_interest__c, email__c, interest_rate__c, loan_interest_rate__c, loan_type__c, remaining_loan_amount__c, total_loan_amount__c, active__c FROM Account WHERE name='d' LIMIT 1];
            System.assertEquals(acc.Name, testAcc.Name);
            System.assertEquals(acc.Balance__c, testAcc.Balance__c);
            System.assertEquals(acc.Balance__c * 0.06, testAcc.Calculated_Interest__c);
            System.assertEquals(acc.Email__c, testAcc.Email__c);
            System.assertEquals(acc.Loan_Interest_Rate__c, testAcc.Loan_Interest_Rate__c);
            System.assertEquals(acc.Loan_Type__c, testAcc.Loan_Type__c);
            //System.assertEquals(acc.Total_Loan_Amount__c, testAcc.Remaining_Loan_Amount__c);
            System.assertEquals(acc.Total_Loan_Amount__c, testAcc.Total_Loan_Amount__c);
        } catch (Exception e) {
            System.assert(false, e.getMessage());
        }
        Test.stopTest();
    }
    

    @isTest
    public static void testAccount_27() {
        Test.startTest();
        Account acc = createAccountFromIndex(testCaseData, 27);
        
        try {
            insert acc;
            Account testAcc = [SELECT name, balance__c, calculated_interest__c, email__c, interest_rate__c, loan_interest_rate__c, loan_type__c, remaining_loan_amount__c, total_loan_amount__c, active__c FROM Account WHERE name='e' LIMIT 1];
            System.assertEquals(acc.Name, testAcc.Name);
            System.assertEquals(acc.Balance__c, testAcc.Balance__c);
            System.assertEquals(acc.Balance__c * 0.05, testAcc.Calculated_Interest__c);
            System.assertEquals(acc.Email__c, testAcc.Email__c);
            System.assertEquals(acc.Loan_Interest_Rate__c, testAcc.Loan_Interest_Rate__c);
            System.assertEquals(acc.Loan_Type__c, testAcc.Loan_Type__c);
            //System.assertEquals(acc.Total_Loan_Amount__c, testAcc.Remaining_Loan_Amount__c);
            System.assertEquals(acc.Total_Loan_Amount__c, testAcc.Total_Loan_Amount__c);
        } catch (Exception e) {
            System.assert(false, e.getMessage());
        }
        Test.stopTest();
    }
    

    @isTest
    public static void testAccount_28() {
        Test.startTest();
        Account acc = createAccountFromIndex(testCaseData, 28);
        
        try {
            insert acc;
            Account testAcc = [SELECT name, balance__c, calculated_interest__c, email__c, interest_rate__c, loan_interest_rate__c, loan_type__c, remaining_loan_amount__c, total_loan_amount__c, active__c FROM Account WHERE name='e' LIMIT 1];
            System.assertEquals(acc.Name, testAcc.Name);
            System.assertEquals(acc.Balance__c, testAcc.Balance__c);
            System.assertEquals(acc.Balance__c * 0.038, testAcc.Calculated_Interest__c);
            System.assertEquals(acc.Email__c, testAcc.Email__c);
            System.assertEquals(acc.Loan_Interest_Rate__c, testAcc.Loan_Interest_Rate__c);
            System.assertEquals(acc.Loan_Type__c, testAcc.Loan_Type__c);
            //System.assertEquals(acc.Total_Loan_Amount__c, testAcc.Remaining_Loan_Amount__c);
            System.assertEquals(acc.Total_Loan_Amount__c, testAcc.Total_Loan_Amount__c);
        } catch (Exception e) {
            System.assert(false, e.getMessage());
        }
        Test.stopTest();
    }
    

    @isTest
    public static void testAccount_29() {
        Account acc = createAccountFromIndex(testCaseData, 29);
        insert acc;
        
        updateAccountFromIndex(testCaseData, 29, acc);
        
        try {
            update acc;
            Account testAcc = [SELECT name, balance__c, calculated_interest__c, email__c, interest_rate__c, loan_interest_rate__c, loan_type__c, remaining_loan_amount__c, total_loan_amount__c, active__c FROM Account WHERE name='d' LIMIT 1];
            System.assertEquals(acc.Name, testAcc.Name);
            System.assertEquals(acc.Balance__c, testAcc.Balance__c);
            System.assertEquals(acc.Balance__c * 0.038, testAcc.Calculated_Interest__c);
            System.assertEquals(acc.Email__c, testAcc.Email__c);
            System.assertEquals(acc.Loan_Interest_Rate__c, testAcc.Loan_Interest_Rate__c);
            System.assertEquals(acc.Loan_Type__c, testAcc.Loan_Type__c);
            //System.assertEquals(acc.Total_Loan_Amount__c, testAcc.Remaining_Loan_Amount__c);
            System.assertEquals(acc.Total_Loan_Amount__c, testAcc.Total_Loan_Amount__c);
        } catch (Exception e) {
            System.assert(false, e.getMessage());
        }
        Test.stopTest();
    }
    

    @isTest
    public static void testAccount_30() {
        Account acc = createAccountFromIndex(testCaseData, 30);
        insert acc;
        
        updateAccountFromIndex(testCaseData, 30, acc);
        
        try {
            update acc;
            Account testAcc = [SELECT name, balance__c, calculated_interest__c, email__c, interest_rate__c, loan_interest_rate__c, loan_type__c, remaining_loan_amount__c, total_loan_amount__c, active__c FROM Account WHERE name='d' LIMIT 1];
            System.assertEquals(acc.Name, testAcc.Name);
            System.assertEquals(acc.Balance__c, testAcc.Balance__c);
            System.assertEquals(acc.Balance__c * 0.038, testAcc.Calculated_Interest__c);
            System.assertEquals(acc.Email__c, testAcc.Email__c);
            System.assertEquals(acc.Loan_Interest_Rate__c, testAcc.Loan_Interest_Rate__c);
            System.assertEquals(acc.Loan_Type__c, testAcc.Loan_Type__c);
            //System.assertEquals(acc.Total_Loan_Amount__c, testAcc.Remaining_Loan_Amount__c);
            System.assertEquals(acc.Total_Loan_Amount__c, testAcc.Total_Loan_Amount__c);
        } catch (Exception e) {
            System.assert(false, e.getMessage());
        }
        Test.stopTest();
    }
    

    @isTest
    public static void testAccount_31() {
        Account acc = createAccountFromIndex(testCaseData, 31);
        insert acc;
        
        updateAccountFromIndex(testCaseData, 31, acc);
        
        try {
            update acc;
            Account testAcc = [SELECT name, balance__c, calculated_interest__c, email__c, interest_rate__c, loan_interest_rate__c, loan_type__c, remaining_loan_amount__c, total_loan_amount__c, active__c FROM Account WHERE name='d' LIMIT 1];
            System.assertEquals(acc.Name, testAcc.Name);
            System.assertEquals(acc.Balance__c, testAcc.Balance__c);
            System.assertEquals(acc.Balance__c * 0.06, testAcc.Calculated_Interest__c);
            System.assertEquals(acc.Email__c, testAcc.Email__c);
            System.assertEquals(acc.Loan_Interest_Rate__c, testAcc.Loan_Interest_Rate__c);
            System.assertEquals(acc.Loan_Type__c, testAcc.Loan_Type__c);
            //System.assertEquals(acc.Total_Loan_Amount__c, testAcc.Remaining_Loan_Amount__c);
            System.assertEquals(acc.Total_Loan_Amount__c, testAcc.Total_Loan_Amount__c);
        } catch (Exception e) {
            System.assert(false, e.getMessage());
        }
        Test.stopTest();
    }
    

    @isTest
    public static void testAccount_32() {
        Account acc = createAccountFromIndex(testCaseData, 32);
        insert acc;
        
        updateAccountFromIndex(testCaseData, 32, acc);
        
        try {
            update acc;
            Account testAcc = [SELECT name, balance__c, calculated_interest__c, email__c, interest_rate__c, loan_interest_rate__c, loan_type__c, remaining_loan_amount__c, total_loan_amount__c, active__c FROM Account WHERE name='d' LIMIT 1];
            System.assertEquals(acc.Name, testAcc.Name);
            System.assertEquals(acc.Balance__c, testAcc.Balance__c);
            System.assertEquals(acc.Balance__c * 0.06, testAcc.Calculated_Interest__c);
            System.assertEquals(acc.Email__c, testAcc.Email__c);
            System.assertEquals(acc.Loan_Interest_Rate__c, testAcc.Loan_Interest_Rate__c);
            System.assertEquals(acc.Loan_Type__c, testAcc.Loan_Type__c);
            //System.assertEquals(acc.Total_Loan_Amount__c, testAcc.Remaining_Loan_Amount__c);
            System.assertEquals(acc.Total_Loan_Amount__c, testAcc.Total_Loan_Amount__c);
        } catch (Exception e) {
            System.assert(false, e.getMessage());
        }
        Test.stopTest();
    }
    

    @isTest
    public static void testAccount_33() {
        Account acc = createAccountFromIndex(testCaseData, 33);
        insert acc;
        
        updateAccountFromIndex(testCaseData, 33, acc);
        
        try {
            update acc;
            Account testAcc = [SELECT name, balance__c, calculated_interest__c, email__c, interest_rate__c, loan_interest_rate__c, loan_type__c, remaining_loan_amount__c, total_loan_amount__c, active__c FROM Account WHERE name='d' LIMIT 1];
            System.assertEquals(acc.Name, testAcc.Name);
            System.assertEquals(acc.Balance__c, testAcc.Balance__c);
            System.assertEquals(acc.Balance__c * 0.06, testAcc.Calculated_Interest__c);
            System.assertEquals(acc.Email__c, testAcc.Email__c);
            System.assertEquals(acc.Loan_Interest_Rate__c, testAcc.Loan_Interest_Rate__c);
            System.assertEquals(acc.Loan_Type__c, testAcc.Loan_Type__c);
            //System.assertEquals(acc.Total_Loan_Amount__c, testAcc.Remaining_Loan_Amount__c);
            System.assertEquals(acc.Total_Loan_Amount__c, testAcc.Total_Loan_Amount__c);
        } catch (Exception e) {
            System.assert(false, e.getMessage());
        }
        Test.stopTest();
    }
    

    @isTest
    public static void testAccount_34() {
        Account acc = createAccountFromIndex(testCaseData, 34);
        insert acc;
        
        updateAccountFromIndex(testCaseData, 34, acc);
        
        try {
            update acc;
            Account testAcc = [SELECT name, balance__c, calculated_interest__c, email__c, interest_rate__c, loan_interest_rate__c, loan_type__c, remaining_loan_amount__c, total_loan_amount__c, active__c FROM Account WHERE name='d' LIMIT 1];
            System.assertEquals(acc.Name, testAcc.Name);
            System.assertEquals(acc.Balance__c, testAcc.Balance__c);
            System.assertEquals(acc.Balance__c * 0.038, testAcc.Calculated_Interest__c);
            System.assertEquals(acc.Email__c, testAcc.Email__c);
            System.assertEquals(acc.Loan_Interest_Rate__c, testAcc.Loan_Interest_Rate__c);
            System.assertEquals(acc.Loan_Type__c, testAcc.Loan_Type__c);
            //System.assertEquals(acc.Total_Loan_Amount__c, testAcc.Remaining_Loan_Amount__c);
            System.assertEquals(acc.Total_Loan_Amount__c, testAcc.Total_Loan_Amount__c);
        } catch (Exception e) {
            System.assert(false, e.getMessage());
        }
        Test.stopTest();
    }
    

    @isTest
    public static void testAccount_35() {
        Account acc = createAccountFromIndex(testCaseData, 35);
        insert acc;
        
        updateAccountFromIndex(testCaseData, 35, acc);
        
        try {
            update acc;
            Account testAcc = [SELECT name, balance__c, calculated_interest__c, email__c, interest_rate__c, loan_interest_rate__c, loan_type__c, remaining_loan_amount__c, total_loan_amount__c, active__c FROM Account WHERE name='d' LIMIT 1];
            System.assertEquals(acc.Name, testAcc.Name);
            System.assertEquals(acc.Balance__c, testAcc.Balance__c);
            System.assertEquals(acc.Balance__c * 0.06, testAcc.Calculated_Interest__c);
            System.assertEquals(acc.Email__c, testAcc.Email__c);
            System.assertEquals(acc.Loan_Interest_Rate__c, testAcc.Loan_Interest_Rate__c);
            System.assertEquals(acc.Loan_Type__c, testAcc.Loan_Type__c);
            //System.assertEquals(acc.Total_Loan_Amount__c, testAcc.Remaining_Loan_Amount__c);
            System.assertEquals(acc.Total_Loan_Amount__c, testAcc.Total_Loan_Amount__c);
        } catch (Exception e) {
            System.assert(false, e.getMessage());
        }
        Test.stopTest();
    }
    

    @isTest
    public static void testAccount_36() {
        Account acc = createAccountFromIndex(testCaseData, 36);
        insert acc;
        
        updateAccountFromIndex(testCaseData, 36, acc);
        
        try {
            update acc;
            Account testAcc = [SELECT name, balance__c, calculated_interest__c, email__c, interest_rate__c, loan_interest_rate__c, loan_type__c, remaining_loan_amount__c, total_loan_amount__c, active__c FROM Account WHERE name='d' LIMIT 1];
            System.assertEquals(acc.Name, testAcc.Name);
            System.assertEquals(acc.Balance__c, testAcc.Balance__c);
            System.assertEquals(acc.Balance__c * 0.06, testAcc.Calculated_Interest__c);
            System.assertEquals(acc.Email__c, testAcc.Email__c);
            System.assertEquals(acc.Loan_Interest_Rate__c, testAcc.Loan_Interest_Rate__c);
            System.assertEquals(acc.Loan_Type__c, testAcc.Loan_Type__c);
            //System.assertEquals(acc.Total_Loan_Amount__c, testAcc.Remaining_Loan_Amount__c);
            System.assertEquals(acc.Total_Loan_Amount__c, testAcc.Total_Loan_Amount__c);
        } catch (Exception e) {
            System.assert(false, e.getMessage());
        }
        Test.stopTest();
    }
    

    @isTest
    public static void testAccount_37() {
        Account acc = createAccountFromIndex(testCaseData, 37);
        insert acc;
        
        updateAccountFromIndex(testCaseData, 37, acc);
        
        try {
            update acc;
            Account testAcc = [SELECT name, balance__c, calculated_interest__c, email__c, interest_rate__c, loan_interest_rate__c, loan_type__c, remaining_loan_amount__c, total_loan_amount__c, active__c FROM Account WHERE name='d' LIMIT 1];
            System.assertEquals(acc.Name, testAcc.Name);
            System.assertEquals(acc.Balance__c, testAcc.Balance__c);
            System.assertEquals(acc.Balance__c * 0.038, testAcc.Calculated_Interest__c);
            System.assertEquals(acc.Email__c, testAcc.Email__c);
            System.assertEquals(acc.Loan_Interest_Rate__c, testAcc.Loan_Interest_Rate__c);
            System.assertEquals(acc.Loan_Type__c, testAcc.Loan_Type__c);
            //System.assertEquals(acc.Total_Loan_Amount__c, testAcc.Remaining_Loan_Amount__c);
            System.assertEquals(acc.Total_Loan_Amount__c, testAcc.Total_Loan_Amount__c);
        } catch (Exception e) {
            System.assert(false, e.getMessage());
        }
        Test.stopTest();
    }
    

    @isTest
    public static void testAccount_38() {
        Account acc = createAccountFromIndex(testCaseData, 38);
        insert acc;
        
        updateAccountFromIndex(testCaseData, 38, acc);
        
        try {
            update acc;
            Account testAcc = [SELECT name, balance__c, calculated_interest__c, email__c, interest_rate__c, loan_interest_rate__c, loan_type__c, remaining_loan_amount__c, total_loan_amount__c, active__c FROM Account WHERE name='d' LIMIT 1];
            System.assertEquals(acc.Name, testAcc.Name);
            System.assertEquals(acc.Balance__c, testAcc.Balance__c);
            System.assertEquals(acc.Balance__c * 0.038, testAcc.Calculated_Interest__c);
            System.assertEquals(acc.Email__c, testAcc.Email__c);
            System.assertEquals(acc.Loan_Interest_Rate__c, testAcc.Loan_Interest_Rate__c);
            System.assertEquals(acc.Loan_Type__c, testAcc.Loan_Type__c);
            //System.assertEquals(acc.Total_Loan_Amount__c, testAcc.Remaining_Loan_Amount__c);
            System.assertEquals(acc.Total_Loan_Amount__c, testAcc.Total_Loan_Amount__c);
        } catch (Exception e) {
            System.assert(false, e.getMessage());
        }
        Test.stopTest();
    }
    

    @isTest
    public static void testAccount_39() {
        Test.startTest();
        Account acc = createAccountFromIndex(testCaseData, 39);
        
        try {
            insert acc;
            Account testAcc = [SELECT name, balance__c, calculated_interest__c, email__c, interest_rate__c, loan_interest_rate__c, loan_type__c, remaining_loan_amount__c, total_loan_amount__c, active__c FROM Account WHERE name='e' LIMIT 1];
            System.assertEquals(acc.Name, testAcc.Name);
            System.assertEquals(acc.Balance__c, testAcc.Balance__c);
            System.assertEquals(acc.Balance__c * 0.038, testAcc.Calculated_Interest__c);
            System.assertEquals(acc.Email__c, testAcc.Email__c);
            System.assertEquals(acc.Loan_Interest_Rate__c, testAcc.Loan_Interest_Rate__c);
            System.assertEquals(acc.Loan_Type__c, testAcc.Loan_Type__c);
            //System.assertEquals(acc.Total_Loan_Amount__c, testAcc.Remaining_Loan_Amount__c);
            System.assertEquals(acc.Total_Loan_Amount__c, testAcc.Total_Loan_Amount__c);
        } catch (Exception e) {
            System.assert(false, e.getMessage());
        }
        Test.stopTest();
    }
    

    @isTest
    public static void testAccount_40() {
        Account acc = createAccountFromIndex(testCaseData, 40);
        insert acc;
        
        updateAccountFromIndex(testCaseData, 40, acc);
        
        try {
            update acc;
            Account testAcc = [SELECT name, balance__c, calculated_interest__c, email__c, interest_rate__c, loan_interest_rate__c, loan_type__c, remaining_loan_amount__c, total_loan_amount__c, active__c FROM Account WHERE name='d' LIMIT 1];
            System.assertEquals(acc.Name, testAcc.Name);
            System.assertEquals(acc.Balance__c, testAcc.Balance__c);
            System.assertEquals(acc.Balance__c * 0.05, testAcc.Calculated_Interest__c);
            System.assertEquals(acc.Email__c, testAcc.Email__c);
            System.assertEquals(acc.Loan_Interest_Rate__c, testAcc.Loan_Interest_Rate__c);
            System.assertEquals(acc.Loan_Type__c, testAcc.Loan_Type__c);
            //System.assertEquals(acc.Total_Loan_Amount__c, testAcc.Remaining_Loan_Amount__c);
            System.assertEquals(acc.Total_Loan_Amount__c, testAcc.Total_Loan_Amount__c);
        } catch (Exception e) {
            System.assert(false, e.getMessage());
        }
        Test.stopTest();
    }
    

    @isTest
    public static void testAccount_41() {
        Account acc = createAccountFromIndex(testCaseData, 41);
        insert acc;
        
        updateAccountFromIndex(testCaseData, 41, acc);
        
        try {
            update acc;
            Account testAcc = [SELECT name, balance__c, calculated_interest__c, email__c, interest_rate__c, loan_interest_rate__c, loan_type__c, remaining_loan_amount__c, total_loan_amount__c, active__c FROM Account WHERE name='d' LIMIT 1];
            System.assertEquals(acc.Name, testAcc.Name);
            System.assertEquals(acc.Balance__c, testAcc.Balance__c);
            System.assertEquals(acc.Balance__c * 0.05, testAcc.Calculated_Interest__c);
            System.assertEquals(acc.Email__c, testAcc.Email__c);
            System.assertEquals(acc.Loan_Interest_Rate__c, testAcc.Loan_Interest_Rate__c);
            System.assertEquals(acc.Loan_Type__c, testAcc.Loan_Type__c);
            //System.assertEquals(acc.Total_Loan_Amount__c, testAcc.Remaining_Loan_Amount__c);
            System.assertEquals(acc.Total_Loan_Amount__c, testAcc.Total_Loan_Amount__c);
        } catch (Exception e) {
            System.assert(false, e.getMessage());
        }
        Test.stopTest();
    }
    

    @isTest
    public static void testAccount_42() {
        Test.startTest();
        Account acc = createAccountFromIndex(testCaseData, 42);
        
        try {
            insert acc;
            Account testAcc = [SELECT name, balance__c, calculated_interest__c, email__c, interest_rate__c, loan_interest_rate__c, loan_type__c, remaining_loan_amount__c, total_loan_amount__c, active__c FROM Account WHERE name='e' LIMIT 1];
            System.assertEquals(acc.Name, testAcc.Name);
            System.assertEquals(acc.Balance__c, testAcc.Balance__c);
            System.assertEquals(acc.Balance__c * 0.05, testAcc.Calculated_Interest__c);
            System.assertEquals(acc.Email__c, testAcc.Email__c);
            System.assertEquals(acc.Loan_Interest_Rate__c, testAcc.Loan_Interest_Rate__c);
            System.assertEquals(acc.Loan_Type__c, testAcc.Loan_Type__c);
            //System.assertEquals(acc.Total_Loan_Amount__c, testAcc.Remaining_Loan_Amount__c);
            System.assertEquals(acc.Total_Loan_Amount__c, testAcc.Total_Loan_Amount__c);
        } catch (Exception e) {
            System.assert(false, e.getMessage());
        }
        Test.stopTest();
    }
    

    @isTest
    public static void testAccount_43() {
        Test.startTest();
        Account acc = createAccountFromIndex(testCaseData, 43);
        
        try {
            insert acc;
            Account testAcc = [SELECT name, balance__c, calculated_interest__c, email__c, interest_rate__c, loan_interest_rate__c, loan_type__c, remaining_loan_amount__c, total_loan_amount__c, active__c FROM Account WHERE name='e' LIMIT 1];
            System.assertEquals(acc.Name, testAcc.Name);
            System.assertEquals(acc.Balance__c, testAcc.Balance__c);
            System.assertEquals(acc.Balance__c * 0.06, testAcc.Calculated_Interest__c);
            System.assertEquals(acc.Email__c, testAcc.Email__c);
            System.assertEquals(acc.Loan_Interest_Rate__c, testAcc.Loan_Interest_Rate__c);
            System.assertEquals(acc.Loan_Type__c, testAcc.Loan_Type__c);
            //System.assertEquals(acc.Total_Loan_Amount__c, testAcc.Remaining_Loan_Amount__c);
            System.assertEquals(acc.Total_Loan_Amount__c, testAcc.Total_Loan_Amount__c);
        } catch (Exception e) {
            System.assert(false, e.getMessage());
        }
        Test.stopTest();
    }
    

    @isTest
    public static void testAccount_44() {
        Test.startTest();
        Account acc = createAccountFromIndex(testCaseData, 44);
        
        try {
            insert acc;
            Account testAcc = [SELECT name, balance__c, calculated_interest__c, email__c, interest_rate__c, loan_interest_rate__c, loan_type__c, remaining_loan_amount__c, total_loan_amount__c, active__c FROM Account WHERE name='e' LIMIT 1];
            System.assertEquals(acc.Name, testAcc.Name);
            System.assertEquals(acc.Balance__c, testAcc.Balance__c);
            System.assertEquals(acc.Balance__c * 0.06, testAcc.Calculated_Interest__c);
            System.assertEquals(acc.Email__c, testAcc.Email__c);
            System.assertEquals(acc.Loan_Interest_Rate__c, testAcc.Loan_Interest_Rate__c);
            System.assertEquals(acc.Loan_Type__c, testAcc.Loan_Type__c);
            //System.assertEquals(acc.Total_Loan_Amount__c, testAcc.Remaining_Loan_Amount__c);
            System.assertEquals(acc.Total_Loan_Amount__c, testAcc.Total_Loan_Amount__c);
        } catch (Exception e) {
            System.assert(false, e.getMessage());
        }
        Test.stopTest();
    }
    

    @isTest
    public static void testAccount_45() {
        Account acc = createAccountFromIndex(testCaseData, 45);
        insert acc;
        
        updateAccountFromIndex(testCaseData, 45, acc);
        
        try {
            update acc;
            Account testAcc = [SELECT name, balance__c, calculated_interest__c, email__c, interest_rate__c, loan_interest_rate__c, loan_type__c, remaining_loan_amount__c, total_loan_amount__c, active__c FROM Account WHERE name='d' LIMIT 1];
            System.assertEquals(acc.Name, testAcc.Name);
            System.assertEquals(acc.Balance__c, testAcc.Balance__c);
            System.assertEquals(acc.Balance__c * 0.038, testAcc.Calculated_Interest__c);
            System.assertEquals(acc.Email__c, testAcc.Email__c);
            System.assertEquals(acc.Loan_Interest_Rate__c, testAcc.Loan_Interest_Rate__c);
            System.assertEquals(acc.Loan_Type__c, testAcc.Loan_Type__c);
            //System.assertEquals(acc.Total_Loan_Amount__c, testAcc.Remaining_Loan_Amount__c);
            System.assertEquals(acc.Total_Loan_Amount__c, testAcc.Total_Loan_Amount__c);
        } catch (Exception e) {
            System.assert(false, e.getMessage());
        }
        Test.stopTest();
    }
    

    @isTest
    public static void testAccount_46() {
        Account acc = createAccountFromIndex(testCaseData, 46);
        insert acc;
        
        updateAccountFromIndex(testCaseData, 46, acc);
        
        try {
            update acc;
            Account testAcc = [SELECT name, balance__c, calculated_interest__c, email__c, interest_rate__c, loan_interest_rate__c, loan_type__c, remaining_loan_amount__c, total_loan_amount__c, active__c FROM Account WHERE name='d' LIMIT 1];
            System.assertEquals(acc.Name, testAcc.Name);
            System.assertEquals(acc.Balance__c, testAcc.Balance__c);
            System.assertEquals(acc.Balance__c * 0.05, testAcc.Calculated_Interest__c);
            System.assertEquals(acc.Email__c, testAcc.Email__c);
            System.assertEquals(acc.Loan_Interest_Rate__c, testAcc.Loan_Interest_Rate__c);
            System.assertEquals(acc.Loan_Type__c, testAcc.Loan_Type__c);
            //System.assertEquals(acc.Total_Loan_Amount__c, testAcc.Remaining_Loan_Amount__c);
            System.assertEquals(acc.Total_Loan_Amount__c, testAcc.Total_Loan_Amount__c);
        } catch (Exception e) {
            System.assert(false, e.getMessage());
        }
        Test.stopTest();
    }
    

    @isTest
    public static void testAccount_47() {
        Account acc = createAccountFromIndex(testCaseData, 47);
        insert acc;
        
        updateAccountFromIndex(testCaseData, 47, acc);
        
        try {
            update acc;
            Account testAcc = [SELECT name, balance__c, calculated_interest__c, email__c, interest_rate__c, loan_interest_rate__c, loan_type__c, remaining_loan_amount__c, total_loan_amount__c, active__c FROM Account WHERE name='d' LIMIT 1];
            System.assertEquals(acc.Name, testAcc.Name);
            System.assertEquals(acc.Balance__c, testAcc.Balance__c);
            System.assertEquals(acc.Balance__c * 0.05, testAcc.Calculated_Interest__c);
            System.assertEquals(acc.Email__c, testAcc.Email__c);
            System.assertEquals(acc.Loan_Interest_Rate__c, testAcc.Loan_Interest_Rate__c);
            System.assertEquals(acc.Loan_Type__c, testAcc.Loan_Type__c);
            //System.assertEquals(acc.Total_Loan_Amount__c, testAcc.Remaining_Loan_Amount__c);
            System.assertEquals(acc.Total_Loan_Amount__c, testAcc.Total_Loan_Amount__c);
        } catch (Exception e) {
            System.assert(false, e.getMessage());
        }
        Test.stopTest();
    }
    

    @isTest
    public static void testAccount_48() {
        Account acc = createAccountFromIndex(testCaseData, 48);
        insert acc;
        
        updateAccountFromIndex(testCaseData, 48, acc);
        
        try {
            update acc;
            Account testAcc = [SELECT name, balance__c, calculated_interest__c, email__c, interest_rate__c, loan_interest_rate__c, loan_type__c, remaining_loan_amount__c, total_loan_amount__c, active__c FROM Account WHERE name='d' LIMIT 1];
            System.assertEquals(acc.Name, testAcc.Name);
            System.assertEquals(acc.Balance__c, testAcc.Balance__c);
            System.assertEquals(acc.Balance__c * 0.05, testAcc.Calculated_Interest__c);
            System.assertEquals(acc.Email__c, testAcc.Email__c);
            System.assertEquals(acc.Loan_Interest_Rate__c, testAcc.Loan_Interest_Rate__c);
            System.assertEquals(acc.Loan_Type__c, testAcc.Loan_Type__c);
            //System.assertEquals(acc.Total_Loan_Amount__c, testAcc.Remaining_Loan_Amount__c);
            System.assertEquals(acc.Total_Loan_Amount__c, testAcc.Total_Loan_Amount__c);
        } catch (Exception e) {
            System.assert(false, e.getMessage());
        }
        Test.stopTest();
    }
    

    @isTest
    public static void testAccount_49() {
        Account acc = createAccountFromIndex(testCaseData, 49);
        insert acc;
        
        updateAccountFromIndex(testCaseData, 49, acc);
        
        try {
            update acc;
            Account testAcc = [SELECT name, balance__c, calculated_interest__c, email__c, interest_rate__c, loan_interest_rate__c, loan_type__c, remaining_loan_amount__c, total_loan_amount__c, active__c FROM Account WHERE name='d' LIMIT 1];
            System.assertEquals(acc.Name, testAcc.Name);
            System.assertEquals(acc.Balance__c, testAcc.Balance__c);
            System.assertEquals(acc.Balance__c * 0.05, testAcc.Calculated_Interest__c);
            System.assertEquals(acc.Email__c, testAcc.Email__c);
            System.assertEquals(acc.Loan_Interest_Rate__c, testAcc.Loan_Interest_Rate__c);
            System.assertEquals(acc.Loan_Type__c, testAcc.Loan_Type__c);
            //System.assertEquals(acc.Total_Loan_Amount__c, testAcc.Remaining_Loan_Amount__c);
            System.assertEquals(acc.Total_Loan_Amount__c, testAcc.Total_Loan_Amount__c);
        } catch (Exception e) {
            System.assert(false, e.getMessage());
        }
        Test.stopTest();
    }
    

    @isTest
    public static void testAccount_50() {
        Account acc = createAccountFromIndex(testCaseData, 50);
        insert acc;
        
        updateAccountFromIndex(testCaseData, 50, acc);
        
        try {
            update acc;
            Account testAcc = [SELECT name, balance__c, calculated_interest__c, email__c, interest_rate__c, loan_interest_rate__c, loan_type__c, remaining_loan_amount__c, total_loan_amount__c, active__c FROM Account WHERE name='d' LIMIT 1];
            System.assertEquals(acc.Name, testAcc.Name);
            System.assertEquals(acc.Balance__c, testAcc.Balance__c);
            System.assertEquals(acc.Balance__c * 0.038, testAcc.Calculated_Interest__c);
            System.assertEquals(acc.Email__c, testAcc.Email__c);
            System.assertEquals(acc.Loan_Interest_Rate__c, testAcc.Loan_Interest_Rate__c);
            System.assertEquals(acc.Loan_Type__c, testAcc.Loan_Type__c);
            //System.assertEquals(acc.Total_Loan_Amount__c, testAcc.Remaining_Loan_Amount__c);
            System.assertEquals(acc.Total_Loan_Amount__c, testAcc.Total_Loan_Amount__c);
        } catch (Exception e) {
            System.assert(false, e.getMessage());
        }
        Test.stopTest();
    }
    

    @isTest
    public static void testAccount_51() {
        Test.startTest();
        Account acc = createAccountFromIndex(testCaseData, 51);
        
        try {
            insert acc;
            Account testAcc = [SELECT name, balance__c, calculated_interest__c, email__c, interest_rate__c, loan_interest_rate__c, loan_type__c, remaining_loan_amount__c, total_loan_amount__c, active__c FROM Account WHERE name='e' LIMIT 1];
            System.assertEquals(acc.Name, testAcc.Name);
            System.assertEquals(acc.Balance__c, testAcc.Balance__c);
            System.assertEquals(acc.Balance__c * 0.038, testAcc.Calculated_Interest__c);
            System.assertEquals(acc.Email__c, testAcc.Email__c);
            System.assertEquals(acc.Loan_Interest_Rate__c, testAcc.Loan_Interest_Rate__c);
            System.assertEquals(acc.Loan_Type__c, testAcc.Loan_Type__c);
            //System.assertEquals(acc.Total_Loan_Amount__c, testAcc.Remaining_Loan_Amount__c);
            System.assertEquals(acc.Total_Loan_Amount__c, testAcc.Total_Loan_Amount__c);
        } catch (Exception e) {
            System.assert(false, e.getMessage());
        }
        Test.stopTest();
    }
    

    @isTest
    public static void testAccount_52() {
        Test.startTest();
        Account acc = createAccountFromIndex(testCaseData, 52);
        
        try {
            insert acc;
            Account testAcc = [SELECT name, balance__c, calculated_interest__c, email__c, interest_rate__c, loan_interest_rate__c, loan_type__c, remaining_loan_amount__c, total_loan_amount__c, active__c FROM Account WHERE name='e' LIMIT 1];
            System.assertEquals(acc.Name, testAcc.Name);
            System.assertEquals(acc.Balance__c, testAcc.Balance__c);
            System.assertEquals(acc.Balance__c * 0.038, testAcc.Calculated_Interest__c);
            System.assertEquals(acc.Email__c, testAcc.Email__c);
            System.assertEquals(acc.Loan_Interest_Rate__c, testAcc.Loan_Interest_Rate__c);
            System.assertEquals(acc.Loan_Type__c, testAcc.Loan_Type__c);
            //System.assertEquals(acc.Total_Loan_Amount__c, testAcc.Remaining_Loan_Amount__c);
            System.assertEquals(acc.Total_Loan_Amount__c, testAcc.Total_Loan_Amount__c);
        } catch (Exception e) {
            System.assert(false, e.getMessage());
        }
        Test.stopTest();
    }
    

    @isTest
    public static void testAccount_53() {
        Account acc = createAccountFromIndex(testCaseData, 53);
        insert acc;
        
        updateAccountFromIndex(testCaseData, 53, acc);
        
        try {
            update acc;
            Account testAcc = [SELECT name, balance__c, calculated_interest__c, email__c, interest_rate__c, loan_interest_rate__c, loan_type__c, remaining_loan_amount__c, total_loan_amount__c, active__c FROM Account WHERE name='d' LIMIT 1];
            System.assertEquals(acc.Name, testAcc.Name);
            System.assertEquals(acc.Balance__c, testAcc.Balance__c);
            System.assertEquals(acc.Balance__c * 0.06, testAcc.Calculated_Interest__c);
            System.assertEquals(acc.Email__c, testAcc.Email__c);
            System.assertEquals(acc.Loan_Interest_Rate__c, testAcc.Loan_Interest_Rate__c);
            System.assertEquals(acc.Loan_Type__c, testAcc.Loan_Type__c);
            //System.assertEquals(acc.Total_Loan_Amount__c, testAcc.Remaining_Loan_Amount__c);
            System.assertEquals(acc.Total_Loan_Amount__c, testAcc.Total_Loan_Amount__c);
        } catch (Exception e) {
            System.assert(false, e.getMessage());
        }
        Test.stopTest();
    }
    

    @isTest
    public static void testAccount_54() {
        Test.startTest();
        Account acc = createAccountFromIndex(testCaseData, 54);
        
        try {
            insert acc;
            Account testAcc = [SELECT name, balance__c, calculated_interest__c, email__c, interest_rate__c, loan_interest_rate__c, loan_type__c, remaining_loan_amount__c, total_loan_amount__c, active__c FROM Account WHERE name='e' LIMIT 1];
            System.assertEquals(acc.Name, testAcc.Name);
            System.assertEquals(acc.Balance__c, testAcc.Balance__c);
            System.assertEquals(acc.Balance__c * 0.06, testAcc.Calculated_Interest__c);
            System.assertEquals(acc.Email__c, testAcc.Email__c);
            System.assertEquals(acc.Loan_Interest_Rate__c, testAcc.Loan_Interest_Rate__c);
            System.assertEquals(acc.Loan_Type__c, testAcc.Loan_Type__c);
            //System.assertEquals(acc.Total_Loan_Amount__c, testAcc.Remaining_Loan_Amount__c);
            System.assertEquals(acc.Total_Loan_Amount__c, testAcc.Total_Loan_Amount__c);
        } catch (Exception e) {
            System.assert(false, e.getMessage());
        }
        Test.stopTest();
    }
    

    @isTest
    public static void testAccount_55() {
        Account acc = createAccountFromIndex(testCaseData, 55);
        insert acc;
        
        updateAccountFromIndex(testCaseData, 55, acc);
        
        try {
            update acc;
            Account testAcc = [SELECT name, balance__c, calculated_interest__c, email__c, interest_rate__c, loan_interest_rate__c, loan_type__c, remaining_loan_amount__c, total_loan_amount__c, active__c FROM Account WHERE name='d' LIMIT 1];
            System.assertEquals(acc.Name, testAcc.Name);
            System.assertEquals(acc.Balance__c, testAcc.Balance__c);
            System.assertEquals(acc.Balance__c * 0.06, testAcc.Calculated_Interest__c);
            System.assertEquals(acc.Email__c, testAcc.Email__c);
            System.assertEquals(acc.Loan_Interest_Rate__c, testAcc.Loan_Interest_Rate__c);
            System.assertEquals(acc.Loan_Type__c, testAcc.Loan_Type__c);
            //System.assertEquals(acc.Total_Loan_Amount__c, testAcc.Remaining_Loan_Amount__c);
            System.assertEquals(acc.Total_Loan_Amount__c, testAcc.Total_Loan_Amount__c);
        } catch (Exception e) {
            System.assert(false, e.getMessage());
        }
        Test.stopTest();
    }
    

    @isTest
    public static void testAccount_56() {
        Test.startTest();
        Account acc = createAccountFromIndex(testCaseData, 56);
        
        try {
            insert acc;
            Account testAcc = [SELECT name, balance__c, calculated_interest__c, email__c, interest_rate__c, loan_interest_rate__c, loan_type__c, remaining_loan_amount__c, total_loan_amount__c, active__c FROM Account WHERE name='e' LIMIT 1];
            System.assertEquals(acc.Name, testAcc.Name);
            System.assertEquals(acc.Balance__c, testAcc.Balance__c);
            System.assertEquals(acc.Balance__c * 0.05, testAcc.Calculated_Interest__c);
            System.assertEquals(acc.Email__c, testAcc.Email__c);
            System.assertEquals(acc.Loan_Interest_Rate__c, testAcc.Loan_Interest_Rate__c);
            System.assertEquals(acc.Loan_Type__c, testAcc.Loan_Type__c);
            //System.assertEquals(acc.Total_Loan_Amount__c, testAcc.Remaining_Loan_Amount__c);
            System.assertEquals(acc.Total_Loan_Amount__c, testAcc.Total_Loan_Amount__c);
        } catch (Exception e) {
            System.assert(false, e.getMessage());
        }
        Test.stopTest();
    }
    

    @isTest
    public static void testAccount_57() {
        Test.startTest();
        Account acc = createAccountFromIndex(testCaseData, 57);
        
        try {
            insert acc;
            Account testAcc = [SELECT name, balance__c, calculated_interest__c, email__c, interest_rate__c, loan_interest_rate__c, loan_type__c, remaining_loan_amount__c, total_loan_amount__c, active__c FROM Account WHERE name='e' LIMIT 1];
            System.assertEquals(acc.Name, testAcc.Name);
            System.assertEquals(acc.Balance__c, testAcc.Balance__c);
            System.assertEquals(acc.Balance__c * 0.05, testAcc.Calculated_Interest__c);
            System.assertEquals(acc.Email__c, testAcc.Email__c);
            System.assertEquals(acc.Loan_Interest_Rate__c, testAcc.Loan_Interest_Rate__c);
            System.assertEquals(acc.Loan_Type__c, testAcc.Loan_Type__c);
            //System.assertEquals(acc.Total_Loan_Amount__c, testAcc.Remaining_Loan_Amount__c);
            System.assertEquals(acc.Total_Loan_Amount__c, testAcc.Total_Loan_Amount__c);
        } catch (Exception e) {
            System.assert(false, e.getMessage());
        }
        Test.stopTest();
    }
    

    @isTest
    public static void testAccount_58() {
        Account acc = createAccountFromIndex(testCaseData, 58);
        insert acc;
        
        updateAccountFromIndex(testCaseData, 58, acc);
        
        try {
            update acc;
            Account testAcc = [SELECT name, balance__c, calculated_interest__c, email__c, interest_rate__c, loan_interest_rate__c, loan_type__c, remaining_loan_amount__c, total_loan_amount__c, active__c FROM Account WHERE name='d' LIMIT 1];
            System.assertEquals(acc.Name, testAcc.Name);
            System.assertEquals(acc.Balance__c, testAcc.Balance__c);
            System.assertEquals(acc.Balance__c * 0.038, testAcc.Calculated_Interest__c);
            System.assertEquals(acc.Email__c, testAcc.Email__c);
            System.assertEquals(acc.Loan_Interest_Rate__c, testAcc.Loan_Interest_Rate__c);
            System.assertEquals(acc.Loan_Type__c, testAcc.Loan_Type__c);
            //System.assertEquals(acc.Total_Loan_Amount__c, testAcc.Remaining_Loan_Amount__c);
            System.assertEquals(acc.Total_Loan_Amount__c, testAcc.Total_Loan_Amount__c);
        } catch (Exception e) {
            System.assert(false, e.getMessage());
        }
        Test.stopTest();
    }
    

    @isTest
    public static void testAccount_59() {
        Account acc = createAccountFromIndex(testCaseData, 59);
        insert acc;
        
        updateAccountFromIndex(testCaseData, 59, acc);
        
        try {
            update acc;
            Account testAcc = [SELECT name, balance__c, calculated_interest__c, email__c, interest_rate__c, loan_interest_rate__c, loan_type__c, remaining_loan_amount__c, total_loan_amount__c, active__c FROM Account WHERE name='d' LIMIT 1];
            System.assertEquals(acc.Name, testAcc.Name);
            System.assertEquals(acc.Balance__c, testAcc.Balance__c);
            System.assertEquals(acc.Balance__c * 0.05, testAcc.Calculated_Interest__c);
            System.assertEquals(acc.Email__c, testAcc.Email__c);
            System.assertEquals(acc.Loan_Interest_Rate__c, testAcc.Loan_Interest_Rate__c);
            System.assertEquals(acc.Loan_Type__c, testAcc.Loan_Type__c);
            //System.assertEquals(acc.Total_Loan_Amount__c, testAcc.Remaining_Loan_Amount__c);
            System.assertEquals(acc.Total_Loan_Amount__c, testAcc.Total_Loan_Amount__c);
        } catch (Exception e) {
            System.assert(false, e.getMessage());
        }
        Test.stopTest();
    }
    

    @isTest
    public static void testAccount_60() {
        Test.startTest();
        Account acc = createAccountFromIndex(testCaseData, 60);
        
        try {
            insert acc;
            Account testAcc = [SELECT name, balance__c, calculated_interest__c, email__c, interest_rate__c, loan_interest_rate__c, loan_type__c, remaining_loan_amount__c, total_loan_amount__c, active__c FROM Account WHERE name='e' LIMIT 1];
            System.assertEquals(acc.Name, testAcc.Name);
            System.assertEquals(acc.Balance__c, testAcc.Balance__c);
            System.assertEquals(acc.Balance__c * 0.06, testAcc.Calculated_Interest__c);
            System.assertEquals(acc.Email__c, testAcc.Email__c);
            System.assertEquals(acc.Loan_Interest_Rate__c, testAcc.Loan_Interest_Rate__c);
            System.assertEquals(acc.Loan_Type__c, testAcc.Loan_Type__c);
            //System.assertEquals(acc.Total_Loan_Amount__c, testAcc.Remaining_Loan_Amount__c);
            System.assertEquals(acc.Total_Loan_Amount__c, testAcc.Total_Loan_Amount__c);
        } catch (Exception e) {
            System.assert(false, e.getMessage());
        }
        Test.stopTest();
    }
    

    @isTest
    public static void testAccount_61() {
        Account acc = createAccountFromIndex(testCaseData, 61);
        insert acc;
        
        updateAccountFromIndex(testCaseData, 61, acc);
        
        try {
            update acc;
            Account testAcc = [SELECT name, balance__c, calculated_interest__c, email__c, interest_rate__c, loan_interest_rate__c, loan_type__c, remaining_loan_amount__c, total_loan_amount__c, active__c FROM Account WHERE name='d' LIMIT 1];
            System.assertEquals(acc.Name, testAcc.Name);
            System.assertEquals(acc.Balance__c, testAcc.Balance__c);
            System.assertEquals(acc.Balance__c * 0.038, testAcc.Calculated_Interest__c);
            System.assertEquals(acc.Email__c, testAcc.Email__c);
            System.assertEquals(acc.Loan_Interest_Rate__c, testAcc.Loan_Interest_Rate__c);
            System.assertEquals(acc.Loan_Type__c, testAcc.Loan_Type__c);
            //System.assertEquals(acc.Total_Loan_Amount__c, testAcc.Remaining_Loan_Amount__c);
            System.assertEquals(acc.Total_Loan_Amount__c, testAcc.Total_Loan_Amount__c);
        } catch (Exception e) {
            System.assert(false, e.getMessage());
        }
        Test.stopTest();
    }
    

    @isTest
    public static void testAccount_62() {
        Test.startTest();
        Account acc = createAccountFromIndex(testCaseData, 62);
        
        try {
            insert acc;
            Account testAcc = [SELECT name, balance__c, calculated_interest__c, email__c, interest_rate__c, loan_interest_rate__c, loan_type__c, remaining_loan_amount__c, total_loan_amount__c, active__c FROM Account WHERE name='e' LIMIT 1];
            System.assertEquals(acc.Name, testAcc.Name);
            System.assertEquals(acc.Balance__c, testAcc.Balance__c);
            System.assertEquals(acc.Balance__c * 0.05, testAcc.Calculated_Interest__c);
            System.assertEquals(acc.Email__c, testAcc.Email__c);
            System.assertEquals(acc.Loan_Interest_Rate__c, testAcc.Loan_Interest_Rate__c);
            System.assertEquals(acc.Loan_Type__c, testAcc.Loan_Type__c);
            //System.assertEquals(acc.Total_Loan_Amount__c, testAcc.Remaining_Loan_Amount__c);
            System.assertEquals(acc.Total_Loan_Amount__c, testAcc.Total_Loan_Amount__c);
        } catch (Exception e) {
            System.assert(false, e.getMessage());
        }
        Test.stopTest();
    }
    

    @isTest
    public static void testAccount_63() {
        Account acc = createAccountFromIndex(testCaseData, 63);
        insert acc;
        
        updateAccountFromIndex(testCaseData, 63, acc);
        
        try {
            update acc;
            Account testAcc = [SELECT name, balance__c, calculated_interest__c, email__c, interest_rate__c, loan_interest_rate__c, loan_type__c, remaining_loan_amount__c, total_loan_amount__c, active__c FROM Account WHERE name='d' LIMIT 1];
            System.assertEquals(acc.Name, testAcc.Name);
            System.assertEquals(acc.Balance__c, testAcc.Balance__c);
            System.assertEquals(acc.Balance__c * 0.038, testAcc.Calculated_Interest__c);
            System.assertEquals(acc.Email__c, testAcc.Email__c);
            System.assertEquals(acc.Loan_Interest_Rate__c, testAcc.Loan_Interest_Rate__c);
            System.assertEquals(acc.Loan_Type__c, testAcc.Loan_Type__c);
            //System.assertEquals(acc.Total_Loan_Amount__c, testAcc.Remaining_Loan_Amount__c);
            System.assertEquals(acc.Total_Loan_Amount__c, testAcc.Total_Loan_Amount__c);
        } catch (Exception e) {
            System.assert(false, e.getMessage());
        }
        Test.stopTest();
    }
    

    @isTest
    public static void testAccount_64() {
        Test.startTest();
        Account acc = createAccountFromIndex(testCaseData, 64);
        
        try {
            insert acc;
            Account testAcc = [SELECT name, balance__c, calculated_interest__c, email__c, interest_rate__c, loan_interest_rate__c, loan_type__c, remaining_loan_amount__c, total_loan_amount__c, active__c FROM Account WHERE name='e' LIMIT 1];
            System.assertEquals(acc.Name, testAcc.Name);
            System.assertEquals(acc.Balance__c, testAcc.Balance__c);
            System.assertEquals(acc.Balance__c * 0.038, testAcc.Calculated_Interest__c);
            System.assertEquals(acc.Email__c, testAcc.Email__c);
            System.assertEquals(acc.Loan_Interest_Rate__c, testAcc.Loan_Interest_Rate__c);
            System.assertEquals(acc.Loan_Type__c, testAcc.Loan_Type__c);
            //System.assertEquals(acc.Total_Loan_Amount__c, testAcc.Remaining_Loan_Amount__c);
            System.assertEquals(acc.Total_Loan_Amount__c, testAcc.Total_Loan_Amount__c);
        } catch (Exception e) {
            System.assert(false, e.getMessage());
        }
        Test.stopTest();
    }
    

    @isTest
    public static void testAccount_65() {
        Account acc = createAccountFromIndex(testCaseData, 65);
        insert acc;
        
        updateAccountFromIndex(testCaseData, 65, acc);
        
        try {
            update acc;
            Account testAcc = [SELECT name, balance__c, calculated_interest__c, email__c, interest_rate__c, loan_interest_rate__c, loan_type__c, remaining_loan_amount__c, total_loan_amount__c, active__c FROM Account WHERE name='d' LIMIT 1];
            System.assertEquals(acc.Name, testAcc.Name);
            System.assertEquals(acc.Balance__c, testAcc.Balance__c);
            System.assertEquals(acc.Balance__c * 0.05, testAcc.Calculated_Interest__c);
            System.assertEquals(acc.Email__c, testAcc.Email__c);
            System.assertEquals(acc.Loan_Interest_Rate__c, testAcc.Loan_Interest_Rate__c);
            System.assertEquals(acc.Loan_Type__c, testAcc.Loan_Type__c);
            //System.assertEquals(acc.Total_Loan_Amount__c, testAcc.Remaining_Loan_Amount__c);
            System.assertEquals(acc.Total_Loan_Amount__c, testAcc.Total_Loan_Amount__c);
        } catch (Exception e) {
            System.assert(false, e.getMessage());
        }
        Test.stopTest();
    }
    

    @isTest
    public static void testAccount_66() {
        Test.startTest();
        Account acc = createAccountFromIndex(testCaseData, 66);
        
        try {
            insert acc;
            Account testAcc = [SELECT name, balance__c, calculated_interest__c, email__c, interest_rate__c, loan_interest_rate__c, loan_type__c, remaining_loan_amount__c, total_loan_amount__c, active__c FROM Account WHERE name='e' LIMIT 1];
            System.assertEquals(acc.Name, testAcc.Name);
            System.assertEquals(acc.Balance__c, testAcc.Balance__c);
            System.assertEquals(acc.Balance__c * 0.06, testAcc.Calculated_Interest__c);
            System.assertEquals(acc.Email__c, testAcc.Email__c);
            System.assertEquals(acc.Loan_Interest_Rate__c, testAcc.Loan_Interest_Rate__c);
            System.assertEquals(acc.Loan_Type__c, testAcc.Loan_Type__c);
            //System.assertEquals(acc.Total_Loan_Amount__c, testAcc.Remaining_Loan_Amount__c);
            System.assertEquals(acc.Total_Loan_Amount__c, testAcc.Total_Loan_Amount__c);
        } catch (Exception e) {
            System.assert(false, e.getMessage());
        }
        Test.stopTest();
    }
    

    @isTest
    public static void testAccount_67() {
        Test.startTest();
        Account acc = createAccountFromIndex(testCaseData, 67);
        
        try {
            insert acc;
            Account testAcc = [SELECT name, balance__c, calculated_interest__c, email__c, interest_rate__c, loan_interest_rate__c, loan_type__c, remaining_loan_amount__c, total_loan_amount__c, active__c FROM Account WHERE name='e' LIMIT 1];
            System.assertEquals(acc.Name, testAcc.Name);
            System.assertEquals(acc.Balance__c, testAcc.Balance__c);
            System.assertEquals(acc.Balance__c * 0.038, testAcc.Calculated_Interest__c);
            System.assertEquals(acc.Email__c, testAcc.Email__c);
            System.assertEquals(acc.Loan_Interest_Rate__c, testAcc.Loan_Interest_Rate__c);
            System.assertEquals(acc.Loan_Type__c, testAcc.Loan_Type__c);
            //System.assertEquals(acc.Total_Loan_Amount__c, testAcc.Remaining_Loan_Amount__c);
            System.assertEquals(acc.Total_Loan_Amount__c, testAcc.Total_Loan_Amount__c);
        } catch (Exception e) {
            System.assert(false, e.getMessage());
        }
        Test.stopTest();
    }
    

    @isTest
    public static void testAccount_68() {
        Account acc = createAccountFromIndex(testCaseData, 68);
        insert acc;
        
        updateAccountFromIndex(testCaseData, 68, acc);
        
        try {
            update acc;
            Account testAcc = [SELECT name, balance__c, calculated_interest__c, email__c, interest_rate__c, loan_interest_rate__c, loan_type__c, remaining_loan_amount__c, total_loan_amount__c, active__c FROM Account WHERE name='d' LIMIT 1];
            System.assertEquals(acc.Name, testAcc.Name);
            System.assertEquals(acc.Balance__c, testAcc.Balance__c);
            System.assertEquals(acc.Balance__c * 0.038, testAcc.Calculated_Interest__c);
            System.assertEquals(acc.Email__c, testAcc.Email__c);
            System.assertEquals(acc.Loan_Interest_Rate__c, testAcc.Loan_Interest_Rate__c);
            System.assertEquals(acc.Loan_Type__c, testAcc.Loan_Type__c);
            //System.assertEquals(acc.Total_Loan_Amount__c, testAcc.Remaining_Loan_Amount__c);
            System.assertEquals(acc.Total_Loan_Amount__c, testAcc.Total_Loan_Amount__c);
        } catch (Exception e) {
            System.assert(false, e.getMessage());
        }
        Test.stopTest();
    }
    

    @isTest
    public static void testAccount_69() {
        Account acc = createAccountFromIndex(testCaseData, 69);
        insert acc;
        
        updateAccountFromIndex(testCaseData, 69, acc);
        
        try {
            update acc;
            Account testAcc = [SELECT name, balance__c, calculated_interest__c, email__c, interest_rate__c, loan_interest_rate__c, loan_type__c, remaining_loan_amount__c, total_loan_amount__c, active__c FROM Account WHERE name='d' LIMIT 1];
            System.assertEquals(acc.Name, testAcc.Name);
            System.assertEquals(acc.Balance__c, testAcc.Balance__c);
            System.assertEquals(acc.Balance__c * 0.038, testAcc.Calculated_Interest__c);
            System.assertEquals(acc.Email__c, testAcc.Email__c);
            System.assertEquals(acc.Loan_Interest_Rate__c, testAcc.Loan_Interest_Rate__c);
            System.assertEquals(acc.Loan_Type__c, testAcc.Loan_Type__c);
            //System.assertEquals(acc.Total_Loan_Amount__c, testAcc.Remaining_Loan_Amount__c);
            System.assertEquals(acc.Total_Loan_Amount__c, testAcc.Total_Loan_Amount__c);
        } catch (Exception e) {
            System.assert(false, e.getMessage());
        }
        Test.stopTest();
    }
    

    @isTest
    public static void testAccount_70() {
        Account acc = createAccountFromIndex(testCaseData, 70);
        insert acc;
        
        updateAccountFromIndex(testCaseData, 70, acc);
        
        try {
            update acc;
            Account testAcc = [SELECT name, balance__c, calculated_interest__c, email__c, interest_rate__c, loan_interest_rate__c, loan_type__c, remaining_loan_amount__c, total_loan_amount__c, active__c FROM Account WHERE name='d' LIMIT 1];
            System.assertEquals(acc.Name, testAcc.Name);
            System.assertEquals(acc.Balance__c, testAcc.Balance__c);
            System.assertEquals(acc.Balance__c * 0.038, testAcc.Calculated_Interest__c);
            System.assertEquals(acc.Email__c, testAcc.Email__c);
            System.assertEquals(acc.Loan_Interest_Rate__c, testAcc.Loan_Interest_Rate__c);
            System.assertEquals(acc.Loan_Type__c, testAcc.Loan_Type__c);
            //System.assertEquals(acc.Total_Loan_Amount__c, testAcc.Remaining_Loan_Amount__c);
            System.assertEquals(acc.Total_Loan_Amount__c, testAcc.Total_Loan_Amount__c);
        } catch (Exception e) {
            System.assert(false, e.getMessage());
        }
        Test.stopTest();
    }
    

    @isTest
    public static void testAccount_71() {
        Test.startTest();
        Account acc = createAccountFromIndex(testCaseData, 71);
        
        try {
            insert acc;
            Account testAcc = [SELECT name, balance__c, calculated_interest__c, email__c, interest_rate__c, loan_interest_rate__c, loan_type__c, remaining_loan_amount__c, total_loan_amount__c, active__c FROM Account WHERE name='e' LIMIT 1];
            System.assertEquals(acc.Name, testAcc.Name);
            System.assertEquals(acc.Balance__c, testAcc.Balance__c);
            System.assertEquals(acc.Balance__c * 0.06, testAcc.Calculated_Interest__c);
            System.assertEquals(acc.Email__c, testAcc.Email__c);
            System.assertEquals(acc.Loan_Interest_Rate__c, testAcc.Loan_Interest_Rate__c);
            System.assertEquals(acc.Loan_Type__c, testAcc.Loan_Type__c);
            //System.assertEquals(acc.Total_Loan_Amount__c, testAcc.Remaining_Loan_Amount__c);
            System.assertEquals(acc.Total_Loan_Amount__c, testAcc.Total_Loan_Amount__c);
        } catch (Exception e) {
            System.assert(false, e.getMessage());
        }
        Test.stopTest();
    }
    

    @isTest
    public static void testAccount_72() {
        Test.startTest();
        Account acc = createAccountFromIndex(testCaseData, 72);
        
        try {
            insert acc;
            Account testAcc = [SELECT name, balance__c, calculated_interest__c, email__c, interest_rate__c, loan_interest_rate__c, loan_type__c, remaining_loan_amount__c, total_loan_amount__c, active__c FROM Account WHERE name='e' LIMIT 1];
            System.assertEquals(acc.Name, testAcc.Name);
            System.assertEquals(acc.Balance__c, testAcc.Balance__c);
            System.assertEquals(acc.Balance__c * 0.05, testAcc.Calculated_Interest__c);
            System.assertEquals(acc.Email__c, testAcc.Email__c);
            System.assertEquals(acc.Loan_Interest_Rate__c, testAcc.Loan_Interest_Rate__c);
            System.assertEquals(acc.Loan_Type__c, testAcc.Loan_Type__c);
            //System.assertEquals(acc.Total_Loan_Amount__c, testAcc.Remaining_Loan_Amount__c);
            System.assertEquals(acc.Total_Loan_Amount__c, testAcc.Total_Loan_Amount__c);
        } catch (Exception e) {
            System.assert(false, e.getMessage());
        }
        Test.stopTest();
    }
    

    @isTest
    public static void testAccount_73() {
        Account acc = createAccountFromIndex(testCaseData, 73);
        insert acc;
        
        updateAccountFromIndex(testCaseData, 73, acc);
        
        try {
            update acc;
            Account testAcc = [SELECT name, balance__c, calculated_interest__c, email__c, interest_rate__c, loan_interest_rate__c, loan_type__c, remaining_loan_amount__c, total_loan_amount__c, active__c FROM Account WHERE name='d' LIMIT 1];
            System.assertEquals(acc.Name, testAcc.Name);
            System.assertEquals(acc.Balance__c, testAcc.Balance__c);
            System.assertEquals(acc.Balance__c * 0.06, testAcc.Calculated_Interest__c);
            System.assertEquals(acc.Email__c, testAcc.Email__c);
            System.assertEquals(acc.Loan_Interest_Rate__c, testAcc.Loan_Interest_Rate__c);
            System.assertEquals(acc.Loan_Type__c, testAcc.Loan_Type__c);
            //System.assertEquals(acc.Total_Loan_Amount__c, testAcc.Remaining_Loan_Amount__c);
            System.assertEquals(acc.Total_Loan_Amount__c, testAcc.Total_Loan_Amount__c);
        } catch (Exception e) {
            System.assert(false, e.getMessage());
        }
        Test.stopTest();
    }
    

    @isTest
    public static void testAccount_74() {
        Account acc = createAccountFromIndex(testCaseData, 74);
        insert acc;
        
        updateAccountFromIndex(testCaseData, 74, acc);
        
        try {
            update acc;
            Account testAcc = [SELECT name, balance__c, calculated_interest__c, email__c, interest_rate__c, loan_interest_rate__c, loan_type__c, remaining_loan_amount__c, total_loan_amount__c, active__c FROM Account WHERE name='d' LIMIT 1];
            System.assertEquals(acc.Name, testAcc.Name);
            System.assertEquals(acc.Balance__c, testAcc.Balance__c);
            System.assertEquals(acc.Balance__c * 0.05, testAcc.Calculated_Interest__c);
            System.assertEquals(acc.Email__c, testAcc.Email__c);
            System.assertEquals(acc.Loan_Interest_Rate__c, testAcc.Loan_Interest_Rate__c);
            System.assertEquals(acc.Loan_Type__c, testAcc.Loan_Type__c);
            //System.assertEquals(acc.Total_Loan_Amount__c, testAcc.Remaining_Loan_Amount__c);
            System.assertEquals(acc.Total_Loan_Amount__c, testAcc.Total_Loan_Amount__c);
        } catch (Exception e) {
            System.assert(false, e.getMessage());
        }
        Test.stopTest();
    }
    

    @isTest
    public static void testAccount_75() {
        Test.startTest();
        Account acc = createAccountFromIndex(testCaseData, 75);
        
        try {
            insert acc;
            Account testAcc = [SELECT name, balance__c, calculated_interest__c, email__c, interest_rate__c, loan_interest_rate__c, loan_type__c, remaining_loan_amount__c, total_loan_amount__c, active__c FROM Account WHERE name='e' LIMIT 1];
            System.assertEquals(acc.Name, testAcc.Name);
            System.assertEquals(acc.Balance__c, testAcc.Balance__c);
            System.assertEquals(acc.Balance__c * 0.05, testAcc.Calculated_Interest__c);
            System.assertEquals(acc.Email__c, testAcc.Email__c);
            System.assertEquals(acc.Loan_Interest_Rate__c, testAcc.Loan_Interest_Rate__c);
            System.assertEquals(acc.Loan_Type__c, testAcc.Loan_Type__c);
            //System.assertEquals(acc.Total_Loan_Amount__c, testAcc.Remaining_Loan_Amount__c);
            System.assertEquals(acc.Total_Loan_Amount__c, testAcc.Total_Loan_Amount__c);
        } catch (Exception e) {
            System.assert(false, e.getMessage());
        }
        Test.stopTest();
    }
    

    @isTest
    public static void testAccount_76() {
        Test.startTest();
        Account acc = createAccountFromIndex(testCaseData, 76);
        
        try {
            insert acc;
            Account testAcc = [SELECT name, balance__c, calculated_interest__c, email__c, interest_rate__c, loan_interest_rate__c, loan_type__c, remaining_loan_amount__c, total_loan_amount__c, active__c FROM Account WHERE name='e' LIMIT 1];
            System.assertEquals(acc.Name, testAcc.Name);
            System.assertEquals(acc.Balance__c, testAcc.Balance__c);
            System.assertEquals(acc.Balance__c * 0.05, testAcc.Calculated_Interest__c);
            System.assertEquals(acc.Email__c, testAcc.Email__c);
            System.assertEquals(acc.Loan_Interest_Rate__c, testAcc.Loan_Interest_Rate__c);
            System.assertEquals(acc.Loan_Type__c, testAcc.Loan_Type__c);
            //System.assertEquals(acc.Total_Loan_Amount__c, testAcc.Remaining_Loan_Amount__c);
            System.assertEquals(acc.Total_Loan_Amount__c, testAcc.Total_Loan_Amount__c);
        } catch (Exception e) {
            System.assert(false, e.getMessage());
        }
        Test.stopTest();
    }
    

    @isTest
    public static void testAccount_77() {
        Test.startTest();
        Account acc = createAccountFromIndex(testCaseData, 77);
        
        try {
            insert acc;
            Account testAcc = [SELECT name, balance__c, calculated_interest__c, email__c, interest_rate__c, loan_interest_rate__c, loan_type__c, remaining_loan_amount__c, total_loan_amount__c, active__c FROM Account WHERE name='e' LIMIT 1];
            System.assertEquals(acc.Name, testAcc.Name);
            System.assertEquals(acc.Balance__c, testAcc.Balance__c);
            System.assertEquals(acc.Balance__c * 0.038, testAcc.Calculated_Interest__c);
            System.assertEquals(acc.Email__c, testAcc.Email__c);
            System.assertEquals(acc.Loan_Interest_Rate__c, testAcc.Loan_Interest_Rate__c);
            System.assertEquals(acc.Loan_Type__c, testAcc.Loan_Type__c);
            //System.assertEquals(acc.Total_Loan_Amount__c, testAcc.Remaining_Loan_Amount__c);
            System.assertEquals(acc.Total_Loan_Amount__c, testAcc.Total_Loan_Amount__c);
        } catch (Exception e) {
            System.assert(false, e.getMessage());
        }
        Test.stopTest();
    }
    

    @isTest
    public static void testAccount_78() {
        Test.startTest();
        Account acc = createAccountFromIndex(testCaseData, 78);
        
        try {
            insert acc;
            Account testAcc = [SELECT name, balance__c, calculated_interest__c, email__c, interest_rate__c, loan_interest_rate__c, loan_type__c, remaining_loan_amount__c, total_loan_amount__c, active__c FROM Account WHERE name='e' LIMIT 1];
            System.assertEquals(acc.Name, testAcc.Name);
            System.assertEquals(acc.Balance__c, testAcc.Balance__c);
            System.assertEquals(acc.Balance__c * 0.038, testAcc.Calculated_Interest__c);
            System.assertEquals(acc.Email__c, testAcc.Email__c);
            System.assertEquals(acc.Loan_Interest_Rate__c, testAcc.Loan_Interest_Rate__c);
            System.assertEquals(acc.Loan_Type__c, testAcc.Loan_Type__c);
            //System.assertEquals(acc.Total_Loan_Amount__c, testAcc.Remaining_Loan_Amount__c);
            System.assertEquals(acc.Total_Loan_Amount__c, testAcc.Total_Loan_Amount__c);
        } catch (Exception e) {
            System.assert(false, e.getMessage());
        }
        Test.stopTest();
    }
    

    @isTest
    public static void testAccount_79() {
        Account acc = createAccountFromIndex(testCaseData, 79);
        insert acc;
        
        updateAccountFromIndex(testCaseData, 79, acc);
        
        try {
            update acc;
            Account testAcc = [SELECT name, balance__c, calculated_interest__c, email__c, interest_rate__c, loan_interest_rate__c, loan_type__c, remaining_loan_amount__c, total_loan_amount__c, active__c FROM Account WHERE name='d' LIMIT 1];
            System.assertEquals(acc.Name, testAcc.Name);
            System.assertEquals(acc.Balance__c, testAcc.Balance__c);
            System.assertEquals(acc.Balance__c * 0.038, testAcc.Calculated_Interest__c);
            System.assertEquals(acc.Email__c, testAcc.Email__c);
            System.assertEquals(acc.Loan_Interest_Rate__c, testAcc.Loan_Interest_Rate__c);
            System.assertEquals(acc.Loan_Type__c, testAcc.Loan_Type__c);
            //System.assertEquals(acc.Total_Loan_Amount__c, testAcc.Remaining_Loan_Amount__c);
            System.assertEquals(acc.Total_Loan_Amount__c, testAcc.Total_Loan_Amount__c);
        } catch (Exception e) {
            System.assert(false, e.getMessage());
        }
        Test.stopTest();
    }
    

    @isTest
    public static void testAccount_80() {
        Test.startTest();
        Account acc = createAccountFromIndex(testCaseData, 80);
        
        try {
            insert acc;
            Account testAcc = [SELECT name, balance__c, calculated_interest__c, email__c, interest_rate__c, loan_interest_rate__c, loan_type__c, remaining_loan_amount__c, total_loan_amount__c, active__c FROM Account WHERE name='e' LIMIT 1];
            System.assertEquals(acc.Name, testAcc.Name);
            System.assertEquals(acc.Balance__c, testAcc.Balance__c);
            System.assertEquals(acc.Balance__c * 0.06, testAcc.Calculated_Interest__c);
            System.assertEquals(acc.Email__c, testAcc.Email__c);
            System.assertEquals(acc.Loan_Interest_Rate__c, testAcc.Loan_Interest_Rate__c);
            System.assertEquals(acc.Loan_Type__c, testAcc.Loan_Type__c);
            //System.assertEquals(acc.Total_Loan_Amount__c, testAcc.Remaining_Loan_Amount__c);
            System.assertEquals(acc.Total_Loan_Amount__c, testAcc.Total_Loan_Amount__c);
        } catch (Exception e) {
            System.assert(false, e.getMessage());
        }
        Test.stopTest();
    }
    

    @isTest
    public static void testAccount_81() {
        Test.startTest();
        Account acc = createAccountFromIndex(testCaseData, 81);
        
        try {
            insert acc;
            Account testAcc = [SELECT name, balance__c, calculated_interest__c, email__c, interest_rate__c, loan_interest_rate__c, loan_type__c, remaining_loan_amount__c, total_loan_amount__c, active__c FROM Account WHERE name='e' LIMIT 1];
            System.assertEquals(acc.Name, testAcc.Name);
            System.assertEquals(acc.Balance__c, testAcc.Balance__c);
            System.assertEquals(acc.Balance__c * 0.038, testAcc.Calculated_Interest__c);
            System.assertEquals(acc.Email__c, testAcc.Email__c);
            System.assertEquals(acc.Loan_Interest_Rate__c, testAcc.Loan_Interest_Rate__c);
            System.assertEquals(acc.Loan_Type__c, testAcc.Loan_Type__c);
            //System.assertEquals(acc.Total_Loan_Amount__c, testAcc.Remaining_Loan_Amount__c);
            System.assertEquals(acc.Total_Loan_Amount__c, testAcc.Total_Loan_Amount__c);
        } catch (Exception e) {
            System.assert(false, e.getMessage());
        }
        Test.stopTest();
    }
    

    @isTest
    public static void testAccount_82() {
        Account acc = createAccountFromIndex(testCaseData, 82);
        insert acc;
        
        updateAccountFromIndex(testCaseData, 82, acc);
        
        try {
            update acc;
            Account testAcc = [SELECT name, balance__c, calculated_interest__c, email__c, interest_rate__c, loan_interest_rate__c, loan_type__c, remaining_loan_amount__c, total_loan_amount__c, active__c FROM Account WHERE name='d' LIMIT 1];
            System.assertEquals(acc.Name, testAcc.Name);
            System.assertEquals(acc.Balance__c, testAcc.Balance__c);
            System.assertEquals(acc.Balance__c * 0.05, testAcc.Calculated_Interest__c);
            System.assertEquals(acc.Email__c, testAcc.Email__c);
            System.assertEquals(acc.Loan_Interest_Rate__c, testAcc.Loan_Interest_Rate__c);
            System.assertEquals(acc.Loan_Type__c, testAcc.Loan_Type__c);
            //System.assertEquals(acc.Total_Loan_Amount__c, testAcc.Remaining_Loan_Amount__c);
            System.assertEquals(acc.Total_Loan_Amount__c, testAcc.Total_Loan_Amount__c);
        } catch (Exception e) {
            System.assert(false, e.getMessage());
        }
        Test.stopTest();
    }
    

    @isTest
    public static void testAccount_83() {
        Account acc = createAccountFromIndex(testCaseData, 83);
        insert acc;
        
        updateAccountFromIndex(testCaseData, 83, acc);
        
        try {
            update acc;
            Account testAcc = [SELECT name, balance__c, calculated_interest__c, email__c, interest_rate__c, loan_interest_rate__c, loan_type__c, remaining_loan_amount__c, total_loan_amount__c, active__c FROM Account WHERE name='d' LIMIT 1];
            System.assertEquals(acc.Name, testAcc.Name);
            System.assertEquals(acc.Balance__c, testAcc.Balance__c);
            System.assertEquals(acc.Balance__c * 0.05, testAcc.Calculated_Interest__c);
            System.assertEquals(acc.Email__c, testAcc.Email__c);
            System.assertEquals(acc.Loan_Interest_Rate__c, testAcc.Loan_Interest_Rate__c);
            System.assertEquals(acc.Loan_Type__c, testAcc.Loan_Type__c);
            //System.assertEquals(acc.Total_Loan_Amount__c, testAcc.Remaining_Loan_Amount__c);
            System.assertEquals(acc.Total_Loan_Amount__c, testAcc.Total_Loan_Amount__c);
        } catch (Exception e) {
            System.assert(false, e.getMessage());
        }
        Test.stopTest();
    }
    

    @isTest
    public static void testAccount_84() {
        Account acc = createAccountFromIndex(testCaseData, 84);
        insert acc;
        
        updateAccountFromIndex(testCaseData, 84, acc);
        
        try {
            update acc;
            Account testAcc = [SELECT name, balance__c, calculated_interest__c, email__c, interest_rate__c, loan_interest_rate__c, loan_type__c, remaining_loan_amount__c, total_loan_amount__c, active__c FROM Account WHERE name='d' LIMIT 1];
            System.assertEquals(acc.Name, testAcc.Name);
            System.assertEquals(acc.Balance__c, testAcc.Balance__c);
            System.assertEquals(acc.Balance__c * 0.038, testAcc.Calculated_Interest__c);
            System.assertEquals(acc.Email__c, testAcc.Email__c);
            System.assertEquals(acc.Loan_Interest_Rate__c, testAcc.Loan_Interest_Rate__c);
            System.assertEquals(acc.Loan_Type__c, testAcc.Loan_Type__c);
            //System.assertEquals(acc.Total_Loan_Amount__c, testAcc.Remaining_Loan_Amount__c);
            System.assertEquals(acc.Total_Loan_Amount__c, testAcc.Total_Loan_Amount__c);
        } catch (Exception e) {
            System.assert(false, e.getMessage());
        }
        Test.stopTest();
    }
    

    @isTest
    public static void testAccount_85() {
        Test.startTest();
        Account acc = createAccountFromIndex(testCaseData, 85);
        
        try {
            insert acc;
            Account testAcc = [SELECT name, balance__c, calculated_interest__c, email__c, interest_rate__c, loan_interest_rate__c, loan_type__c, remaining_loan_amount__c, total_loan_amount__c, active__c FROM Account WHERE name='e' LIMIT 1];
            System.assertEquals(acc.Name, testAcc.Name);
            System.assertEquals(acc.Balance__c, testAcc.Balance__c);
            System.assertEquals(acc.Balance__c * 0.05, testAcc.Calculated_Interest__c);
            System.assertEquals(acc.Email__c, testAcc.Email__c);
            System.assertEquals(acc.Loan_Interest_Rate__c, testAcc.Loan_Interest_Rate__c);
            System.assertEquals(acc.Loan_Type__c, testAcc.Loan_Type__c);
            //System.assertEquals(acc.Total_Loan_Amount__c, testAcc.Remaining_Loan_Amount__c);
            System.assertEquals(acc.Total_Loan_Amount__c, testAcc.Total_Loan_Amount__c);
        } catch (Exception e) {
            System.assert(false, e.getMessage());
        }
        Test.stopTest();
    }
    

    @isTest
    public static void testAccount_86() {
        Account acc = createAccountFromIndex(testCaseData, 86);
        insert acc;
        
        updateAccountFromIndex(testCaseData, 86, acc);
        
        try {
            update acc;
            Account testAcc = [SELECT name, balance__c, calculated_interest__c, email__c, interest_rate__c, loan_interest_rate__c, loan_type__c, remaining_loan_amount__c, total_loan_amount__c, active__c FROM Account WHERE name='d' LIMIT 1];
            System.assertEquals(acc.Name, testAcc.Name);
            System.assertEquals(acc.Balance__c, testAcc.Balance__c);
            System.assertEquals(acc.Balance__c * 0.05, testAcc.Calculated_Interest__c);
            System.assertEquals(acc.Email__c, testAcc.Email__c);
            System.assertEquals(acc.Loan_Interest_Rate__c, testAcc.Loan_Interest_Rate__c);
            System.assertEquals(acc.Loan_Type__c, testAcc.Loan_Type__c);
            //System.assertEquals(acc.Total_Loan_Amount__c, testAcc.Remaining_Loan_Amount__c);
            System.assertEquals(acc.Total_Loan_Amount__c, testAcc.Total_Loan_Amount__c);
        } catch (Exception e) {
            System.assert(false, e.getMessage());
        }
        Test.stopTest();
    }
    

    @isTest
    public static void testAccount_87() {
        Test.startTest();
        Account acc = createAccountFromIndex(testCaseData, 87);
        
        try {
            insert acc;
            Account testAcc = [SELECT name, balance__c, calculated_interest__c, email__c, interest_rate__c, loan_interest_rate__c, loan_type__c, remaining_loan_amount__c, total_loan_amount__c, active__c FROM Account WHERE name='e' LIMIT 1];
            System.assertEquals(acc.Name, testAcc.Name);
            System.assertEquals(acc.Balance__c, testAcc.Balance__c);
            System.assertEquals(acc.Balance__c * 0.06, testAcc.Calculated_Interest__c);
            System.assertEquals(acc.Email__c, testAcc.Email__c);
            System.assertEquals(acc.Loan_Interest_Rate__c, testAcc.Loan_Interest_Rate__c);
            System.assertEquals(acc.Loan_Type__c, testAcc.Loan_Type__c);
            //System.assertEquals(acc.Total_Loan_Amount__c, testAcc.Remaining_Loan_Amount__c);
            System.assertEquals(acc.Total_Loan_Amount__c, testAcc.Total_Loan_Amount__c);
        } catch (Exception e) {
            System.assert(false, e.getMessage());
        }
        Test.stopTest();
    }
    

    @isTest
    public static void testAccount_88() {
        Account acc = createAccountFromIndex(testCaseData, 88);
        insert acc;
        
        updateAccountFromIndex(testCaseData, 88, acc);
        
        try {
            update acc;
            Account testAcc = [SELECT name, balance__c, calculated_interest__c, email__c, interest_rate__c, loan_interest_rate__c, loan_type__c, remaining_loan_amount__c, total_loan_amount__c, active__c FROM Account WHERE name='d' LIMIT 1];
            System.assertEquals(acc.Name, testAcc.Name);
            System.assertEquals(acc.Balance__c, testAcc.Balance__c);
            System.assertEquals(acc.Balance__c * 0.06, testAcc.Calculated_Interest__c);
            System.assertEquals(acc.Email__c, testAcc.Email__c);
            System.assertEquals(acc.Loan_Interest_Rate__c, testAcc.Loan_Interest_Rate__c);
            System.assertEquals(acc.Loan_Type__c, testAcc.Loan_Type__c);
            //System.assertEquals(acc.Total_Loan_Amount__c, testAcc.Remaining_Loan_Amount__c);
            System.assertEquals(acc.Total_Loan_Amount__c, testAcc.Total_Loan_Amount__c);
        } catch (Exception e) {
            System.assert(false, e.getMessage());
        }
        Test.stopTest();
    }
    

    @isTest
    public static void testAccount_89() {
        Account acc = createAccountFromIndex(testCaseData, 89);
        insert acc;
        
        updateAccountFromIndex(testCaseData, 89, acc);
        
        try {
            update acc;
            Account testAcc = [SELECT name, balance__c, calculated_interest__c, email__c, interest_rate__c, loan_interest_rate__c, loan_type__c, remaining_loan_amount__c, total_loan_amount__c, active__c FROM Account WHERE name='d' LIMIT 1];
            System.assertEquals(acc.Name, testAcc.Name);
            System.assertEquals(acc.Balance__c, testAcc.Balance__c);
            System.assertEquals(acc.Balance__c * 0.038, testAcc.Calculated_Interest__c);
            System.assertEquals(acc.Email__c, testAcc.Email__c);
            System.assertEquals(acc.Loan_Interest_Rate__c, testAcc.Loan_Interest_Rate__c);
            System.assertEquals(acc.Loan_Type__c, testAcc.Loan_Type__c);
            //System.assertEquals(acc.Total_Loan_Amount__c, testAcc.Remaining_Loan_Amount__c);
            System.assertEquals(acc.Total_Loan_Amount__c, testAcc.Total_Loan_Amount__c);
        } catch (Exception e) {
            System.assert(false, e.getMessage());
        }
        Test.stopTest();
    }
    

    @isTest
    public static void testAccount_90() {
        Account acc = createAccountFromIndex(testCaseData, 90);
        insert acc;
        
        updateAccountFromIndex(testCaseData, 90, acc);
        
        try {
            update acc;
            Account testAcc = [SELECT name, balance__c, calculated_interest__c, email__c, interest_rate__c, loan_interest_rate__c, loan_type__c, remaining_loan_amount__c, total_loan_amount__c, active__c FROM Account WHERE name='d' LIMIT 1];
            System.assertEquals(acc.Name, testAcc.Name);
            System.assertEquals(acc.Balance__c, testAcc.Balance__c);
            System.assertEquals(acc.Balance__c * 0.05, testAcc.Calculated_Interest__c);
            System.assertEquals(acc.Email__c, testAcc.Email__c);
            System.assertEquals(acc.Loan_Interest_Rate__c, testAcc.Loan_Interest_Rate__c);
            System.assertEquals(acc.Loan_Type__c, testAcc.Loan_Type__c);
            //System.assertEquals(acc.Total_Loan_Amount__c, testAcc.Remaining_Loan_Amount__c);
            System.assertEquals(acc.Total_Loan_Amount__c, testAcc.Total_Loan_Amount__c);
        } catch (Exception e) {
            System.assert(false, e.getMessage());
        }
        Test.stopTest();
    }
    

    @isTest
    public static void testAccount_91() {
        Test.startTest();
        Account acc = createAccountFromIndex(testCaseData, 91);
        
        try {
            insert acc;
            Account testAcc = [SELECT name, balance__c, calculated_interest__c, email__c, interest_rate__c, loan_interest_rate__c, loan_type__c, remaining_loan_amount__c, total_loan_amount__c, active__c FROM Account WHERE name='e' LIMIT 1];
            System.assertEquals(acc.Name, testAcc.Name);
            System.assertEquals(acc.Balance__c, testAcc.Balance__c);
            System.assertEquals(acc.Balance__c * 0.06, testAcc.Calculated_Interest__c);
            System.assertEquals(acc.Email__c, testAcc.Email__c);
            System.assertEquals(acc.Loan_Interest_Rate__c, testAcc.Loan_Interest_Rate__c);
            System.assertEquals(acc.Loan_Type__c, testAcc.Loan_Type__c);
            //System.assertEquals(acc.Total_Loan_Amount__c, testAcc.Remaining_Loan_Amount__c);
            System.assertEquals(acc.Total_Loan_Amount__c, testAcc.Total_Loan_Amount__c);
        } catch (Exception e) {
            System.assert(false, e.getMessage());
        }
        Test.stopTest();
    }
    

    @isTest
    public static void testAccount_92() {
        Account acc = createAccountFromIndex(testCaseData, 92);
        insert acc;
        
        updateAccountFromIndex(testCaseData, 92, acc);
        
        try {
            update acc;
            Account testAcc = [SELECT name, balance__c, calculated_interest__c, email__c, interest_rate__c, loan_interest_rate__c, loan_type__c, remaining_loan_amount__c, total_loan_amount__c, active__c FROM Account WHERE name='d' LIMIT 1];
            System.assertEquals(acc.Name, testAcc.Name);
            System.assertEquals(acc.Balance__c, testAcc.Balance__c);
            System.assertEquals(acc.Balance__c * 0.038, testAcc.Calculated_Interest__c);
            System.assertEquals(acc.Email__c, testAcc.Email__c);
            System.assertEquals(acc.Loan_Interest_Rate__c, testAcc.Loan_Interest_Rate__c);
            System.assertEquals(acc.Loan_Type__c, testAcc.Loan_Type__c);
            //System.assertEquals(acc.Total_Loan_Amount__c, testAcc.Remaining_Loan_Amount__c);
            System.assertEquals(acc.Total_Loan_Amount__c, testAcc.Total_Loan_Amount__c);
        } catch (Exception e) {
            System.assert(false, e.getMessage());
        }
        Test.stopTest();
    }
    

    @isTest
    public static void testAccount_93() {
        Account acc = createAccountFromIndex(testCaseData, 93);
        insert acc;
        
        updateAccountFromIndex(testCaseData, 93, acc);
        
        try {
            update acc;
            Account testAcc = [SELECT name, balance__c, calculated_interest__c, email__c, interest_rate__c, loan_interest_rate__c, loan_type__c, remaining_loan_amount__c, total_loan_amount__c, active__c FROM Account WHERE name='d' LIMIT 1];
            System.assertEquals(acc.Name, testAcc.Name);
            System.assertEquals(acc.Balance__c, testAcc.Balance__c);
            System.assertEquals(acc.Balance__c * 0.05, testAcc.Calculated_Interest__c);
            System.assertEquals(acc.Email__c, testAcc.Email__c);
            System.assertEquals(acc.Loan_Interest_Rate__c, testAcc.Loan_Interest_Rate__c);
            System.assertEquals(acc.Loan_Type__c, testAcc.Loan_Type__c);
            //System.assertEquals(acc.Total_Loan_Amount__c, testAcc.Remaining_Loan_Amount__c);
            System.assertEquals(acc.Total_Loan_Amount__c, testAcc.Total_Loan_Amount__c);
        } catch (Exception e) {
            System.assert(false, e.getMessage());
        }
        Test.stopTest();
    }
    

    @isTest
    public static void testAccount_94() {
        Account acc = createAccountFromIndex(testCaseData, 94);
        insert acc;
        
        updateAccountFromIndex(testCaseData, 94, acc);
        
        try {
            update acc;
            Account testAcc = [SELECT name, balance__c, calculated_interest__c, email__c, interest_rate__c, loan_interest_rate__c, loan_type__c, remaining_loan_amount__c, total_loan_amount__c, active__c FROM Account WHERE name='d' LIMIT 1];
            System.assertEquals(acc.Name, testAcc.Name);
            System.assertEquals(acc.Balance__c, testAcc.Balance__c);
            System.assertEquals(acc.Balance__c * 0.05, testAcc.Calculated_Interest__c);
            System.assertEquals(acc.Email__c, testAcc.Email__c);
            System.assertEquals(acc.Loan_Interest_Rate__c, testAcc.Loan_Interest_Rate__c);
            System.assertEquals(acc.Loan_Type__c, testAcc.Loan_Type__c);
            //System.assertEquals(acc.Total_Loan_Amount__c, testAcc.Remaining_Loan_Amount__c);
            System.assertEquals(acc.Total_Loan_Amount__c, testAcc.Total_Loan_Amount__c);
        } catch (Exception e) {
            System.assert(false, e.getMessage());
        }
        Test.stopTest();
    }
    

    @isTest
    public static void testAccount_95() {
        Account acc = createAccountFromIndex(testCaseData, 95);
        insert acc;
        
        updateAccountFromIndex(testCaseData, 95, acc);
        
        try {
            update acc;
            Account testAcc = [SELECT name, balance__c, calculated_interest__c, email__c, interest_rate__c, loan_interest_rate__c, loan_type__c, remaining_loan_amount__c, total_loan_amount__c, active__c FROM Account WHERE name='d' LIMIT 1];
            System.assertEquals(acc.Name, testAcc.Name);
            System.assertEquals(acc.Balance__c, testAcc.Balance__c);
            System.assertEquals(acc.Balance__c * 0.06, testAcc.Calculated_Interest__c);
            System.assertEquals(acc.Email__c, testAcc.Email__c);
            System.assertEquals(acc.Loan_Interest_Rate__c, testAcc.Loan_Interest_Rate__c);
            System.assertEquals(acc.Loan_Type__c, testAcc.Loan_Type__c);
            //System.assertEquals(acc.Total_Loan_Amount__c, testAcc.Remaining_Loan_Amount__c);
            System.assertEquals(acc.Total_Loan_Amount__c, testAcc.Total_Loan_Amount__c);
        } catch (Exception e) {
            System.assert(false, e.getMessage());
        }
        Test.stopTest();
    }
    

    @isTest
    public static void testAccount_96() {
        Account acc = createAccountFromIndex(testCaseData, 96);
        insert acc;
        
        updateAccountFromIndex(testCaseData, 96, acc);
        
        try {
            update acc;
            Account testAcc = [SELECT name, balance__c, calculated_interest__c, email__c, interest_rate__c, loan_interest_rate__c, loan_type__c, remaining_loan_amount__c, total_loan_amount__c, active__c FROM Account WHERE name='d' LIMIT 1];
            System.assertEquals(acc.Name, testAcc.Name);
            System.assertEquals(acc.Balance__c, testAcc.Balance__c);
            System.assertEquals(acc.Balance__c * 0.06, testAcc.Calculated_Interest__c);
            System.assertEquals(acc.Email__c, testAcc.Email__c);
            System.assertEquals(acc.Loan_Interest_Rate__c, testAcc.Loan_Interest_Rate__c);
            System.assertEquals(acc.Loan_Type__c, testAcc.Loan_Type__c);
            //System.assertEquals(acc.Total_Loan_Amount__c, testAcc.Remaining_Loan_Amount__c);
            System.assertEquals(acc.Total_Loan_Amount__c, testAcc.Total_Loan_Amount__c);
        } catch (Exception e) {
            System.assert(false, e.getMessage());
        }
        Test.stopTest();
    }
    

    @isTest
    public static void testAccount_97() {
        Account acc = createAccountFromIndex(testCaseData, 97);
        insert acc;
        
        updateAccountFromIndex(testCaseData, 97, acc);
        
        try {
            update acc;
            Account testAcc = [SELECT name, balance__c, calculated_interest__c, email__c, interest_rate__c, loan_interest_rate__c, loan_type__c, remaining_loan_amount__c, total_loan_amount__c, active__c FROM Account WHERE name='d' LIMIT 1];
            System.assertEquals(acc.Name, testAcc.Name);
            System.assertEquals(acc.Balance__c, testAcc.Balance__c);
            System.assertEquals(acc.Balance__c * 0.038, testAcc.Calculated_Interest__c);
            System.assertEquals(acc.Email__c, testAcc.Email__c);
            System.assertEquals(acc.Loan_Interest_Rate__c, testAcc.Loan_Interest_Rate__c);
            System.assertEquals(acc.Loan_Type__c, testAcc.Loan_Type__c);
            //System.assertEquals(acc.Total_Loan_Amount__c, testAcc.Remaining_Loan_Amount__c);
            System.assertEquals(acc.Total_Loan_Amount__c, testAcc.Total_Loan_Amount__c);
        } catch (Exception e) {
            System.assert(false, e.getMessage());
        }
        Test.stopTest();
    }
    

    @isTest
    public static void testAccount_98() {
        Account acc = createAccountFromIndex(testCaseData, 98);
        insert acc;
        
        updateAccountFromIndex(testCaseData, 98, acc);
        
        try {
            update acc;
            Account testAcc = [SELECT name, balance__c, calculated_interest__c, email__c, interest_rate__c, loan_interest_rate__c, loan_type__c, remaining_loan_amount__c, total_loan_amount__c, active__c FROM Account WHERE name='d' LIMIT 1];
            System.assertEquals(acc.Name, testAcc.Name);
            System.assertEquals(acc.Balance__c, testAcc.Balance__c);
            System.assertEquals(acc.Balance__c * 0.05, testAcc.Calculated_Interest__c);
            System.assertEquals(acc.Email__c, testAcc.Email__c);
            System.assertEquals(acc.Loan_Interest_Rate__c, testAcc.Loan_Interest_Rate__c);
            System.assertEquals(acc.Loan_Type__c, testAcc.Loan_Type__c);
            //System.assertEquals(acc.Total_Loan_Amount__c, testAcc.Remaining_Loan_Amount__c);
            System.assertEquals(acc.Total_Loan_Amount__c, testAcc.Total_Loan_Amount__c);
        } catch (Exception e) {
            System.assert(false, e.getMessage());
        }
        Test.stopTest();
    }
    

    @isTest
    public static void testAccount_99() {
        Test.startTest();
        Account acc = createAccountFromIndex(testCaseData, 99);
        
        try {
            insert acc;
            Account testAcc = [SELECT name, balance__c, calculated_interest__c, email__c, interest_rate__c, loan_interest_rate__c, loan_type__c, remaining_loan_amount__c, total_loan_amount__c, active__c FROM Account WHERE name='e' LIMIT 1];
            System.assertEquals(acc.Name, testAcc.Name);
            System.assertEquals(acc.Balance__c, testAcc.Balance__c);
            System.assertEquals(acc.Balance__c * 0.05, testAcc.Calculated_Interest__c);
            System.assertEquals(acc.Email__c, testAcc.Email__c);
            System.assertEquals(acc.Loan_Interest_Rate__c, testAcc.Loan_Interest_Rate__c);
            System.assertEquals(acc.Loan_Type__c, testAcc.Loan_Type__c);
            //System.assertEquals(acc.Total_Loan_Amount__c, testAcc.Remaining_Loan_Amount__c);
            System.assertEquals(acc.Total_Loan_Amount__c, testAcc.Total_Loan_Amount__c);
        } catch (Exception e) {
            System.assert(false, e.getMessage());
        }
        Test.stopTest();
    }
    

    @isTest
    public static void testAccount_100() {
        Account acc = createAccountFromIndex(testCaseData, 100);
        insert acc;
        
        updateAccountFromIndex(testCaseData, 100, acc);
        
        try {
            update acc;
            Account testAcc = [SELECT name, balance__c, calculated_interest__c, email__c, interest_rate__c, loan_interest_rate__c, loan_type__c, remaining_loan_amount__c, total_loan_amount__c, active__c FROM Account WHERE name='d' LIMIT 1];
            System.assertEquals(acc.Name, testAcc.Name);
            System.assertEquals(acc.Balance__c, testAcc.Balance__c);
            System.assertEquals(acc.Balance__c * 0.05, testAcc.Calculated_Interest__c);
            System.assertEquals(acc.Email__c, testAcc.Email__c);
            System.assertEquals(acc.Loan_Interest_Rate__c, testAcc.Loan_Interest_Rate__c);
            System.assertEquals(acc.Loan_Type__c, testAcc.Loan_Type__c);
            //System.assertEquals(acc.Total_Loan_Amount__c, testAcc.Remaining_Loan_Amount__c);
            System.assertEquals(acc.Total_Loan_Amount__c, testAcc.Total_Loan_Amount__c);
        } catch (Exception e) {
            System.assert(false, e.getMessage());
        }
        Test.stopTest();
    }
    

    @isTest
    public static void testAccount_101() {
        Account acc = createAccountFromIndex(testCaseData, 101);
        insert acc;
        
        updateAccountFromIndex(testCaseData, 101, acc);
        
        try {
            update acc;
            Account testAcc = [SELECT name, balance__c, calculated_interest__c, email__c, interest_rate__c, loan_interest_rate__c, loan_type__c, remaining_loan_amount__c, total_loan_amount__c, active__c FROM Account WHERE name='d' LIMIT 1];
            System.assertEquals(acc.Name, testAcc.Name);
            System.assertEquals(acc.Balance__c, testAcc.Balance__c);
            System.assertEquals(acc.Balance__c * 0.05, testAcc.Calculated_Interest__c);
            System.assertEquals(acc.Email__c, testAcc.Email__c);
            System.assertEquals(acc.Loan_Interest_Rate__c, testAcc.Loan_Interest_Rate__c);
            System.assertEquals(acc.Loan_Type__c, testAcc.Loan_Type__c);
            //System.assertEquals(acc.Total_Loan_Amount__c, testAcc.Remaining_Loan_Amount__c);
            System.assertEquals(acc.Total_Loan_Amount__c, testAcc.Total_Loan_Amount__c);
        } catch (Exception e) {
            System.assert(false, e.getMessage());
        }
        Test.stopTest();
    }
    

    @isTest
    public static void testAccount_102() {
        Test.startTest();
        Account acc = createAccountFromIndex(testCaseData, 102);
        
        try {
            insert acc;
            Account testAcc = [SELECT name, balance__c, calculated_interest__c, email__c, interest_rate__c, loan_interest_rate__c, loan_type__c, remaining_loan_amount__c, total_loan_amount__c, active__c FROM Account WHERE name='e' LIMIT 1];
            System.assertEquals(acc.Name, testAcc.Name);
            System.assertEquals(acc.Balance__c, testAcc.Balance__c);
            System.assertEquals(acc.Balance__c * 0.05, testAcc.Calculated_Interest__c);
            System.assertEquals(acc.Email__c, testAcc.Email__c);
            System.assertEquals(acc.Loan_Interest_Rate__c, testAcc.Loan_Interest_Rate__c);
            System.assertEquals(acc.Loan_Type__c, testAcc.Loan_Type__c);
            //System.assertEquals(acc.Total_Loan_Amount__c, testAcc.Remaining_Loan_Amount__c);
            System.assertEquals(acc.Total_Loan_Amount__c, testAcc.Total_Loan_Amount__c);
        } catch (Exception e) {
            System.assert(false, e.getMessage());
        }
        Test.stopTest();
    }
    

    @isTest
    public static void testAccount_103() {
        Account acc = createAccountFromIndex(testCaseData, 103);
        insert acc;
        
        updateAccountFromIndex(testCaseData, 103, acc);
        
        try {
            update acc;
            Account testAcc = [SELECT name, balance__c, calculated_interest__c, email__c, interest_rate__c, loan_interest_rate__c, loan_type__c, remaining_loan_amount__c, total_loan_amount__c, active__c FROM Account WHERE name='d' LIMIT 1];
            System.assertEquals(acc.Name, testAcc.Name);
            System.assertEquals(acc.Balance__c, testAcc.Balance__c);
            System.assertEquals(acc.Balance__c * 0.038, testAcc.Calculated_Interest__c);
            System.assertEquals(acc.Email__c, testAcc.Email__c);
            System.assertEquals(acc.Loan_Interest_Rate__c, testAcc.Loan_Interest_Rate__c);
            System.assertEquals(acc.Loan_Type__c, testAcc.Loan_Type__c);
            //System.assertEquals(acc.Total_Loan_Amount__c, testAcc.Remaining_Loan_Amount__c);
            System.assertEquals(acc.Total_Loan_Amount__c, testAcc.Total_Loan_Amount__c);
        } catch (Exception e) {
            System.assert(false, e.getMessage());
        }
        Test.stopTest();
    }
    

    @isTest
    public static void testAccount_104() {
        Account acc = createAccountFromIndex(testCaseData, 104);
        insert acc;
        
        updateAccountFromIndex(testCaseData, 104, acc);
        
        try {
            update acc;
            Account testAcc = [SELECT name, balance__c, calculated_interest__c, email__c, interest_rate__c, loan_interest_rate__c, loan_type__c, remaining_loan_amount__c, total_loan_amount__c, active__c FROM Account WHERE name='d' LIMIT 1];
            System.assertEquals(acc.Name, testAcc.Name);
            System.assertEquals(acc.Balance__c, testAcc.Balance__c);
            System.assertEquals(acc.Balance__c * 0.038, testAcc.Calculated_Interest__c);
            System.assertEquals(acc.Email__c, testAcc.Email__c);
            System.assertEquals(acc.Loan_Interest_Rate__c, testAcc.Loan_Interest_Rate__c);
            System.assertEquals(acc.Loan_Type__c, testAcc.Loan_Type__c);
            //System.assertEquals(acc.Total_Loan_Amount__c, testAcc.Remaining_Loan_Amount__c);
            System.assertEquals(acc.Total_Loan_Amount__c, testAcc.Total_Loan_Amount__c);
        } catch (Exception e) {
            System.assert(false, e.getMessage());
        }
        Test.stopTest();
    }
    

    @isTest
    public static void testAccount_105() {
        Account acc = createAccountFromIndex(testCaseData, 105);
        insert acc;
        
        updateAccountFromIndex(testCaseData, 105, acc);
        
        try {
            update acc;
            Account testAcc = [SELECT name, balance__c, calculated_interest__c, email__c, interest_rate__c, loan_interest_rate__c, loan_type__c, remaining_loan_amount__c, total_loan_amount__c, active__c FROM Account WHERE name='d' LIMIT 1];
            System.assertEquals(acc.Name, testAcc.Name);
            System.assertEquals(acc.Balance__c, testAcc.Balance__c);
            System.assertEquals(acc.Balance__c * 0.05, testAcc.Calculated_Interest__c);
            System.assertEquals(acc.Email__c, testAcc.Email__c);
            System.assertEquals(acc.Loan_Interest_Rate__c, testAcc.Loan_Interest_Rate__c);
            System.assertEquals(acc.Loan_Type__c, testAcc.Loan_Type__c);
            //System.assertEquals(acc.Total_Loan_Amount__c, testAcc.Remaining_Loan_Amount__c);
            System.assertEquals(acc.Total_Loan_Amount__c, testAcc.Total_Loan_Amount__c);
        } catch (Exception e) {
            System.assert(false, e.getMessage());
        }
        Test.stopTest();
    }
    

    @isTest
    public static void testAccount_106() {
        Test.startTest();
        Account acc = createAccountFromIndex(testCaseData, 106);
        
        try {
            insert acc;
            Account testAcc = [SELECT name, balance__c, calculated_interest__c, email__c, interest_rate__c, loan_interest_rate__c, loan_type__c, remaining_loan_amount__c, total_loan_amount__c, active__c FROM Account WHERE name='e' LIMIT 1];
            System.assertEquals(acc.Name, testAcc.Name);
            System.assertEquals(acc.Balance__c, testAcc.Balance__c);
            System.assertEquals(acc.Balance__c * 0.05, testAcc.Calculated_Interest__c);
            System.assertEquals(acc.Email__c, testAcc.Email__c);
            System.assertEquals(acc.Loan_Interest_Rate__c, testAcc.Loan_Interest_Rate__c);
            System.assertEquals(acc.Loan_Type__c, testAcc.Loan_Type__c);
            //System.assertEquals(acc.Total_Loan_Amount__c, testAcc.Remaining_Loan_Amount__c);
            System.assertEquals(acc.Total_Loan_Amount__c, testAcc.Total_Loan_Amount__c);
        } catch (Exception e) {
            System.assert(false, e.getMessage());
        }
        Test.stopTest();
    }
    

    @isTest
    public static void testAccount_107() {
        Account acc = createAccountFromIndex(testCaseData, 107);
        insert acc;
        
        updateAccountFromIndex(testCaseData, 107, acc);
        
        try {
            update acc;
            Account testAcc = [SELECT name, balance__c, calculated_interest__c, email__c, interest_rate__c, loan_interest_rate__c, loan_type__c, remaining_loan_amount__c, total_loan_amount__c, active__c FROM Account WHERE name='d' LIMIT 1];
            System.assertEquals(acc.Name, testAcc.Name);
            System.assertEquals(acc.Balance__c, testAcc.Balance__c);
            System.assertEquals(acc.Balance__c * 0.05, testAcc.Calculated_Interest__c);
            System.assertEquals(acc.Email__c, testAcc.Email__c);
            System.assertEquals(acc.Loan_Interest_Rate__c, testAcc.Loan_Interest_Rate__c);
            System.assertEquals(acc.Loan_Type__c, testAcc.Loan_Type__c);
            //System.assertEquals(acc.Total_Loan_Amount__c, testAcc.Remaining_Loan_Amount__c);
            System.assertEquals(acc.Total_Loan_Amount__c, testAcc.Total_Loan_Amount__c);
        } catch (Exception e) {
            System.assert(false, e.getMessage());
        }
        Test.stopTest();
    }
    

    @isTest
    public static void testAccount_108() {
        Account acc = createAccountFromIndex(testCaseData, 108);
        insert acc;
        
        updateAccountFromIndex(testCaseData, 108, acc);
        
        try {
            update acc;
            Account testAcc = [SELECT name, balance__c, calculated_interest__c, email__c, interest_rate__c, loan_interest_rate__c, loan_type__c, remaining_loan_amount__c, total_loan_amount__c, active__c FROM Account WHERE name='d' LIMIT 1];
            System.assertEquals(acc.Name, testAcc.Name);
            System.assertEquals(acc.Balance__c, testAcc.Balance__c);
            System.assertEquals(acc.Balance__c * 0.038, testAcc.Calculated_Interest__c);
            System.assertEquals(acc.Email__c, testAcc.Email__c);
            System.assertEquals(acc.Loan_Interest_Rate__c, testAcc.Loan_Interest_Rate__c);
            System.assertEquals(acc.Loan_Type__c, testAcc.Loan_Type__c);
            //System.assertEquals(acc.Total_Loan_Amount__c, testAcc.Remaining_Loan_Amount__c);
            System.assertEquals(acc.Total_Loan_Amount__c, testAcc.Total_Loan_Amount__c);
        } catch (Exception e) {
            System.assert(false, e.getMessage());
        }
        Test.stopTest();
    }
    

    @isTest
    public static void testAccount_109() {
        Account acc = createAccountFromIndex(testCaseData, 109);
        insert acc;
        
        updateAccountFromIndex(testCaseData, 109, acc);
        
        try {
            update acc;
            Account testAcc = [SELECT name, balance__c, calculated_interest__c, email__c, interest_rate__c, loan_interest_rate__c, loan_type__c, remaining_loan_amount__c, total_loan_amount__c, active__c FROM Account WHERE name='d' LIMIT 1];
            System.assertEquals(acc.Name, testAcc.Name);
            System.assertEquals(acc.Balance__c, testAcc.Balance__c);
            System.assertEquals(acc.Balance__c * 0.038, testAcc.Calculated_Interest__c);
            System.assertEquals(acc.Email__c, testAcc.Email__c);
            System.assertEquals(acc.Loan_Interest_Rate__c, testAcc.Loan_Interest_Rate__c);
            System.assertEquals(acc.Loan_Type__c, testAcc.Loan_Type__c);
            //System.assertEquals(acc.Total_Loan_Amount__c, testAcc.Remaining_Loan_Amount__c);
            System.assertEquals(acc.Total_Loan_Amount__c, testAcc.Total_Loan_Amount__c);
        } catch (Exception e) {
            System.assert(false, e.getMessage());
        }
        Test.stopTest();
    }
    

    @isTest
    public static void testAccount_110() {
        Account acc = createAccountFromIndex(testCaseData, 110);
        insert acc;
        
        updateAccountFromIndex(testCaseData, 110, acc);
        
        try {
            update acc;
            Account testAcc = [SELECT name, balance__c, calculated_interest__c, email__c, interest_rate__c, loan_interest_rate__c, loan_type__c, remaining_loan_amount__c, total_loan_amount__c, active__c FROM Account WHERE name='d' LIMIT 1];
            System.assertEquals(acc.Name, testAcc.Name);
            System.assertEquals(acc.Balance__c, testAcc.Balance__c);
            System.assertEquals(acc.Balance__c * 0.05, testAcc.Calculated_Interest__c);
            System.assertEquals(acc.Email__c, testAcc.Email__c);
            System.assertEquals(acc.Loan_Interest_Rate__c, testAcc.Loan_Interest_Rate__c);
            System.assertEquals(acc.Loan_Type__c, testAcc.Loan_Type__c);
            //System.assertEquals(acc.Total_Loan_Amount__c, testAcc.Remaining_Loan_Amount__c);
            System.assertEquals(acc.Total_Loan_Amount__c, testAcc.Total_Loan_Amount__c);
        } catch (Exception e) {
            System.assert(false, e.getMessage());
        }
        Test.stopTest();
    }
    

    @isTest
    public static void testAccount_111() {
        Test.startTest();
        Account acc = createAccountFromIndex(testCaseData, 111);
        
        try {
            insert acc;
            Account testAcc = [SELECT name, balance__c, calculated_interest__c, email__c, interest_rate__c, loan_interest_rate__c, loan_type__c, remaining_loan_amount__c, total_loan_amount__c, active__c FROM Account WHERE name='e' LIMIT 1];
            System.assertEquals(acc.Name, testAcc.Name);
            System.assertEquals(acc.Balance__c, testAcc.Balance__c);
            System.assertEquals(acc.Balance__c * 0.05, testAcc.Calculated_Interest__c);
            System.assertEquals(acc.Email__c, testAcc.Email__c);
            System.assertEquals(acc.Loan_Interest_Rate__c, testAcc.Loan_Interest_Rate__c);
            System.assertEquals(acc.Loan_Type__c, testAcc.Loan_Type__c);
            //System.assertEquals(acc.Total_Loan_Amount__c, testAcc.Remaining_Loan_Amount__c);
            System.assertEquals(acc.Total_Loan_Amount__c, testAcc.Total_Loan_Amount__c);
        } catch (Exception e) {
            System.assert(false, e.getMessage());
        }
        Test.stopTest();
    }
    

    @isTest
    public static void testAccount_112() {
        Test.startTest();
        Account acc = createAccountFromIndex(testCaseData, 112);
        
        try {
            insert acc;
            Account testAcc = [SELECT name, balance__c, calculated_interest__c, email__c, interest_rate__c, loan_interest_rate__c, loan_type__c, remaining_loan_amount__c, total_loan_amount__c, active__c FROM Account WHERE name='e' LIMIT 1];
            System.assertEquals(acc.Name, testAcc.Name);
            System.assertEquals(acc.Balance__c, testAcc.Balance__c);
            System.assertEquals(acc.Balance__c * 0.038, testAcc.Calculated_Interest__c);
            System.assertEquals(acc.Email__c, testAcc.Email__c);
            System.assertEquals(acc.Loan_Interest_Rate__c, testAcc.Loan_Interest_Rate__c);
            System.assertEquals(acc.Loan_Type__c, testAcc.Loan_Type__c);
            //System.assertEquals(acc.Total_Loan_Amount__c, testAcc.Remaining_Loan_Amount__c);
            System.assertEquals(acc.Total_Loan_Amount__c, testAcc.Total_Loan_Amount__c);
        } catch (Exception e) {
            System.assert(false, e.getMessage());
        }
        Test.stopTest();
    }
    

    @isTest
    public static void testAccount_113() {
        Account acc = createAccountFromIndex(testCaseData, 113);
        insert acc;
        
        updateAccountFromIndex(testCaseData, 113, acc);
        
        try {
            update acc;
            Account testAcc = [SELECT name, balance__c, calculated_interest__c, email__c, interest_rate__c, loan_interest_rate__c, loan_type__c, remaining_loan_amount__c, total_loan_amount__c, active__c FROM Account WHERE name='d' LIMIT 1];
            System.assertEquals(acc.Name, testAcc.Name);
            System.assertEquals(acc.Balance__c, testAcc.Balance__c);
            System.assertEquals(acc.Balance__c * 0.05, testAcc.Calculated_Interest__c);
            System.assertEquals(acc.Email__c, testAcc.Email__c);
            System.assertEquals(acc.Loan_Interest_Rate__c, testAcc.Loan_Interest_Rate__c);
            System.assertEquals(acc.Loan_Type__c, testAcc.Loan_Type__c);
            //System.assertEquals(acc.Total_Loan_Amount__c, testAcc.Remaining_Loan_Amount__c);
            System.assertEquals(acc.Total_Loan_Amount__c, testAcc.Total_Loan_Amount__c);
        } catch (Exception e) {
            System.assert(false, e.getMessage());
        }
        Test.stopTest();
    }
    

    @isTest
    public static void testAccount_114() {
        Account acc = createAccountFromIndex(testCaseData, 114);
        insert acc;
        
        updateAccountFromIndex(testCaseData, 114, acc);
        
        try {
            update acc;
            Account testAcc = [SELECT name, balance__c, calculated_interest__c, email__c, interest_rate__c, loan_interest_rate__c, loan_type__c, remaining_loan_amount__c, total_loan_amount__c, active__c FROM Account WHERE name='d' LIMIT 1];
            System.assertEquals(acc.Name, testAcc.Name);
            System.assertEquals(acc.Balance__c, testAcc.Balance__c);
            System.assertEquals(acc.Balance__c * 0.06, testAcc.Calculated_Interest__c);
            System.assertEquals(acc.Email__c, testAcc.Email__c);
            System.assertEquals(acc.Loan_Interest_Rate__c, testAcc.Loan_Interest_Rate__c);
            System.assertEquals(acc.Loan_Type__c, testAcc.Loan_Type__c);
            //System.assertEquals(acc.Total_Loan_Amount__c, testAcc.Remaining_Loan_Amount__c);
            System.assertEquals(acc.Total_Loan_Amount__c, testAcc.Total_Loan_Amount__c);
        } catch (Exception e) {
            System.assert(false, e.getMessage());
        }
        Test.stopTest();
    }
    

    @isTest
    public static void testAccount_115() {
        Account acc = createAccountFromIndex(testCaseData, 115);
        insert acc;
        
        updateAccountFromIndex(testCaseData, 115, acc);
        
        try {
            update acc;
            Account testAcc = [SELECT name, balance__c, calculated_interest__c, email__c, interest_rate__c, loan_interest_rate__c, loan_type__c, remaining_loan_amount__c, total_loan_amount__c, active__c FROM Account WHERE name='d' LIMIT 1];
            System.assertEquals(acc.Name, testAcc.Name);
            System.assertEquals(acc.Balance__c, testAcc.Balance__c);
            System.assertEquals(acc.Balance__c * 0.05, testAcc.Calculated_Interest__c);
            System.assertEquals(acc.Email__c, testAcc.Email__c);
            System.assertEquals(acc.Loan_Interest_Rate__c, testAcc.Loan_Interest_Rate__c);
            System.assertEquals(acc.Loan_Type__c, testAcc.Loan_Type__c);
            //System.assertEquals(acc.Total_Loan_Amount__c, testAcc.Remaining_Loan_Amount__c);
            System.assertEquals(acc.Total_Loan_Amount__c, testAcc.Total_Loan_Amount__c);
        } catch (Exception e) {
            System.assert(false, e.getMessage());
        }
        Test.stopTest();
    }
    

    @isTest
    public static void testAccount_116() {
        Account acc = createAccountFromIndex(testCaseData, 116);
        insert acc;
        
        updateAccountFromIndex(testCaseData, 116, acc);
        
        try {
            update acc;
            Account testAcc = [SELECT name, balance__c, calculated_interest__c, email__c, interest_rate__c, loan_interest_rate__c, loan_type__c, remaining_loan_amount__c, total_loan_amount__c, active__c FROM Account WHERE name='d' LIMIT 1];
            System.assertEquals(acc.Name, testAcc.Name);
            System.assertEquals(acc.Balance__c, testAcc.Balance__c);
            System.assertEquals(acc.Balance__c * 0.05, testAcc.Calculated_Interest__c);
            System.assertEquals(acc.Email__c, testAcc.Email__c);
            System.assertEquals(acc.Loan_Interest_Rate__c, testAcc.Loan_Interest_Rate__c);
            System.assertEquals(acc.Loan_Type__c, testAcc.Loan_Type__c);
            //System.assertEquals(acc.Total_Loan_Amount__c, testAcc.Remaining_Loan_Amount__c);
            System.assertEquals(acc.Total_Loan_Amount__c, testAcc.Total_Loan_Amount__c);
        } catch (Exception e) {
            System.assert(false, e.getMessage());
        }
        Test.stopTest();
    }
    

    @isTest
    public static void testAccount_117() {
        Account acc = createAccountFromIndex(testCaseData, 117);
        insert acc;
        
        updateAccountFromIndex(testCaseData, 117, acc);
        
        try {
            update acc;
            Account testAcc = [SELECT name, balance__c, calculated_interest__c, email__c, interest_rate__c, loan_interest_rate__c, loan_type__c, remaining_loan_amount__c, total_loan_amount__c, active__c FROM Account WHERE name='d' LIMIT 1];
            System.assertEquals(acc.Name, testAcc.Name);
            System.assertEquals(acc.Balance__c, testAcc.Balance__c);
            System.assertEquals(acc.Balance__c * 0.06, testAcc.Calculated_Interest__c);
            System.assertEquals(acc.Email__c, testAcc.Email__c);
            System.assertEquals(acc.Loan_Interest_Rate__c, testAcc.Loan_Interest_Rate__c);
            System.assertEquals(acc.Loan_Type__c, testAcc.Loan_Type__c);
            //System.assertEquals(acc.Total_Loan_Amount__c, testAcc.Remaining_Loan_Amount__c);
            System.assertEquals(acc.Total_Loan_Amount__c, testAcc.Total_Loan_Amount__c);
        } catch (Exception e) {
            System.assert(false, e.getMessage());
        }
        Test.stopTest();
    }
    

    @isTest
    public static void testAccount_118() {
        Account acc = createAccountFromIndex(testCaseData, 118);
        insert acc;
        
        updateAccountFromIndex(testCaseData, 118, acc);
        
        try {
            update acc;
            Account testAcc = [SELECT name, balance__c, calculated_interest__c, email__c, interest_rate__c, loan_interest_rate__c, loan_type__c, remaining_loan_amount__c, total_loan_amount__c, active__c FROM Account WHERE name='d' LIMIT 1];
            System.assertEquals(acc.Name, testAcc.Name);
            System.assertEquals(acc.Balance__c, testAcc.Balance__c);
            System.assertEquals(acc.Balance__c * 0.038, testAcc.Calculated_Interest__c);
            System.assertEquals(acc.Email__c, testAcc.Email__c);
            System.assertEquals(acc.Loan_Interest_Rate__c, testAcc.Loan_Interest_Rate__c);
            System.assertEquals(acc.Loan_Type__c, testAcc.Loan_Type__c);
            //System.assertEquals(acc.Total_Loan_Amount__c, testAcc.Remaining_Loan_Amount__c);
            System.assertEquals(acc.Total_Loan_Amount__c, testAcc.Total_Loan_Amount__c);
        } catch (Exception e) {
            System.assert(false, e.getMessage());
        }
        Test.stopTest();
    }
    

    @isTest
    public static void testAccount_119() {
        Account acc = createAccountFromIndex(testCaseData, 119);
        insert acc;
        
        updateAccountFromIndex(testCaseData, 119, acc);
        
        try {
            update acc;
            Account testAcc = [SELECT name, balance__c, calculated_interest__c, email__c, interest_rate__c, loan_interest_rate__c, loan_type__c, remaining_loan_amount__c, total_loan_amount__c, active__c FROM Account WHERE name='d' LIMIT 1];
            System.assertEquals(acc.Name, testAcc.Name);
            System.assertEquals(acc.Balance__c, testAcc.Balance__c);
            System.assertEquals(acc.Balance__c * 0.038, testAcc.Calculated_Interest__c);
            System.assertEquals(acc.Email__c, testAcc.Email__c);
            System.assertEquals(acc.Loan_Interest_Rate__c, testAcc.Loan_Interest_Rate__c);
            System.assertEquals(acc.Loan_Type__c, testAcc.Loan_Type__c);
            //System.assertEquals(acc.Total_Loan_Amount__c, testAcc.Remaining_Loan_Amount__c);
            System.assertEquals(acc.Total_Loan_Amount__c, testAcc.Total_Loan_Amount__c);
        } catch (Exception e) {
            System.assert(false, e.getMessage());
        }
        Test.stopTest();
    }
    

    @isTest
    public static void testAccount_120() {
        Account acc = createAccountFromIndex(testCaseData, 120);
        insert acc;
        
        updateAccountFromIndex(testCaseData, 120, acc);
        
        try {
            update acc;
            Account testAcc = [SELECT name, balance__c, calculated_interest__c, email__c, interest_rate__c, loan_interest_rate__c, loan_type__c, remaining_loan_amount__c, total_loan_amount__c, active__c FROM Account WHERE name='d' LIMIT 1];
            System.assertEquals(acc.Name, testAcc.Name);
            System.assertEquals(acc.Balance__c, testAcc.Balance__c);
            System.assertEquals(acc.Balance__c * 0.038, testAcc.Calculated_Interest__c);
            System.assertEquals(acc.Email__c, testAcc.Email__c);
            System.assertEquals(acc.Loan_Interest_Rate__c, testAcc.Loan_Interest_Rate__c);
            System.assertEquals(acc.Loan_Type__c, testAcc.Loan_Type__c);
            //System.assertEquals(acc.Total_Loan_Amount__c, testAcc.Remaining_Loan_Amount__c);
            System.assertEquals(acc.Total_Loan_Amount__c, testAcc.Total_Loan_Amount__c);
        } catch (Exception e) {
            System.assert(false, e.getMessage());
        }
        Test.stopTest();
    }
    

    @isTest
    public static void testAccount_121() {
        Account acc = createAccountFromIndex(testCaseData, 121);
        insert acc;
        
        updateAccountFromIndex(testCaseData, 121, acc);
        
        try {
            update acc;
            Account testAcc = [SELECT name, balance__c, calculated_interest__c, email__c, interest_rate__c, loan_interest_rate__c, loan_type__c, remaining_loan_amount__c, total_loan_amount__c, active__c FROM Account WHERE name='d' LIMIT 1];
            System.assertEquals(acc.Name, testAcc.Name);
            System.assertEquals(acc.Balance__c, testAcc.Balance__c);
            System.assertEquals(acc.Balance__c * 0.038, testAcc.Calculated_Interest__c);
            System.assertEquals(acc.Email__c, testAcc.Email__c);
            System.assertEquals(acc.Loan_Interest_Rate__c, testAcc.Loan_Interest_Rate__c);
            System.assertEquals(acc.Loan_Type__c, testAcc.Loan_Type__c);
            //System.assertEquals(acc.Total_Loan_Amount__c, testAcc.Remaining_Loan_Amount__c);
            System.assertEquals(acc.Total_Loan_Amount__c, testAcc.Total_Loan_Amount__c);
        } catch (Exception e) {
            System.assert(false, e.getMessage());
        }
        Test.stopTest();
    }
    

    @isTest
    public static void testAccount_122() {
        Account acc = createAccountFromIndex(testCaseData, 122);
        insert acc;
        
        updateAccountFromIndex(testCaseData, 122, acc);
        
        try {
            update acc;
            Account testAcc = [SELECT name, balance__c, calculated_interest__c, email__c, interest_rate__c, loan_interest_rate__c, loan_type__c, remaining_loan_amount__c, total_loan_amount__c, active__c FROM Account WHERE name='d' LIMIT 1];
            System.assertEquals(acc.Name, testAcc.Name);
            System.assertEquals(acc.Balance__c, testAcc.Balance__c);
            System.assertEquals(acc.Balance__c * 0.06, testAcc.Calculated_Interest__c);
            System.assertEquals(acc.Email__c, testAcc.Email__c);
            System.assertEquals(acc.Loan_Interest_Rate__c, testAcc.Loan_Interest_Rate__c);
            System.assertEquals(acc.Loan_Type__c, testAcc.Loan_Type__c);
            //System.assertEquals(acc.Total_Loan_Amount__c, testAcc.Remaining_Loan_Amount__c);
            System.assertEquals(acc.Total_Loan_Amount__c, testAcc.Total_Loan_Amount__c);
        } catch (Exception e) {
            System.assert(false, e.getMessage());
        }
        Test.stopTest();
    }
    

    @isTest
    public static void testAccount_123() {
        Account acc = createAccountFromIndex(testCaseData, 123);
        insert acc;
        
        updateAccountFromIndex(testCaseData, 123, acc);
        
        try {
            update acc;
            Account testAcc = [SELECT name, balance__c, calculated_interest__c, email__c, interest_rate__c, loan_interest_rate__c, loan_type__c, remaining_loan_amount__c, total_loan_amount__c, active__c FROM Account WHERE name='d' LIMIT 1];
            System.assertEquals(acc.Name, testAcc.Name);
            System.assertEquals(acc.Balance__c, testAcc.Balance__c);
            System.assertEquals(acc.Balance__c * 0.06, testAcc.Calculated_Interest__c);
            System.assertEquals(acc.Email__c, testAcc.Email__c);
            System.assertEquals(acc.Loan_Interest_Rate__c, testAcc.Loan_Interest_Rate__c);
            System.assertEquals(acc.Loan_Type__c, testAcc.Loan_Type__c);
            //System.assertEquals(acc.Total_Loan_Amount__c, testAcc.Remaining_Loan_Amount__c);
            System.assertEquals(acc.Total_Loan_Amount__c, testAcc.Total_Loan_Amount__c);
        } catch (Exception e) {
            System.assert(false, e.getMessage());
        }
        Test.stopTest();
    }
    

    @isTest
    public static void testAccount_124() {
        Account acc = createAccountFromIndex(testCaseData, 124);
        insert acc;
        
        updateAccountFromIndex(testCaseData, 124, acc);
        
        try {
            update acc;
            Account testAcc = [SELECT name, balance__c, calculated_interest__c, email__c, interest_rate__c, loan_interest_rate__c, loan_type__c, remaining_loan_amount__c, total_loan_amount__c, active__c FROM Account WHERE name='d' LIMIT 1];
            System.assertEquals(acc.Name, testAcc.Name);
            System.assertEquals(acc.Balance__c, testAcc.Balance__c);
            System.assertEquals(acc.Balance__c * 0.05, testAcc.Calculated_Interest__c);
            System.assertEquals(acc.Email__c, testAcc.Email__c);
            System.assertEquals(acc.Loan_Interest_Rate__c, testAcc.Loan_Interest_Rate__c);
            System.assertEquals(acc.Loan_Type__c, testAcc.Loan_Type__c);
            //System.assertEquals(acc.Total_Loan_Amount__c, testAcc.Remaining_Loan_Amount__c);
            System.assertEquals(acc.Total_Loan_Amount__c, testAcc.Total_Loan_Amount__c);
        } catch (Exception e) {
            System.assert(false, e.getMessage());
        }
        Test.stopTest();
    }
    

    @isTest
    public static void testAccount_125() {
        Account acc = createAccountFromIndex(testCaseData, 125);
        insert acc;
        
        updateAccountFromIndex(testCaseData, 125, acc);
        
        try {
            update acc;
            Account testAcc = [SELECT name, balance__c, calculated_interest__c, email__c, interest_rate__c, loan_interest_rate__c, loan_type__c, remaining_loan_amount__c, total_loan_amount__c, active__c FROM Account WHERE name='d' LIMIT 1];
            System.assertEquals(acc.Name, testAcc.Name);
            System.assertEquals(acc.Balance__c, testAcc.Balance__c);
            System.assertEquals(acc.Balance__c * 0.05, testAcc.Calculated_Interest__c);
            System.assertEquals(acc.Email__c, testAcc.Email__c);
            System.assertEquals(acc.Loan_Interest_Rate__c, testAcc.Loan_Interest_Rate__c);
            System.assertEquals(acc.Loan_Type__c, testAcc.Loan_Type__c);
            //System.assertEquals(acc.Total_Loan_Amount__c, testAcc.Remaining_Loan_Amount__c);
            System.assertEquals(acc.Total_Loan_Amount__c, testAcc.Total_Loan_Amount__c);
        } catch (Exception e) {
            System.assert(false, e.getMessage());
        }
        Test.stopTest();
    }
    

    @isTest
    public static void testAccount_126() {
        Account acc = createAccountFromIndex(testCaseData, 126);
        insert acc;
        
        updateAccountFromIndex(testCaseData, 126, acc);
        
        try {
            update acc;
            Account testAcc = [SELECT name, balance__c, calculated_interest__c, email__c, interest_rate__c, loan_interest_rate__c, loan_type__c, remaining_loan_amount__c, total_loan_amount__c, active__c FROM Account WHERE name='d' LIMIT 1];
            System.assertEquals(acc.Name, testAcc.Name);
            System.assertEquals(acc.Balance__c, testAcc.Balance__c);
            System.assertEquals(acc.Balance__c * 0.06, testAcc.Calculated_Interest__c);
            System.assertEquals(acc.Email__c, testAcc.Email__c);
            System.assertEquals(acc.Loan_Interest_Rate__c, testAcc.Loan_Interest_Rate__c);
            System.assertEquals(acc.Loan_Type__c, testAcc.Loan_Type__c);
            //System.assertEquals(acc.Total_Loan_Amount__c, testAcc.Remaining_Loan_Amount__c);
            System.assertEquals(acc.Total_Loan_Amount__c, testAcc.Total_Loan_Amount__c);
        } catch (Exception e) {
            System.assert(false, e.getMessage());
        }
        Test.stopTest();
    }
    

    @isTest
    public static void testAccount_127() {
        Account acc = createAccountFromIndex(testCaseData, 127);
        insert acc;
        
        updateAccountFromIndex(testCaseData, 127, acc);
        
        try {
            update acc;
            Account testAcc = [SELECT name, balance__c, calculated_interest__c, email__c, interest_rate__c, loan_interest_rate__c, loan_type__c, remaining_loan_amount__c, total_loan_amount__c, active__c FROM Account WHERE name='d' LIMIT 1];
            System.assertEquals(acc.Name, testAcc.Name);
            System.assertEquals(acc.Balance__c, testAcc.Balance__c);
            System.assertEquals(acc.Balance__c * 0.06, testAcc.Calculated_Interest__c);
            System.assertEquals(acc.Email__c, testAcc.Email__c);
            System.assertEquals(acc.Loan_Interest_Rate__c, testAcc.Loan_Interest_Rate__c);
            System.assertEquals(acc.Loan_Type__c, testAcc.Loan_Type__c);
            //System.assertEquals(acc.Total_Loan_Amount__c, testAcc.Remaining_Loan_Amount__c);
            System.assertEquals(acc.Total_Loan_Amount__c, testAcc.Total_Loan_Amount__c);
        } catch (Exception e) {
            System.assert(false, e.getMessage());
        }
        Test.stopTest();
    }
    

    @isTest
    public static void testAccount_128() {
        Test.startTest();
        Account acc = createAccountFromIndex(testCaseData, 128);
        
        try {
            insert acc;
            Account testAcc = [SELECT name, balance__c, calculated_interest__c, email__c, interest_rate__c, loan_interest_rate__c, loan_type__c, remaining_loan_amount__c, total_loan_amount__c, active__c FROM Account WHERE name='e' LIMIT 1];
            System.assertEquals(acc.Name, testAcc.Name);
            System.assertEquals(acc.Balance__c, testAcc.Balance__c);
            System.assertEquals(acc.Balance__c * 0.06, testAcc.Calculated_Interest__c);
            System.assertEquals(acc.Email__c, testAcc.Email__c);
            System.assertEquals(acc.Loan_Interest_Rate__c, testAcc.Loan_Interest_Rate__c);
            System.assertEquals(acc.Loan_Type__c, testAcc.Loan_Type__c);
            //System.assertEquals(acc.Total_Loan_Amount__c, testAcc.Remaining_Loan_Amount__c);
            System.assertEquals(acc.Total_Loan_Amount__c, testAcc.Total_Loan_Amount__c);
        } catch (Exception e) {
            System.assert(false, e.getMessage());
        }
        Test.stopTest();
    }
    

    @isTest
    public static void testAccount_129() {
        Account acc = createAccountFromIndex(testCaseData, 129);
        insert acc;
        
        updateAccountFromIndex(testCaseData, 129, acc);
        
        try {
            update acc;
            Account testAcc = [SELECT name, balance__c, calculated_interest__c, email__c, interest_rate__c, loan_interest_rate__c, loan_type__c, remaining_loan_amount__c, total_loan_amount__c, active__c FROM Account WHERE name='d' LIMIT 1];
            System.assertEquals(acc.Name, testAcc.Name);
            System.assertEquals(acc.Balance__c, testAcc.Balance__c);
            System.assertEquals(acc.Balance__c * 0.06, testAcc.Calculated_Interest__c);
            System.assertEquals(acc.Email__c, testAcc.Email__c);
            System.assertEquals(acc.Loan_Interest_Rate__c, testAcc.Loan_Interest_Rate__c);
            System.assertEquals(acc.Loan_Type__c, testAcc.Loan_Type__c);
            //System.assertEquals(acc.Total_Loan_Amount__c, testAcc.Remaining_Loan_Amount__c);
            System.assertEquals(acc.Total_Loan_Amount__c, testAcc.Total_Loan_Amount__c);
        } catch (Exception e) {
            System.assert(false, e.getMessage());
        }
        Test.stopTest();
    }
    

    @isTest
    public static void testAccount_130() {
        Account acc = createAccountFromIndex(testCaseData, 130);
        insert acc;
        
        updateAccountFromIndex(testCaseData, 130, acc);
        
        try {
            update acc;
            Account testAcc = [SELECT name, balance__c, calculated_interest__c, email__c, interest_rate__c, loan_interest_rate__c, loan_type__c, remaining_loan_amount__c, total_loan_amount__c, active__c FROM Account WHERE name='d' LIMIT 1];
            System.assertEquals(acc.Name, testAcc.Name);
            System.assertEquals(acc.Balance__c, testAcc.Balance__c);
            System.assertEquals(acc.Balance__c * 0.038, testAcc.Calculated_Interest__c);
            System.assertEquals(acc.Email__c, testAcc.Email__c);
            System.assertEquals(acc.Loan_Interest_Rate__c, testAcc.Loan_Interest_Rate__c);
            System.assertEquals(acc.Loan_Type__c, testAcc.Loan_Type__c);
            //System.assertEquals(acc.Total_Loan_Amount__c, testAcc.Remaining_Loan_Amount__c);
            System.assertEquals(acc.Total_Loan_Amount__c, testAcc.Total_Loan_Amount__c);
        } catch (Exception e) {
            System.assert(false, e.getMessage());
        }
        Test.stopTest();
    }
    

    @isTest
    public static void testAccount_131() {
        Test.startTest();
        Account acc = createAccountFromIndex(testCaseData, 131);
        
        try {
            insert acc;
            Account testAcc = [SELECT name, balance__c, calculated_interest__c, email__c, interest_rate__c, loan_interest_rate__c, loan_type__c, remaining_loan_amount__c, total_loan_amount__c, active__c FROM Account WHERE name='e' LIMIT 1];
            System.assertEquals(acc.Name, testAcc.Name);
            System.assertEquals(acc.Balance__c, testAcc.Balance__c);
            System.assertEquals(acc.Balance__c * 0.05, testAcc.Calculated_Interest__c);
            System.assertEquals(acc.Email__c, testAcc.Email__c);
            System.assertEquals(acc.Loan_Interest_Rate__c, testAcc.Loan_Interest_Rate__c);
            System.assertEquals(acc.Loan_Type__c, testAcc.Loan_Type__c);
            //System.assertEquals(acc.Total_Loan_Amount__c, testAcc.Remaining_Loan_Amount__c);
            System.assertEquals(acc.Total_Loan_Amount__c, testAcc.Total_Loan_Amount__c);
        } catch (Exception e) {
            System.assert(false, e.getMessage());
        }
        Test.stopTest();
    }
    

    @isTest
    public static void testAccount_132() {
        Account acc = createAccountFromIndex(testCaseData, 132);
        insert acc;
        
        updateAccountFromIndex(testCaseData, 132, acc);
        
        try {
            update acc;
            Account testAcc = [SELECT name, balance__c, calculated_interest__c, email__c, interest_rate__c, loan_interest_rate__c, loan_type__c, remaining_loan_amount__c, total_loan_amount__c, active__c FROM Account WHERE name='d' LIMIT 1];
            System.assertEquals(acc.Name, testAcc.Name);
            System.assertEquals(acc.Balance__c, testAcc.Balance__c);
            System.assertEquals(acc.Balance__c * 0.05, testAcc.Calculated_Interest__c);
            System.assertEquals(acc.Email__c, testAcc.Email__c);
            System.assertEquals(acc.Loan_Interest_Rate__c, testAcc.Loan_Interest_Rate__c);
            System.assertEquals(acc.Loan_Type__c, testAcc.Loan_Type__c);
            //System.assertEquals(acc.Total_Loan_Amount__c, testAcc.Remaining_Loan_Amount__c);
            System.assertEquals(acc.Total_Loan_Amount__c, testAcc.Total_Loan_Amount__c);
        } catch (Exception e) {
            System.assert(false, e.getMessage());
        }
        Test.stopTest();
    }
    

    @isTest
    public static void testAccount_133() {
        Account acc = createAccountFromIndex(testCaseData, 133);
        insert acc;
        
        updateAccountFromIndex(testCaseData, 133, acc);
        
        try {
            update acc;
            Account testAcc = [SELECT name, balance__c, calculated_interest__c, email__c, interest_rate__c, loan_interest_rate__c, loan_type__c, remaining_loan_amount__c, total_loan_amount__c, active__c FROM Account WHERE name='d' LIMIT 1];
            System.assertEquals(acc.Name, testAcc.Name);
            System.assertEquals(acc.Balance__c, testAcc.Balance__c);
            System.assertEquals(acc.Balance__c * 0.05, testAcc.Calculated_Interest__c);
            System.assertEquals(acc.Email__c, testAcc.Email__c);
            System.assertEquals(acc.Loan_Interest_Rate__c, testAcc.Loan_Interest_Rate__c);
            System.assertEquals(acc.Loan_Type__c, testAcc.Loan_Type__c);
            //System.assertEquals(acc.Total_Loan_Amount__c, testAcc.Remaining_Loan_Amount__c);
            System.assertEquals(acc.Total_Loan_Amount__c, testAcc.Total_Loan_Amount__c);
        } catch (Exception e) {
            System.assert(false, e.getMessage());
        }
        Test.stopTest();
    }
    

    @isTest
    public static void testAccount_134() {
        Account acc = createAccountFromIndex(testCaseData, 134);
        insert acc;
        
        updateAccountFromIndex(testCaseData, 134, acc);
        
        try {
            update acc;
            Account testAcc = [SELECT name, balance__c, calculated_interest__c, email__c, interest_rate__c, loan_interest_rate__c, loan_type__c, remaining_loan_amount__c, total_loan_amount__c, active__c FROM Account WHERE name='d' LIMIT 1];
            System.assertEquals(acc.Name, testAcc.Name);
            System.assertEquals(acc.Balance__c, testAcc.Balance__c);
            System.assertEquals(acc.Balance__c * 0.06, testAcc.Calculated_Interest__c);
            System.assertEquals(acc.Email__c, testAcc.Email__c);
            System.assertEquals(acc.Loan_Interest_Rate__c, testAcc.Loan_Interest_Rate__c);
            System.assertEquals(acc.Loan_Type__c, testAcc.Loan_Type__c);
            //System.assertEquals(acc.Total_Loan_Amount__c, testAcc.Remaining_Loan_Amount__c);
            System.assertEquals(acc.Total_Loan_Amount__c, testAcc.Total_Loan_Amount__c);
        } catch (Exception e) {
            System.assert(false, e.getMessage());
        }
        Test.stopTest();
    }
    

    @isTest
    public static void testAccount_135() {
        Account acc = createAccountFromIndex(testCaseData, 135);
        insert acc;
        
        updateAccountFromIndex(testCaseData, 135, acc);
        
        try {
            update acc;
            Account testAcc = [SELECT name, balance__c, calculated_interest__c, email__c, interest_rate__c, loan_interest_rate__c, loan_type__c, remaining_loan_amount__c, total_loan_amount__c, active__c FROM Account WHERE name='d' LIMIT 1];
            System.assertEquals(acc.Name, testAcc.Name);
            System.assertEquals(acc.Balance__c, testAcc.Balance__c);
            System.assertEquals(acc.Balance__c * 0.038, testAcc.Calculated_Interest__c);
            System.assertEquals(acc.Email__c, testAcc.Email__c);
            System.assertEquals(acc.Loan_Interest_Rate__c, testAcc.Loan_Interest_Rate__c);
            System.assertEquals(acc.Loan_Type__c, testAcc.Loan_Type__c);
            //System.assertEquals(acc.Total_Loan_Amount__c, testAcc.Remaining_Loan_Amount__c);
            System.assertEquals(acc.Total_Loan_Amount__c, testAcc.Total_Loan_Amount__c);
        } catch (Exception e) {
            System.assert(false, e.getMessage());
        }
        Test.stopTest();
    }
    

    @isTest
    public static void testAccount_136() {
        Test.startTest();
        Account acc = createAccountFromIndex(testCaseData, 136);
        
        try {
            insert acc;
            Account testAcc = [SELECT name, balance__c, calculated_interest__c, email__c, interest_rate__c, loan_interest_rate__c, loan_type__c, remaining_loan_amount__c, total_loan_amount__c, active__c FROM Account WHERE name='e' LIMIT 1];
            System.assertEquals(acc.Name, testAcc.Name);
            System.assertEquals(acc.Balance__c, testAcc.Balance__c);
            System.assertEquals(acc.Balance__c * 0.06, testAcc.Calculated_Interest__c);
            System.assertEquals(acc.Email__c, testAcc.Email__c);
            System.assertEquals(acc.Loan_Interest_Rate__c, testAcc.Loan_Interest_Rate__c);
            System.assertEquals(acc.Loan_Type__c, testAcc.Loan_Type__c);
            //System.assertEquals(acc.Total_Loan_Amount__c, testAcc.Remaining_Loan_Amount__c);
            System.assertEquals(acc.Total_Loan_Amount__c, testAcc.Total_Loan_Amount__c);
        } catch (Exception e) {
            System.assert(false, e.getMessage());
        }
        Test.stopTest();
    }
    

    @isTest
    public static void testAccount_137() {
        Account acc = createAccountFromIndex(testCaseData, 137);
        insert acc;
        
        updateAccountFromIndex(testCaseData, 137, acc);
        
        try {
            update acc;
            Account testAcc = [SELECT name, balance__c, calculated_interest__c, email__c, interest_rate__c, loan_interest_rate__c, loan_type__c, remaining_loan_amount__c, total_loan_amount__c, active__c FROM Account WHERE name='d' LIMIT 1];
            System.assertEquals(acc.Name, testAcc.Name);
            System.assertEquals(acc.Balance__c, testAcc.Balance__c);
            System.assertEquals(acc.Balance__c * 0.038, testAcc.Calculated_Interest__c);
            System.assertEquals(acc.Email__c, testAcc.Email__c);
            System.assertEquals(acc.Loan_Interest_Rate__c, testAcc.Loan_Interest_Rate__c);
            System.assertEquals(acc.Loan_Type__c, testAcc.Loan_Type__c);
            //System.assertEquals(acc.Total_Loan_Amount__c, testAcc.Remaining_Loan_Amount__c);
            System.assertEquals(acc.Total_Loan_Amount__c, testAcc.Total_Loan_Amount__c);
        } catch (Exception e) {
            System.assert(false, e.getMessage());
        }
        Test.stopTest();
    }
    

    @isTest
    public static void testAccount_138() {
        Account acc = createAccountFromIndex(testCaseData, 138);
        insert acc;
        
        updateAccountFromIndex(testCaseData, 138, acc);
        
        try {
            update acc;
            Account testAcc = [SELECT name, balance__c, calculated_interest__c, email__c, interest_rate__c, loan_interest_rate__c, loan_type__c, remaining_loan_amount__c, total_loan_amount__c, active__c FROM Account WHERE name='d' LIMIT 1];
            System.assertEquals(acc.Name, testAcc.Name);
            System.assertEquals(acc.Balance__c, testAcc.Balance__c);
            System.assertEquals(acc.Balance__c * 0.038, testAcc.Calculated_Interest__c);
            System.assertEquals(acc.Email__c, testAcc.Email__c);
            System.assertEquals(acc.Loan_Interest_Rate__c, testAcc.Loan_Interest_Rate__c);
            System.assertEquals(acc.Loan_Type__c, testAcc.Loan_Type__c);
            //System.assertEquals(acc.Total_Loan_Amount__c, testAcc.Remaining_Loan_Amount__c);
            System.assertEquals(acc.Total_Loan_Amount__c, testAcc.Total_Loan_Amount__c);
        } catch (Exception e) {
            System.assert(false, e.getMessage());
        }
        Test.stopTest();
    }
    

    @isTest
    public static void testAccount_139() {
        Account acc = createAccountFromIndex(testCaseData, 139);
        insert acc;
        
        updateAccountFromIndex(testCaseData, 139, acc);
        
        try {
            update acc;
            Account testAcc = [SELECT name, balance__c, calculated_interest__c, email__c, interest_rate__c, loan_interest_rate__c, loan_type__c, remaining_loan_amount__c, total_loan_amount__c, active__c FROM Account WHERE name='d' LIMIT 1];
            System.assertEquals(acc.Name, testAcc.Name);
            System.assertEquals(acc.Balance__c, testAcc.Balance__c);
            System.assertEquals(acc.Balance__c * 0.06, testAcc.Calculated_Interest__c);
            System.assertEquals(acc.Email__c, testAcc.Email__c);
            System.assertEquals(acc.Loan_Interest_Rate__c, testAcc.Loan_Interest_Rate__c);
            System.assertEquals(acc.Loan_Type__c, testAcc.Loan_Type__c);
            //System.assertEquals(acc.Total_Loan_Amount__c, testAcc.Remaining_Loan_Amount__c);
            System.assertEquals(acc.Total_Loan_Amount__c, testAcc.Total_Loan_Amount__c);
        } catch (Exception e) {
            System.assert(false, e.getMessage());
        }
        Test.stopTest();
    }
    

    @isTest
    public static void testAccount_140() {
        Test.startTest();
        Account acc = createAccountFromIndex(testCaseData, 140);
        
        try {
            insert acc;
            Account testAcc = [SELECT name, balance__c, calculated_interest__c, email__c, interest_rate__c, loan_interest_rate__c, loan_type__c, remaining_loan_amount__c, total_loan_amount__c, active__c FROM Account WHERE name='e' LIMIT 1];
            System.assertEquals(acc.Name, testAcc.Name);
            System.assertEquals(acc.Balance__c, testAcc.Balance__c);
            System.assertEquals(acc.Balance__c * 0.038, testAcc.Calculated_Interest__c);
            System.assertEquals(acc.Email__c, testAcc.Email__c);
            System.assertEquals(acc.Loan_Interest_Rate__c, testAcc.Loan_Interest_Rate__c);
            System.assertEquals(acc.Loan_Type__c, testAcc.Loan_Type__c);
            //System.assertEquals(acc.Total_Loan_Amount__c, testAcc.Remaining_Loan_Amount__c);
            System.assertEquals(acc.Total_Loan_Amount__c, testAcc.Total_Loan_Amount__c);
        } catch (Exception e) {
            System.assert(false, e.getMessage());
        }
        Test.stopTest();
    }
    

    @isTest
    public static void testAccount_141() {
        Account acc = createAccountFromIndex(testCaseData, 141);
        insert acc;
        
        updateAccountFromIndex(testCaseData, 141, acc);
        
        try {
            update acc;
            Account testAcc = [SELECT name, balance__c, calculated_interest__c, email__c, interest_rate__c, loan_interest_rate__c, loan_type__c, remaining_loan_amount__c, total_loan_amount__c, active__c FROM Account WHERE name='d' LIMIT 1];
            System.assertEquals(acc.Name, testAcc.Name);
            System.assertEquals(acc.Balance__c, testAcc.Balance__c);
            System.assertEquals(acc.Balance__c * 0.05, testAcc.Calculated_Interest__c);
            System.assertEquals(acc.Email__c, testAcc.Email__c);
            System.assertEquals(acc.Loan_Interest_Rate__c, testAcc.Loan_Interest_Rate__c);
            System.assertEquals(acc.Loan_Type__c, testAcc.Loan_Type__c);
            //System.assertEquals(acc.Total_Loan_Amount__c, testAcc.Remaining_Loan_Amount__c);
            System.assertEquals(acc.Total_Loan_Amount__c, testAcc.Total_Loan_Amount__c);
        } catch (Exception e) {
            System.assert(false, e.getMessage());
        }
        Test.stopTest();
    }
    

    @isTest
    public static void testAccount_142() {
        Account acc = createAccountFromIndex(testCaseData, 142);
        insert acc;
        
        updateAccountFromIndex(testCaseData, 142, acc);
        
        try {
            update acc;
            Account testAcc = [SELECT name, balance__c, calculated_interest__c, email__c, interest_rate__c, loan_interest_rate__c, loan_type__c, remaining_loan_amount__c, total_loan_amount__c, active__c FROM Account WHERE name='d' LIMIT 1];
            System.assertEquals(acc.Name, testAcc.Name);
            System.assertEquals(acc.Balance__c, testAcc.Balance__c);
            System.assertEquals(acc.Balance__c * 0.038, testAcc.Calculated_Interest__c);
            System.assertEquals(acc.Email__c, testAcc.Email__c);
            System.assertEquals(acc.Loan_Interest_Rate__c, testAcc.Loan_Interest_Rate__c);
            System.assertEquals(acc.Loan_Type__c, testAcc.Loan_Type__c);
            //System.assertEquals(acc.Total_Loan_Amount__c, testAcc.Remaining_Loan_Amount__c);
            System.assertEquals(acc.Total_Loan_Amount__c, testAcc.Total_Loan_Amount__c);
        } catch (Exception e) {
            System.assert(false, e.getMessage());
        }
        Test.stopTest();
    }
    

    @isTest
    public static void testAccount_143() {
        Test.startTest();
        Account acc = createAccountFromIndex(testCaseData, 143);
        
        try {
            insert acc;
            Account testAcc = [SELECT name, balance__c, calculated_interest__c, email__c, interest_rate__c, loan_interest_rate__c, loan_type__c, remaining_loan_amount__c, total_loan_amount__c, active__c FROM Account WHERE name='e' LIMIT 1];
            System.assertEquals(acc.Name, testAcc.Name);
            System.assertEquals(acc.Balance__c, testAcc.Balance__c);
            System.assertEquals(acc.Balance__c * 0.038, testAcc.Calculated_Interest__c);
            System.assertEquals(acc.Email__c, testAcc.Email__c);
            System.assertEquals(acc.Loan_Interest_Rate__c, testAcc.Loan_Interest_Rate__c);
            System.assertEquals(acc.Loan_Type__c, testAcc.Loan_Type__c);
            //System.assertEquals(acc.Total_Loan_Amount__c, testAcc.Remaining_Loan_Amount__c);
            System.assertEquals(acc.Total_Loan_Amount__c, testAcc.Total_Loan_Amount__c);
        } catch (Exception e) {
            System.assert(false, e.getMessage());
        }
        Test.stopTest();
    }
    

    @isTest
    public static void testAccount_144() {
        Account acc = createAccountFromIndex(testCaseData, 144);
        insert acc;
        
        updateAccountFromIndex(testCaseData, 144, acc);
        
        try {
            update acc;
            Account testAcc = [SELECT name, balance__c, calculated_interest__c, email__c, interest_rate__c, loan_interest_rate__c, loan_type__c, remaining_loan_amount__c, total_loan_amount__c, active__c FROM Account WHERE name='d' LIMIT 1];
            System.assertEquals(acc.Name, testAcc.Name);
            System.assertEquals(acc.Balance__c, testAcc.Balance__c);
            System.assertEquals(acc.Balance__c * 0.038, testAcc.Calculated_Interest__c);
            System.assertEquals(acc.Email__c, testAcc.Email__c);
            System.assertEquals(acc.Loan_Interest_Rate__c, testAcc.Loan_Interest_Rate__c);
            System.assertEquals(acc.Loan_Type__c, testAcc.Loan_Type__c);
            //System.assertEquals(acc.Total_Loan_Amount__c, testAcc.Remaining_Loan_Amount__c);
            System.assertEquals(acc.Total_Loan_Amount__c, testAcc.Total_Loan_Amount__c);
        } catch (Exception e) {
            System.assert(false, e.getMessage());
        }
        Test.stopTest();
    }
    

    @isTest
    public static void testAccount_145() {
        Account acc = createAccountFromIndex(testCaseData, 145);
        insert acc;
        
        updateAccountFromIndex(testCaseData, 145, acc);
        
        try {
            update acc;
            Account testAcc = [SELECT name, balance__c, calculated_interest__c, email__c, interest_rate__c, loan_interest_rate__c, loan_type__c, remaining_loan_amount__c, total_loan_amount__c, active__c FROM Account WHERE name='d' LIMIT 1];
            System.assertEquals(acc.Name, testAcc.Name);
            System.assertEquals(acc.Balance__c, testAcc.Balance__c);
            System.assertEquals(acc.Balance__c * 0.05, testAcc.Calculated_Interest__c);
            System.assertEquals(acc.Email__c, testAcc.Email__c);
            System.assertEquals(acc.Loan_Interest_Rate__c, testAcc.Loan_Interest_Rate__c);
            System.assertEquals(acc.Loan_Type__c, testAcc.Loan_Type__c);
            //System.assertEquals(acc.Total_Loan_Amount__c, testAcc.Remaining_Loan_Amount__c);
            System.assertEquals(acc.Total_Loan_Amount__c, testAcc.Total_Loan_Amount__c);
        } catch (Exception e) {
            System.assert(false, e.getMessage());
        }
        Test.stopTest();
    }
    

    @isTest
    public static void testAccount_146() {
        Account acc = createAccountFromIndex(testCaseData, 146);
        insert acc;
        
        updateAccountFromIndex(testCaseData, 146, acc);
        
        try {
            update acc;
            Account testAcc = [SELECT name, balance__c, calculated_interest__c, email__c, interest_rate__c, loan_interest_rate__c, loan_type__c, remaining_loan_amount__c, total_loan_amount__c, active__c FROM Account WHERE name='d' LIMIT 1];
            System.assertEquals(acc.Name, testAcc.Name);
            System.assertEquals(acc.Balance__c, testAcc.Balance__c);
            System.assertEquals(acc.Balance__c * 0.05, testAcc.Calculated_Interest__c);
            System.assertEquals(acc.Email__c, testAcc.Email__c);
            System.assertEquals(acc.Loan_Interest_Rate__c, testAcc.Loan_Interest_Rate__c);
            System.assertEquals(acc.Loan_Type__c, testAcc.Loan_Type__c);
            //System.assertEquals(acc.Total_Loan_Amount__c, testAcc.Remaining_Loan_Amount__c);
            System.assertEquals(acc.Total_Loan_Amount__c, testAcc.Total_Loan_Amount__c);
        } catch (Exception e) {
            System.assert(false, e.getMessage());
        }
        Test.stopTest();
    }
    

    @isTest
    public static void testAccount_147() {
        Test.startTest();
        Account acc = createAccountFromIndex(testCaseData, 147);
        
        try {
            insert acc;
            Account testAcc = [SELECT name, balance__c, calculated_interest__c, email__c, interest_rate__c, loan_interest_rate__c, loan_type__c, remaining_loan_amount__c, total_loan_amount__c, active__c FROM Account WHERE name='e' LIMIT 1];
            System.assertEquals(acc.Name, testAcc.Name);
            System.assertEquals(acc.Balance__c, testAcc.Balance__c);
            System.assertEquals(acc.Balance__c * 0.05, testAcc.Calculated_Interest__c);
            System.assertEquals(acc.Email__c, testAcc.Email__c);
            System.assertEquals(acc.Loan_Interest_Rate__c, testAcc.Loan_Interest_Rate__c);
            System.assertEquals(acc.Loan_Type__c, testAcc.Loan_Type__c);
            //System.assertEquals(acc.Total_Loan_Amount__c, testAcc.Remaining_Loan_Amount__c);
            System.assertEquals(acc.Total_Loan_Amount__c, testAcc.Total_Loan_Amount__c);
        } catch (Exception e) {
            System.assert(false, e.getMessage());
        }
        Test.stopTest();
    }
    

    @isTest
    public static void testAccount_148() {
        Account acc = createAccountFromIndex(testCaseData, 148);
        insert acc;
        
        updateAccountFromIndex(testCaseData, 148, acc);
        
        try {
            update acc;
            Account testAcc = [SELECT name, balance__c, calculated_interest__c, email__c, interest_rate__c, loan_interest_rate__c, loan_type__c, remaining_loan_amount__c, total_loan_amount__c, active__c FROM Account WHERE name='d' LIMIT 1];
            System.assertEquals(acc.Name, testAcc.Name);
            System.assertEquals(acc.Balance__c, testAcc.Balance__c);
            System.assertEquals(acc.Balance__c * 0.05, testAcc.Calculated_Interest__c);
            System.assertEquals(acc.Email__c, testAcc.Email__c);
            System.assertEquals(acc.Loan_Interest_Rate__c, testAcc.Loan_Interest_Rate__c);
            System.assertEquals(acc.Loan_Type__c, testAcc.Loan_Type__c);
            //System.assertEquals(acc.Total_Loan_Amount__c, testAcc.Remaining_Loan_Amount__c);
            System.assertEquals(acc.Total_Loan_Amount__c, testAcc.Total_Loan_Amount__c);
        } catch (Exception e) {
            System.assert(false, e.getMessage());
        }
        Test.stopTest();
    }
    

    @isTest
    public static void testAccount_149() {
        Account acc = createAccountFromIndex(testCaseData, 149);
        insert acc;
        
        updateAccountFromIndex(testCaseData, 149, acc);
        
        try {
            update acc;
            Account testAcc = [SELECT name, balance__c, calculated_interest__c, email__c, interest_rate__c, loan_interest_rate__c, loan_type__c, remaining_loan_amount__c, total_loan_amount__c, active__c FROM Account WHERE name='d' LIMIT 1];
            System.assertEquals(acc.Name, testAcc.Name);
            System.assertEquals(acc.Balance__c, testAcc.Balance__c);
            System.assertEquals(acc.Balance__c * 0.05, testAcc.Calculated_Interest__c);
            System.assertEquals(acc.Email__c, testAcc.Email__c);
            System.assertEquals(acc.Loan_Interest_Rate__c, testAcc.Loan_Interest_Rate__c);
            System.assertEquals(acc.Loan_Type__c, testAcc.Loan_Type__c);
            //System.assertEquals(acc.Total_Loan_Amount__c, testAcc.Remaining_Loan_Amount__c);
            System.assertEquals(acc.Total_Loan_Amount__c, testAcc.Total_Loan_Amount__c);
        } catch (Exception e) {
            System.assert(false, e.getMessage());
        }
        Test.stopTest();
    }
    

    @isTest
    public static void testAccount_150() {
        Account acc = createAccountFromIndex(testCaseData, 150);
        insert acc;
        
        updateAccountFromIndex(testCaseData, 150, acc);
        
        try {
            update acc;
            Account testAcc = [SELECT name, balance__c, calculated_interest__c, email__c, interest_rate__c, loan_interest_rate__c, loan_type__c, remaining_loan_amount__c, total_loan_amount__c, active__c FROM Account WHERE name='d' LIMIT 1];
            System.assertEquals(acc.Name, testAcc.Name);
            System.assertEquals(acc.Balance__c, testAcc.Balance__c);
            System.assertEquals(acc.Balance__c * 0.05, testAcc.Calculated_Interest__c);
            System.assertEquals(acc.Email__c, testAcc.Email__c);
            System.assertEquals(acc.Loan_Interest_Rate__c, testAcc.Loan_Interest_Rate__c);
            System.assertEquals(acc.Loan_Type__c, testAcc.Loan_Type__c);
            //System.assertEquals(acc.Total_Loan_Amount__c, testAcc.Remaining_Loan_Amount__c);
            System.assertEquals(acc.Total_Loan_Amount__c, testAcc.Total_Loan_Amount__c);
        } catch (Exception e) {
            System.assert(false, e.getMessage());
        }
        Test.stopTest();
    }
    

    @isTest
    public static void testAccount_151() {
        Account acc = createAccountFromIndex(testCaseData, 151);
        insert acc;
        
        updateAccountFromIndex(testCaseData, 151, acc);
        
        try {
            update acc;
            Account testAcc = [SELECT name, balance__c, calculated_interest__c, email__c, interest_rate__c, loan_interest_rate__c, loan_type__c, remaining_loan_amount__c, total_loan_amount__c, active__c FROM Account WHERE name='d' LIMIT 1];
            System.assertEquals(acc.Name, testAcc.Name);
            System.assertEquals(acc.Balance__c, testAcc.Balance__c);
            System.assertEquals(acc.Balance__c * 0.038, testAcc.Calculated_Interest__c);
            System.assertEquals(acc.Email__c, testAcc.Email__c);
            System.assertEquals(acc.Loan_Interest_Rate__c, testAcc.Loan_Interest_Rate__c);
            System.assertEquals(acc.Loan_Type__c, testAcc.Loan_Type__c);
            //System.assertEquals(acc.Total_Loan_Amount__c, testAcc.Remaining_Loan_Amount__c);
            System.assertEquals(acc.Total_Loan_Amount__c, testAcc.Total_Loan_Amount__c);
        } catch (Exception e) {
            System.assert(false, e.getMessage());
        }
        Test.stopTest();
    }
    

    @isTest
    public static void testAccount_152() {
        Account acc = createAccountFromIndex(testCaseData, 152);
        insert acc;
        
        updateAccountFromIndex(testCaseData, 152, acc);
        
        try {
            update acc;
            Account testAcc = [SELECT name, balance__c, calculated_interest__c, email__c, interest_rate__c, loan_interest_rate__c, loan_type__c, remaining_loan_amount__c, total_loan_amount__c, active__c FROM Account WHERE name='d' LIMIT 1];
            System.assertEquals(acc.Name, testAcc.Name);
            System.assertEquals(acc.Balance__c, testAcc.Balance__c);
            System.assertEquals(acc.Balance__c * 0.05, testAcc.Calculated_Interest__c);
            System.assertEquals(acc.Email__c, testAcc.Email__c);
            System.assertEquals(acc.Loan_Interest_Rate__c, testAcc.Loan_Interest_Rate__c);
            System.assertEquals(acc.Loan_Type__c, testAcc.Loan_Type__c);
            //System.assertEquals(acc.Total_Loan_Amount__c, testAcc.Remaining_Loan_Amount__c);
            System.assertEquals(acc.Total_Loan_Amount__c, testAcc.Total_Loan_Amount__c);
        } catch (Exception e) {
            System.assert(false, e.getMessage());
        }
        Test.stopTest();
    }
    

    @isTest
    public static void testAccount_153() {
        Account acc = createAccountFromIndex(testCaseData, 153);
        insert acc;
        
        updateAccountFromIndex(testCaseData, 153, acc);
        
        try {
            update acc;
            Account testAcc = [SELECT name, balance__c, calculated_interest__c, email__c, interest_rate__c, loan_interest_rate__c, loan_type__c, remaining_loan_amount__c, total_loan_amount__c, active__c FROM Account WHERE name='d' LIMIT 1];
            System.assertEquals(acc.Name, testAcc.Name);
            System.assertEquals(acc.Balance__c, testAcc.Balance__c);
            System.assertEquals(acc.Balance__c * 0.06, testAcc.Calculated_Interest__c);
            System.assertEquals(acc.Email__c, testAcc.Email__c);
            System.assertEquals(acc.Loan_Interest_Rate__c, testAcc.Loan_Interest_Rate__c);
            System.assertEquals(acc.Loan_Type__c, testAcc.Loan_Type__c);
            //System.assertEquals(acc.Total_Loan_Amount__c, testAcc.Remaining_Loan_Amount__c);
            System.assertEquals(acc.Total_Loan_Amount__c, testAcc.Total_Loan_Amount__c);
        } catch (Exception e) {
            System.assert(false, e.getMessage());
        }
        Test.stopTest();
    }
    

    @isTest
    public static void testAccount_154() {
        Test.startTest();
        Account acc = createAccountFromIndex(testCaseData, 154);
        
        try {
            insert acc;
            Account testAcc = [SELECT name, balance__c, calculated_interest__c, email__c, interest_rate__c, loan_interest_rate__c, loan_type__c, remaining_loan_amount__c, total_loan_amount__c, active__c FROM Account WHERE name='e' LIMIT 1];
            System.assertEquals(acc.Name, testAcc.Name);
            System.assertEquals(acc.Balance__c, testAcc.Balance__c);
            System.assertEquals(acc.Balance__c * 0.06, testAcc.Calculated_Interest__c);
            System.assertEquals(acc.Email__c, testAcc.Email__c);
            System.assertEquals(acc.Loan_Interest_Rate__c, testAcc.Loan_Interest_Rate__c);
            System.assertEquals(acc.Loan_Type__c, testAcc.Loan_Type__c);
            //System.assertEquals(acc.Total_Loan_Amount__c, testAcc.Remaining_Loan_Amount__c);
            System.assertEquals(acc.Total_Loan_Amount__c, testAcc.Total_Loan_Amount__c);
        } catch (Exception e) {
            System.assert(false, e.getMessage());
        }
        Test.stopTest();
    }
    

    @isTest
    public static void testAccount_155() {
        Account acc = createAccountFromIndex(testCaseData, 155);
        insert acc;
        
        updateAccountFromIndex(testCaseData, 155, acc);
        
        try {
            update acc;
            Account testAcc = [SELECT name, balance__c, calculated_interest__c, email__c, interest_rate__c, loan_interest_rate__c, loan_type__c, remaining_loan_amount__c, total_loan_amount__c, active__c FROM Account WHERE name='d' LIMIT 1];
            System.assertEquals(acc.Name, testAcc.Name);
            System.assertEquals(acc.Balance__c, testAcc.Balance__c);
            System.assertEquals(acc.Balance__c * 0.05, testAcc.Calculated_Interest__c);
            System.assertEquals(acc.Email__c, testAcc.Email__c);
            System.assertEquals(acc.Loan_Interest_Rate__c, testAcc.Loan_Interest_Rate__c);
            System.assertEquals(acc.Loan_Type__c, testAcc.Loan_Type__c);
            //System.assertEquals(acc.Total_Loan_Amount__c, testAcc.Remaining_Loan_Amount__c);
            System.assertEquals(acc.Total_Loan_Amount__c, testAcc.Total_Loan_Amount__c);
        } catch (Exception e) {
            System.assert(false, e.getMessage());
        }
        Test.stopTest();
    }
    

    @isTest
    public static void testAccount_156() {
        Account acc = createAccountFromIndex(testCaseData, 156);
        insert acc;
        
        updateAccountFromIndex(testCaseData, 156, acc);
        
        try {
            update acc;
            Account testAcc = [SELECT name, balance__c, calculated_interest__c, email__c, interest_rate__c, loan_interest_rate__c, loan_type__c, remaining_loan_amount__c, total_loan_amount__c, active__c FROM Account WHERE name='d' LIMIT 1];
            System.assertEquals(acc.Name, testAcc.Name);
            System.assertEquals(acc.Balance__c, testAcc.Balance__c);
            System.assertEquals(acc.Balance__c * 0.06, testAcc.Calculated_Interest__c);
            System.assertEquals(acc.Email__c, testAcc.Email__c);
            System.assertEquals(acc.Loan_Interest_Rate__c, testAcc.Loan_Interest_Rate__c);
            System.assertEquals(acc.Loan_Type__c, testAcc.Loan_Type__c);
            //System.assertEquals(acc.Total_Loan_Amount__c, testAcc.Remaining_Loan_Amount__c);
            System.assertEquals(acc.Total_Loan_Amount__c, testAcc.Total_Loan_Amount__c);
        } catch (Exception e) {
            System.assert(false, e.getMessage());
        }
        Test.stopTest();
    }
    

    @isTest
    public static void testAccount_157() {
        Account acc = createAccountFromIndex(testCaseData, 157);
        insert acc;
        
        updateAccountFromIndex(testCaseData, 157, acc);
        
        try {
            update acc;
            Account testAcc = [SELECT name, balance__c, calculated_interest__c, email__c, interest_rate__c, loan_interest_rate__c, loan_type__c, remaining_loan_amount__c, total_loan_amount__c, active__c FROM Account WHERE name='d' LIMIT 1];
            System.assertEquals(acc.Name, testAcc.Name);
            System.assertEquals(acc.Balance__c, testAcc.Balance__c);
            System.assertEquals(acc.Balance__c * 0.06, testAcc.Calculated_Interest__c);
            System.assertEquals(acc.Email__c, testAcc.Email__c);
            System.assertEquals(acc.Loan_Interest_Rate__c, testAcc.Loan_Interest_Rate__c);
            System.assertEquals(acc.Loan_Type__c, testAcc.Loan_Type__c);
            //System.assertEquals(acc.Total_Loan_Amount__c, testAcc.Remaining_Loan_Amount__c);
            System.assertEquals(acc.Total_Loan_Amount__c, testAcc.Total_Loan_Amount__c);
        } catch (Exception e) {
            System.assert(false, e.getMessage());
        }
        Test.stopTest();
    }
    

    @isTest
    public static void testAccount_158() {
        Test.startTest();
        Account acc = createAccountFromIndex(testCaseData, 158);
        
        try {
            insert acc;
            Account testAcc = [SELECT name, balance__c, calculated_interest__c, email__c, interest_rate__c, loan_interest_rate__c, loan_type__c, remaining_loan_amount__c, total_loan_amount__c, active__c FROM Account WHERE name='e' LIMIT 1];
            System.assertEquals(acc.Name, testAcc.Name);
            System.assertEquals(acc.Balance__c, testAcc.Balance__c);
            System.assertEquals(acc.Balance__c * 0.05, testAcc.Calculated_Interest__c);
            System.assertEquals(acc.Email__c, testAcc.Email__c);
            System.assertEquals(acc.Loan_Interest_Rate__c, testAcc.Loan_Interest_Rate__c);
            System.assertEquals(acc.Loan_Type__c, testAcc.Loan_Type__c);
            //System.assertEquals(acc.Total_Loan_Amount__c, testAcc.Remaining_Loan_Amount__c);
            System.assertEquals(acc.Total_Loan_Amount__c, testAcc.Total_Loan_Amount__c);
        } catch (Exception e) {
            System.assert(false, e.getMessage());
        }
        Test.stopTest();
    }
    

    @isTest
    public static void testAccount_159() {
        Account acc = createAccountFromIndex(testCaseData, 159);
        insert acc;
        
        updateAccountFromIndex(testCaseData, 159, acc);
        
        try {
            update acc;
            Account testAcc = [SELECT name, balance__c, calculated_interest__c, email__c, interest_rate__c, loan_interest_rate__c, loan_type__c, remaining_loan_amount__c, total_loan_amount__c, active__c FROM Account WHERE name='d' LIMIT 1];
            System.assertEquals(acc.Name, testAcc.Name);
            System.assertEquals(acc.Balance__c, testAcc.Balance__c);
            System.assertEquals(acc.Balance__c * 0.038, testAcc.Calculated_Interest__c);
            System.assertEquals(acc.Email__c, testAcc.Email__c);
            System.assertEquals(acc.Loan_Interest_Rate__c, testAcc.Loan_Interest_Rate__c);
            System.assertEquals(acc.Loan_Type__c, testAcc.Loan_Type__c);
            //System.assertEquals(acc.Total_Loan_Amount__c, testAcc.Remaining_Loan_Amount__c);
            System.assertEquals(acc.Total_Loan_Amount__c, testAcc.Total_Loan_Amount__c);
        } catch (Exception e) {
            System.assert(false, e.getMessage());
        }
        Test.stopTest();
    }
    

    @isTest
    public static void testAccount_160() {
        Test.startTest();
        Account acc = createAccountFromIndex(testCaseData, 160);
        
        try {
            insert acc;
            Account testAcc = [SELECT name, balance__c, calculated_interest__c, email__c, interest_rate__c, loan_interest_rate__c, loan_type__c, remaining_loan_amount__c, total_loan_amount__c, active__c FROM Account WHERE name='e' LIMIT 1];
            System.assertEquals(acc.Name, testAcc.Name);
            System.assertEquals(acc.Balance__c, testAcc.Balance__c);
            System.assertEquals(acc.Balance__c * 0.06, testAcc.Calculated_Interest__c);
            System.assertEquals(acc.Email__c, testAcc.Email__c);
            System.assertEquals(acc.Loan_Interest_Rate__c, testAcc.Loan_Interest_Rate__c);
            System.assertEquals(acc.Loan_Type__c, testAcc.Loan_Type__c);
            //System.assertEquals(acc.Total_Loan_Amount__c, testAcc.Remaining_Loan_Amount__c);
            System.assertEquals(acc.Total_Loan_Amount__c, testAcc.Total_Loan_Amount__c);
        } catch (Exception e) {
            System.assert(false, e.getMessage());
        }
        Test.stopTest();
    }
    

    @isTest
    public static void testAccount_161() {
        Test.startTest();
        Account acc = createAccountFromIndex(testCaseData, 161);
        
        try {
            insert acc;
            Account testAcc = [SELECT name, balance__c, calculated_interest__c, email__c, interest_rate__c, loan_interest_rate__c, loan_type__c, remaining_loan_amount__c, total_loan_amount__c, active__c FROM Account WHERE name='e' LIMIT 1];
            System.assertEquals(acc.Name, testAcc.Name);
            System.assertEquals(acc.Balance__c, testAcc.Balance__c);
            System.assertEquals(acc.Balance__c * 0.05, testAcc.Calculated_Interest__c);
            System.assertEquals(acc.Email__c, testAcc.Email__c);
            System.assertEquals(acc.Loan_Interest_Rate__c, testAcc.Loan_Interest_Rate__c);
            System.assertEquals(acc.Loan_Type__c, testAcc.Loan_Type__c);
            //System.assertEquals(acc.Total_Loan_Amount__c, testAcc.Remaining_Loan_Amount__c);
            System.assertEquals(acc.Total_Loan_Amount__c, testAcc.Total_Loan_Amount__c);
        } catch (Exception e) {
            System.assert(false, e.getMessage());
        }
        Test.stopTest();
    }
    

    @isTest
    public static void testAccount_162() {
        Account acc = createAccountFromIndex(testCaseData, 162);
        insert acc;
        
        updateAccountFromIndex(testCaseData, 162, acc);
        
        try {
            update acc;
            Account testAcc = [SELECT name, balance__c, calculated_interest__c, email__c, interest_rate__c, loan_interest_rate__c, loan_type__c, remaining_loan_amount__c, total_loan_amount__c, active__c FROM Account WHERE name='d' LIMIT 1];
            System.assertEquals(acc.Name, testAcc.Name);
            System.assertEquals(acc.Balance__c, testAcc.Balance__c);
            System.assertEquals(acc.Balance__c * 0.06, testAcc.Calculated_Interest__c);
            System.assertEquals(acc.Email__c, testAcc.Email__c);
            System.assertEquals(acc.Loan_Interest_Rate__c, testAcc.Loan_Interest_Rate__c);
            System.assertEquals(acc.Loan_Type__c, testAcc.Loan_Type__c);
            //System.assertEquals(acc.Total_Loan_Amount__c, testAcc.Remaining_Loan_Amount__c);
            System.assertEquals(acc.Total_Loan_Amount__c, testAcc.Total_Loan_Amount__c);
        } catch (Exception e) {
            System.assert(false, e.getMessage());
        }
        Test.stopTest();
    }
    

    @isTest
    public static void testAccount_163() {
        Test.startTest();
        Account acc = createAccountFromIndex(testCaseData, 163);
        
        try {
            insert acc;
            Account testAcc = [SELECT name, balance__c, calculated_interest__c, email__c, interest_rate__c, loan_interest_rate__c, loan_type__c, remaining_loan_amount__c, total_loan_amount__c, active__c FROM Account WHERE name='e' LIMIT 1];
            System.assertEquals(acc.Name, testAcc.Name);
            System.assertEquals(acc.Balance__c, testAcc.Balance__c);
            System.assertEquals(acc.Balance__c * 0.06, testAcc.Calculated_Interest__c);
            System.assertEquals(acc.Email__c, testAcc.Email__c);
            System.assertEquals(acc.Loan_Interest_Rate__c, testAcc.Loan_Interest_Rate__c);
            System.assertEquals(acc.Loan_Type__c, testAcc.Loan_Type__c);
            //System.assertEquals(acc.Total_Loan_Amount__c, testAcc.Remaining_Loan_Amount__c);
            System.assertEquals(acc.Total_Loan_Amount__c, testAcc.Total_Loan_Amount__c);
        } catch (Exception e) {
            System.assert(false, e.getMessage());
        }
        Test.stopTest();
    }
    

    @isTest
    public static void testAccount_164() {
        Test.startTest();
        Account acc = createAccountFromIndex(testCaseData, 164);
        
        try {
            insert acc;
            Account testAcc = [SELECT name, balance__c, calculated_interest__c, email__c, interest_rate__c, loan_interest_rate__c, loan_type__c, remaining_loan_amount__c, total_loan_amount__c, active__c FROM Account WHERE name='e' LIMIT 1];
            System.assertEquals(acc.Name, testAcc.Name);
            System.assertEquals(acc.Balance__c, testAcc.Balance__c);
            System.assertEquals(acc.Balance__c * 0.038, testAcc.Calculated_Interest__c);
            System.assertEquals(acc.Email__c, testAcc.Email__c);
            System.assertEquals(acc.Loan_Interest_Rate__c, testAcc.Loan_Interest_Rate__c);
            System.assertEquals(acc.Loan_Type__c, testAcc.Loan_Type__c);
            //System.assertEquals(acc.Total_Loan_Amount__c, testAcc.Remaining_Loan_Amount__c);
            System.assertEquals(acc.Total_Loan_Amount__c, testAcc.Total_Loan_Amount__c);
        } catch (Exception e) {
            System.assert(false, e.getMessage());
        }
        Test.stopTest();
    }
    

    @isTest
    public static void testAccount_165() {
        Account acc = createAccountFromIndex(testCaseData, 165);
        insert acc;
        
        updateAccountFromIndex(testCaseData, 165, acc);
        
        try {
            update acc;
            Account testAcc = [SELECT name, balance__c, calculated_interest__c, email__c, interest_rate__c, loan_interest_rate__c, loan_type__c, remaining_loan_amount__c, total_loan_amount__c, active__c FROM Account WHERE name='d' LIMIT 1];
            System.assertEquals(acc.Name, testAcc.Name);
            System.assertEquals(acc.Balance__c, testAcc.Balance__c);
            System.assertEquals(acc.Balance__c * 0.038, testAcc.Calculated_Interest__c);
            System.assertEquals(acc.Email__c, testAcc.Email__c);
            System.assertEquals(acc.Loan_Interest_Rate__c, testAcc.Loan_Interest_Rate__c);
            System.assertEquals(acc.Loan_Type__c, testAcc.Loan_Type__c);
            //System.assertEquals(acc.Total_Loan_Amount__c, testAcc.Remaining_Loan_Amount__c);
            System.assertEquals(acc.Total_Loan_Amount__c, testAcc.Total_Loan_Amount__c);
        } catch (Exception e) {
            System.assert(false, e.getMessage());
        }
        Test.stopTest();
    }
    

    @isTest
    public static void testAccount_166() {
        Account acc = createAccountFromIndex(testCaseData, 166);
        insert acc;
        
        updateAccountFromIndex(testCaseData, 166, acc);
        
        try {
            update acc;
            Account testAcc = [SELECT name, balance__c, calculated_interest__c, email__c, interest_rate__c, loan_interest_rate__c, loan_type__c, remaining_loan_amount__c, total_loan_amount__c, active__c FROM Account WHERE name='d' LIMIT 1];
            System.assertEquals(acc.Name, testAcc.Name);
            System.assertEquals(acc.Balance__c, testAcc.Balance__c);
            System.assertEquals(acc.Balance__c * 0.05, testAcc.Calculated_Interest__c);
            System.assertEquals(acc.Email__c, testAcc.Email__c);
            System.assertEquals(acc.Loan_Interest_Rate__c, testAcc.Loan_Interest_Rate__c);
            System.assertEquals(acc.Loan_Type__c, testAcc.Loan_Type__c);
            //System.assertEquals(acc.Total_Loan_Amount__c, testAcc.Remaining_Loan_Amount__c);
            System.assertEquals(acc.Total_Loan_Amount__c, testAcc.Total_Loan_Amount__c);
        } catch (Exception e) {
            System.assert(false, e.getMessage());
        }
        Test.stopTest();
    }
    

    @isTest
    public static void testAccount_167() {
        Account acc = createAccountFromIndex(testCaseData, 167);
        insert acc;
        
        updateAccountFromIndex(testCaseData, 167, acc);
        
        try {
            update acc;
            Account testAcc = [SELECT name, balance__c, calculated_interest__c, email__c, interest_rate__c, loan_interest_rate__c, loan_type__c, remaining_loan_amount__c, total_loan_amount__c, active__c FROM Account WHERE name='d' LIMIT 1];
            System.assertEquals(acc.Name, testAcc.Name);
            System.assertEquals(acc.Balance__c, testAcc.Balance__c);
            System.assertEquals(acc.Balance__c * 0.038, testAcc.Calculated_Interest__c);
            System.assertEquals(acc.Email__c, testAcc.Email__c);
            System.assertEquals(acc.Loan_Interest_Rate__c, testAcc.Loan_Interest_Rate__c);
            System.assertEquals(acc.Loan_Type__c, testAcc.Loan_Type__c);
            //System.assertEquals(acc.Total_Loan_Amount__c, testAcc.Remaining_Loan_Amount__c);
            System.assertEquals(acc.Total_Loan_Amount__c, testAcc.Total_Loan_Amount__c);
        } catch (Exception e) {
            System.assert(false, e.getMessage());
        }
        Test.stopTest();
    }
    

    @isTest
    public static void testAccount_168() {
        Account acc = createAccountFromIndex(testCaseData, 168);
        insert acc;
        
        updateAccountFromIndex(testCaseData, 168, acc);
        
        try {
            update acc;
            Account testAcc = [SELECT name, balance__c, calculated_interest__c, email__c, interest_rate__c, loan_interest_rate__c, loan_type__c, remaining_loan_amount__c, total_loan_amount__c, active__c FROM Account WHERE name='d' LIMIT 1];
            System.assertEquals(acc.Name, testAcc.Name);
            System.assertEquals(acc.Balance__c, testAcc.Balance__c);
            System.assertEquals(acc.Balance__c * 0.038, testAcc.Calculated_Interest__c);
            System.assertEquals(acc.Email__c, testAcc.Email__c);
            System.assertEquals(acc.Loan_Interest_Rate__c, testAcc.Loan_Interest_Rate__c);
            System.assertEquals(acc.Loan_Type__c, testAcc.Loan_Type__c);
            //System.assertEquals(acc.Total_Loan_Amount__c, testAcc.Remaining_Loan_Amount__c);
            System.assertEquals(acc.Total_Loan_Amount__c, testAcc.Total_Loan_Amount__c);
        } catch (Exception e) {
            System.assert(false, e.getMessage());
        }
        Test.stopTest();
    }
    

    @isTest
    public static void testAccount_169() {
        Account acc = createAccountFromIndex(testCaseData, 169);
        insert acc;
        
        updateAccountFromIndex(testCaseData, 169, acc);
        
        try {
            update acc;
            Account testAcc = [SELECT name, balance__c, calculated_interest__c, email__c, interest_rate__c, loan_interest_rate__c, loan_type__c, remaining_loan_amount__c, total_loan_amount__c, active__c FROM Account WHERE name='d' LIMIT 1];
            System.assertEquals(acc.Name, testAcc.Name);
            System.assertEquals(acc.Balance__c, testAcc.Balance__c);
            System.assertEquals(acc.Balance__c * 0.038, testAcc.Calculated_Interest__c);
            System.assertEquals(acc.Email__c, testAcc.Email__c);
            System.assertEquals(acc.Loan_Interest_Rate__c, testAcc.Loan_Interest_Rate__c);
            System.assertEquals(acc.Loan_Type__c, testAcc.Loan_Type__c);
            //System.assertEquals(acc.Total_Loan_Amount__c, testAcc.Remaining_Loan_Amount__c);
            System.assertEquals(acc.Total_Loan_Amount__c, testAcc.Total_Loan_Amount__c);
        } catch (Exception e) {
            System.assert(false, e.getMessage());
        }
        Test.stopTest();
    }
    

    @isTest
    public static void testAccount_170() {
        Account acc = createAccountFromIndex(testCaseData, 170);
        insert acc;
        
        updateAccountFromIndex(testCaseData, 170, acc);
        
        try {
            update acc;
            Account testAcc = [SELECT name, balance__c, calculated_interest__c, email__c, interest_rate__c, loan_interest_rate__c, loan_type__c, remaining_loan_amount__c, total_loan_amount__c, active__c FROM Account WHERE name='d' LIMIT 1];
            System.assertEquals(acc.Name, testAcc.Name);
            System.assertEquals(acc.Balance__c, testAcc.Balance__c);
            System.assertEquals(acc.Balance__c * 0.05, testAcc.Calculated_Interest__c);
            System.assertEquals(acc.Email__c, testAcc.Email__c);
            System.assertEquals(acc.Loan_Interest_Rate__c, testAcc.Loan_Interest_Rate__c);
            System.assertEquals(acc.Loan_Type__c, testAcc.Loan_Type__c);
            //System.assertEquals(acc.Total_Loan_Amount__c, testAcc.Remaining_Loan_Amount__c);
            System.assertEquals(acc.Total_Loan_Amount__c, testAcc.Total_Loan_Amount__c);
        } catch (Exception e) {
            System.assert(false, e.getMessage());
        }
        Test.stopTest();
    }
    

    @isTest
    public static void testAccount_171() {
        Test.startTest();
        Account acc = createAccountFromIndex(testCaseData, 171);
        
        try {
            insert acc;
            Account testAcc = [SELECT name, balance__c, calculated_interest__c, email__c, interest_rate__c, loan_interest_rate__c, loan_type__c, remaining_loan_amount__c, total_loan_amount__c, active__c FROM Account WHERE name='e' LIMIT 1];
            System.assertEquals(acc.Name, testAcc.Name);
            System.assertEquals(acc.Balance__c, testAcc.Balance__c);
            System.assertEquals(acc.Balance__c * 0.038, testAcc.Calculated_Interest__c);
            System.assertEquals(acc.Email__c, testAcc.Email__c);
            System.assertEquals(acc.Loan_Interest_Rate__c, testAcc.Loan_Interest_Rate__c);
            System.assertEquals(acc.Loan_Type__c, testAcc.Loan_Type__c);
            //System.assertEquals(acc.Total_Loan_Amount__c, testAcc.Remaining_Loan_Amount__c);
            System.assertEquals(acc.Total_Loan_Amount__c, testAcc.Total_Loan_Amount__c);
        } catch (Exception e) {
            System.assert(false, e.getMessage());
        }
        Test.stopTest();
    }
    

    @isTest
    public static void testAccount_172() {
        Account acc = createAccountFromIndex(testCaseData, 172);
        insert acc;
        
        updateAccountFromIndex(testCaseData, 172, acc);
        
        try {
            update acc;
            Account testAcc = [SELECT name, balance__c, calculated_interest__c, email__c, interest_rate__c, loan_interest_rate__c, loan_type__c, remaining_loan_amount__c, total_loan_amount__c, active__c FROM Account WHERE name='d' LIMIT 1];
            System.assertEquals(acc.Name, testAcc.Name);
            System.assertEquals(acc.Balance__c, testAcc.Balance__c);
            System.assertEquals(acc.Balance__c * 0.06, testAcc.Calculated_Interest__c);
            System.assertEquals(acc.Email__c, testAcc.Email__c);
            System.assertEquals(acc.Loan_Interest_Rate__c, testAcc.Loan_Interest_Rate__c);
            System.assertEquals(acc.Loan_Type__c, testAcc.Loan_Type__c);
            //System.assertEquals(acc.Total_Loan_Amount__c, testAcc.Remaining_Loan_Amount__c);
            System.assertEquals(acc.Total_Loan_Amount__c, testAcc.Total_Loan_Amount__c);
        } catch (Exception e) {
            System.assert(false, e.getMessage());
        }
        Test.stopTest();
    }
    

    @isTest
    public static void testAccount_173() {
        Account acc = createAccountFromIndex(testCaseData, 173);
        insert acc;
        
        updateAccountFromIndex(testCaseData, 173, acc);
        
        try {
            update acc;
            Account testAcc = [SELECT name, balance__c, calculated_interest__c, email__c, interest_rate__c, loan_interest_rate__c, loan_type__c, remaining_loan_amount__c, total_loan_amount__c, active__c FROM Account WHERE name='d' LIMIT 1];
            System.assertEquals(acc.Name, testAcc.Name);
            System.assertEquals(acc.Balance__c, testAcc.Balance__c);
            System.assertEquals(acc.Balance__c * 0.06, testAcc.Calculated_Interest__c);
            System.assertEquals(acc.Email__c, testAcc.Email__c);
            System.assertEquals(acc.Loan_Interest_Rate__c, testAcc.Loan_Interest_Rate__c);
            System.assertEquals(acc.Loan_Type__c, testAcc.Loan_Type__c);
            //System.assertEquals(acc.Total_Loan_Amount__c, testAcc.Remaining_Loan_Amount__c);
            System.assertEquals(acc.Total_Loan_Amount__c, testAcc.Total_Loan_Amount__c);
        } catch (Exception e) {
            System.assert(false, e.getMessage());
        }
        Test.stopTest();
    }
}