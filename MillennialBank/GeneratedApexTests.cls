
    @isTest
    public static void testAccount_1() {
        Account acc = new Account();
        acc.Name = 'ToUpdate Account';
        acc.Balance__c = 100;
        acc.RecordTypeId = Schema.SObjectType.Account.getRecordTypeInfosByName().get('Negative').getRecordTypeId();
        acc.Email__c = 'testUpdate@pairwise.test';
        acc.Active__c = 'Yes';
        insert acc;
        
        acc.Name = '';
        acc.Balance__c = 198;
        acc.Calculated_Interest__c = null;
        acc.Email__c = '';
        acc.Loan_Interest_Rate__c = 107;
        acc.Loan_Type__c = 'Car Loan';
        acc.Remaining_Loan_Amount__c = 15000000;
        acc.Total_Loan_Amount__c = 613086;
        
        Test.startTest();
        try {
            update acc;
            Account testAcc = [SELECT name, balance__c, calculated_interest__c, email__c, interest_rate__c, loan_interest_rate__c, loan_type__c, remaining_loan_amount__c, total_loan_amount__c, active__c FROM Account WHERE name='' LIMIT 1];
            System.assert(acc.Name, testAcc.Name);
            System.assert(acc.Balance__c, testAcc.Balance__c);
            System.assert(acc.Balance__c * 0.06, testAcc.Calculated_Interest__c);
            System.assert(acc.Email__c, testAcc.Email__c);
            System.assert(acc.Loan_Interest_Rate__c, testAcc.Loan_Interest_Rate__c);
            System.assert(acc.Loan_Type__c, testAcc.Loan_Type__c);
            //System.assert(acc.Remaining_Loan_Amount__c, testAcc.Remaining_Loan_Amount__c);
            System.assert(acc.Total_Loan_Amount__c, testAcc.Total_Loan_Amount__c);
        } catch (Exception e) {
            System.assert(false, e.getMessage());
        }
        Test.stopTest();
    }
    

    @isTest
    public static void testAccount_2() {
        Account acc = new Account();
        acc.Name = 'ToUpdate Account';
        acc.Balance__c = 100;
        acc.RecordTypeId = Schema.SObjectType.Account.getRecordTypeInfosByName().get('Negative').getRecordTypeId();
        acc.Email__c = 'testUpdate@pairwise.test';
        acc.Active__c = 'Yes';
        insert acc;
        
        acc.Name = '';
        acc.Balance__c = 178;
        acc.Calculated_Interest__c = 7;
        acc.Email__c = '';
        acc.Loan_Interest_Rate__c = 0.11;
        acc.Loan_Type__c = 'Home Loan';
        acc.Remaining_Loan_Amount__c = 15000000;
        acc.Total_Loan_Amount__c = 505363;
        
        Test.startTest();
        try {
            update acc;
            Account testAcc = [SELECT name, balance__c, calculated_interest__c, email__c, interest_rate__c, loan_interest_rate__c, loan_type__c, remaining_loan_amount__c, total_loan_amount__c, active__c FROM Account WHERE name='' LIMIT 1];
            System.assert(acc.Name, testAcc.Name);
            System.assert(acc.Balance__c, testAcc.Balance__c);
            System.assert(acc.Balance__c * 0.06, testAcc.Calculated_Interest__c);
            System.assert(acc.Email__c, testAcc.Email__c);
            System.assert(acc.Loan_Interest_Rate__c, testAcc.Loan_Interest_Rate__c);
            System.assert(acc.Loan_Type__c, testAcc.Loan_Type__c);
            //System.assert(acc.Remaining_Loan_Amount__c, testAcc.Remaining_Loan_Amount__c);
            System.assert(acc.Total_Loan_Amount__c, testAcc.Total_Loan_Amount__c);
        } catch (Exception e) {
            System.assert(false, e.getMessage());
        }
        Test.stopTest();
    }
    

    @isTest
    public static void testAccount_3() {
        Account acc = new Account();
        acc.Name = 'ToUpdate Account';
        acc.Balance__c = 100;
        acc.RecordTypeId = Schema.SObjectType.Account.getRecordTypeInfosByName().get('Negative').getRecordTypeId();
        acc.Email__c = 'testUpdate@pairwise.test';
        acc.Active__c = 'Yes';
        insert acc;
        
        acc.Name = '';
        acc.Balance__c = 151;
        acc.Calculated_Interest__c = null;
        acc.Email__c = '';
        acc.Loan_Interest_Rate__c = 0.07;
        acc.Loan_Type__c = 'Car Loan';
        acc.Remaining_Loan_Amount__c = ;
        acc.Total_Loan_Amount__c = 274155;
        
        Test.startTest();
        try {
            update acc;
            Account testAcc = [SELECT name, balance__c, calculated_interest__c, email__c, interest_rate__c, loan_interest_rate__c, loan_type__c, remaining_loan_amount__c, total_loan_amount__c, active__c FROM Account WHERE name='' LIMIT 1];
            System.assert(acc.Name, testAcc.Name);
            System.assert(acc.Balance__c, testAcc.Balance__c);
            System.assert(acc.Balance__c * 0.038, testAcc.Calculated_Interest__c);
            System.assert(acc.Email__c, testAcc.Email__c);
            System.assert(acc.Loan_Interest_Rate__c, testAcc.Loan_Interest_Rate__c);
            System.assert(acc.Loan_Type__c, testAcc.Loan_Type__c);
            //System.assert(acc.Remaining_Loan_Amount__c, testAcc.Remaining_Loan_Amount__c);
            System.assert(acc.Total_Loan_Amount__c, testAcc.Total_Loan_Amount__c);
        } catch (Exception e) {
            System.assert(false, e.getMessage());
        }
        Test.stopTest();
    }
    

    @isTest
    public static void testAccount_4() {
        Account acc = new Account();
        acc.Name = 'ToUpdate Account';
        acc.Balance__c = 100;
        acc.RecordTypeId = Schema.SObjectType.Account.getRecordTypeInfosByName().get('Negative').getRecordTypeId();
        acc.Email__c = 'testUpdate@pairwise.test';
        acc.Active__c = 'Yes';
        insert acc;
        
        acc.Name = '';
        acc.Balance__c = 164;
        acc.Calculated_Interest__c = 7;
        acc.Email__c = '';
        acc.Loan_Interest_Rate__c = null;
        acc.Loan_Type__c = 'Home Loan';
        acc.Remaining_Loan_Amount__c = ;
        acc.Total_Loan_Amount__c = 39778;
        
        Test.startTest();
        try {
            update acc;
            Account testAcc = [SELECT name, balance__c, calculated_interest__c, email__c, interest_rate__c, loan_interest_rate__c, loan_type__c, remaining_loan_amount__c, total_loan_amount__c, active__c FROM Account WHERE name='' LIMIT 1];
            System.assert(acc.Name, testAcc.Name);
            System.assert(acc.Balance__c, testAcc.Balance__c);
            System.assert(acc.Balance__c * 0.038, testAcc.Calculated_Interest__c);
            System.assert(acc.Email__c, testAcc.Email__c);
            System.assert(acc.Loan_Interest_Rate__c, testAcc.Loan_Interest_Rate__c);
            System.assert(acc.Loan_Type__c, testAcc.Loan_Type__c);
            //System.assert(acc.Remaining_Loan_Amount__c, testAcc.Remaining_Loan_Amount__c);
            System.assert(acc.Total_Loan_Amount__c, testAcc.Total_Loan_Amount__c);
        } catch (Exception e) {
            System.assert(false, e.getMessage());
        }
        Test.stopTest();
    }
    

    @isTest
    public static void testAccount_5() {
        Account acc = new Account();
        acc.Name = '';
        acc.Balance__c = 177;
        acc.RecordTypeId = Schema.SObjectType.Account.getRecordTypeInfosByName().get('>=$100').getRecordTypeId();
        acc.Calculated_Interest__c = 7;
        acc.Email__c = 'test5@pairwise.test';
        acc.Loan_Interest_Rate__c = 0.11;
        acc.Loan_Type__c = '';
        //acc.Remaining_Loan_Amount__c = 15000000;
        acc.Total_Loan_Amount__c = null;
        acc.Active__c = 'Yes';
        
        Test.startTest();
        try {
            insert acc;
            Account testAcc = [SELECT name, balance__c, calculated_interest__c, email__c, interest_rate__c, loan_interest_rate__c, loan_type__c, remaining_loan_amount__c, total_loan_amount__c, active__c FROM Account WHERE name='' LIMIT 1];
            System.assert(acc.Name, testAcc.Name);
            System.assert(acc.Balance__c, testAcc.Balance__c);
            System.assert(acc.Balance__c * 0.038, testAcc.Calculated_Interest__c);
            System.assert(acc.Email__c, testAcc.Email__c);
            System.assert(acc.Loan_Interest_Rate__c, testAcc.Loan_Interest_Rate__c);
            System.assert(acc.Loan_Type__c, testAcc.Loan_Type__c);
            //System.assert(acc.Remaining_Loan_Amount__c, testAcc.Remaining_Loan_Amount__c);
            System.assert(acc.Total_Loan_Amount__c, testAcc.Total_Loan_Amount__c);
        } catch (Exception e) {
            System.assert(false, e.getMessage());
        }
        Test.stopTest();
    }
    

    @isTest
    public static void testAccount_6() {
        Account acc = new Account();
        acc.Name = 'ToUpdate Account';
        acc.Balance__c = 100;
        acc.RecordTypeId = Schema.SObjectType.Account.getRecordTypeInfosByName().get('Negative').getRecordTypeId();
        acc.Email__c = 'testUpdate@pairwise.test';
        acc.Active__c = 'Yes';
        insert acc;
        
        acc.Name = '';
        acc.Balance__c = 139;
        acc.Calculated_Interest__c = 7;
        acc.Email__c = 'test6@pairwise.test';
        acc.Loan_Interest_Rate__c = 0.08;
        acc.Loan_Type__c = 'Car Loan';
        acc.Remaining_Loan_Amount__c = ;
        acc.Total_Loan_Amount__c = 988301;
        
        Test.startTest();
        try {
            update acc;
            Account testAcc = [SELECT name, balance__c, calculated_interest__c, email__c, interest_rate__c, loan_interest_rate__c, loan_type__c, remaining_loan_amount__c, total_loan_amount__c, active__c FROM Account WHERE name='' LIMIT 1];
            System.assert(acc.Name, testAcc.Name);
            System.assert(acc.Balance__c, testAcc.Balance__c);
            System.assert(acc.Balance__c * 0.05, testAcc.Calculated_Interest__c);
            System.assert(acc.Email__c, testAcc.Email__c);
            System.assert(acc.Loan_Interest_Rate__c, testAcc.Loan_Interest_Rate__c);
            System.assert(acc.Loan_Type__c, testAcc.Loan_Type__c);
            //System.assert(acc.Remaining_Loan_Amount__c, testAcc.Remaining_Loan_Amount__c);
            System.assert(acc.Total_Loan_Amount__c, testAcc.Total_Loan_Amount__c);
        } catch (Exception e) {
            System.assert(false, e.getMessage());
        }
        Test.stopTest();
    }
    

    @isTest
    public static void testAccount_7() {
        Account acc = new Account();
        acc.Name = 'ToUpdate Account';
        acc.Balance__c = 100;
        acc.RecordTypeId = Schema.SObjectType.Account.getRecordTypeInfosByName().get('Negative').getRecordTypeId();
        acc.Email__c = 'testUpdate@pairwise.test';
        acc.Active__c = 'Yes';
        insert acc;
        
        acc.Name = '';
        acc.Balance__c = 190;
        acc.Calculated_Interest__c = null;
        acc.Email__c = 'test7@pairwise.test';
        acc.Loan_Interest_Rate__c = 0.125;
        acc.Loan_Type__c = 'Car Loan';
        acc.Remaining_Loan_Amount__c = ;
        acc.Total_Loan_Amount__c = 2047278;
        
        Test.startTest();
        try {
            update acc;
            Account testAcc = [SELECT name, balance__c, calculated_interest__c, email__c, interest_rate__c, loan_interest_rate__c, loan_type__c, remaining_loan_amount__c, total_loan_amount__c, active__c FROM Account WHERE name='' LIMIT 1];
            System.assert(acc.Name, testAcc.Name);
            System.assert(acc.Balance__c, testAcc.Balance__c);
            System.assert(acc.Balance__c * 0.06, testAcc.Calculated_Interest__c);
            System.assert(acc.Email__c, testAcc.Email__c);
            System.assert(acc.Loan_Interest_Rate__c, testAcc.Loan_Interest_Rate__c);
            System.assert(acc.Loan_Type__c, testAcc.Loan_Type__c);
            //System.assert(acc.Remaining_Loan_Amount__c, testAcc.Remaining_Loan_Amount__c);
            System.assert(acc.Total_Loan_Amount__c, testAcc.Total_Loan_Amount__c);
        } catch (Exception e) {
            System.assert(false, e.getMessage());
        }
        Test.stopTest();
    }
    

    @isTest
    public static void testAccount_8() {
        Account acc = new Account();
        acc.Name = 'ToUpdate Account';
        acc.Balance__c = 100;
        acc.RecordTypeId = Schema.SObjectType.Account.getRecordTypeInfosByName().get('Negative').getRecordTypeId();
        acc.Email__c = 'testUpdate@pairwise.test';
        acc.Active__c = 'Yes';
        insert acc;
        
        acc.Name = '';
        acc.Balance__c = 114;
        acc.Calculated_Interest__c = 7;
        acc.Email__c = 'test8@pairwise.test';
        acc.Loan_Interest_Rate__c = 0.14;
        acc.Loan_Type__c = 'Car Loan';
        acc.Remaining_Loan_Amount__c = ;
        acc.Total_Loan_Amount__c = null;
        
        Test.startTest();
        try {
            update acc;
            Account testAcc = [SELECT name, balance__c, calculated_interest__c, email__c, interest_rate__c, loan_interest_rate__c, loan_type__c, remaining_loan_amount__c, total_loan_amount__c, active__c FROM Account WHERE name='' LIMIT 1];
            System.assert(acc.Name, testAcc.Name);
            System.assert(acc.Balance__c, testAcc.Balance__c);
            System.assert(acc.Balance__c * 0.038, testAcc.Calculated_Interest__c);
            System.assert(acc.Email__c, testAcc.Email__c);
            System.assert(acc.Loan_Interest_Rate__c, testAcc.Loan_Interest_Rate__c);
            System.assert(acc.Loan_Type__c, testAcc.Loan_Type__c);
            //System.assert(acc.Remaining_Loan_Amount__c, testAcc.Remaining_Loan_Amount__c);
            System.assert(acc.Total_Loan_Amount__c, testAcc.Total_Loan_Amount__c);
        } catch (Exception e) {
            System.assert(false, e.getMessage());
        }
        Test.stopTest();
    }
    

    @isTest
    public static void testAccount_9() {
        Account acc = new Account();
        acc.Name = 'ToUpdate Account';
        acc.Balance__c = 100;
        acc.RecordTypeId = Schema.SObjectType.Account.getRecordTypeInfosByName().get('>=$0').getRecordTypeId();
        acc.Email__c = 'testUpdate@pairwise.test';
        acc.Active__c = 'Yes';
        insert acc;
        
        acc.Name = '';
        acc.Balance__c = 110;
        acc.Calculated_Interest__c = null;
        acc.Email__c = 'test9@pairwise.test';
        acc.Loan_Interest_Rate__c = 0.11;
        acc.Loan_Type__c = 'Car Loan';
        acc.Remaining_Loan_Amount__c = ;
        acc.Total_Loan_Amount__c = 78743;
        
        Test.startTest();
        try {
            update acc;
            Account testAcc = [SELECT name, balance__c, calculated_interest__c, email__c, interest_rate__c, loan_interest_rate__c, loan_type__c, remaining_loan_amount__c, total_loan_amount__c, active__c FROM Account WHERE name='' LIMIT 1];
            System.assert(acc.Name, testAcc.Name);
            System.assert(acc.Balance__c, testAcc.Balance__c);
            System.assert(acc.Balance__c * 0.038, testAcc.Calculated_Interest__c);
            System.assert(acc.Email__c, testAcc.Email__c);
            System.assert(acc.Loan_Interest_Rate__c, testAcc.Loan_Interest_Rate__c);
            System.assert(acc.Loan_Type__c, testAcc.Loan_Type__c);
            //System.assert(acc.Remaining_Loan_Amount__c, testAcc.Remaining_Loan_Amount__c);
            System.assert(acc.Total_Loan_Amount__c, testAcc.Total_Loan_Amount__c);
        } catch (Exception e) {
            System.assert(false, e.getMessage());
        }
        Test.stopTest();
    }
    

    @isTest
    public static void testAccount_10() {
        Account acc = new Account();
        acc.Name = 'ToUpdate Account';
        acc.Balance__c = 100;
        acc.RecordTypeId = Schema.SObjectType.Account.getRecordTypeInfosByName().get('>=$100').getRecordTypeId();
        acc.Email__c = 'testUpdate@pairwise.test';
        acc.Active__c = 'Yes';
        insert acc;
        
        acc.Name = '';
        acc.Balance__c = 130;
        acc.Calculated_Interest__c = 7;
        acc.Email__c = '';
        acc.Loan_Interest_Rate__c = 0.125;
        acc.Loan_Type__c = 'Car Loan';
        acc.Remaining_Loan_Amount__c = ;
        acc.Total_Loan_Amount__c = null;
        
        Test.startTest();
        try {
            update acc;
            Account testAcc = [SELECT name, balance__c, calculated_interest__c, email__c, interest_rate__c, loan_interest_rate__c, loan_type__c, remaining_loan_amount__c, total_loan_amount__c, active__c FROM Account WHERE name='' LIMIT 1];
            System.assert(acc.Name, testAcc.Name);
            System.assert(acc.Balance__c, testAcc.Balance__c);
            System.assert(acc.Balance__c * 0.05, testAcc.Calculated_Interest__c);
            System.assert(acc.Email__c, testAcc.Email__c);
            System.assert(acc.Loan_Interest_Rate__c, testAcc.Loan_Interest_Rate__c);
            System.assert(acc.Loan_Type__c, testAcc.Loan_Type__c);
            //System.assert(acc.Remaining_Loan_Amount__c, testAcc.Remaining_Loan_Amount__c);
            System.assert(acc.Total_Loan_Amount__c, testAcc.Total_Loan_Amount__c);
        } catch (Exception e) {
            System.assert(false, e.getMessage());
        }
        Test.stopTest();
    }
    

    @isTest
    public static void testAccount_11() {
        Account acc = new Account();
        acc.Name = 'ToUpdate Account';
        acc.Balance__c = 100;
        acc.RecordTypeId = Schema.SObjectType.Account.getRecordTypeInfosByName().get('Negative').getRecordTypeId();
        acc.Email__c = 'testUpdate@pairwise.test';
        acc.Active__c = 'Yes';
        insert acc;
        
        acc.Name = '';
        acc.Balance__c = 195;
        acc.Calculated_Interest__c = 7;
        acc.Email__c = 'test11@pairwise.test';
        acc.Loan_Interest_Rate__c = 0.125;
        acc.Loan_Type__c = 'Car Loan';
        acc.Remaining_Loan_Amount__c = ;
        acc.Total_Loan_Amount__c = null;
        
        Test.startTest();
        try {
            update acc;
            Account testAcc = [SELECT name, balance__c, calculated_interest__c, email__c, interest_rate__c, loan_interest_rate__c, loan_type__c, remaining_loan_amount__c, total_loan_amount__c, active__c FROM Account WHERE name='' LIMIT 1];
            System.assert(acc.Name, testAcc.Name);
            System.assert(acc.Balance__c, testAcc.Balance__c);
            System.assert(acc.Balance__c * 0.06, testAcc.Calculated_Interest__c);
            System.assert(acc.Email__c, testAcc.Email__c);
            System.assert(acc.Loan_Interest_Rate__c, testAcc.Loan_Interest_Rate__c);
            System.assert(acc.Loan_Type__c, testAcc.Loan_Type__c);
            //System.assert(acc.Remaining_Loan_Amount__c, testAcc.Remaining_Loan_Amount__c);
            System.assert(acc.Total_Loan_Amount__c, testAcc.Total_Loan_Amount__c);
        } catch (Exception e) {
            System.assert(false, e.getMessage());
        }
        Test.stopTest();
    }
    

    @isTest
    public static void testAccount_12() {
        Account acc = new Account();
        acc.Name = 'ToUpdate Account';
        acc.Balance__c = 100;
        acc.RecordTypeId = Schema.SObjectType.Account.getRecordTypeInfosByName().get('Negative').getRecordTypeId();
        acc.Email__c = 'testUpdate@pairwise.test';
        acc.Active__c = 'Yes';
        insert acc;
        
        acc.Name = '';
        acc.Balance__c = 176;
        acc.Calculated_Interest__c = null;
        acc.Email__c = 'test12@pairwise.test';
        acc.Loan_Interest_Rate__c = 0.10300000000000001;
        acc.Loan_Type__c = 'Car Loan';
        acc.Remaining_Loan_Amount__c = ;
        acc.Total_Loan_Amount__c = 82543;
        
        Test.startTest();
        try {
            update acc;
            Account testAcc = [SELECT name, balance__c, calculated_interest__c, email__c, interest_rate__c, loan_interest_rate__c, loan_type__c, remaining_loan_amount__c, total_loan_amount__c, active__c FROM Account WHERE name='' LIMIT 1];
            System.assert(acc.Name, testAcc.Name);
            System.assert(acc.Balance__c, testAcc.Balance__c);
            System.assert(acc.Balance__c * 0.05, testAcc.Calculated_Interest__c);
            System.assert(acc.Email__c, testAcc.Email__c);
            System.assert(acc.Loan_Interest_Rate__c, testAcc.Loan_Interest_Rate__c);
            System.assert(acc.Loan_Type__c, testAcc.Loan_Type__c);
            //System.assert(acc.Remaining_Loan_Amount__c, testAcc.Remaining_Loan_Amount__c);
            System.assert(acc.Total_Loan_Amount__c, testAcc.Total_Loan_Amount__c);
        } catch (Exception e) {
            System.assert(false, e.getMessage());
        }
        Test.stopTest();
    }
    

    @isTest
    public static void testAccount_13() {
        Account acc = new Account();
        acc.Name = 'ToUpdate Account';
        acc.Balance__c = 100;
        acc.RecordTypeId = Schema.SObjectType.Account.getRecordTypeInfosByName().get('Negative').getRecordTypeId();
        acc.Email__c = 'testUpdate@pairwise.test';
        acc.Active__c = 'Yes';
        insert acc;
        
        acc.Name = '';
        acc.Balance__c = 162;
        acc.Calculated_Interest__c = null;
        acc.Email__c = 'test13@pairwise.test';
        acc.Loan_Interest_Rate__c = null;
        acc.Loan_Type__c = 'Car Loan';
        acc.Remaining_Loan_Amount__c = ;
        acc.Total_Loan_Amount__c = 597231;
        
        Test.startTest();
        try {
            update acc;
            Account testAcc = [SELECT name, balance__c, calculated_interest__c, email__c, interest_rate__c, loan_interest_rate__c, loan_type__c, remaining_loan_amount__c, total_loan_amount__c, active__c FROM Account WHERE name='' LIMIT 1];
            System.assert(acc.Name, testAcc.Name);
            System.assert(acc.Balance__c, testAcc.Balance__c);
            System.assert(acc.Balance__c * 0.05, testAcc.Calculated_Interest__c);
            System.assert(acc.Email__c, testAcc.Email__c);
            System.assert(acc.Loan_Interest_Rate__c, testAcc.Loan_Interest_Rate__c);
            System.assert(acc.Loan_Type__c, testAcc.Loan_Type__c);
            //System.assert(acc.Remaining_Loan_Amount__c, testAcc.Remaining_Loan_Amount__c);
            System.assert(acc.Total_Loan_Amount__c, testAcc.Total_Loan_Amount__c);
        } catch (Exception e) {
            System.assert(false, e.getMessage());
        }
        Test.stopTest();
    }
    

    @isTest
    public static void testAccount_14() {
        Account acc = new Account();
        acc.Name = 'ToUpdate Account';
        acc.Balance__c = 100;
        acc.RecordTypeId = Schema.SObjectType.Account.getRecordTypeInfosByName().get('Negative').getRecordTypeId();
        acc.Email__c = 'testUpdate@pairwise.test';
        acc.Active__c = 'Yes';
        insert acc;
        
        acc.Name = '';
        acc.Balance__c = 136;
        acc.Calculated_Interest__c = null;
        acc.Email__c = '';
        acc.Loan_Interest_Rate__c = 0.08;
        acc.Loan_Type__c = '';
        acc.Remaining_Loan_Amount__c = ;
        acc.Total_Loan_Amount__c = null;
        
        Test.startTest();
        try {
            update acc;
            Account testAcc = [SELECT name, balance__c, calculated_interest__c, email__c, interest_rate__c, loan_interest_rate__c, loan_type__c, remaining_loan_amount__c, total_loan_amount__c, active__c FROM Account WHERE name='' LIMIT 1];
            System.assert(acc.Name, testAcc.Name);
            System.assert(acc.Balance__c, testAcc.Balance__c);
            System.assert(acc.Balance__c * 0.05, testAcc.Calculated_Interest__c);
            System.assert(acc.Email__c, testAcc.Email__c);
            System.assert(acc.Loan_Interest_Rate__c, testAcc.Loan_Interest_Rate__c);
            System.assert(acc.Loan_Type__c, testAcc.Loan_Type__c);
            //System.assert(acc.Remaining_Loan_Amount__c, testAcc.Remaining_Loan_Amount__c);
            System.assert(acc.Total_Loan_Amount__c, testAcc.Total_Loan_Amount__c);
        } catch (Exception e) {
            System.assert(false, e.getMessage());
        }
        Test.stopTest();
    }
    

    @isTest
    public static void testAccount_15() {
        Account acc = new Account();
        acc.Name = 'ToUpdate Account';
        acc.Balance__c = 100;
        acc.RecordTypeId = Schema.SObjectType.Account.getRecordTypeInfosByName().get('Negative').getRecordTypeId();
        acc.Email__c = 'testUpdate@pairwise.test';
        acc.Active__c = 'Yes';
        insert acc;
        
        acc.Name = '';
        acc.Balance__c = 165;
        acc.Calculated_Interest__c = 7;
        acc.Email__c = '';
        acc.Loan_Interest_Rate__c = 0.162;
        acc.Loan_Type__c = 'Home Loan';
        acc.Remaining_Loan_Amount__c = ;
        acc.Total_Loan_Amount__c = 9545866;
        
        Test.startTest();
        try {
            update acc;
            Account testAcc = [SELECT name, balance__c, calculated_interest__c, email__c, interest_rate__c, loan_interest_rate__c, loan_type__c, remaining_loan_amount__c, total_loan_amount__c, active__c FROM Account WHERE name='' LIMIT 1];
            System.assert(acc.Name, testAcc.Name);
            System.assert(acc.Balance__c, testAcc.Balance__c);
            System.assert(acc.Balance__c * 0.038, testAcc.Calculated_Interest__c);
            System.assert(acc.Email__c, testAcc.Email__c);
            System.assert(acc.Loan_Interest_Rate__c, testAcc.Loan_Interest_Rate__c);
            System.assert(acc.Loan_Type__c, testAcc.Loan_Type__c);
            //System.assert(acc.Remaining_Loan_Amount__c, testAcc.Remaining_Loan_Amount__c);
            System.assert(acc.Total_Loan_Amount__c, testAcc.Total_Loan_Amount__c);
        } catch (Exception e) {
            System.assert(false, e.getMessage());
        }
        Test.stopTest();
    }
    

    @isTest
    public static void testAccount_16() {
        Account acc = new Account();
        acc.Name = 'ToUpdate Account';
        acc.Balance__c = 100;
        acc.RecordTypeId = Schema.SObjectType.Account.getRecordTypeInfosByName().get('Negative').getRecordTypeId();
        acc.Email__c = 'testUpdate@pairwise.test';
        acc.Active__c = 'Yes';
        insert acc;
        
        acc.Name = '';
        acc.Balance__c = 174;
        acc.Calculated_Interest__c = 7;
        acc.Email__c = '';
        acc.Loan_Interest_Rate__c = 0.07;
        acc.Loan_Type__c = 'Car Loan';
        acc.Remaining_Loan_Amount__c = ;
        acc.Total_Loan_Amount__c = 69813;
        
        Test.startTest();
        try {
            update acc;
            Account testAcc = [SELECT name, balance__c, calculated_interest__c, email__c, interest_rate__c, loan_interest_rate__c, loan_type__c, remaining_loan_amount__c, total_loan_amount__c, active__c FROM Account WHERE name='' LIMIT 1];
            System.assert(acc.Name, testAcc.Name);
            System.assert(acc.Balance__c, testAcc.Balance__c);
            System.assert(acc.Balance__c * 0.06, testAcc.Calculated_Interest__c);
            System.assert(acc.Email__c, testAcc.Email__c);
            System.assert(acc.Loan_Interest_Rate__c, testAcc.Loan_Interest_Rate__c);
            System.assert(acc.Loan_Type__c, testAcc.Loan_Type__c);
            //System.assert(acc.Remaining_Loan_Amount__c, testAcc.Remaining_Loan_Amount__c);
            System.assert(acc.Total_Loan_Amount__c, testAcc.Total_Loan_Amount__c);
        } catch (Exception e) {
            System.assert(false, e.getMessage());
        }
        Test.stopTest();
    }
    

    @isTest
    public static void testAccount_17() {
        Account acc = new Account();
        acc.Name = 'ToUpdate Account';
        acc.Balance__c = 100;
        acc.RecordTypeId = Schema.SObjectType.Account.getRecordTypeInfosByName().get('>=$0').getRecordTypeId();
        acc.Email__c = 'testUpdate@pairwise.test';
        acc.Active__c = 'Yes';
        insert acc;
        
        acc.Name = '';
        acc.Balance__c = 190;
        acc.Calculated_Interest__c = null;
        acc.Email__c = 'test17@pairwise.test';
        acc.Loan_Interest_Rate__c = 0.136;
        acc.Loan_Type__c = 'Car Loan';
        acc.Remaining_Loan_Amount__c = 15000000;
        acc.Total_Loan_Amount__c = 570708;
        
        Test.startTest();
        try {
            update acc;
            Account testAcc = [SELECT name, balance__c, calculated_interest__c, email__c, interest_rate__c, loan_interest_rate__c, loan_type__c, remaining_loan_amount__c, total_loan_amount__c, active__c FROM Account WHERE name='' LIMIT 1];
            System.assert(acc.Name, testAcc.Name);
            System.assert(acc.Balance__c, testAcc.Balance__c);
            System.assert(acc.Balance__c * 0.05, testAcc.Calculated_Interest__c);
            System.assert(acc.Email__c, testAcc.Email__c);
            System.assert(acc.Loan_Interest_Rate__c, testAcc.Loan_Interest_Rate__c);
            System.assert(acc.Loan_Type__c, testAcc.Loan_Type__c);
            //System.assert(acc.Remaining_Loan_Amount__c, testAcc.Remaining_Loan_Amount__c);
            System.assert(acc.Total_Loan_Amount__c, testAcc.Total_Loan_Amount__c);
        } catch (Exception e) {
            System.assert(false, e.getMessage());
        }
        Test.stopTest();
    }
    

    @isTest
    public static void testAccount_18() {
        Account acc = new Account();
        acc.Name = 'ToUpdate Account';
        acc.Balance__c = 100;
        acc.RecordTypeId = Schema.SObjectType.Account.getRecordTypeInfosByName().get('Negative').getRecordTypeId();
        acc.Email__c = 'testUpdate@pairwise.test';
        acc.Active__c = 'Yes';
        insert acc;
        
        acc.Name = '';
        acc.Balance__c = 131;
        acc.Calculated_Interest__c = null;
        acc.Email__c = '';
        acc.Loan_Interest_Rate__c = 0.1;
        acc.Loan_Type__c = 'Home Loan';
        acc.Remaining_Loan_Amount__c = 15000000;
        acc.Total_Loan_Amount__c = 827096;
        
        Test.startTest();
        try {
            update acc;
            Account testAcc = [SELECT name, balance__c, calculated_interest__c, email__c, interest_rate__c, loan_interest_rate__c, loan_type__c, remaining_loan_amount__c, total_loan_amount__c, active__c FROM Account WHERE name='' LIMIT 1];
            System.assert(acc.Name, testAcc.Name);
            System.assert(acc.Balance__c, testAcc.Balance__c);
            System.assert(acc.Balance__c * 0.06, testAcc.Calculated_Interest__c);
            System.assert(acc.Email__c, testAcc.Email__c);
            System.assert(acc.Loan_Interest_Rate__c, testAcc.Loan_Interest_Rate__c);
            System.assert(acc.Loan_Type__c, testAcc.Loan_Type__c);
            //System.assert(acc.Remaining_Loan_Amount__c, testAcc.Remaining_Loan_Amount__c);
            System.assert(acc.Total_Loan_Amount__c, testAcc.Total_Loan_Amount__c);
        } catch (Exception e) {
            System.assert(false, e.getMessage());
        }
        Test.stopTest();
    }
    

    @isTest
    public static void testAccount_19() {
        Account acc = new Account();
        acc.Name = '';
        acc.Balance__c = 200;
        acc.RecordTypeId = Schema.SObjectType.Account.getRecordTypeInfosByName().get('>=$0').getRecordTypeId();
        acc.Calculated_Interest__c = 7;
        acc.Email__c = 'test19@pairwise.test';
        acc.Loan_Interest_Rate__c = 0.10300000000000001;
        acc.Loan_Type__c = 'Car Loan';
        //acc.Remaining_Loan_Amount__c = ;
        acc.Total_Loan_Amount__c = 7967044;
        acc.Active__c = 'Yes';
        
        Test.startTest();
        try {
            insert acc;
            Account testAcc = [SELECT name, balance__c, calculated_interest__c, email__c, interest_rate__c, loan_interest_rate__c, loan_type__c, remaining_loan_amount__c, total_loan_amount__c, active__c FROM Account WHERE name='' LIMIT 1];
            System.assert(acc.Name, testAcc.Name);
            System.assert(acc.Balance__c, testAcc.Balance__c);
            System.assert(acc.Balance__c * 0.06, testAcc.Calculated_Interest__c);
            System.assert(acc.Email__c, testAcc.Email__c);
            System.assert(acc.Loan_Interest_Rate__c, testAcc.Loan_Interest_Rate__c);
            System.assert(acc.Loan_Type__c, testAcc.Loan_Type__c);
            //System.assert(acc.Remaining_Loan_Amount__c, testAcc.Remaining_Loan_Amount__c);
            System.assert(acc.Total_Loan_Amount__c, testAcc.Total_Loan_Amount__c);
        } catch (Exception e) {
            System.assert(false, e.getMessage());
        }
        Test.stopTest();
    }
    

    @isTest
    public static void testAccount_20() {
        Account acc = new Account();
        acc.Name = '';
        acc.Balance__c = 100;
        acc.RecordTypeId = Schema.SObjectType.Account.getRecordTypeInfosByName().get('>=$0').getRecordTypeId();
        acc.Calculated_Interest__c = null;
        acc.Email__c = '';
        acc.Loan_Interest_Rate__c = 0.07;
        acc.Loan_Type__c = 'Home Loan';
        //acc.Remaining_Loan_Amount__c = 15000000;
        acc.Total_Loan_Amount__c = 674591;
        acc.Active__c = 'Yes';
        
        Test.startTest();
        try {
            insert acc;
            Account testAcc = [SELECT name, balance__c, calculated_interest__c, email__c, interest_rate__c, loan_interest_rate__c, loan_type__c, remaining_loan_amount__c, total_loan_amount__c, active__c FROM Account WHERE name='' LIMIT 1];
            System.assert(acc.Name, testAcc.Name);
            System.assert(acc.Balance__c, testAcc.Balance__c);
            System.assert(acc.Balance__c * 0.06, testAcc.Calculated_Interest__c);
            System.assert(acc.Email__c, testAcc.Email__c);
            System.assert(acc.Loan_Interest_Rate__c, testAcc.Loan_Interest_Rate__c);
            System.assert(acc.Loan_Type__c, testAcc.Loan_Type__c);
            //System.assert(acc.Remaining_Loan_Amount__c, testAcc.Remaining_Loan_Amount__c);
            System.assert(acc.Total_Loan_Amount__c, testAcc.Total_Loan_Amount__c);
        } catch (Exception e) {
            System.assert(false, e.getMessage());
        }
        Test.stopTest();
    }
    

    @isTest
    public static void testAccount_21() {
        Account acc = new Account();
        acc.Name = '';
        acc.Balance__c = 145;
        acc.RecordTypeId = Schema.SObjectType.Account.getRecordTypeInfosByName().get('>=$100').getRecordTypeId();
        acc.Calculated_Interest__c = 7;
        acc.Email__c = '';
        acc.Loan_Interest_Rate__c = 107;
        acc.Loan_Type__c = 'Home Loan';
        //acc.Remaining_Loan_Amount__c = 15000000;
        acc.Total_Loan_Amount__c = 3029460;
        acc.Active__c = 'Yes';
        
        Test.startTest();
        try {
            insert acc;
            Account testAcc = [SELECT name, balance__c, calculated_interest__c, email__c, interest_rate__c, loan_interest_rate__c, loan_type__c, remaining_loan_amount__c, total_loan_amount__c, active__c FROM Account WHERE name='' LIMIT 1];
            System.assert(acc.Name, testAcc.Name);
            System.assert(acc.Balance__c, testAcc.Balance__c);
            System.assert(acc.Balance__c * 0.05, testAcc.Calculated_Interest__c);
            System.assert(acc.Email__c, testAcc.Email__c);
            System.assert(acc.Loan_Interest_Rate__c, testAcc.Loan_Interest_Rate__c);
            System.assert(acc.Loan_Type__c, testAcc.Loan_Type__c);
            //System.assert(acc.Remaining_Loan_Amount__c, testAcc.Remaining_Loan_Amount__c);
            System.assert(acc.Total_Loan_Amount__c, testAcc.Total_Loan_Amount__c);
        } catch (Exception e) {
            System.assert(false, e.getMessage());
        }
        Test.stopTest();
    }
    

    @isTest
    public static void testAccount_22() {
        Account acc = new Account();
        acc.Name = 'ToUpdate Account';
        acc.Balance__c = 100;
        acc.RecordTypeId = Schema.SObjectType.Account.getRecordTypeInfosByName().get('Negative').getRecordTypeId();
        acc.Email__c = 'testUpdate@pairwise.test';
        acc.Active__c = 'Yes';
        insert acc;
        
        acc.Name = '';
        acc.Balance__c = 153;
        acc.Calculated_Interest__c = 7;
        acc.Email__c = 'test22@pairwise.test';
        acc.Loan_Interest_Rate__c = 107;
        acc.Loan_Type__c = 'Car Loan';
        acc.Remaining_Loan_Amount__c = ;
        acc.Total_Loan_Amount__c = null;
        
        Test.startTest();
        try {
            update acc;
            Account testAcc = [SELECT name, balance__c, calculated_interest__c, email__c, interest_rate__c, loan_interest_rate__c, loan_type__c, remaining_loan_amount__c, total_loan_amount__c, active__c FROM Account WHERE name='' LIMIT 1];
            System.assert(acc.Name, testAcc.Name);
            System.assert(acc.Balance__c, testAcc.Balance__c);
            System.assert(acc.Balance__c * 0.06, testAcc.Calculated_Interest__c);
            System.assert(acc.Email__c, testAcc.Email__c);
            System.assert(acc.Loan_Interest_Rate__c, testAcc.Loan_Interest_Rate__c);
            System.assert(acc.Loan_Type__c, testAcc.Loan_Type__c);
            //System.assert(acc.Remaining_Loan_Amount__c, testAcc.Remaining_Loan_Amount__c);
            System.assert(acc.Total_Loan_Amount__c, testAcc.Total_Loan_Amount__c);
        } catch (Exception e) {
            System.assert(false, e.getMessage());
        }
        Test.stopTest();
    }
    

    @isTest
    public static void testAccount_23() {
        Account acc = new Account();
        acc.Name = 'ToUpdate Account';
        acc.Balance__c = 100;
        acc.RecordTypeId = Schema.SObjectType.Account.getRecordTypeInfosByName().get('>=$0').getRecordTypeId();
        acc.Email__c = 'testUpdate@pairwise.test';
        acc.Active__c = 'Yes';
        insert acc;
        
        acc.Name = '';
        acc.Balance__c = 135;
        acc.Calculated_Interest__c = 7;
        acc.Email__c = '';
        acc.Loan_Interest_Rate__c = 0.159;
        acc.Loan_Type__c = 'Car Loan';
        acc.Remaining_Loan_Amount__c = ;
        acc.Total_Loan_Amount__c = 8118002;
        
        Test.startTest();
        try {
            update acc;
            Account testAcc = [SELECT name, balance__c, calculated_interest__c, email__c, interest_rate__c, loan_interest_rate__c, loan_type__c, remaining_loan_amount__c, total_loan_amount__c, active__c FROM Account WHERE name='' LIMIT 1];
            System.assert(acc.Name, testAcc.Name);
            System.assert(acc.Balance__c, testAcc.Balance__c);
            System.assert(acc.Balance__c * 0.05, testAcc.Calculated_Interest__c);
            System.assert(acc.Email__c, testAcc.Email__c);
            System.assert(acc.Loan_Interest_Rate__c, testAcc.Loan_Interest_Rate__c);
            System.assert(acc.Loan_Type__c, testAcc.Loan_Type__c);
            //System.assert(acc.Remaining_Loan_Amount__c, testAcc.Remaining_Loan_Amount__c);
            System.assert(acc.Total_Loan_Amount__c, testAcc.Total_Loan_Amount__c);
        } catch (Exception e) {
            System.assert(false, e.getMessage());
        }
        Test.stopTest();
    }
    

    @isTest
    public static void testAccount_24() {
        Account acc = new Account();
        acc.Name = '';
        acc.Balance__c = 112;
        acc.RecordTypeId = Schema.SObjectType.Account.getRecordTypeInfosByName().get('>=$100').getRecordTypeId();
        acc.Calculated_Interest__c = 7;
        acc.Email__c = 'test24@pairwise.test';
        acc.Loan_Interest_Rate__c = 0.11900000000000001;
        acc.Loan_Type__c = 'Car Loan';
        //acc.Remaining_Loan_Amount__c = 15000000;
        acc.Total_Loan_Amount__c = 3880461;
        acc.Active__c = 'Yes';
        
        Test.startTest();
        try {
            insert acc;
            Account testAcc = [SELECT name, balance__c, calculated_interest__c, email__c, interest_rate__c, loan_interest_rate__c, loan_type__c, remaining_loan_amount__c, total_loan_amount__c, active__c FROM Account WHERE name='' LIMIT 1];
            System.assert(acc.Name, testAcc.Name);
            System.assert(acc.Balance__c, testAcc.Balance__c);
            System.assert(acc.Balance__c * 0.038, testAcc.Calculated_Interest__c);
            System.assert(acc.Email__c, testAcc.Email__c);
            System.assert(acc.Loan_Interest_Rate__c, testAcc.Loan_Interest_Rate__c);
            System.assert(acc.Loan_Type__c, testAcc.Loan_Type__c);
            //System.assert(acc.Remaining_Loan_Amount__c, testAcc.Remaining_Loan_Amount__c);
            System.assert(acc.Total_Loan_Amount__c, testAcc.Total_Loan_Amount__c);
        } catch (Exception e) {
            System.assert(false, e.getMessage());
        }
        Test.stopTest();
    }
    

    @isTest
    public static void testAccount_25() {
        Account acc = new Account();
        acc.Name = 'ToUpdate Account';
        acc.Balance__c = 100;
        acc.RecordTypeId = Schema.SObjectType.Account.getRecordTypeInfosByName().get('Negative').getRecordTypeId();
        acc.Email__c = 'testUpdate@pairwise.test';
        acc.Active__c = 'Yes';
        insert acc;
        
        acc.Name = '';
        acc.Balance__c = 114;
        acc.Calculated_Interest__c = 7;
        acc.Email__c = '';
        acc.Loan_Interest_Rate__c = 0.125;
        acc.Loan_Type__c = '';
        acc.Remaining_Loan_Amount__c = ;
        acc.Total_Loan_Amount__c = null;
        
        Test.startTest();
        try {
            update acc;
            Account testAcc = [SELECT name, balance__c, calculated_interest__c, email__c, interest_rate__c, loan_interest_rate__c, loan_type__c, remaining_loan_amount__c, total_loan_amount__c, active__c FROM Account WHERE name='' LIMIT 1];
            System.assert(acc.Name, testAcc.Name);
            System.assert(acc.Balance__c, testAcc.Balance__c);
            System.assert(acc.Balance__c * 0.038, testAcc.Calculated_Interest__c);
            System.assert(acc.Email__c, testAcc.Email__c);
            System.assert(acc.Loan_Interest_Rate__c, testAcc.Loan_Interest_Rate__c);
            System.assert(acc.Loan_Type__c, testAcc.Loan_Type__c);
            //System.assert(acc.Remaining_Loan_Amount__c, testAcc.Remaining_Loan_Amount__c);
            System.assert(acc.Total_Loan_Amount__c, testAcc.Total_Loan_Amount__c);
        } catch (Exception e) {
            System.assert(false, e.getMessage());
        }
        Test.stopTest();
    }
    

    @isTest
    public static void testAccount_26() {
        Account acc = new Account();
        acc.Name = 'ToUpdate Account';
        acc.Balance__c = 100;
        acc.RecordTypeId = Schema.SObjectType.Account.getRecordTypeInfosByName().get('Blank').getRecordTypeId();
        acc.Email__c = 'testUpdate@pairwise.test';
        acc.Active__c = 'Yes';
        insert acc;
        
        acc.Name = '';
        acc.Balance__c = 112;
        acc.Calculated_Interest__c = 7;
        acc.Email__c = 'test26@pairwise.test';
        acc.Loan_Interest_Rate__c = 0.146;
        acc.Loan_Type__c = 'Home Loan';
        acc.Remaining_Loan_Amount__c = 15000000;
        acc.Total_Loan_Amount__c = 2341658;
        
        Test.startTest();
        try {
            update acc;
            Account testAcc = [SELECT name, balance__c, calculated_interest__c, email__c, interest_rate__c, loan_interest_rate__c, loan_type__c, remaining_loan_amount__c, total_loan_amount__c, active__c FROM Account WHERE name='' LIMIT 1];
            System.assert(acc.Name, testAcc.Name);
            System.assert(acc.Balance__c, testAcc.Balance__c);
            System.assert(acc.Balance__c * 0.06, testAcc.Calculated_Interest__c);
            System.assert(acc.Email__c, testAcc.Email__c);
            System.assert(acc.Loan_Interest_Rate__c, testAcc.Loan_Interest_Rate__c);
            System.assert(acc.Loan_Type__c, testAcc.Loan_Type__c);
            //System.assert(acc.Remaining_Loan_Amount__c, testAcc.Remaining_Loan_Amount__c);
            System.assert(acc.Total_Loan_Amount__c, testAcc.Total_Loan_Amount__c);
        } catch (Exception e) {
            System.assert(false, e.getMessage());
        }
        Test.stopTest();
    }
    

    @isTest
    public static void testAccount_27() {
        Account acc = new Account();
        acc.Name = '';
        acc.Balance__c = 152;
        acc.RecordTypeId = Schema.SObjectType.Account.getRecordTypeInfosByName().get('>=$100').getRecordTypeId();
        acc.Calculated_Interest__c = null;
        acc.Email__c = 'test27@pairwise.test';
        acc.Loan_Interest_Rate__c = 0.162;
        acc.Loan_Type__c = 'Car Loan';
        //acc.Remaining_Loan_Amount__c = 15000000;
        acc.Total_Loan_Amount__c = 797276;
        acc.Active__c = 'Yes';
        
        Test.startTest();
        try {
            insert acc;
            Account testAcc = [SELECT name, balance__c, calculated_interest__c, email__c, interest_rate__c, loan_interest_rate__c, loan_type__c, remaining_loan_amount__c, total_loan_amount__c, active__c FROM Account WHERE name='' LIMIT 1];
            System.assert(acc.Name, testAcc.Name);
            System.assert(acc.Balance__c, testAcc.Balance__c);
            System.assert(acc.Balance__c * 0.05, testAcc.Calculated_Interest__c);
            System.assert(acc.Email__c, testAcc.Email__c);
            System.assert(acc.Loan_Interest_Rate__c, testAcc.Loan_Interest_Rate__c);
            System.assert(acc.Loan_Type__c, testAcc.Loan_Type__c);
            //System.assert(acc.Remaining_Loan_Amount__c, testAcc.Remaining_Loan_Amount__c);
            System.assert(acc.Total_Loan_Amount__c, testAcc.Total_Loan_Amount__c);
        } catch (Exception e) {
            System.assert(false, e.getMessage());
        }
        Test.stopTest();
    }
    

    @isTest
    public static void testAccount_28() {
        Account acc = new Account();
        acc.Name = '';
        acc.Balance__c = 162;
        acc.RecordTypeId = Schema.SObjectType.Account.getRecordTypeInfosByName().get('>=$100').getRecordTypeId();
        acc.Calculated_Interest__c = 7;
        acc.Email__c = '';
        acc.Loan_Interest_Rate__c = 0.08;
        acc.Loan_Type__c = 'Home Loan';
        //acc.Remaining_Loan_Amount__c = ;
        acc.Total_Loan_Amount__c = null;
        acc.Active__c = 'Yes';
        
        Test.startTest();
        try {
            insert acc;
            Account testAcc = [SELECT name, balance__c, calculated_interest__c, email__c, interest_rate__c, loan_interest_rate__c, loan_type__c, remaining_loan_amount__c, total_loan_amount__c, active__c FROM Account WHERE name='' LIMIT 1];
            System.assert(acc.Name, testAcc.Name);
            System.assert(acc.Balance__c, testAcc.Balance__c);
            System.assert(acc.Balance__c * 0.038, testAcc.Calculated_Interest__c);
            System.assert(acc.Email__c, testAcc.Email__c);
            System.assert(acc.Loan_Interest_Rate__c, testAcc.Loan_Interest_Rate__c);
            System.assert(acc.Loan_Type__c, testAcc.Loan_Type__c);
            //System.assert(acc.Remaining_Loan_Amount__c, testAcc.Remaining_Loan_Amount__c);
            System.assert(acc.Total_Loan_Amount__c, testAcc.Total_Loan_Amount__c);
        } catch (Exception e) {
            System.assert(false, e.getMessage());
        }
        Test.stopTest();
    }
    

    @isTest
    public static void testAccount_29() {
        Account acc = new Account();
        acc.Name = 'ToUpdate Account';
        acc.Balance__c = 100;
        acc.RecordTypeId = Schema.SObjectType.Account.getRecordTypeInfosByName().get('Negative').getRecordTypeId();
        acc.Email__c = 'testUpdate@pairwise.test';
        acc.Active__c = 'Yes';
        insert acc;
        
        acc.Name = '';
        acc.Balance__c = 127;
        acc.Calculated_Interest__c = 7;
        acc.Email__c = '';
        acc.Loan_Interest_Rate__c = 0.084;
        acc.Loan_Type__c = 'Home Loan';
        acc.Remaining_Loan_Amount__c = ;
        acc.Total_Loan_Amount__c = 467343;
        
        Test.startTest();
        try {
            update acc;
            Account testAcc = [SELECT name, balance__c, calculated_interest__c, email__c, interest_rate__c, loan_interest_rate__c, loan_type__c, remaining_loan_amount__c, total_loan_amount__c, active__c FROM Account WHERE name='' LIMIT 1];
            System.assert(acc.Name, testAcc.Name);
            System.assert(acc.Balance__c, testAcc.Balance__c);
            System.assert(acc.Balance__c * 0.038, testAcc.Calculated_Interest__c);
            System.assert(acc.Email__c, testAcc.Email__c);
            System.assert(acc.Loan_Interest_Rate__c, testAcc.Loan_Interest_Rate__c);
            System.assert(acc.Loan_Type__c, testAcc.Loan_Type__c);
            //System.assert(acc.Remaining_Loan_Amount__c, testAcc.Remaining_Loan_Amount__c);
            System.assert(acc.Total_Loan_Amount__c, testAcc.Total_Loan_Amount__c);
        } catch (Exception e) {
            System.assert(false, e.getMessage());
        }
        Test.stopTest();
    }
    

    @isTest
    public static void testAccount_30() {
        Account acc = new Account();
        acc.Name = 'ToUpdate Account';
        acc.Balance__c = 100;
        acc.RecordTypeId = Schema.SObjectType.Account.getRecordTypeInfosByName().get('Blank').getRecordTypeId();
        acc.Email__c = 'testUpdate@pairwise.test';
        acc.Active__c = 'Yes';
        insert acc;
        
        acc.Name = '';
        acc.Balance__c = 110;
        acc.Calculated_Interest__c = 7;
        acc.Email__c = '';
        acc.Loan_Interest_Rate__c = 107;
        acc.Loan_Type__c = 'Home Loan';
        acc.Remaining_Loan_Amount__c = 15000000;
        acc.Total_Loan_Amount__c = 878102;
        
        Test.startTest();
        try {
            update acc;
            Account testAcc = [SELECT name, balance__c, calculated_interest__c, email__c, interest_rate__c, loan_interest_rate__c, loan_type__c, remaining_loan_amount__c, total_loan_amount__c, active__c FROM Account WHERE name='' LIMIT 1];
            System.assert(acc.Name, testAcc.Name);
            System.assert(acc.Balance__c, testAcc.Balance__c);
            System.assert(acc.Balance__c * 0.038, testAcc.Calculated_Interest__c);
            System.assert(acc.Email__c, testAcc.Email__c);
            System.assert(acc.Loan_Interest_Rate__c, testAcc.Loan_Interest_Rate__c);
            System.assert(acc.Loan_Type__c, testAcc.Loan_Type__c);
            //System.assert(acc.Remaining_Loan_Amount__c, testAcc.Remaining_Loan_Amount__c);
            System.assert(acc.Total_Loan_Amount__c, testAcc.Total_Loan_Amount__c);
        } catch (Exception e) {
            System.assert(false, e.getMessage());
        }
        Test.stopTest();
    }
    

    @isTest
    public static void testAccount_31() {
        Account acc = new Account();
        acc.Name = 'ToUpdate Account';
        acc.Balance__c = 100;
        acc.RecordTypeId = Schema.SObjectType.Account.getRecordTypeInfosByName().get('Negative').getRecordTypeId();
        acc.Email__c = 'testUpdate@pairwise.test';
        acc.Active__c = 'Yes';
        insert acc;
        
        acc.Name = '';
        acc.Balance__c = 105;
        acc.Calculated_Interest__c = null;
        acc.Email__c = '';
        acc.Loan_Interest_Rate__c = 0.08;
        acc.Loan_Type__c = 'Home Loan';
        acc.Remaining_Loan_Amount__c = ;
        acc.Total_Loan_Amount__c = 77426;
        
        Test.startTest();
        try {
            update acc;
            Account testAcc = [SELECT name, balance__c, calculated_interest__c, email__c, interest_rate__c, loan_interest_rate__c, loan_type__c, remaining_loan_amount__c, total_loan_amount__c, active__c FROM Account WHERE name='' LIMIT 1];
            System.assert(acc.Name, testAcc.Name);
            System.assert(acc.Balance__c, testAcc.Balance__c);
            System.assert(acc.Balance__c * 0.06, testAcc.Calculated_Interest__c);
            System.assert(acc.Email__c, testAcc.Email__c);
            System.assert(acc.Loan_Interest_Rate__c, testAcc.Loan_Interest_Rate__c);
            System.assert(acc.Loan_Type__c, testAcc.Loan_Type__c);
            //System.assert(acc.Remaining_Loan_Amount__c, testAcc.Remaining_Loan_Amount__c);
            System.assert(acc.Total_Loan_Amount__c, testAcc.Total_Loan_Amount__c);
        } catch (Exception e) {
            System.assert(false, e.getMessage());
        }
        Test.stopTest();
    }
    

    @isTest
    public static void testAccount_32() {
        Account acc = new Account();
        acc.Name = 'ToUpdate Account';
        acc.Balance__c = 100;
        acc.RecordTypeId = Schema.SObjectType.Account.getRecordTypeInfosByName().get('Negative').getRecordTypeId();
        acc.Email__c = 'testUpdate@pairwise.test';
        acc.Active__c = 'Yes';
        insert acc;
        
        acc.Name = '';
        acc.Balance__c = 103;
        acc.Calculated_Interest__c = null;
        acc.Email__c = 'test32@pairwise.test';
        acc.Loan_Interest_Rate__c = 0.109;
        acc.Loan_Type__c = '';
        acc.Remaining_Loan_Amount__c = ;
        acc.Total_Loan_Amount__c = null;
        
        Test.startTest();
        try {
            update acc;
            Account testAcc = [SELECT name, balance__c, calculated_interest__c, email__c, interest_rate__c, loan_interest_rate__c, loan_type__c, remaining_loan_amount__c, total_loan_amount__c, active__c FROM Account WHERE name='' LIMIT 1];
            System.assert(acc.Name, testAcc.Name);
            System.assert(acc.Balance__c, testAcc.Balance__c);
            System.assert(acc.Balance__c * 0.06, testAcc.Calculated_Interest__c);
            System.assert(acc.Email__c, testAcc.Email__c);
            System.assert(acc.Loan_Interest_Rate__c, testAcc.Loan_Interest_Rate__c);
            System.assert(acc.Loan_Type__c, testAcc.Loan_Type__c);
            //System.assert(acc.Remaining_Loan_Amount__c, testAcc.Remaining_Loan_Amount__c);
            System.assert(acc.Total_Loan_Amount__c, testAcc.Total_Loan_Amount__c);
        } catch (Exception e) {
            System.assert(false, e.getMessage());
        }
        Test.stopTest();
    }
    

    @isTest
    public static void testAccount_33() {
        Account acc = new Account();
        acc.Name = 'ToUpdate Account';
        acc.Balance__c = 100;
        acc.RecordTypeId = Schema.SObjectType.Account.getRecordTypeInfosByName().get('>=$100').getRecordTypeId();
        acc.Email__c = 'testUpdate@pairwise.test';
        acc.Active__c = 'Yes';
        insert acc;
        
        acc.Name = '';
        acc.Balance__c = 198;
        acc.Calculated_Interest__c = null;
        acc.Email__c = 'test33@pairwise.test';
        acc.Loan_Interest_Rate__c = 0.11900000000000001;
        acc.Loan_Type__c = 'Home Loan';
        acc.Remaining_Loan_Amount__c = 15000000;
        acc.Total_Loan_Amount__c = 9245354;
        
        Test.startTest();
        try {
            update acc;
            Account testAcc = [SELECT name, balance__c, calculated_interest__c, email__c, interest_rate__c, loan_interest_rate__c, loan_type__c, remaining_loan_amount__c, total_loan_amount__c, active__c FROM Account WHERE name='' LIMIT 1];
            System.assert(acc.Name, testAcc.Name);
            System.assert(acc.Balance__c, testAcc.Balance__c);
            System.assert(acc.Balance__c * 0.06, testAcc.Calculated_Interest__c);
            System.assert(acc.Email__c, testAcc.Email__c);
            System.assert(acc.Loan_Interest_Rate__c, testAcc.Loan_Interest_Rate__c);
            System.assert(acc.Loan_Type__c, testAcc.Loan_Type__c);
            //System.assert(acc.Remaining_Loan_Amount__c, testAcc.Remaining_Loan_Amount__c);
            System.assert(acc.Total_Loan_Amount__c, testAcc.Total_Loan_Amount__c);
        } catch (Exception e) {
            System.assert(false, e.getMessage());
        }
        Test.stopTest();
    }
    

    @isTest
    public static void testAccount_34() {
        Account acc = new Account();
        acc.Name = 'ToUpdate Account';
        acc.Balance__c = 100;
        acc.RecordTypeId = Schema.SObjectType.Account.getRecordTypeInfosByName().get('>=$0').getRecordTypeId();
        acc.Email__c = 'testUpdate@pairwise.test';
        acc.Active__c = 'Yes';
        insert acc;
        
        acc.Name = '';
        acc.Balance__c = 101;
        acc.Calculated_Interest__c = 7;
        acc.Email__c = '';
        acc.Loan_Interest_Rate__c = null;
        acc.Loan_Type__c = '';
        acc.Remaining_Loan_Amount__c = 15000000;
        acc.Total_Loan_Amount__c = null;
        
        Test.startTest();
        try {
            update acc;
            Account testAcc = [SELECT name, balance__c, calculated_interest__c, email__c, interest_rate__c, loan_interest_rate__c, loan_type__c, remaining_loan_amount__c, total_loan_amount__c, active__c FROM Account WHERE name='' LIMIT 1];
            System.assert(acc.Name, testAcc.Name);
            System.assert(acc.Balance__c, testAcc.Balance__c);
            System.assert(acc.Balance__c * 0.038, testAcc.Calculated_Interest__c);
            System.assert(acc.Email__c, testAcc.Email__c);
            System.assert(acc.Loan_Interest_Rate__c, testAcc.Loan_Interest_Rate__c);
            System.assert(acc.Loan_Type__c, testAcc.Loan_Type__c);
            //System.assert(acc.Remaining_Loan_Amount__c, testAcc.Remaining_Loan_Amount__c);
            System.assert(acc.Total_Loan_Amount__c, testAcc.Total_Loan_Amount__c);
        } catch (Exception e) {
            System.assert(false, e.getMessage());
        }
        Test.stopTest();
    }
    

    @isTest
    public static void testAccount_35() {
        Account acc = new Account();
        acc.Name = 'ToUpdate Account';
        acc.Balance__c = 100;
        acc.RecordTypeId = Schema.SObjectType.Account.getRecordTypeInfosByName().get('Negative').getRecordTypeId();
        acc.Email__c = 'testUpdate@pairwise.test';
        acc.Active__c = 'Yes';
        insert acc;
        
        acc.Name = '';
        acc.Balance__c = 151;
        acc.Calculated_Interest__c = null;
        acc.Email__c = 'test35@pairwise.test';
        acc.Loan_Interest_Rate__c = null;
        acc.Loan_Type__c = 'Home Loan';
        acc.Remaining_Loan_Amount__c = 15000000;
        acc.Total_Loan_Amount__c = 5088045;
        
        Test.startTest();
        try {
            update acc;
            Account testAcc = [SELECT name, balance__c, calculated_interest__c, email__c, interest_rate__c, loan_interest_rate__c, loan_type__c, remaining_loan_amount__c, total_loan_amount__c, active__c FROM Account WHERE name='' LIMIT 1];
            System.assert(acc.Name, testAcc.Name);
            System.assert(acc.Balance__c, testAcc.Balance__c);
            System.assert(acc.Balance__c * 0.06, testAcc.Calculated_Interest__c);
            System.assert(acc.Email__c, testAcc.Email__c);
            System.assert(acc.Loan_Interest_Rate__c, testAcc.Loan_Interest_Rate__c);
            System.assert(acc.Loan_Type__c, testAcc.Loan_Type__c);
            //System.assert(acc.Remaining_Loan_Amount__c, testAcc.Remaining_Loan_Amount__c);
            System.assert(acc.Total_Loan_Amount__c, testAcc.Total_Loan_Amount__c);
        } catch (Exception e) {
            System.assert(false, e.getMessage());
        }
        Test.stopTest();
    }
    

    @isTest
    public static void testAccount_36() {
        Account acc = new Account();
        acc.Name = 'ToUpdate Account';
        acc.Balance__c = 100;
        acc.RecordTypeId = Schema.SObjectType.Account.getRecordTypeInfosByName().get('>=$100').getRecordTypeId();
        acc.Email__c = 'testUpdate@pairwise.test';
        acc.Active__c = 'Yes';
        insert acc;
        
        acc.Name = '';
        acc.Balance__c = 127;
        acc.Calculated_Interest__c = 7;
        acc.Email__c = 'test36@pairwise.test';
        acc.Loan_Interest_Rate__c = 0.162;
        acc.Loan_Type__c = 'Car Loan';
        acc.Remaining_Loan_Amount__c = 15000000;
        acc.Total_Loan_Amount__c = 3026469;
        
        Test.startTest();
        try {
            update acc;
            Account testAcc = [SELECT name, balance__c, calculated_interest__c, email__c, interest_rate__c, loan_interest_rate__c, loan_type__c, remaining_loan_amount__c, total_loan_amount__c, active__c FROM Account WHERE name='' LIMIT 1];
            System.assert(acc.Name, testAcc.Name);
            System.assert(acc.Balance__c, testAcc.Balance__c);
            System.assert(acc.Balance__c * 0.06, testAcc.Calculated_Interest__c);
            System.assert(acc.Email__c, testAcc.Email__c);
            System.assert(acc.Loan_Interest_Rate__c, testAcc.Loan_Interest_Rate__c);
            System.assert(acc.Loan_Type__c, testAcc.Loan_Type__c);
            //System.assert(acc.Remaining_Loan_Amount__c, testAcc.Remaining_Loan_Amount__c);
            System.assert(acc.Total_Loan_Amount__c, testAcc.Total_Loan_Amount__c);
        } catch (Exception e) {
            System.assert(false, e.getMessage());
        }
        Test.stopTest();
    }
    

    @isTest
    public static void testAccount_37() {
        Account acc = new Account();
        acc.Name = 'ToUpdate Account';
        acc.Balance__c = 100;
        acc.RecordTypeId = Schema.SObjectType.Account.getRecordTypeInfosByName().get('Blank').getRecordTypeId();
        acc.Email__c = 'testUpdate@pairwise.test';
        acc.Active__c = 'Yes';
        insert acc;
        
        acc.Name = '';
        acc.Balance__c = 146;
        acc.Calculated_Interest__c = 7;
        acc.Email__c = '';
        acc.Loan_Interest_Rate__c = 0.11800000000000001;
        acc.Loan_Type__c = 'Home Loan';
        acc.Remaining_Loan_Amount__c = ;
        acc.Total_Loan_Amount__c = 577216;
        
        Test.startTest();
        try {
            update acc;
            Account testAcc = [SELECT name, balance__c, calculated_interest__c, email__c, interest_rate__c, loan_interest_rate__c, loan_type__c, remaining_loan_amount__c, total_loan_amount__c, active__c FROM Account WHERE name='' LIMIT 1];
            System.assert(acc.Name, testAcc.Name);
            System.assert(acc.Balance__c, testAcc.Balance__c);
            System.assert(acc.Balance__c * 0.038, testAcc.Calculated_Interest__c);
            System.assert(acc.Email__c, testAcc.Email__c);
            System.assert(acc.Loan_Interest_Rate__c, testAcc.Loan_Interest_Rate__c);
            System.assert(acc.Loan_Type__c, testAcc.Loan_Type__c);
            //System.assert(acc.Remaining_Loan_Amount__c, testAcc.Remaining_Loan_Amount__c);
            System.assert(acc.Total_Loan_Amount__c, testAcc.Total_Loan_Amount__c);
        } catch (Exception e) {
            System.assert(false, e.getMessage());
        }
        Test.stopTest();
    }
    

    @isTest
    public static void testAccount_38() {
        Account acc = new Account();
        acc.Name = 'ToUpdate Account';
        acc.Balance__c = 100;
        acc.RecordTypeId = Schema.SObjectType.Account.getRecordTypeInfosByName().get('>=$0').getRecordTypeId();
        acc.Email__c = 'testUpdate@pairwise.test';
        acc.Active__c = 'Yes';
        insert acc;
        
        acc.Name = '';
        acc.Balance__c = 104;
        acc.Calculated_Interest__c = null;
        acc.Email__c = '';
        acc.Loan_Interest_Rate__c = 0.146;
        acc.Loan_Type__c = 'Car Loan';
        acc.Remaining_Loan_Amount__c = ;
        acc.Total_Loan_Amount__c = null;
        
        Test.startTest();
        try {
            update acc;
            Account testAcc = [SELECT name, balance__c, calculated_interest__c, email__c, interest_rate__c, loan_interest_rate__c, loan_type__c, remaining_loan_amount__c, total_loan_amount__c, active__c FROM Account WHERE name='' LIMIT 1];
            System.assert(acc.Name, testAcc.Name);
            System.assert(acc.Balance__c, testAcc.Balance__c);
            System.assert(acc.Balance__c * 0.038, testAcc.Calculated_Interest__c);
            System.assert(acc.Email__c, testAcc.Email__c);
            System.assert(acc.Loan_Interest_Rate__c, testAcc.Loan_Interest_Rate__c);
            System.assert(acc.Loan_Type__c, testAcc.Loan_Type__c);
            //System.assert(acc.Remaining_Loan_Amount__c, testAcc.Remaining_Loan_Amount__c);
            System.assert(acc.Total_Loan_Amount__c, testAcc.Total_Loan_Amount__c);
        } catch (Exception e) {
            System.assert(false, e.getMessage());
        }
        Test.stopTest();
    }
    

    @isTest
    public static void testAccount_39() {
        Account acc = new Account();
        acc.Name = '';
        acc.Balance__c = 149;
        acc.RecordTypeId = Schema.SObjectType.Account.getRecordTypeInfosByName().get('>=$100').getRecordTypeId();
        acc.Calculated_Interest__c = 7;
        acc.Email__c = 'test39@pairwise.test';
        acc.Loan_Interest_Rate__c = 0.146;
        acc.Loan_Type__c = 'Home Loan';
        //acc.Remaining_Loan_Amount__c = 15000000;
        acc.Total_Loan_Amount__c = 728357;
        acc.Active__c = 'Yes';
        
        Test.startTest();
        try {
            insert acc;
            Account testAcc = [SELECT name, balance__c, calculated_interest__c, email__c, interest_rate__c, loan_interest_rate__c, loan_type__c, remaining_loan_amount__c, total_loan_amount__c, active__c FROM Account WHERE name='' LIMIT 1];
            System.assert(acc.Name, testAcc.Name);
            System.assert(acc.Balance__c, testAcc.Balance__c);
            System.assert(acc.Balance__c * 0.038, testAcc.Calculated_Interest__c);
            System.assert(acc.Email__c, testAcc.Email__c);
            System.assert(acc.Loan_Interest_Rate__c, testAcc.Loan_Interest_Rate__c);
            System.assert(acc.Loan_Type__c, testAcc.Loan_Type__c);
            //System.assert(acc.Remaining_Loan_Amount__c, testAcc.Remaining_Loan_Amount__c);
            System.assert(acc.Total_Loan_Amount__c, testAcc.Total_Loan_Amount__c);
        } catch (Exception e) {
            System.assert(false, e.getMessage());
        }
        Test.stopTest();
    }
    

    @isTest
    public static void testAccount_40() {
        Account acc = new Account();
        acc.Name = 'ToUpdate Account';
        acc.Balance__c = 100;
        acc.RecordTypeId = Schema.SObjectType.Account.getRecordTypeInfosByName().get('Negative').getRecordTypeId();
        acc.Email__c = 'testUpdate@pairwise.test';
        acc.Active__c = 'Yes';
        insert acc;
        
        acc.Name = '';
        acc.Balance__c = 113;
        acc.Calculated_Interest__c = 7;
        acc.Email__c = 'test40@pairwise.test';
        acc.Loan_Interest_Rate__c = 0.146;
        acc.Loan_Type__c = 'Home Loan';
        acc.Remaining_Loan_Amount__c = ;
        acc.Total_Loan_Amount__c = 748674;
        
        Test.startTest();
        try {
            update acc;
            Account testAcc = [SELECT name, balance__c, calculated_interest__c, email__c, interest_rate__c, loan_interest_rate__c, loan_type__c, remaining_loan_amount__c, total_loan_amount__c, active__c FROM Account WHERE name='' LIMIT 1];
            System.assert(acc.Name, testAcc.Name);
            System.assert(acc.Balance__c, testAcc.Balance__c);
            System.assert(acc.Balance__c * 0.05, testAcc.Calculated_Interest__c);
            System.assert(acc.Email__c, testAcc.Email__c);
            System.assert(acc.Loan_Interest_Rate__c, testAcc.Loan_Interest_Rate__c);
            System.assert(acc.Loan_Type__c, testAcc.Loan_Type__c);
            //System.assert(acc.Remaining_Loan_Amount__c, testAcc.Remaining_Loan_Amount__c);
            System.assert(acc.Total_Loan_Amount__c, testAcc.Total_Loan_Amount__c);
        } catch (Exception e) {
            System.assert(false, e.getMessage());
        }
        Test.stopTest();
    }
    

    @isTest
    public static void testAccount_41() {
        Account acc = new Account();
        acc.Name = 'ToUpdate Account';
        acc.Balance__c = 100;
        acc.RecordTypeId = Schema.SObjectType.Account.getRecordTypeInfosByName().get('Blank').getRecordTypeId();
        acc.Email__c = 'testUpdate@pairwise.test';
        acc.Active__c = 'Yes';
        insert acc;
        
        acc.Name = '';
        acc.Balance__c = 118;
        acc.Calculated_Interest__c = null;
        acc.Email__c = 'test41@pairwise.test';
        acc.Loan_Interest_Rate__c = 0.08;
        acc.Loan_Type__c = 'Home Loan';
        acc.Remaining_Loan_Amount__c = 15000000;
        acc.Total_Loan_Amount__c = 6329391;
        
        Test.startTest();
        try {
            update acc;
            Account testAcc = [SELECT name, balance__c, calculated_interest__c, email__c, interest_rate__c, loan_interest_rate__c, loan_type__c, remaining_loan_amount__c, total_loan_amount__c, active__c FROM Account WHERE name='' LIMIT 1];
            System.assert(acc.Name, testAcc.Name);
            System.assert(acc.Balance__c, testAcc.Balance__c);
            System.assert(acc.Balance__c * 0.05, testAcc.Calculated_Interest__c);
            System.assert(acc.Email__c, testAcc.Email__c);
            System.assert(acc.Loan_Interest_Rate__c, testAcc.Loan_Interest_Rate__c);
            System.assert(acc.Loan_Type__c, testAcc.Loan_Type__c);
            //System.assert(acc.Remaining_Loan_Amount__c, testAcc.Remaining_Loan_Amount__c);
            System.assert(acc.Total_Loan_Amount__c, testAcc.Total_Loan_Amount__c);
        } catch (Exception e) {
            System.assert(false, e.getMessage());
        }
        Test.stopTest();
    }
    

    @isTest
    public static void testAccount_42() {
        Account acc = new Account();
        acc.Name = '';
        acc.Balance__c = 114;
        acc.RecordTypeId = Schema.SObjectType.Account.getRecordTypeInfosByName().get('>=$100').getRecordTypeId();
        acc.Calculated_Interest__c = null;
        acc.Email__c = 'test42@pairwise.test';
        acc.Loan_Interest_Rate__c = null;
        acc.Loan_Type__c = 'Car Loan';
        //acc.Remaining_Loan_Amount__c = 15000000;
        acc.Total_Loan_Amount__c = 880365;
        acc.Active__c = 'Yes';
        
        Test.startTest();
        try {
            insert acc;
            Account testAcc = [SELECT name, balance__c, calculated_interest__c, email__c, interest_rate__c, loan_interest_rate__c, loan_type__c, remaining_loan_amount__c, total_loan_amount__c, active__c FROM Account WHERE name='' LIMIT 1];
            System.assert(acc.Name, testAcc.Name);
            System.assert(acc.Balance__c, testAcc.Balance__c);
            System.assert(acc.Balance__c * 0.05, testAcc.Calculated_Interest__c);
            System.assert(acc.Email__c, testAcc.Email__c);
            System.assert(acc.Loan_Interest_Rate__c, testAcc.Loan_Interest_Rate__c);
            System.assert(acc.Loan_Type__c, testAcc.Loan_Type__c);
            //System.assert(acc.Remaining_Loan_Amount__c, testAcc.Remaining_Loan_Amount__c);
            System.assert(acc.Total_Loan_Amount__c, testAcc.Total_Loan_Amount__c);
        } catch (Exception e) {
            System.assert(false, e.getMessage());
        }
        Test.stopTest();
    }
    

    @isTest
    public static void testAccount_43() {
        Account acc = new Account();
        acc.Name = '';
        acc.Balance__c = 108;
        acc.RecordTypeId = Schema.SObjectType.Account.getRecordTypeInfosByName().get('>=$0').getRecordTypeId();
        acc.Calculated_Interest__c = 7;
        acc.Email__c = 'test43@pairwise.test';
        acc.Loan_Interest_Rate__c = 0.11;
        acc.Loan_Type__c = 'Car Loan';
        //acc.Remaining_Loan_Amount__c = 15000000;
        acc.Total_Loan_Amount__c = 988332;
        acc.Active__c = 'Yes';
        
        Test.startTest();
        try {
            insert acc;
            Account testAcc = [SELECT name, balance__c, calculated_interest__c, email__c, interest_rate__c, loan_interest_rate__c, loan_type__c, remaining_loan_amount__c, total_loan_amount__c, active__c FROM Account WHERE name='' LIMIT 1];
            System.assert(acc.Name, testAcc.Name);
            System.assert(acc.Balance__c, testAcc.Balance__c);
            System.assert(acc.Balance__c * 0.06, testAcc.Calculated_Interest__c);
            System.assert(acc.Email__c, testAcc.Email__c);
            System.assert(acc.Loan_Interest_Rate__c, testAcc.Loan_Interest_Rate__c);
            System.assert(acc.Loan_Type__c, testAcc.Loan_Type__c);
            //System.assert(acc.Remaining_Loan_Amount__c, testAcc.Remaining_Loan_Amount__c);
            System.assert(acc.Total_Loan_Amount__c, testAcc.Total_Loan_Amount__c);
        } catch (Exception e) {
            System.assert(false, e.getMessage());
        }
        Test.stopTest();
    }
    

    @isTest
    public static void testAccount_44() {
        Account acc = new Account();
        acc.Name = '';
        acc.Balance__c = 178;
        acc.RecordTypeId = Schema.SObjectType.Account.getRecordTypeInfosByName().get('>=$0').getRecordTypeId();
        acc.Calculated_Interest__c = null;
        acc.Email__c = 'test44@pairwise.test';
        acc.Loan_Interest_Rate__c = 0.14;
        acc.Loan_Type__c = '';
        //acc.Remaining_Loan_Amount__c = 15000000;
        acc.Total_Loan_Amount__c = null;
        acc.Active__c = 'Yes';
        
        Test.startTest();
        try {
            insert acc;
            Account testAcc = [SELECT name, balance__c, calculated_interest__c, email__c, interest_rate__c, loan_interest_rate__c, loan_type__c, remaining_loan_amount__c, total_loan_amount__c, active__c FROM Account WHERE name='' LIMIT 1];
            System.assert(acc.Name, testAcc.Name);
            System.assert(acc.Balance__c, testAcc.Balance__c);
            System.assert(acc.Balance__c * 0.06, testAcc.Calculated_Interest__c);
            System.assert(acc.Email__c, testAcc.Email__c);
            System.assert(acc.Loan_Interest_Rate__c, testAcc.Loan_Interest_Rate__c);
            System.assert(acc.Loan_Type__c, testAcc.Loan_Type__c);
            //System.assert(acc.Remaining_Loan_Amount__c, testAcc.Remaining_Loan_Amount__c);
            System.assert(acc.Total_Loan_Amount__c, testAcc.Total_Loan_Amount__c);
        } catch (Exception e) {
            System.assert(false, e.getMessage());
        }
        Test.stopTest();
    }
    

    @isTest
    public static void testAccount_45() {
        Account acc = new Account();
        acc.Name = 'ToUpdate Account';
        acc.Balance__c = 100;
        acc.RecordTypeId = Schema.SObjectType.Account.getRecordTypeInfosByName().get('Negative').getRecordTypeId();
        acc.Email__c = 'testUpdate@pairwise.test';
        acc.Active__c = 'Yes';
        insert acc;
        
        acc.Name = '';
        acc.Balance__c = 114;
        acc.Calculated_Interest__c = null;
        acc.Email__c = 'test45@pairwise.test';
        acc.Loan_Interest_Rate__c = 0.136;
        acc.Loan_Type__c = 'Home Loan';
        acc.Remaining_Loan_Amount__c = 15000000;
        acc.Total_Loan_Amount__c = null;
        
        Test.startTest();
        try {
            update acc;
            Account testAcc = [SELECT name, balance__c, calculated_interest__c, email__c, interest_rate__c, loan_interest_rate__c, loan_type__c, remaining_loan_amount__c, total_loan_amount__c, active__c FROM Account WHERE name='' LIMIT 1];
            System.assert(acc.Name, testAcc.Name);
            System.assert(acc.Balance__c, testAcc.Balance__c);
            System.assert(acc.Balance__c * 0.038, testAcc.Calculated_Interest__c);
            System.assert(acc.Email__c, testAcc.Email__c);
            System.assert(acc.Loan_Interest_Rate__c, testAcc.Loan_Interest_Rate__c);
            System.assert(acc.Loan_Type__c, testAcc.Loan_Type__c);
            //System.assert(acc.Remaining_Loan_Amount__c, testAcc.Remaining_Loan_Amount__c);
            System.assert(acc.Total_Loan_Amount__c, testAcc.Total_Loan_Amount__c);
        } catch (Exception e) {
            System.assert(false, e.getMessage());
        }
        Test.stopTest();
    }
    

    @isTest
    public static void testAccount_46() {
        Account acc = new Account();
        acc.Name = 'ToUpdate Account';
        acc.Balance__c = 100;
        acc.RecordTypeId = Schema.SObjectType.Account.getRecordTypeInfosByName().get('Negative').getRecordTypeId();
        acc.Email__c = 'testUpdate@pairwise.test';
        acc.Active__c = 'Yes';
        insert acc;
        
        acc.Name = '';
        acc.Balance__c = 132;
        acc.Calculated_Interest__c = 7;
        acc.Email__c = 'test46@pairwise.test';
        acc.Loan_Interest_Rate__c = 0.14;
        acc.Loan_Type__c = 'Home Loan';
        acc.Remaining_Loan_Amount__c = ;
        acc.Total_Loan_Amount__c = 722662;
        
        Test.startTest();
        try {
            update acc;
            Account testAcc = [SELECT name, balance__c, calculated_interest__c, email__c, interest_rate__c, loan_interest_rate__c, loan_type__c, remaining_loan_amount__c, total_loan_amount__c, active__c FROM Account WHERE name='' LIMIT 1];
            System.assert(acc.Name, testAcc.Name);
            System.assert(acc.Balance__c, testAcc.Balance__c);
            System.assert(acc.Balance__c * 0.05, testAcc.Calculated_Interest__c);
            System.assert(acc.Email__c, testAcc.Email__c);
            System.assert(acc.Loan_Interest_Rate__c, testAcc.Loan_Interest_Rate__c);
            System.assert(acc.Loan_Type__c, testAcc.Loan_Type__c);
            //System.assert(acc.Remaining_Loan_Amount__c, testAcc.Remaining_Loan_Amount__c);
            System.assert(acc.Total_Loan_Amount__c, testAcc.Total_Loan_Amount__c);
        } catch (Exception e) {
            System.assert(false, e.getMessage());
        }
        Test.stopTest();
    }
    

    @isTest
    public static void testAccount_47() {
        Account acc = new Account();
        acc.Name = 'ToUpdate Account';
        acc.Balance__c = 100;
        acc.RecordTypeId = Schema.SObjectType.Account.getRecordTypeInfosByName().get('Negative').getRecordTypeId();
        acc.Email__c = 'testUpdate@pairwise.test';
        acc.Active__c = 'Yes';
        insert acc;
        
        acc.Name = '';
        acc.Balance__c = 164;
        acc.Calculated_Interest__c = 7;
        acc.Email__c = 'test47@pairwise.test';
        acc.Loan_Interest_Rate__c = 107;
        acc.Loan_Type__c = '';
        acc.Remaining_Loan_Amount__c = 15000000;
        acc.Total_Loan_Amount__c = null;
        
        Test.startTest();
        try {
            update acc;
            Account testAcc = [SELECT name, balance__c, calculated_interest__c, email__c, interest_rate__c, loan_interest_rate__c, loan_type__c, remaining_loan_amount__c, total_loan_amount__c, active__c FROM Account WHERE name='' LIMIT 1];
            System.assert(acc.Name, testAcc.Name);
            System.assert(acc.Balance__c, testAcc.Balance__c);
            System.assert(acc.Balance__c * 0.05, testAcc.Calculated_Interest__c);
            System.assert(acc.Email__c, testAcc.Email__c);
            System.assert(acc.Loan_Interest_Rate__c, testAcc.Loan_Interest_Rate__c);
            System.assert(acc.Loan_Type__c, testAcc.Loan_Type__c);
            //System.assert(acc.Remaining_Loan_Amount__c, testAcc.Remaining_Loan_Amount__c);
            System.assert(acc.Total_Loan_Amount__c, testAcc.Total_Loan_Amount__c);
        } catch (Exception e) {
            System.assert(false, e.getMessage());
        }
        Test.stopTest();
    }
    

    @isTest
    public static void testAccount_48() {
        Account acc = new Account();
        acc.Name = 'ToUpdate Account';
        acc.Balance__c = 100;
        acc.RecordTypeId = Schema.SObjectType.Account.getRecordTypeInfosByName().get('Blank').getRecordTypeId();
        acc.Email__c = 'testUpdate@pairwise.test';
        acc.Active__c = 'Yes';
        insert acc;
        
        acc.Name = '';
        acc.Balance__c = 169;
        acc.Calculated_Interest__c = null;
        acc.Email__c = 'test48@pairwise.test';
        acc.Loan_Interest_Rate__c = 0.09;
        acc.Loan_Type__c = 'Car Loan';
        acc.Remaining_Loan_Amount__c = ;
        acc.Total_Loan_Amount__c = null;
        
        Test.startTest();
        try {
            update acc;
            Account testAcc = [SELECT name, balance__c, calculated_interest__c, email__c, interest_rate__c, loan_interest_rate__c, loan_type__c, remaining_loan_amount__c, total_loan_amount__c, active__c FROM Account WHERE name='' LIMIT 1];
            System.assert(acc.Name, testAcc.Name);
            System.assert(acc.Balance__c, testAcc.Balance__c);
            System.assert(acc.Balance__c * 0.05, testAcc.Calculated_Interest__c);
            System.assert(acc.Email__c, testAcc.Email__c);
            System.assert(acc.Loan_Interest_Rate__c, testAcc.Loan_Interest_Rate__c);
            System.assert(acc.Loan_Type__c, testAcc.Loan_Type__c);
            //System.assert(acc.Remaining_Loan_Amount__c, testAcc.Remaining_Loan_Amount__c);
            System.assert(acc.Total_Loan_Amount__c, testAcc.Total_Loan_Amount__c);
        } catch (Exception e) {
            System.assert(false, e.getMessage());
        }
        Test.stopTest();
    }
    

    @isTest
    public static void testAccount_49() {
        Account acc = new Account();
        acc.Name = 'ToUpdate Account';
        acc.Balance__c = 100;
        acc.RecordTypeId = Schema.SObjectType.Account.getRecordTypeInfosByName().get('Blank').getRecordTypeId();
        acc.Email__c = 'testUpdate@pairwise.test';
        acc.Active__c = 'Yes';
        insert acc;
        
        acc.Name = '';
        acc.Balance__c = 114;
        acc.Calculated_Interest__c = 7;
        acc.Email__c = 'test49@pairwise.test';
        acc.Loan_Interest_Rate__c = 0.136;
        acc.Loan_Type__c = '';
        acc.Remaining_Loan_Amount__c = ;
        acc.Total_Loan_Amount__c = null;
        
        Test.startTest();
        try {
            update acc;
            Account testAcc = [SELECT name, balance__c, calculated_interest__c, email__c, interest_rate__c, loan_interest_rate__c, loan_type__c, remaining_loan_amount__c, total_loan_amount__c, active__c FROM Account WHERE name='' LIMIT 1];
            System.assert(acc.Name, testAcc.Name);
            System.assert(acc.Balance__c, testAcc.Balance__c);
            System.assert(acc.Balance__c * 0.05, testAcc.Calculated_Interest__c);
            System.assert(acc.Email__c, testAcc.Email__c);
            System.assert(acc.Loan_Interest_Rate__c, testAcc.Loan_Interest_Rate__c);
            System.assert(acc.Loan_Type__c, testAcc.Loan_Type__c);
            //System.assert(acc.Remaining_Loan_Amount__c, testAcc.Remaining_Loan_Amount__c);
            System.assert(acc.Total_Loan_Amount__c, testAcc.Total_Loan_Amount__c);
        } catch (Exception e) {
            System.assert(false, e.getMessage());
        }
        Test.stopTest();
    }
    

    @isTest
    public static void testAccount_50() {
        Account acc = new Account();
        acc.Name = 'ToUpdate Account';
        acc.Balance__c = 100;
        acc.RecordTypeId = Schema.SObjectType.Account.getRecordTypeInfosByName().get('Negative').getRecordTypeId();
        acc.Email__c = 'testUpdate@pairwise.test';
        acc.Active__c = 'Yes';
        insert acc;
        
        acc.Name = '';
        acc.Balance__c = 108;
        acc.Calculated_Interest__c = 7;
        acc.Email__c = 'test50@pairwise.test';
        acc.Loan_Interest_Rate__c = 107;
        acc.Loan_Type__c = 'Home Loan';
        acc.Remaining_Loan_Amount__c = 15000000;
        acc.Total_Loan_Amount__c = 132526;
        
        Test.startTest();
        try {
            update acc;
            Account testAcc = [SELECT name, balance__c, calculated_interest__c, email__c, interest_rate__c, loan_interest_rate__c, loan_type__c, remaining_loan_amount__c, total_loan_amount__c, active__c FROM Account WHERE name='' LIMIT 1];
            System.assert(acc.Name, testAcc.Name);
            System.assert(acc.Balance__c, testAcc.Balance__c);
            System.assert(acc.Balance__c * 0.038, testAcc.Calculated_Interest__c);
            System.assert(acc.Email__c, testAcc.Email__c);
            System.assert(acc.Loan_Interest_Rate__c, testAcc.Loan_Interest_Rate__c);
            System.assert(acc.Loan_Type__c, testAcc.Loan_Type__c);
            //System.assert(acc.Remaining_Loan_Amount__c, testAcc.Remaining_Loan_Amount__c);
            System.assert(acc.Total_Loan_Amount__c, testAcc.Total_Loan_Amount__c);
        } catch (Exception e) {
            System.assert(false, e.getMessage());
        }
        Test.stopTest();
    }
    

    @isTest
    public static void testAccount_51() {
        Account acc = new Account();
        acc.Name = '';
        acc.Balance__c = 177;
        acc.RecordTypeId = Schema.SObjectType.Account.getRecordTypeInfosByName().get('>=$100').getRecordTypeId();
        acc.Calculated_Interest__c = null;
        acc.Email__c = 'test51@pairwise.test';
        acc.Loan_Interest_Rate__c = 0.11800000000000001;
        acc.Loan_Type__c = 'Home Loan';
        //acc.Remaining_Loan_Amount__c = 15000000;
        acc.Total_Loan_Amount__c = 31759;
        acc.Active__c = 'Yes';
        
        Test.startTest();
        try {
            insert acc;
            Account testAcc = [SELECT name, balance__c, calculated_interest__c, email__c, interest_rate__c, loan_interest_rate__c, loan_type__c, remaining_loan_amount__c, total_loan_amount__c, active__c FROM Account WHERE name='' LIMIT 1];
            System.assert(acc.Name, testAcc.Name);
            System.assert(acc.Balance__c, testAcc.Balance__c);
            System.assert(acc.Balance__c * 0.038, testAcc.Calculated_Interest__c);
            System.assert(acc.Email__c, testAcc.Email__c);
            System.assert(acc.Loan_Interest_Rate__c, testAcc.Loan_Interest_Rate__c);
            System.assert(acc.Loan_Type__c, testAcc.Loan_Type__c);
            //System.assert(acc.Remaining_Loan_Amount__c, testAcc.Remaining_Loan_Amount__c);
            System.assert(acc.Total_Loan_Amount__c, testAcc.Total_Loan_Amount__c);
        } catch (Exception e) {
            System.assert(false, e.getMessage());
        }
        Test.stopTest();
    }
    

    @isTest
    public static void testAccount_52() {
        Account acc = new Account();
        acc.Name = '';
        acc.Balance__c = 166;
        acc.RecordTypeId = Schema.SObjectType.Account.getRecordTypeInfosByName().get('>=$100').getRecordTypeId();
        acc.Calculated_Interest__c = null;
        acc.Email__c = 'test52@pairwise.test';
        acc.Loan_Interest_Rate__c = 0.1;
        acc.Loan_Type__c = 'Home Loan';
        //acc.Remaining_Loan_Amount__c = ;
        acc.Total_Loan_Amount__c = 921707;
        acc.Active__c = 'Yes';
        
        Test.startTest();
        try {
            insert acc;
            Account testAcc = [SELECT name, balance__c, calculated_interest__c, email__c, interest_rate__c, loan_interest_rate__c, loan_type__c, remaining_loan_amount__c, total_loan_amount__c, active__c FROM Account WHERE name='' LIMIT 1];
            System.assert(acc.Name, testAcc.Name);
            System.assert(acc.Balance__c, testAcc.Balance__c);
            System.assert(acc.Balance__c * 0.038, testAcc.Calculated_Interest__c);
            System.assert(acc.Email__c, testAcc.Email__c);
            System.assert(acc.Loan_Interest_Rate__c, testAcc.Loan_Interest_Rate__c);
            System.assert(acc.Loan_Type__c, testAcc.Loan_Type__c);
            //System.assert(acc.Remaining_Loan_Amount__c, testAcc.Remaining_Loan_Amount__c);
            System.assert(acc.Total_Loan_Amount__c, testAcc.Total_Loan_Amount__c);
        } catch (Exception e) {
            System.assert(false, e.getMessage());
        }
        Test.stopTest();
    }
    

    @isTest
    public static void testAccount_53() {
        Account acc = new Account();
        acc.Name = 'ToUpdate Account';
        acc.Balance__c = 100;
        acc.RecordTypeId = Schema.SObjectType.Account.getRecordTypeInfosByName().get('Negative').getRecordTypeId();
        acc.Email__c = 'testUpdate@pairwise.test';
        acc.Active__c = 'Yes';
        insert acc;
        
        acc.Name = '';
        acc.Balance__c = 177;
        acc.Calculated_Interest__c = null;
        acc.Email__c = 'test53@pairwise.test';
        acc.Loan_Interest_Rate__c = 0.159;
        acc.Loan_Type__c = '';
        acc.Remaining_Loan_Amount__c = 15000000;
        acc.Total_Loan_Amount__c = null;
        
        Test.startTest();
        try {
            update acc;
            Account testAcc = [SELECT name, balance__c, calculated_interest__c, email__c, interest_rate__c, loan_interest_rate__c, loan_type__c, remaining_loan_amount__c, total_loan_amount__c, active__c FROM Account WHERE name='' LIMIT 1];
            System.assert(acc.Name, testAcc.Name);
            System.assert(acc.Balance__c, testAcc.Balance__c);
            System.assert(acc.Balance__c * 0.06, testAcc.Calculated_Interest__c);
            System.assert(acc.Email__c, testAcc.Email__c);
            System.assert(acc.Loan_Interest_Rate__c, testAcc.Loan_Interest_Rate__c);
            System.assert(acc.Loan_Type__c, testAcc.Loan_Type__c);
            //System.assert(acc.Remaining_Loan_Amount__c, testAcc.Remaining_Loan_Amount__c);
            System.assert(acc.Total_Loan_Amount__c, testAcc.Total_Loan_Amount__c);
        } catch (Exception e) {
            System.assert(false, e.getMessage());
        }
        Test.stopTest();
    }
    

    @isTest
    public static void testAccount_54() {
        Account acc = new Account();
        acc.Name = '';
        acc.Balance__c = 179;
        acc.RecordTypeId = Schema.SObjectType.Account.getRecordTypeInfosByName().get('>=$0').getRecordTypeId();
        acc.Calculated_Interest__c = 7;
        acc.Email__c = 'test54@pairwise.test';
        acc.Loan_Interest_Rate__c = 0.136;
        acc.Loan_Type__c = 'Home Loan';
        //acc.Remaining_Loan_Amount__c = 15000000;
        acc.Total_Loan_Amount__c = 6711;
        acc.Active__c = 'Yes';
        
        Test.startTest();
        try {
            insert acc;
            Account testAcc = [SELECT name, balance__c, calculated_interest__c, email__c, interest_rate__c, loan_interest_rate__c, loan_type__c, remaining_loan_amount__c, total_loan_amount__c, active__c FROM Account WHERE name='' LIMIT 1];
            System.assert(acc.Name, testAcc.Name);
            System.assert(acc.Balance__c, testAcc.Balance__c);
            System.assert(acc.Balance__c * 0.06, testAcc.Calculated_Interest__c);
            System.assert(acc.Email__c, testAcc.Email__c);
            System.assert(acc.Loan_Interest_Rate__c, testAcc.Loan_Interest_Rate__c);
            System.assert(acc.Loan_Type__c, testAcc.Loan_Type__c);
            //System.assert(acc.Remaining_Loan_Amount__c, testAcc.Remaining_Loan_Amount__c);
            System.assert(acc.Total_Loan_Amount__c, testAcc.Total_Loan_Amount__c);
        } catch (Exception e) {
            System.assert(false, e.getMessage());
        }
        Test.stopTest();
    }
    

    @isTest
    public static void testAccount_55() {
        Account acc = new Account();
        acc.Name = 'ToUpdate Account';
        acc.Balance__c = 100;
        acc.RecordTypeId = Schema.SObjectType.Account.getRecordTypeInfosByName().get('Blank').getRecordTypeId();
        acc.Email__c = 'testUpdate@pairwise.test';
        acc.Active__c = 'Yes';
        insert acc;
        
        acc.Name = '';
        acc.Balance__c = 176;
        acc.Calculated_Interest__c = 7;
        acc.Email__c = '';
        acc.Loan_Interest_Rate__c = 0.11;
        acc.Loan_Type__c = 'Home Loan';
        acc.Remaining_Loan_Amount__c = 15000000;
        acc.Total_Loan_Amount__c = 425238;
        
        Test.startTest();
        try {
            update acc;
            Account testAcc = [SELECT name, balance__c, calculated_interest__c, email__c, interest_rate__c, loan_interest_rate__c, loan_type__c, remaining_loan_amount__c, total_loan_amount__c, active__c FROM Account WHERE name='' LIMIT 1];
            System.assert(acc.Name, testAcc.Name);
            System.assert(acc.Balance__c, testAcc.Balance__c);
            System.assert(acc.Balance__c * 0.06, testAcc.Calculated_Interest__c);
            System.assert(acc.Email__c, testAcc.Email__c);
            System.assert(acc.Loan_Interest_Rate__c, testAcc.Loan_Interest_Rate__c);
            System.assert(acc.Loan_Type__c, testAcc.Loan_Type__c);
            //System.assert(acc.Remaining_Loan_Amount__c, testAcc.Remaining_Loan_Amount__c);
            System.assert(acc.Total_Loan_Amount__c, testAcc.Total_Loan_Amount__c);
        } catch (Exception e) {
            System.assert(false, e.getMessage());
        }
        Test.stopTest();
    }
    

    @isTest
    public static void testAccount_56() {
        Account acc = new Account();
        acc.Name = '';
        acc.Balance__c = 162;
        acc.RecordTypeId = Schema.SObjectType.Account.getRecordTypeInfosByName().get('>=$100').getRecordTypeId();
        acc.Calculated_Interest__c = null;
        acc.Email__c = '';
        acc.Loan_Interest_Rate__c = null;
        acc.Loan_Type__c = 'Home Loan';
        //acc.Remaining_Loan_Amount__c = 15000000;
        acc.Total_Loan_Amount__c = null;
        acc.Active__c = 'Yes';
        
        Test.startTest();
        try {
            insert acc;
            Account testAcc = [SELECT name, balance__c, calculated_interest__c, email__c, interest_rate__c, loan_interest_rate__c, loan_type__c, remaining_loan_amount__c, total_loan_amount__c, active__c FROM Account WHERE name='' LIMIT 1];
            System.assert(acc.Name, testAcc.Name);
            System.assert(acc.Balance__c, testAcc.Balance__c);
            System.assert(acc.Balance__c * 0.05, testAcc.Calculated_Interest__c);
            System.assert(acc.Email__c, testAcc.Email__c);
            System.assert(acc.Loan_Interest_Rate__c, testAcc.Loan_Interest_Rate__c);
            System.assert(acc.Loan_Type__c, testAcc.Loan_Type__c);
            //System.assert(acc.Remaining_Loan_Amount__c, testAcc.Remaining_Loan_Amount__c);
            System.assert(acc.Total_Loan_Amount__c, testAcc.Total_Loan_Amount__c);
        } catch (Exception e) {
            System.assert(false, e.getMessage());
        }
        Test.stopTest();
    }
    

    @isTest
    public static void testAccount_57() {
        Account acc = new Account();
        acc.Name = '';
        acc.Balance__c = 123;
        acc.RecordTypeId = Schema.SObjectType.Account.getRecordTypeInfosByName().get('>=$100').getRecordTypeId();
        acc.Calculated_Interest__c = 7;
        acc.Email__c = '';
        acc.Loan_Interest_Rate__c = 0.14;
        acc.Loan_Type__c = 'Home Loan';
        //acc.Remaining_Loan_Amount__c = 15000000;
        acc.Total_Loan_Amount__c = 8973484;
        acc.Active__c = 'Yes';
        
        Test.startTest();
        try {
            insert acc;
            Account testAcc = [SELECT name, balance__c, calculated_interest__c, email__c, interest_rate__c, loan_interest_rate__c, loan_type__c, remaining_loan_amount__c, total_loan_amount__c, active__c FROM Account WHERE name='' LIMIT 1];
            System.assert(acc.Name, testAcc.Name);
            System.assert(acc.Balance__c, testAcc.Balance__c);
            System.assert(acc.Balance__c * 0.05, testAcc.Calculated_Interest__c);
            System.assert(acc.Email__c, testAcc.Email__c);
            System.assert(acc.Loan_Interest_Rate__c, testAcc.Loan_Interest_Rate__c);
            System.assert(acc.Loan_Type__c, testAcc.Loan_Type__c);
            //System.assert(acc.Remaining_Loan_Amount__c, testAcc.Remaining_Loan_Amount__c);
            System.assert(acc.Total_Loan_Amount__c, testAcc.Total_Loan_Amount__c);
        } catch (Exception e) {
            System.assert(false, e.getMessage());
        }
        Test.stopTest();
    }
    

    @isTest
    public static void testAccount_58() {
        Account acc = new Account();
        acc.Name = 'ToUpdate Account';
        acc.Balance__c = 100;
        acc.RecordTypeId = Schema.SObjectType.Account.getRecordTypeInfosByName().get('>=$0').getRecordTypeId();
        acc.Email__c = 'testUpdate@pairwise.test';
        acc.Active__c = 'Yes';
        insert acc;
        
        acc.Name = '';
        acc.Balance__c = 106;
        acc.Calculated_Interest__c = 7;
        acc.Email__c = '';
        acc.Loan_Interest_Rate__c = 0.14;
        acc.Loan_Type__c = 'Car Loan';
        acc.Remaining_Loan_Amount__c = 15000000;
        acc.Total_Loan_Amount__c = 78224;
        
        Test.startTest();
        try {
            update acc;
            Account testAcc = [SELECT name, balance__c, calculated_interest__c, email__c, interest_rate__c, loan_interest_rate__c, loan_type__c, remaining_loan_amount__c, total_loan_amount__c, active__c FROM Account WHERE name='' LIMIT 1];
            System.assert(acc.Name, testAcc.Name);
            System.assert(acc.Balance__c, testAcc.Balance__c);
            System.assert(acc.Balance__c * 0.038, testAcc.Calculated_Interest__c);
            System.assert(acc.Email__c, testAcc.Email__c);
            System.assert(acc.Loan_Interest_Rate__c, testAcc.Loan_Interest_Rate__c);
            System.assert(acc.Loan_Type__c, testAcc.Loan_Type__c);
            //System.assert(acc.Remaining_Loan_Amount__c, testAcc.Remaining_Loan_Amount__c);
            System.assert(acc.Total_Loan_Amount__c, testAcc.Total_Loan_Amount__c);
        } catch (Exception e) {
            System.assert(false, e.getMessage());
        }
        Test.stopTest();
    }
    

    @isTest
    public static void testAccount_59() {
        Account acc = new Account();
        acc.Name = 'ToUpdate Account';
        acc.Balance__c = 100;
        acc.RecordTypeId = Schema.SObjectType.Account.getRecordTypeInfosByName().get('Blank').getRecordTypeId();
        acc.Email__c = 'testUpdate@pairwise.test';
        acc.Active__c = 'Yes';
        insert acc;
        
        acc.Name = '';
        acc.Balance__c = 103;
        acc.Calculated_Interest__c = 7;
        acc.Email__c = '';
        acc.Loan_Interest_Rate__c = 0.09;
        acc.Loan_Type__c = 'Home Loan';
        acc.Remaining_Loan_Amount__c = 15000000;
        acc.Total_Loan_Amount__c = 82680;
        
        Test.startTest();
        try {
            update acc;
            Account testAcc = [SELECT name, balance__c, calculated_interest__c, email__c, interest_rate__c, loan_interest_rate__c, loan_type__c, remaining_loan_amount__c, total_loan_amount__c, active__c FROM Account WHERE name='' LIMIT 1];
            System.assert(acc.Name, testAcc.Name);
            System.assert(acc.Balance__c, testAcc.Balance__c);
            System.assert(acc.Balance__c * 0.05, testAcc.Calculated_Interest__c);
            System.assert(acc.Email__c, testAcc.Email__c);
            System.assert(acc.Loan_Interest_Rate__c, testAcc.Loan_Interest_Rate__c);
            System.assert(acc.Loan_Type__c, testAcc.Loan_Type__c);
            //System.assert(acc.Remaining_Loan_Amount__c, testAcc.Remaining_Loan_Amount__c);
            System.assert(acc.Total_Loan_Amount__c, testAcc.Total_Loan_Amount__c);
        } catch (Exception e) {
            System.assert(false, e.getMessage());
        }
        Test.stopTest();
    }
    

    @isTest
    public static void testAccount_60() {
        Account acc = new Account();
        acc.Name = '';
        acc.Balance__c = 140;
        acc.RecordTypeId = Schema.SObjectType.Account.getRecordTypeInfosByName().get('>=$0').getRecordTypeId();
        acc.Calculated_Interest__c = null;
        acc.Email__c = 'test60@pairwise.test';
        acc.Loan_Interest_Rate__c = 0.07;
        acc.Loan_Type__c = '';
        //acc.Remaining_Loan_Amount__c = 15000000;
        acc.Total_Loan_Amount__c = null;
        acc.Active__c = 'Yes';
        
        Test.startTest();
        try {
            insert acc;
            Account testAcc = [SELECT name, balance__c, calculated_interest__c, email__c, interest_rate__c, loan_interest_rate__c, loan_type__c, remaining_loan_amount__c, total_loan_amount__c, active__c FROM Account WHERE name='' LIMIT 1];
            System.assert(acc.Name, testAcc.Name);
            System.assert(acc.Balance__c, testAcc.Balance__c);
            System.assert(acc.Balance__c * 0.06, testAcc.Calculated_Interest__c);
            System.assert(acc.Email__c, testAcc.Email__c);
            System.assert(acc.Loan_Interest_Rate__c, testAcc.Loan_Interest_Rate__c);
            System.assert(acc.Loan_Type__c, testAcc.Loan_Type__c);
            //System.assert(acc.Remaining_Loan_Amount__c, testAcc.Remaining_Loan_Amount__c);
            System.assert(acc.Total_Loan_Amount__c, testAcc.Total_Loan_Amount__c);
        } catch (Exception e) {
            System.assert(false, e.getMessage());
        }
        Test.stopTest();
    }
    

    @isTest
    public static void testAccount_61() {
        Account acc = new Account();
        acc.Name = 'ToUpdate Account';
        acc.Balance__c = 100;
        acc.RecordTypeId = Schema.SObjectType.Account.getRecordTypeInfosByName().get('Blank').getRecordTypeId();
        acc.Email__c = 'testUpdate@pairwise.test';
        acc.Active__c = 'Yes';
        insert acc;
        
        acc.Name = '';
        acc.Balance__c = 194;
        acc.Calculated_Interest__c = 7;
        acc.Email__c = '';
        acc.Loan_Interest_Rate__c = 0.109;
        acc.Loan_Type__c = 'Car Loan';
        acc.Remaining_Loan_Amount__c = 15000000;
        acc.Total_Loan_Amount__c = 628346;
        
        Test.startTest();
        try {
            update acc;
            Account testAcc = [SELECT name, balance__c, calculated_interest__c, email__c, interest_rate__c, loan_interest_rate__c, loan_type__c, remaining_loan_amount__c, total_loan_amount__c, active__c FROM Account WHERE name='' LIMIT 1];
            System.assert(acc.Name, testAcc.Name);
            System.assert(acc.Balance__c, testAcc.Balance__c);
            System.assert(acc.Balance__c * 0.038, testAcc.Calculated_Interest__c);
            System.assert(acc.Email__c, testAcc.Email__c);
            System.assert(acc.Loan_Interest_Rate__c, testAcc.Loan_Interest_Rate__c);
            System.assert(acc.Loan_Type__c, testAcc.Loan_Type__c);
            //System.assert(acc.Remaining_Loan_Amount__c, testAcc.Remaining_Loan_Amount__c);
            System.assert(acc.Total_Loan_Amount__c, testAcc.Total_Loan_Amount__c);
        } catch (Exception e) {
            System.assert(false, e.getMessage());
        }
        Test.stopTest();
    }
    

    @isTest
    public static void testAccount_62() {
        Account acc = new Account();
        acc.Name = '';
        acc.Balance__c = 144;
        acc.RecordTypeId = Schema.SObjectType.Account.getRecordTypeInfosByName().get('>=$100').getRecordTypeId();
        acc.Calculated_Interest__c = null;
        acc.Email__c = '';
        acc.Loan_Interest_Rate__c = 0.10300000000000001;
        acc.Loan_Type__c = 'Home Loan';
        //acc.Remaining_Loan_Amount__c = 15000000;
        acc.Total_Loan_Amount__c = 818837;
        acc.Active__c = 'Yes';
        
        Test.startTest();
        try {
            insert acc;
            Account testAcc = [SELECT name, balance__c, calculated_interest__c, email__c, interest_rate__c, loan_interest_rate__c, loan_type__c, remaining_loan_amount__c, total_loan_amount__c, active__c FROM Account WHERE name='' LIMIT 1];
            System.assert(acc.Name, testAcc.Name);
            System.assert(acc.Balance__c, testAcc.Balance__c);
            System.assert(acc.Balance__c * 0.05, testAcc.Calculated_Interest__c);
            System.assert(acc.Email__c, testAcc.Email__c);
            System.assert(acc.Loan_Interest_Rate__c, testAcc.Loan_Interest_Rate__c);
            System.assert(acc.Loan_Type__c, testAcc.Loan_Type__c);
            //System.assert(acc.Remaining_Loan_Amount__c, testAcc.Remaining_Loan_Amount__c);
            System.assert(acc.Total_Loan_Amount__c, testAcc.Total_Loan_Amount__c);
        } catch (Exception e) {
            System.assert(false, e.getMessage());
        }
        Test.stopTest();
    }
    

    @isTest
    public static void testAccount_63() {
        Account acc = new Account();
        acc.Name = 'ToUpdate Account';
        acc.Balance__c = 100;
        acc.RecordTypeId = Schema.SObjectType.Account.getRecordTypeInfosByName().get('Blank').getRecordTypeId();
        acc.Email__c = 'testUpdate@pairwise.test';
        acc.Active__c = 'Yes';
        insert acc;
        
        acc.Name = '';
        acc.Balance__c = 165;
        acc.Calculated_Interest__c = 7;
        acc.Email__c = '';
        acc.Loan_Interest_Rate__c = 107;
        acc.Loan_Type__c = 'Home Loan';
        acc.Remaining_Loan_Amount__c = 15000000;
        acc.Total_Loan_Amount__c = 33375;
        
        Test.startTest();
        try {
            update acc;
            Account testAcc = [SELECT name, balance__c, calculated_interest__c, email__c, interest_rate__c, loan_interest_rate__c, loan_type__c, remaining_loan_amount__c, total_loan_amount__c, active__c FROM Account WHERE name='' LIMIT 1];
            System.assert(acc.Name, testAcc.Name);
            System.assert(acc.Balance__c, testAcc.Balance__c);
            System.assert(acc.Balance__c * 0.038, testAcc.Calculated_Interest__c);
            System.assert(acc.Email__c, testAcc.Email__c);
            System.assert(acc.Loan_Interest_Rate__c, testAcc.Loan_Interest_Rate__c);
            System.assert(acc.Loan_Type__c, testAcc.Loan_Type__c);
            //System.assert(acc.Remaining_Loan_Amount__c, testAcc.Remaining_Loan_Amount__c);
            System.assert(acc.Total_Loan_Amount__c, testAcc.Total_Loan_Amount__c);
        } catch (Exception e) {
            System.assert(false, e.getMessage());
        }
        Test.stopTest();
    }
    

    @isTest
    public static void testAccount_64() {
        Account acc = new Account();
        acc.Name = '';
        acc.Balance__c = 178;
        acc.RecordTypeId = Schema.SObjectType.Account.getRecordTypeInfosByName().get('>=$100').getRecordTypeId();
        acc.Calculated_Interest__c = null;
        acc.Email__c = 'test64@pairwise.test';
        acc.Loan_Interest_Rate__c = 0.125;
        acc.Loan_Type__c = 'Home Loan';
        //acc.Remaining_Loan_Amount__c = 15000000;
        acc.Total_Loan_Amount__c = 106216;
        acc.Active__c = 'Yes';
        
        Test.startTest();
        try {
            insert acc;
            Account testAcc = [SELECT name, balance__c, calculated_interest__c, email__c, interest_rate__c, loan_interest_rate__c, loan_type__c, remaining_loan_amount__c, total_loan_amount__c, active__c FROM Account WHERE name='' LIMIT 1];
            System.assert(acc.Name, testAcc.Name);
            System.assert(acc.Balance__c, testAcc.Balance__c);
            System.assert(acc.Balance__c * 0.038, testAcc.Calculated_Interest__c);
            System.assert(acc.Email__c, testAcc.Email__c);
            System.assert(acc.Loan_Interest_Rate__c, testAcc.Loan_Interest_Rate__c);
            System.assert(acc.Loan_Type__c, testAcc.Loan_Type__c);
            //System.assert(acc.Remaining_Loan_Amount__c, testAcc.Remaining_Loan_Amount__c);
            System.assert(acc.Total_Loan_Amount__c, testAcc.Total_Loan_Amount__c);
        } catch (Exception e) {
            System.assert(false, e.getMessage());
        }
        Test.stopTest();
    }
    

    @isTest
    public static void testAccount_65() {
        Account acc = new Account();
        acc.Name = 'ToUpdate Account';
        acc.Balance__c = 100;
        acc.RecordTypeId = Schema.SObjectType.Account.getRecordTypeInfosByName().get('Blank').getRecordTypeId();
        acc.Email__c = 'testUpdate@pairwise.test';
        acc.Active__c = 'Yes';
        insert acc;
        
        acc.Name = '';
        acc.Balance__c = 194;
        acc.Calculated_Interest__c = null;
        acc.Email__c = '';
        acc.Loan_Interest_Rate__c = 0.162;
        acc.Loan_Type__c = '';
        acc.Remaining_Loan_Amount__c = ;
        acc.Total_Loan_Amount__c = null;
        
        Test.startTest();
        try {
            update acc;
            Account testAcc = [SELECT name, balance__c, calculated_interest__c, email__c, interest_rate__c, loan_interest_rate__c, loan_type__c, remaining_loan_amount__c, total_loan_amount__c, active__c FROM Account WHERE name='' LIMIT 1];
            System.assert(acc.Name, testAcc.Name);
            System.assert(acc.Balance__c, testAcc.Balance__c);
            System.assert(acc.Balance__c * 0.05, testAcc.Calculated_Interest__c);
            System.assert(acc.Email__c, testAcc.Email__c);
            System.assert(acc.Loan_Interest_Rate__c, testAcc.Loan_Interest_Rate__c);
            System.assert(acc.Loan_Type__c, testAcc.Loan_Type__c);
            //System.assert(acc.Remaining_Loan_Amount__c, testAcc.Remaining_Loan_Amount__c);
            System.assert(acc.Total_Loan_Amount__c, testAcc.Total_Loan_Amount__c);
        } catch (Exception e) {
            System.assert(false, e.getMessage());
        }
        Test.stopTest();
    }
    

    @isTest
    public static void testAccount_66() {
        Account acc = new Account();
        acc.Name = '';
        acc.Balance__c = 152;
        acc.RecordTypeId = Schema.SObjectType.Account.getRecordTypeInfosByName().get('>=$0').getRecordTypeId();
        acc.Calculated_Interest__c = null;
        acc.Email__c = 'test66@pairwise.test';
        acc.Loan_Interest_Rate__c = 0.1;
        acc.Loan_Type__c = 'Car Loan';
        //acc.Remaining_Loan_Amount__c = ;
        acc.Total_Loan_Amount__c = 3890079;
        acc.Active__c = 'Yes';
        
        Test.startTest();
        try {
            insert acc;
            Account testAcc = [SELECT name, balance__c, calculated_interest__c, email__c, interest_rate__c, loan_interest_rate__c, loan_type__c, remaining_loan_amount__c, total_loan_amount__c, active__c FROM Account WHERE name='' LIMIT 1];
            System.assert(acc.Name, testAcc.Name);
            System.assert(acc.Balance__c, testAcc.Balance__c);
            System.assert(acc.Balance__c * 0.06, testAcc.Calculated_Interest__c);
            System.assert(acc.Email__c, testAcc.Email__c);
            System.assert(acc.Loan_Interest_Rate__c, testAcc.Loan_Interest_Rate__c);
            System.assert(acc.Loan_Type__c, testAcc.Loan_Type__c);
            //System.assert(acc.Remaining_Loan_Amount__c, testAcc.Remaining_Loan_Amount__c);
            System.assert(acc.Total_Loan_Amount__c, testAcc.Total_Loan_Amount__c);
        } catch (Exception e) {
            System.assert(false, e.getMessage());
        }
        Test.stopTest();
    }
    

    @isTest
    public static void testAccount_67() {
        Account acc = new Account();
        acc.Name = '';
        acc.Balance__c = 124;
        acc.RecordTypeId = Schema.SObjectType.Account.getRecordTypeInfosByName().get('>=$100').getRecordTypeId();
        acc.Calculated_Interest__c = 7;
        acc.Email__c = 'test67@pairwise.test';
        acc.Loan_Interest_Rate__c = 0.09;
        acc.Loan_Type__c = 'Home Loan';
        //acc.Remaining_Loan_Amount__c = 15000000;
        acc.Total_Loan_Amount__c = 471478;
        acc.Active__c = 'Yes';
        
        Test.startTest();
        try {
            insert acc;
            Account testAcc = [SELECT name, balance__c, calculated_interest__c, email__c, interest_rate__c, loan_interest_rate__c, loan_type__c, remaining_loan_amount__c, total_loan_amount__c, active__c FROM Account WHERE name='' LIMIT 1];
            System.assert(acc.Name, testAcc.Name);
            System.assert(acc.Balance__c, testAcc.Balance__c);
            System.assert(acc.Balance__c * 0.038, testAcc.Calculated_Interest__c);
            System.assert(acc.Email__c, testAcc.Email__c);
            System.assert(acc.Loan_Interest_Rate__c, testAcc.Loan_Interest_Rate__c);
            System.assert(acc.Loan_Type__c, testAcc.Loan_Type__c);
            //System.assert(acc.Remaining_Loan_Amount__c, testAcc.Remaining_Loan_Amount__c);
            System.assert(acc.Total_Loan_Amount__c, testAcc.Total_Loan_Amount__c);
        } catch (Exception e) {
            System.assert(false, e.getMessage());
        }
        Test.stopTest();
    }
    

    @isTest
    public static void testAccount_68() {
        Account acc = new Account();
        acc.Name = 'ToUpdate Account';
        acc.Balance__c = 100;
        acc.RecordTypeId = Schema.SObjectType.Account.getRecordTypeInfosByName().get('Blank').getRecordTypeId();
        acc.Email__c = 'testUpdate@pairwise.test';
        acc.Active__c = 'Yes';
        insert acc;
        
        acc.Name = '';
        acc.Balance__c = 177;
        acc.Calculated_Interest__c = null;
        acc.Email__c = 'test68@pairwise.test';
        acc.Loan_Interest_Rate__c = 0.159;
        acc.Loan_Type__c = 'Home Loan';
        acc.Remaining_Loan_Amount__c = ;
        acc.Total_Loan_Amount__c = null;
        
        Test.startTest();
        try {
            update acc;
            Account testAcc = [SELECT name, balance__c, calculated_interest__c, email__c, interest_rate__c, loan_interest_rate__c, loan_type__c, remaining_loan_amount__c, total_loan_amount__c, active__c FROM Account WHERE name='' LIMIT 1];
            System.assert(acc.Name, testAcc.Name);
            System.assert(acc.Balance__c, testAcc.Balance__c);
            System.assert(acc.Balance__c * 0.038, testAcc.Calculated_Interest__c);
            System.assert(acc.Email__c, testAcc.Email__c);
            System.assert(acc.Loan_Interest_Rate__c, testAcc.Loan_Interest_Rate__c);
            System.assert(acc.Loan_Type__c, testAcc.Loan_Type__c);
            //System.assert(acc.Remaining_Loan_Amount__c, testAcc.Remaining_Loan_Amount__c);
            System.assert(acc.Total_Loan_Amount__c, testAcc.Total_Loan_Amount__c);
        } catch (Exception e) {
            System.assert(false, e.getMessage());
        }
        Test.stopTest();
    }
    

    @isTest
    public static void testAccount_69() {
        Account acc = new Account();
        acc.Name = 'ToUpdate Account';
        acc.Balance__c = 100;
        acc.RecordTypeId = Schema.SObjectType.Account.getRecordTypeInfosByName().get('>=$0').getRecordTypeId();
        acc.Email__c = 'testUpdate@pairwise.test';
        acc.Active__c = 'Yes';
        insert acc;
        
        acc.Name = '';
        acc.Balance__c = 175;
        acc.Calculated_Interest__c = 7;
        acc.Email__c = '';
        acc.Loan_Interest_Rate__c = 0.162;
        acc.Loan_Type__c = 'Car Loan';
        acc.Remaining_Loan_Amount__c = ;
        acc.Total_Loan_Amount__c = 68707;
        
        Test.startTest();
        try {
            update acc;
            Account testAcc = [SELECT name, balance__c, calculated_interest__c, email__c, interest_rate__c, loan_interest_rate__c, loan_type__c, remaining_loan_amount__c, total_loan_amount__c, active__c FROM Account WHERE name='' LIMIT 1];
            System.assert(acc.Name, testAcc.Name);
            System.assert(acc.Balance__c, testAcc.Balance__c);
            System.assert(acc.Balance__c * 0.038, testAcc.Calculated_Interest__c);
            System.assert(acc.Email__c, testAcc.Email__c);
            System.assert(acc.Loan_Interest_Rate__c, testAcc.Loan_Interest_Rate__c);
            System.assert(acc.Loan_Type__c, testAcc.Loan_Type__c);
            //System.assert(acc.Remaining_Loan_Amount__c, testAcc.Remaining_Loan_Amount__c);
            System.assert(acc.Total_Loan_Amount__c, testAcc.Total_Loan_Amount__c);
        } catch (Exception e) {
            System.assert(false, e.getMessage());
        }
        Test.stopTest();
    }
    

    @isTest
    public static void testAccount_70() {
        Account acc = new Account();
        acc.Name = 'ToUpdate Account';
        acc.Balance__c = 100;
        acc.RecordTypeId = Schema.SObjectType.Account.getRecordTypeInfosByName().get('Blank').getRecordTypeId();
        acc.Email__c = 'testUpdate@pairwise.test';
        acc.Active__c = 'Yes';
        insert acc;
        
        acc.Name = '';
        acc.Balance__c = 189;
        acc.Calculated_Interest__c = 7;
        acc.Email__c = '';
        acc.Loan_Interest_Rate__c = 0.146;
        acc.Loan_Type__c = 'Car Loan';
        acc.Remaining_Loan_Amount__c = ;
        acc.Total_Loan_Amount__c = 46296;
        
        Test.startTest();
        try {
            update acc;
            Account testAcc = [SELECT name, balance__c, calculated_interest__c, email__c, interest_rate__c, loan_interest_rate__c, loan_type__c, remaining_loan_amount__c, total_loan_amount__c, active__c FROM Account WHERE name='' LIMIT 1];
            System.assert(acc.Name, testAcc.Name);
            System.assert(acc.Balance__c, testAcc.Balance__c);
            System.assert(acc.Balance__c * 0.038, testAcc.Calculated_Interest__c);
            System.assert(acc.Email__c, testAcc.Email__c);
            System.assert(acc.Loan_Interest_Rate__c, testAcc.Loan_Interest_Rate__c);
            System.assert(acc.Loan_Type__c, testAcc.Loan_Type__c);
            //System.assert(acc.Remaining_Loan_Amount__c, testAcc.Remaining_Loan_Amount__c);
            System.assert(acc.Total_Loan_Amount__c, testAcc.Total_Loan_Amount__c);
        } catch (Exception e) {
            System.assert(false, e.getMessage());
        }
        Test.stopTest();
    }
    

    @isTest
    public static void testAccount_71() {
        Account acc = new Account();
        acc.Name = '';
        acc.Balance__c = 113;
        acc.RecordTypeId = Schema.SObjectType.Account.getRecordTypeInfosByName().get('>=$0').getRecordTypeId();
        acc.Calculated_Interest__c = null;
        acc.Email__c = '';
        acc.Loan_Interest_Rate__c = 0.11800000000000001;
        acc.Loan_Type__c = '';
        //acc.Remaining_Loan_Amount__c = ;
        acc.Total_Loan_Amount__c = null;
        acc.Active__c = 'Yes';
        
        Test.startTest();
        try {
            insert acc;
            Account testAcc = [SELECT name, balance__c, calculated_interest__c, email__c, interest_rate__c, loan_interest_rate__c, loan_type__c, remaining_loan_amount__c, total_loan_amount__c, active__c FROM Account WHERE name='' LIMIT 1];
            System.assert(acc.Name, testAcc.Name);
            System.assert(acc.Balance__c, testAcc.Balance__c);
            System.assert(acc.Balance__c * 0.06, testAcc.Calculated_Interest__c);
            System.assert(acc.Email__c, testAcc.Email__c);
            System.assert(acc.Loan_Interest_Rate__c, testAcc.Loan_Interest_Rate__c);
            System.assert(acc.Loan_Type__c, testAcc.Loan_Type__c);
            //System.assert(acc.Remaining_Loan_Amount__c, testAcc.Remaining_Loan_Amount__c);
            System.assert(acc.Total_Loan_Amount__c, testAcc.Total_Loan_Amount__c);
        } catch (Exception e) {
            System.assert(false, e.getMessage());
        }
        Test.stopTest();
    }
    

    @isTest
    public static void testAccount_72() {
        Account acc = new Account();
        acc.Name = '';
        acc.Balance__c = 117;
        acc.RecordTypeId = Schema.SObjectType.Account.getRecordTypeInfosByName().get('>=$100').getRecordTypeId();
        acc.Calculated_Interest__c = null;
        acc.Email__c = '';
        acc.Loan_Interest_Rate__c = 0.07;
        acc.Loan_Type__c = 'Home Loan';
        //acc.Remaining_Loan_Amount__c = ;
        acc.Total_Loan_Amount__c = 8118992;
        acc.Active__c = 'Yes';
        
        Test.startTest();
        try {
            insert acc;
            Account testAcc = [SELECT name, balance__c, calculated_interest__c, email__c, interest_rate__c, loan_interest_rate__c, loan_type__c, remaining_loan_amount__c, total_loan_amount__c, active__c FROM Account WHERE name='' LIMIT 1];
            System.assert(acc.Name, testAcc.Name);
            System.assert(acc.Balance__c, testAcc.Balance__c);
            System.assert(acc.Balance__c * 0.05, testAcc.Calculated_Interest__c);
            System.assert(acc.Email__c, testAcc.Email__c);
            System.assert(acc.Loan_Interest_Rate__c, testAcc.Loan_Interest_Rate__c);
            System.assert(acc.Loan_Type__c, testAcc.Loan_Type__c);
            //System.assert(acc.Remaining_Loan_Amount__c, testAcc.Remaining_Loan_Amount__c);
            System.assert(acc.Total_Loan_Amount__c, testAcc.Total_Loan_Amount__c);
        } catch (Exception e) {
            System.assert(false, e.getMessage());
        }
        Test.stopTest();
    }
    

    @isTest
    public static void testAccount_73() {
        Account acc = new Account();
        acc.Name = 'ToUpdate Account';
        acc.Balance__c = 100;
        acc.RecordTypeId = Schema.SObjectType.Account.getRecordTypeInfosByName().get('Blank').getRecordTypeId();
        acc.Email__c = 'testUpdate@pairwise.test';
        acc.Active__c = 'Yes';
        insert acc;
        
        acc.Name = '';
        acc.Balance__c = 181;
        acc.Calculated_Interest__c = null;
        acc.Email__c = '';
        acc.Loan_Interest_Rate__c = 0.07;
        acc.Loan_Type__c = 'Car Loan';
        acc.Remaining_Loan_Amount__c = ;
        acc.Total_Loan_Amount__c = 784962;
        
        Test.startTest();
        try {
            update acc;
            Account testAcc = [SELECT name, balance__c, calculated_interest__c, email__c, interest_rate__c, loan_interest_rate__c, loan_type__c, remaining_loan_amount__c, total_loan_amount__c, active__c FROM Account WHERE name='' LIMIT 1];
            System.assert(acc.Name, testAcc.Name);
            System.assert(acc.Balance__c, testAcc.Balance__c);
            System.assert(acc.Balance__c * 0.06, testAcc.Calculated_Interest__c);
            System.assert(acc.Email__c, testAcc.Email__c);
            System.assert(acc.Loan_Interest_Rate__c, testAcc.Loan_Interest_Rate__c);
            System.assert(acc.Loan_Type__c, testAcc.Loan_Type__c);
            //System.assert(acc.Remaining_Loan_Amount__c, testAcc.Remaining_Loan_Amount__c);
            System.assert(acc.Total_Loan_Amount__c, testAcc.Total_Loan_Amount__c);
        } catch (Exception e) {
            System.assert(false, e.getMessage());
        }
        Test.stopTest();
    }
    

    @isTest
    public static void testAccount_74() {
        Account acc = new Account();
        acc.Name = 'ToUpdate Account';
        acc.Balance__c = 100;
        acc.RecordTypeId = Schema.SObjectType.Account.getRecordTypeInfosByName().get('Blank').getRecordTypeId();
        acc.Email__c = 'testUpdate@pairwise.test';
        acc.Active__c = 'Yes';
        insert acc;
        
        acc.Name = '';
        acc.Balance__c = 179;
        acc.Calculated_Interest__c = null;
        acc.Email__c = '';
        acc.Loan_Interest_Rate__c = 0.07;
        acc.Loan_Type__c = 'Car Loan';
        acc.Remaining_Loan_Amount__c = ;
        acc.Total_Loan_Amount__c = 94562;
        
        Test.startTest();
        try {
            update acc;
            Account testAcc = [SELECT name, balance__c, calculated_interest__c, email__c, interest_rate__c, loan_interest_rate__c, loan_type__c, remaining_loan_amount__c, total_loan_amount__c, active__c FROM Account WHERE name='' LIMIT 1];
            System.assert(acc.Name, testAcc.Name);
            System.assert(acc.Balance__c, testAcc.Balance__c);
            System.assert(acc.Balance__c * 0.05, testAcc.Calculated_Interest__c);
            System.assert(acc.Email__c, testAcc.Email__c);
            System.assert(acc.Loan_Interest_Rate__c, testAcc.Loan_Interest_Rate__c);
            System.assert(acc.Loan_Type__c, testAcc.Loan_Type__c);
            //System.assert(acc.Remaining_Loan_Amount__c, testAcc.Remaining_Loan_Amount__c);
            System.assert(acc.Total_Loan_Amount__c, testAcc.Total_Loan_Amount__c);
        } catch (Exception e) {
            System.assert(false, e.getMessage());
        }
        Test.stopTest();
    }
    

    @isTest
    public static void testAccount_75() {
        Account acc = new Account();
        acc.Name = '';
        acc.Balance__c = 128;
        acc.RecordTypeId = Schema.SObjectType.Account.getRecordTypeInfosByName().get('>=$100').getRecordTypeId();
        acc.Calculated_Interest__c = null;
        acc.Email__c = '';
        acc.Loan_Interest_Rate__c = 0.162;
        acc.Loan_Type__c = 'Home Loan';
        //acc.Remaining_Loan_Amount__c = ;
        acc.Total_Loan_Amount__c = 689537;
        acc.Active__c = 'Yes';
        
        Test.startTest();
        try {
            insert acc;
            Account testAcc = [SELECT name, balance__c, calculated_interest__c, email__c, interest_rate__c, loan_interest_rate__c, loan_type__c, remaining_loan_amount__c, total_loan_amount__c, active__c FROM Account WHERE name='' LIMIT 1];
            System.assert(acc.Name, testAcc.Name);
            System.assert(acc.Balance__c, testAcc.Balance__c);
            System.assert(acc.Balance__c * 0.05, testAcc.Calculated_Interest__c);
            System.assert(acc.Email__c, testAcc.Email__c);
            System.assert(acc.Loan_Interest_Rate__c, testAcc.Loan_Interest_Rate__c);
            System.assert(acc.Loan_Type__c, testAcc.Loan_Type__c);
            //System.assert(acc.Remaining_Loan_Amount__c, testAcc.Remaining_Loan_Amount__c);
            System.assert(acc.Total_Loan_Amount__c, testAcc.Total_Loan_Amount__c);
        } catch (Exception e) {
            System.assert(false, e.getMessage());
        }
        Test.stopTest();
    }
    

    @isTest
    public static void testAccount_76() {
        Account acc = new Account();
        acc.Name = '';
        acc.Balance__c = 114;
        acc.RecordTypeId = Schema.SObjectType.Account.getRecordTypeInfosByName().get('>=$100').getRecordTypeId();
        acc.Calculated_Interest__c = null;
        acc.Email__c = 'test76@pairwise.test';
        acc.Loan_Interest_Rate__c = 0.11800000000000001;
        acc.Loan_Type__c = 'Car Loan';
        //acc.Remaining_Loan_Amount__c = ;
        acc.Total_Loan_Amount__c = null;
        acc.Active__c = 'Yes';
        
        Test.startTest();
        try {
            insert acc;
            Account testAcc = [SELECT name, balance__c, calculated_interest__c, email__c, interest_rate__c, loan_interest_rate__c, loan_type__c, remaining_loan_amount__c, total_loan_amount__c, active__c FROM Account WHERE name='' LIMIT 1];
            System.assert(acc.Name, testAcc.Name);
            System.assert(acc.Balance__c, testAcc.Balance__c);
            System.assert(acc.Balance__c * 0.05, testAcc.Calculated_Interest__c);
            System.assert(acc.Email__c, testAcc.Email__c);
            System.assert(acc.Loan_Interest_Rate__c, testAcc.Loan_Interest_Rate__c);
            System.assert(acc.Loan_Type__c, testAcc.Loan_Type__c);
            //System.assert(acc.Remaining_Loan_Amount__c, testAcc.Remaining_Loan_Amount__c);
            System.assert(acc.Total_Loan_Amount__c, testAcc.Total_Loan_Amount__c);
        } catch (Exception e) {
            System.assert(false, e.getMessage());
        }
        Test.stopTest();
    }
    

    @isTest
    public static void testAccount_77() {
        Account acc = new Account();
        acc.Name = '';
        acc.Balance__c = 185;
        acc.RecordTypeId = Schema.SObjectType.Account.getRecordTypeInfosByName().get('>=$100').getRecordTypeId();
        acc.Calculated_Interest__c = null;
        acc.Email__c = '';
        acc.Loan_Interest_Rate__c = 0.10300000000000001;
        acc.Loan_Type__c = 'Car Loan';
        //acc.Remaining_Loan_Amount__c = 15000000;
        acc.Total_Loan_Amount__c = 115161;
        acc.Active__c = 'Yes';
        
        Test.startTest();
        try {
            insert acc;
            Account testAcc = [SELECT name, balance__c, calculated_interest__c, email__c, interest_rate__c, loan_interest_rate__c, loan_type__c, remaining_loan_amount__c, total_loan_amount__c, active__c FROM Account WHERE name='' LIMIT 1];
            System.assert(acc.Name, testAcc.Name);
            System.assert(acc.Balance__c, testAcc.Balance__c);
            System.assert(acc.Balance__c * 0.038, testAcc.Calculated_Interest__c);
            System.assert(acc.Email__c, testAcc.Email__c);
            System.assert(acc.Loan_Interest_Rate__c, testAcc.Loan_Interest_Rate__c);
            System.assert(acc.Loan_Type__c, testAcc.Loan_Type__c);
            //System.assert(acc.Remaining_Loan_Amount__c, testAcc.Remaining_Loan_Amount__c);
            System.assert(acc.Total_Loan_Amount__c, testAcc.Total_Loan_Amount__c);
        } catch (Exception e) {
            System.assert(false, e.getMessage());
        }
        Test.stopTest();
    }
    

    @isTest
    public static void testAccount_78() {
        Account acc = new Account();
        acc.Name = '';
        acc.Balance__c = 154;
        acc.RecordTypeId = Schema.SObjectType.Account.getRecordTypeInfosByName().get('>=$100').getRecordTypeId();
        acc.Calculated_Interest__c = null;
        acc.Email__c = '';
        acc.Loan_Interest_Rate__c = 0.159;
        acc.Loan_Type__c = 'Home Loan';
        //acc.Remaining_Loan_Amount__c = 15000000;
        acc.Total_Loan_Amount__c = 52029;
        acc.Active__c = 'Yes';
        
        Test.startTest();
        try {
            insert acc;
            Account testAcc = [SELECT name, balance__c, calculated_interest__c, email__c, interest_rate__c, loan_interest_rate__c, loan_type__c, remaining_loan_amount__c, total_loan_amount__c, active__c FROM Account WHERE name='' LIMIT 1];
            System.assert(acc.Name, testAcc.Name);
            System.assert(acc.Balance__c, testAcc.Balance__c);
            System.assert(acc.Balance__c * 0.038, testAcc.Calculated_Interest__c);
            System.assert(acc.Email__c, testAcc.Email__c);
            System.assert(acc.Loan_Interest_Rate__c, testAcc.Loan_Interest_Rate__c);
            System.assert(acc.Loan_Type__c, testAcc.Loan_Type__c);
            //System.assert(acc.Remaining_Loan_Amount__c, testAcc.Remaining_Loan_Amount__c);
            System.assert(acc.Total_Loan_Amount__c, testAcc.Total_Loan_Amount__c);
        } catch (Exception e) {
            System.assert(false, e.getMessage());
        }
        Test.stopTest();
    }
    

    @isTest
    public static void testAccount_79() {
        Account acc = new Account();
        acc.Name = 'ToUpdate Account';
        acc.Balance__c = 100;
        acc.RecordTypeId = Schema.SObjectType.Account.getRecordTypeInfosByName().get('Blank').getRecordTypeId();
        acc.Email__c = 'testUpdate@pairwise.test';
        acc.Active__c = 'Yes';
        insert acc;
        
        acc.Name = '';
        acc.Balance__c = 187;
        acc.Calculated_Interest__c = 7;
        acc.Email__c = 'test79@pairwise.test';
        acc.Loan_Interest_Rate__c = 0.1;
        acc.Loan_Type__c = 'Home Loan';
        acc.Remaining_Loan_Amount__c = ;
        acc.Total_Loan_Amount__c = 31852;
        
        Test.startTest();
        try {
            update acc;
            Account testAcc = [SELECT name, balance__c, calculated_interest__c, email__c, interest_rate__c, loan_interest_rate__c, loan_type__c, remaining_loan_amount__c, total_loan_amount__c, active__c FROM Account WHERE name='' LIMIT 1];
            System.assert(acc.Name, testAcc.Name);
            System.assert(acc.Balance__c, testAcc.Balance__c);
            System.assert(acc.Balance__c * 0.038, testAcc.Calculated_Interest__c);
            System.assert(acc.Email__c, testAcc.Email__c);
            System.assert(acc.Loan_Interest_Rate__c, testAcc.Loan_Interest_Rate__c);
            System.assert(acc.Loan_Type__c, testAcc.Loan_Type__c);
            //System.assert(acc.Remaining_Loan_Amount__c, testAcc.Remaining_Loan_Amount__c);
            System.assert(acc.Total_Loan_Amount__c, testAcc.Total_Loan_Amount__c);
        } catch (Exception e) {
            System.assert(false, e.getMessage());
        }
        Test.stopTest();
    }
    

    @isTest
    public static void testAccount_80() {
        Account acc = new Account();
        acc.Name = '';
        acc.Balance__c = 180;
        acc.RecordTypeId = Schema.SObjectType.Account.getRecordTypeInfosByName().get('>=$0').getRecordTypeId();
        acc.Calculated_Interest__c = null;
        acc.Email__c = '';
        acc.Loan_Interest_Rate__c = 0.084;
        acc.Loan_Type__c = 'Car Loan';
        //acc.Remaining_Loan_Amount__c = ;
        acc.Total_Loan_Amount__c = 30825;
        acc.Active__c = 'Yes';
        
        Test.startTest();
        try {
            insert acc;
            Account testAcc = [SELECT name, balance__c, calculated_interest__c, email__c, interest_rate__c, loan_interest_rate__c, loan_type__c, remaining_loan_amount__c, total_loan_amount__c, active__c FROM Account WHERE name='' LIMIT 1];
            System.assert(acc.Name, testAcc.Name);
            System.assert(acc.Balance__c, testAcc.Balance__c);
            System.assert(acc.Balance__c * 0.06, testAcc.Calculated_Interest__c);
            System.assert(acc.Email__c, testAcc.Email__c);
            System.assert(acc.Loan_Interest_Rate__c, testAcc.Loan_Interest_Rate__c);
            System.assert(acc.Loan_Type__c, testAcc.Loan_Type__c);
            //System.assert(acc.Remaining_Loan_Amount__c, testAcc.Remaining_Loan_Amount__c);
            System.assert(acc.Total_Loan_Amount__c, testAcc.Total_Loan_Amount__c);
        } catch (Exception e) {
            System.assert(false, e.getMessage());
        }
        Test.stopTest();
    }
    

    @isTest
    public static void testAccount_81() {
        Account acc = new Account();
        acc.Name = '';
        acc.Balance__c = 124;
        acc.RecordTypeId = Schema.SObjectType.Account.getRecordTypeInfosByName().get('>=$100').getRecordTypeId();
        acc.Calculated_Interest__c = 7;
        acc.Email__c = 'test81@pairwise.test';
        acc.Loan_Interest_Rate__c = 0.14;
        acc.Loan_Type__c = 'Car Loan';
        //acc.Remaining_Loan_Amount__c = ;
        acc.Total_Loan_Amount__c = 226056;
        acc.Active__c = 'Yes';
        
        Test.startTest();
        try {
            insert acc;
            Account testAcc = [SELECT name, balance__c, calculated_interest__c, email__c, interest_rate__c, loan_interest_rate__c, loan_type__c, remaining_loan_amount__c, total_loan_amount__c, active__c FROM Account WHERE name='' LIMIT 1];
            System.assert(acc.Name, testAcc.Name);
            System.assert(acc.Balance__c, testAcc.Balance__c);
            System.assert(acc.Balance__c * 0.038, testAcc.Calculated_Interest__c);
            System.assert(acc.Email__c, testAcc.Email__c);
            System.assert(acc.Loan_Interest_Rate__c, testAcc.Loan_Interest_Rate__c);
            System.assert(acc.Loan_Type__c, testAcc.Loan_Type__c);
            //System.assert(acc.Remaining_Loan_Amount__c, testAcc.Remaining_Loan_Amount__c);
            System.assert(acc.Total_Loan_Amount__c, testAcc.Total_Loan_Amount__c);
        } catch (Exception e) {
            System.assert(false, e.getMessage());
        }
        Test.stopTest();
    }
    

    @isTest
    public static void testAccount_82() {
        Account acc = new Account();
        acc.Name = 'ToUpdate Account';
        acc.Balance__c = 100;
        acc.RecordTypeId = Schema.SObjectType.Account.getRecordTypeInfosByName().get('>=$0').getRecordTypeId();
        acc.Email__c = 'testUpdate@pairwise.test';
        acc.Active__c = 'Yes';
        insert acc;
        
        acc.Name = '';
        acc.Balance__c = 110;
        acc.Calculated_Interest__c = 7;
        acc.Email__c = '';
        acc.Loan_Interest_Rate__c = 0.109;
        acc.Loan_Type__c = 'Car Loan';
        acc.Remaining_Loan_Amount__c = ;
        acc.Total_Loan_Amount__c = 121795;
        
        Test.startTest();
        try {
            update acc;
            Account testAcc = [SELECT name, balance__c, calculated_interest__c, email__c, interest_rate__c, loan_interest_rate__c, loan_type__c, remaining_loan_amount__c, total_loan_amount__c, active__c FROM Account WHERE name='' LIMIT 1];
            System.assert(acc.Name, testAcc.Name);
            System.assert(acc.Balance__c, testAcc.Balance__c);
            System.assert(acc.Balance__c * 0.05, testAcc.Calculated_Interest__c);
            System.assert(acc.Email__c, testAcc.Email__c);
            System.assert(acc.Loan_Interest_Rate__c, testAcc.Loan_Interest_Rate__c);
            System.assert(acc.Loan_Type__c, testAcc.Loan_Type__c);
            //System.assert(acc.Remaining_Loan_Amount__c, testAcc.Remaining_Loan_Amount__c);
            System.assert(acc.Total_Loan_Amount__c, testAcc.Total_Loan_Amount__c);
        } catch (Exception e) {
            System.assert(false, e.getMessage());
        }
        Test.stopTest();
    }
    

    @isTest
    public static void testAccount_83() {
        Account acc = new Account();
        acc.Name = 'ToUpdate Account';
        acc.Balance__c = 100;
        acc.RecordTypeId = Schema.SObjectType.Account.getRecordTypeInfosByName().get('Blank').getRecordTypeId();
        acc.Email__c = 'testUpdate@pairwise.test';
        acc.Active__c = 'Yes';
        insert acc;
        
        acc.Name = '';
        acc.Balance__c = 103;
        acc.Calculated_Interest__c = null;
        acc.Email__c = '';
        acc.Loan_Interest_Rate__c = 0.146;
        acc.Loan_Type__c = 'Home Loan';
        acc.Remaining_Loan_Amount__c = 15000000;
        acc.Total_Loan_Amount__c = 7690406;
        
        Test.startTest();
        try {
            update acc;
            Account testAcc = [SELECT name, balance__c, calculated_interest__c, email__c, interest_rate__c, loan_interest_rate__c, loan_type__c, remaining_loan_amount__c, total_loan_amount__c, active__c FROM Account WHERE name='' LIMIT 1];
            System.assert(acc.Name, testAcc.Name);
            System.assert(acc.Balance__c, testAcc.Balance__c);
            System.assert(acc.Balance__c * 0.05, testAcc.Calculated_Interest__c);
            System.assert(acc.Email__c, testAcc.Email__c);
            System.assert(acc.Loan_Interest_Rate__c, testAcc.Loan_Interest_Rate__c);
            System.assert(acc.Loan_Type__c, testAcc.Loan_Type__c);
            //System.assert(acc.Remaining_Loan_Amount__c, testAcc.Remaining_Loan_Amount__c);
            System.assert(acc.Total_Loan_Amount__c, testAcc.Total_Loan_Amount__c);
        } catch (Exception e) {
            System.assert(false, e.getMessage());
        }
        Test.stopTest();
    }
    

    @isTest
    public static void testAccount_84() {
        Account acc = new Account();
        acc.Name = 'ToUpdate Account';
        acc.Balance__c = 100;
        acc.RecordTypeId = Schema.SObjectType.Account.getRecordTypeInfosByName().get('Blank').getRecordTypeId();
        acc.Email__c = 'testUpdate@pairwise.test';
        acc.Active__c = 'Yes';
        insert acc;
        
        acc.Name = '';
        acc.Balance__c = 188;
        acc.Calculated_Interest__c = 7;
        acc.Email__c = 'test84@pairwise.test';
        acc.Loan_Interest_Rate__c = null;
        acc.Loan_Type__c = 'Car Loan';
        acc.Remaining_Loan_Amount__c = ;
        acc.Total_Loan_Amount__c = 460960;
        
        Test.startTest();
        try {
            update acc;
            Account testAcc = [SELECT name, balance__c, calculated_interest__c, email__c, interest_rate__c, loan_interest_rate__c, loan_type__c, remaining_loan_amount__c, total_loan_amount__c, active__c FROM Account WHERE name='' LIMIT 1];
            System.assert(acc.Name, testAcc.Name);
            System.assert(acc.Balance__c, testAcc.Balance__c);
            System.assert(acc.Balance__c * 0.038, testAcc.Calculated_Interest__c);
            System.assert(acc.Email__c, testAcc.Email__c);
            System.assert(acc.Loan_Interest_Rate__c, testAcc.Loan_Interest_Rate__c);
            System.assert(acc.Loan_Type__c, testAcc.Loan_Type__c);
            //System.assert(acc.Remaining_Loan_Amount__c, testAcc.Remaining_Loan_Amount__c);
            System.assert(acc.Total_Loan_Amount__c, testAcc.Total_Loan_Amount__c);
        } catch (Exception e) {
            System.assert(false, e.getMessage());
        }
        Test.stopTest();
    }
    

    @isTest
    public static void testAccount_85() {
        Account acc = new Account();
        acc.Name = '';
        acc.Balance__c = 151;
        acc.RecordTypeId = Schema.SObjectType.Account.getRecordTypeInfosByName().get('>=$100').getRecordTypeId();
        acc.Calculated_Interest__c = null;
        acc.Email__c = 'test85@pairwise.test';
        acc.Loan_Interest_Rate__c = null;
        acc.Loan_Type__c = 'Home Loan';
        //acc.Remaining_Loan_Amount__c = 15000000;
        acc.Total_Loan_Amount__c = 4094781;
        acc.Active__c = 'Yes';
        
        Test.startTest();
        try {
            insert acc;
            Account testAcc = [SELECT name, balance__c, calculated_interest__c, email__c, interest_rate__c, loan_interest_rate__c, loan_type__c, remaining_loan_amount__c, total_loan_amount__c, active__c FROM Account WHERE name='' LIMIT 1];
            System.assert(acc.Name, testAcc.Name);
            System.assert(acc.Balance__c, testAcc.Balance__c);
            System.assert(acc.Balance__c * 0.05, testAcc.Calculated_Interest__c);
            System.assert(acc.Email__c, testAcc.Email__c);
            System.assert(acc.Loan_Interest_Rate__c, testAcc.Loan_Interest_Rate__c);
            System.assert(acc.Loan_Type__c, testAcc.Loan_Type__c);
            //System.assert(acc.Remaining_Loan_Amount__c, testAcc.Remaining_Loan_Amount__c);
            System.assert(acc.Total_Loan_Amount__c, testAcc.Total_Loan_Amount__c);
        } catch (Exception e) {
            System.assert(false, e.getMessage());
        }
        Test.stopTest();
    }
    

    @isTest
    public static void testAccount_86() {
        Account acc = new Account();
        acc.Name = 'ToUpdate Account';
        acc.Balance__c = 100;
        acc.RecordTypeId = Schema.SObjectType.Account.getRecordTypeInfosByName().get('Negative').getRecordTypeId();
        acc.Email__c = 'testUpdate@pairwise.test';
        acc.Active__c = 'Yes';
        insert acc;
        
        acc.Name = '';
        acc.Balance__c = 133;
        acc.Calculated_Interest__c = 7;
        acc.Email__c = 'test86@pairwise.test';
        acc.Loan_Interest_Rate__c = 0.1;
        acc.Loan_Type__c = 'Home Loan';
        acc.Remaining_Loan_Amount__c = ;
        acc.Total_Loan_Amount__c = 804806;
        
        Test.startTest();
        try {
            update acc;
            Account testAcc = [SELECT name, balance__c, calculated_interest__c, email__c, interest_rate__c, loan_interest_rate__c, loan_type__c, remaining_loan_amount__c, total_loan_amount__c, active__c FROM Account WHERE name='' LIMIT 1];
            System.assert(acc.Name, testAcc.Name);
            System.assert(acc.Balance__c, testAcc.Balance__c);
            System.assert(acc.Balance__c * 0.05, testAcc.Calculated_Interest__c);
            System.assert(acc.Email__c, testAcc.Email__c);
            System.assert(acc.Loan_Interest_Rate__c, testAcc.Loan_Interest_Rate__c);
            System.assert(acc.Loan_Type__c, testAcc.Loan_Type__c);
            //System.assert(acc.Remaining_Loan_Amount__c, testAcc.Remaining_Loan_Amount__c);
            System.assert(acc.Total_Loan_Amount__c, testAcc.Total_Loan_Amount__c);
        } catch (Exception e) {
            System.assert(false, e.getMessage());
        }
        Test.stopTest();
    }
    

    @isTest
    public static void testAccount_87() {
        Account acc = new Account();
        acc.Name = '';
        acc.Balance__c = 156;
        acc.RecordTypeId = Schema.SObjectType.Account.getRecordTypeInfosByName().get('>=$0').getRecordTypeId();
        acc.Calculated_Interest__c = 7;
        acc.Email__c = '';
        acc.Loan_Interest_Rate__c = 0.11900000000000001;
        acc.Loan_Type__c = 'Car Loan';
        //acc.Remaining_Loan_Amount__c = 15000000;
        acc.Total_Loan_Amount__c = 743603;
        acc.Active__c = 'Yes';
        
        Test.startTest();
        try {
            insert acc;
            Account testAcc = [SELECT name, balance__c, calculated_interest__c, email__c, interest_rate__c, loan_interest_rate__c, loan_type__c, remaining_loan_amount__c, total_loan_amount__c, active__c FROM Account WHERE name='' LIMIT 1];
            System.assert(acc.Name, testAcc.Name);
            System.assert(acc.Balance__c, testAcc.Balance__c);
            System.assert(acc.Balance__c * 0.06, testAcc.Calculated_Interest__c);
            System.assert(acc.Email__c, testAcc.Email__c);
            System.assert(acc.Loan_Interest_Rate__c, testAcc.Loan_Interest_Rate__c);
            System.assert(acc.Loan_Type__c, testAcc.Loan_Type__c);
            //System.assert(acc.Remaining_Loan_Amount__c, testAcc.Remaining_Loan_Amount__c);
            System.assert(acc.Total_Loan_Amount__c, testAcc.Total_Loan_Amount__c);
        } catch (Exception e) {
            System.assert(false, e.getMessage());
        }
        Test.stopTest();
    }
    

    @isTest
    public static void testAccount_88() {
        Account acc = new Account();
        acc.Name = 'ToUpdate Account';
        acc.Balance__c = 100;
        acc.RecordTypeId = Schema.SObjectType.Account.getRecordTypeInfosByName().get('>=$0').getRecordTypeId();
        acc.Email__c = 'testUpdate@pairwise.test';
        acc.Active__c = 'Yes';
        insert acc;
        
        acc.Name = '';
        acc.Balance__c = 162;
        acc.Calculated_Interest__c = 7;
        acc.Email__c = 'test88@pairwise.test';
        acc.Loan_Interest_Rate__c = 0.10300000000000001;
        acc.Loan_Type__c = 'Car Loan';
        acc.Remaining_Loan_Amount__c = 15000000;
        acc.Total_Loan_Amount__c = 807810;
        
        Test.startTest();
        try {
            update acc;
            Account testAcc = [SELECT name, balance__c, calculated_interest__c, email__c, interest_rate__c, loan_interest_rate__c, loan_type__c, remaining_loan_amount__c, total_loan_amount__c, active__c FROM Account WHERE name='' LIMIT 1];
            System.assert(acc.Name, testAcc.Name);
            System.assert(acc.Balance__c, testAcc.Balance__c);
            System.assert(acc.Balance__c * 0.06, testAcc.Calculated_Interest__c);
            System.assert(acc.Email__c, testAcc.Email__c);
            System.assert(acc.Loan_Interest_Rate__c, testAcc.Loan_Interest_Rate__c);
            System.assert(acc.Loan_Type__c, testAcc.Loan_Type__c);
            //System.assert(acc.Remaining_Loan_Amount__c, testAcc.Remaining_Loan_Amount__c);
            System.assert(acc.Total_Loan_Amount__c, testAcc.Total_Loan_Amount__c);
        } catch (Exception e) {
            System.assert(false, e.getMessage());
        }
        Test.stopTest();
    }
    

    @isTest
    public static void testAccount_89() {
        Account acc = new Account();
        acc.Name = 'ToUpdate Account';
        acc.Balance__c = 100;
        acc.RecordTypeId = Schema.SObjectType.Account.getRecordTypeInfosByName().get('Blank').getRecordTypeId();
        acc.Email__c = 'testUpdate@pairwise.test';
        acc.Active__c = 'Yes';
        insert acc;
        
        acc.Name = '';
        acc.Balance__c = 189;
        acc.Calculated_Interest__c = null;
        acc.Email__c = 'test89@pairwise.test';
        acc.Loan_Interest_Rate__c = 0.10300000000000001;
        acc.Loan_Type__c = 'Home Loan';
        acc.Remaining_Loan_Amount__c = ;
        acc.Total_Loan_Amount__c = 41927;
        
        Test.startTest();
        try {
            update acc;
            Account testAcc = [SELECT name, balance__c, calculated_interest__c, email__c, interest_rate__c, loan_interest_rate__c, loan_type__c, remaining_loan_amount__c, total_loan_amount__c, active__c FROM Account WHERE name='' LIMIT 1];
            System.assert(acc.Name, testAcc.Name);
            System.assert(acc.Balance__c, testAcc.Balance__c);
            System.assert(acc.Balance__c * 0.038, testAcc.Calculated_Interest__c);
            System.assert(acc.Email__c, testAcc.Email__c);
            System.assert(acc.Loan_Interest_Rate__c, testAcc.Loan_Interest_Rate__c);
            System.assert(acc.Loan_Type__c, testAcc.Loan_Type__c);
            //System.assert(acc.Remaining_Loan_Amount__c, testAcc.Remaining_Loan_Amount__c);
            System.assert(acc.Total_Loan_Amount__c, testAcc.Total_Loan_Amount__c);
        } catch (Exception e) {
            System.assert(false, e.getMessage());
        }
        Test.stopTest();
    }
    

    @isTest
    public static void testAccount_90() {
        Account acc = new Account();
        acc.Name = 'ToUpdate Account';
        acc.Balance__c = 100;
        acc.RecordTypeId = Schema.SObjectType.Account.getRecordTypeInfosByName().get('Blank').getRecordTypeId();
        acc.Email__c = 'testUpdate@pairwise.test';
        acc.Active__c = 'Yes';
        insert acc;
        
        acc.Name = '';
        acc.Balance__c = 186;
        acc.Calculated_Interest__c = 7;
        acc.Email__c = '';
        acc.Loan_Interest_Rate__c = 0.11800000000000001;
        acc.Loan_Type__c = 'Home Loan';
        acc.Remaining_Loan_Amount__c = 15000000;
        acc.Total_Loan_Amount__c = 8305922;
        
        Test.startTest();
        try {
            update acc;
            Account testAcc = [SELECT name, balance__c, calculated_interest__c, email__c, interest_rate__c, loan_interest_rate__c, loan_type__c, remaining_loan_amount__c, total_loan_amount__c, active__c FROM Account WHERE name='' LIMIT 1];
            System.assert(acc.Name, testAcc.Name);
            System.assert(acc.Balance__c, testAcc.Balance__c);
            System.assert(acc.Balance__c * 0.05, testAcc.Calculated_Interest__c);
            System.assert(acc.Email__c, testAcc.Email__c);
            System.assert(acc.Loan_Interest_Rate__c, testAcc.Loan_Interest_Rate__c);
            System.assert(acc.Loan_Type__c, testAcc.Loan_Type__c);
            //System.assert(acc.Remaining_Loan_Amount__c, testAcc.Remaining_Loan_Amount__c);
            System.assert(acc.Total_Loan_Amount__c, testAcc.Total_Loan_Amount__c);
        } catch (Exception e) {
            System.assert(false, e.getMessage());
        }
        Test.stopTest();
    }
    

    @isTest
    public static void testAccount_91() {
        Account acc = new Account();
        acc.Name = '';
        acc.Balance__c = 112;
        acc.RecordTypeId = Schema.SObjectType.Account.getRecordTypeInfosByName().get('>=$0').getRecordTypeId();
        acc.Calculated_Interest__c = null;
        acc.Email__c = '';
        acc.Loan_Interest_Rate__c = 107;
        acc.Loan_Type__c = 'Home Loan';
        //acc.Remaining_Loan_Amount__c = ;
        acc.Total_Loan_Amount__c = 352963;
        acc.Active__c = 'Yes';
        
        Test.startTest();
        try {
            insert acc;
            Account testAcc = [SELECT name, balance__c, calculated_interest__c, email__c, interest_rate__c, loan_interest_rate__c, loan_type__c, remaining_loan_amount__c, total_loan_amount__c, active__c FROM Account WHERE name='' LIMIT 1];
            System.assert(acc.Name, testAcc.Name);
            System.assert(acc.Balance__c, testAcc.Balance__c);
            System.assert(acc.Balance__c * 0.06, testAcc.Calculated_Interest__c);
            System.assert(acc.Email__c, testAcc.Email__c);
            System.assert(acc.Loan_Interest_Rate__c, testAcc.Loan_Interest_Rate__c);
            System.assert(acc.Loan_Type__c, testAcc.Loan_Type__c);
            //System.assert(acc.Remaining_Loan_Amount__c, testAcc.Remaining_Loan_Amount__c);
            System.assert(acc.Total_Loan_Amount__c, testAcc.Total_Loan_Amount__c);
        } catch (Exception e) {
            System.assert(false, e.getMessage());
        }
        Test.stopTest();
    }
    

    @isTest
    public static void testAccount_92() {
        Account acc = new Account();
        acc.Name = 'ToUpdate Account';
        acc.Balance__c = 100;
        acc.RecordTypeId = Schema.SObjectType.Account.getRecordTypeInfosByName().get('Blank').getRecordTypeId();
        acc.Email__c = 'testUpdate@pairwise.test';
        acc.Active__c = 'Yes';
        insert acc;
        
        acc.Name = '';
        acc.Balance__c = 160;
        acc.Calculated_Interest__c = 7;
        acc.Email__c = '';
        acc.Loan_Interest_Rate__c = 0.136;
        acc.Loan_Type__c = 'Home Loan';
        acc.Remaining_Loan_Amount__c = ;
        acc.Total_Loan_Amount__c = 64327;
        
        Test.startTest();
        try {
            update acc;
            Account testAcc = [SELECT name, balance__c, calculated_interest__c, email__c, interest_rate__c, loan_interest_rate__c, loan_type__c, remaining_loan_amount__c, total_loan_amount__c, active__c FROM Account WHERE name='' LIMIT 1];
            System.assert(acc.Name, testAcc.Name);
            System.assert(acc.Balance__c, testAcc.Balance__c);
            System.assert(acc.Balance__c * 0.038, testAcc.Calculated_Interest__c);
            System.assert(acc.Email__c, testAcc.Email__c);
            System.assert(acc.Loan_Interest_Rate__c, testAcc.Loan_Interest_Rate__c);
            System.assert(acc.Loan_Type__c, testAcc.Loan_Type__c);
            //System.assert(acc.Remaining_Loan_Amount__c, testAcc.Remaining_Loan_Amount__c);
            System.assert(acc.Total_Loan_Amount__c, testAcc.Total_Loan_Amount__c);
        } catch (Exception e) {
            System.assert(false, e.getMessage());
        }
        Test.stopTest();
    }
    

    @isTest
    public static void testAccount_93() {
        Account acc = new Account();
        acc.Name = 'ToUpdate Account';
        acc.Balance__c = 100;
        acc.RecordTypeId = Schema.SObjectType.Account.getRecordTypeInfosByName().get('Blank').getRecordTypeId();
        acc.Email__c = 'testUpdate@pairwise.test';
        acc.Active__c = 'Yes';
        insert acc;
        
        acc.Name = '';
        acc.Balance__c = 156;
        acc.Calculated_Interest__c = 7;
        acc.Email__c = '';
        acc.Loan_Interest_Rate__c = 0.125;
        acc.Loan_Type__c = 'Car Loan';
        acc.Remaining_Loan_Amount__c = ;
        acc.Total_Loan_Amount__c = 561672;
        
        Test.startTest();
        try {
            update acc;
            Account testAcc = [SELECT name, balance__c, calculated_interest__c, email__c, interest_rate__c, loan_interest_rate__c, loan_type__c, remaining_loan_amount__c, total_loan_amount__c, active__c FROM Account WHERE name='' LIMIT 1];
            System.assert(acc.Name, testAcc.Name);
            System.assert(acc.Balance__c, testAcc.Balance__c);
            System.assert(acc.Balance__c * 0.05, testAcc.Calculated_Interest__c);
            System.assert(acc.Email__c, testAcc.Email__c);
            System.assert(acc.Loan_Interest_Rate__c, testAcc.Loan_Interest_Rate__c);
            System.assert(acc.Loan_Type__c, testAcc.Loan_Type__c);
            //System.assert(acc.Remaining_Loan_Amount__c, testAcc.Remaining_Loan_Amount__c);
            System.assert(acc.Total_Loan_Amount__c, testAcc.Total_Loan_Amount__c);
        } catch (Exception e) {
            System.assert(false, e.getMessage());
        }
        Test.stopTest();
    }
    

    @isTest
    public static void testAccount_94() {
        Account acc = new Account();
        acc.Name = 'ToUpdate Account';
        acc.Balance__c = 100;
        acc.RecordTypeId = Schema.SObjectType.Account.getRecordTypeInfosByName().get('Blank').getRecordTypeId();
        acc.Email__c = 'testUpdate@pairwise.test';
        acc.Active__c = 'Yes';
        insert acc;
        
        acc.Name = '';
        acc.Balance__c = 103;
        acc.Calculated_Interest__c = null;
        acc.Email__c = 'test94@pairwise.test';
        acc.Loan_Interest_Rate__c = 0.084;
        acc.Loan_Type__c = '';
        acc.Remaining_Loan_Amount__c = 15000000;
        acc.Total_Loan_Amount__c = null;
        
        Test.startTest();
        try {
            update acc;
            Account testAcc = [SELECT name, balance__c, calculated_interest__c, email__c, interest_rate__c, loan_interest_rate__c, loan_type__c, remaining_loan_amount__c, total_loan_amount__c, active__c FROM Account WHERE name='' LIMIT 1];
            System.assert(acc.Name, testAcc.Name);
            System.assert(acc.Balance__c, testAcc.Balance__c);
            System.assert(acc.Balance__c * 0.05, testAcc.Calculated_Interest__c);
            System.assert(acc.Email__c, testAcc.Email__c);
            System.assert(acc.Loan_Interest_Rate__c, testAcc.Loan_Interest_Rate__c);
            System.assert(acc.Loan_Type__c, testAcc.Loan_Type__c);
            //System.assert(acc.Remaining_Loan_Amount__c, testAcc.Remaining_Loan_Amount__c);
            System.assert(acc.Total_Loan_Amount__c, testAcc.Total_Loan_Amount__c);
        } catch (Exception e) {
            System.assert(false, e.getMessage());
        }
        Test.stopTest();
    }
    

    @isTest
    public static void testAccount_95() {
        Account acc = new Account();
        acc.Name = 'ToUpdate Account';
        acc.Balance__c = 100;
        acc.RecordTypeId = Schema.SObjectType.Account.getRecordTypeInfosByName().get('Negative').getRecordTypeId();
        acc.Email__c = 'testUpdate@pairwise.test';
        acc.Active__c = 'Yes';
        insert acc;
        
        acc.Name = '';
        acc.Balance__c = 145;
        acc.Calculated_Interest__c = null;
        acc.Email__c = 'test95@pairwise.test';
        acc.Loan_Interest_Rate__c = null;
        acc.Loan_Type__c = 'Home Loan';
        acc.Remaining_Loan_Amount__c = ;
        acc.Total_Loan_Amount__c = 4742155;
        
        Test.startTest();
        try {
            update acc;
            Account testAcc = [SELECT name, balance__c, calculated_interest__c, email__c, interest_rate__c, loan_interest_rate__c, loan_type__c, remaining_loan_amount__c, total_loan_amount__c, active__c FROM Account WHERE name='' LIMIT 1];
            System.assert(acc.Name, testAcc.Name);
            System.assert(acc.Balance__c, testAcc.Balance__c);
            System.assert(acc.Balance__c * 0.06, testAcc.Calculated_Interest__c);
            System.assert(acc.Email__c, testAcc.Email__c);
            System.assert(acc.Loan_Interest_Rate__c, testAcc.Loan_Interest_Rate__c);
            System.assert(acc.Loan_Type__c, testAcc.Loan_Type__c);
            //System.assert(acc.Remaining_Loan_Amount__c, testAcc.Remaining_Loan_Amount__c);
            System.assert(acc.Total_Loan_Amount__c, testAcc.Total_Loan_Amount__c);
        } catch (Exception e) {
            System.assert(false, e.getMessage());
        }
        Test.stopTest();
    }
    

    @isTest
    public static void testAccount_96() {
        Account acc = new Account();
        acc.Name = 'ToUpdate Account';
        acc.Balance__c = 100;
        acc.RecordTypeId = Schema.SObjectType.Account.getRecordTypeInfosByName().get('Blank').getRecordTypeId();
        acc.Email__c = 'testUpdate@pairwise.test';
        acc.Active__c = 'Yes';
        insert acc;
        
        acc.Name = '';
        acc.Balance__c = 189;
        acc.Calculated_Interest__c = null;
        acc.Email__c = '';
        acc.Loan_Interest_Rate__c = 0.09;
        acc.Loan_Type__c = 'Home Loan';
        acc.Remaining_Loan_Amount__c = ;
        acc.Total_Loan_Amount__c = 114956;
        
        Test.startTest();
        try {
            update acc;
            Account testAcc = [SELECT name, balance__c, calculated_interest__c, email__c, interest_rate__c, loan_interest_rate__c, loan_type__c, remaining_loan_amount__c, total_loan_amount__c, active__c FROM Account WHERE name='' LIMIT 1];
            System.assert(acc.Name, testAcc.Name);
            System.assert(acc.Balance__c, testAcc.Balance__c);
            System.assert(acc.Balance__c * 0.06, testAcc.Calculated_Interest__c);
            System.assert(acc.Email__c, testAcc.Email__c);
            System.assert(acc.Loan_Interest_Rate__c, testAcc.Loan_Interest_Rate__c);
            System.assert(acc.Loan_Type__c, testAcc.Loan_Type__c);
            //System.assert(acc.Remaining_Loan_Amount__c, testAcc.Remaining_Loan_Amount__c);
            System.assert(acc.Total_Loan_Amount__c, testAcc.Total_Loan_Amount__c);
        } catch (Exception e) {
            System.assert(false, e.getMessage());
        }
        Test.stopTest();
    }
    

    @isTest
    public static void testAccount_97() {
        Account acc = new Account();
        acc.Name = 'ToUpdate Account';
        acc.Balance__c = 100;
        acc.RecordTypeId = Schema.SObjectType.Account.getRecordTypeInfosByName().get('Negative').getRecordTypeId();
        acc.Email__c = 'testUpdate@pairwise.test';
        acc.Active__c = 'Yes';
        insert acc;
        
        acc.Name = '';
        acc.Balance__c = 149;
        acc.Calculated_Interest__c = 7;
        acc.Email__c = '';
        acc.Loan_Interest_Rate__c = 0.146;
        acc.Loan_Type__c = 'Home Loan';
        acc.Remaining_Loan_Amount__c = ;
        acc.Total_Loan_Amount__c = 256253;
        
        Test.startTest();
        try {
            update acc;
            Account testAcc = [SELECT name, balance__c, calculated_interest__c, email__c, interest_rate__c, loan_interest_rate__c, loan_type__c, remaining_loan_amount__c, total_loan_amount__c, active__c FROM Account WHERE name='' LIMIT 1];
            System.assert(acc.Name, testAcc.Name);
            System.assert(acc.Balance__c, testAcc.Balance__c);
            System.assert(acc.Balance__c * 0.038, testAcc.Calculated_Interest__c);
            System.assert(acc.Email__c, testAcc.Email__c);
            System.assert(acc.Loan_Interest_Rate__c, testAcc.Loan_Interest_Rate__c);
            System.assert(acc.Loan_Type__c, testAcc.Loan_Type__c);
            //System.assert(acc.Remaining_Loan_Amount__c, testAcc.Remaining_Loan_Amount__c);
            System.assert(acc.Total_Loan_Amount__c, testAcc.Total_Loan_Amount__c);
        } catch (Exception e) {
            System.assert(false, e.getMessage());
        }
        Test.stopTest();
    }
    

    @isTest
    public static void testAccount_98() {
        Account acc = new Account();
        acc.Name = 'ToUpdate Account';
        acc.Balance__c = 100;
        acc.RecordTypeId = Schema.SObjectType.Account.getRecordTypeInfosByName().get('Negative').getRecordTypeId();
        acc.Email__c = 'testUpdate@pairwise.test';
        acc.Active__c = 'Yes';
        insert acc;
        
        acc.Name = '';
        acc.Balance__c = 191;
        acc.Calculated_Interest__c = 7;
        acc.Email__c = 'test98@pairwise.test';
        acc.Loan_Interest_Rate__c = 0.159;
        acc.Loan_Type__c = 'Home Loan';
        acc.Remaining_Loan_Amount__c = ;
        acc.Total_Loan_Amount__c = 3647950;
        
        Test.startTest();
        try {
            update acc;
            Account testAcc = [SELECT name, balance__c, calculated_interest__c, email__c, interest_rate__c, loan_interest_rate__c, loan_type__c, remaining_loan_amount__c, total_loan_amount__c, active__c FROM Account WHERE name='' LIMIT 1];
            System.assert(acc.Name, testAcc.Name);
            System.assert(acc.Balance__c, testAcc.Balance__c);
            System.assert(acc.Balance__c * 0.05, testAcc.Calculated_Interest__c);
            System.assert(acc.Email__c, testAcc.Email__c);
            System.assert(acc.Loan_Interest_Rate__c, testAcc.Loan_Interest_Rate__c);
            System.assert(acc.Loan_Type__c, testAcc.Loan_Type__c);
            //System.assert(acc.Remaining_Loan_Amount__c, testAcc.Remaining_Loan_Amount__c);
            System.assert(acc.Total_Loan_Amount__c, testAcc.Total_Loan_Amount__c);
        } catch (Exception e) {
            System.assert(false, e.getMessage());
        }
        Test.stopTest();
    }
    

    @isTest
    public static void testAccount_99() {
        Account acc = new Account();
        acc.Name = '';
        acc.Balance__c = 166;
        acc.RecordTypeId = Schema.SObjectType.Account.getRecordTypeInfosByName().get('>=$100').getRecordTypeId();
        acc.Calculated_Interest__c = null;
        acc.Email__c = '';
        acc.Loan_Interest_Rate__c = 0.1;
        acc.Loan_Type__c = 'Home Loan';
        //acc.Remaining_Loan_Amount__c = 15000000;
        acc.Total_Loan_Amount__c = null;
        acc.Active__c = 'Yes';
        
        Test.startTest();
        try {
            insert acc;
            Account testAcc = [SELECT name, balance__c, calculated_interest__c, email__c, interest_rate__c, loan_interest_rate__c, loan_type__c, remaining_loan_amount__c, total_loan_amount__c, active__c FROM Account WHERE name='' LIMIT 1];
            System.assert(acc.Name, testAcc.Name);
            System.assert(acc.Balance__c, testAcc.Balance__c);
            System.assert(acc.Balance__c * 0.05, testAcc.Calculated_Interest__c);
            System.assert(acc.Email__c, testAcc.Email__c);
            System.assert(acc.Loan_Interest_Rate__c, testAcc.Loan_Interest_Rate__c);
            System.assert(acc.Loan_Type__c, testAcc.Loan_Type__c);
            //System.assert(acc.Remaining_Loan_Amount__c, testAcc.Remaining_Loan_Amount__c);
            System.assert(acc.Total_Loan_Amount__c, testAcc.Total_Loan_Amount__c);
        } catch (Exception e) {
            System.assert(false, e.getMessage());
        }
        Test.stopTest();
    }
    

    @isTest
    public static void testAccount_100() {
        Account acc = new Account();
        acc.Name = 'ToUpdate Account';
        acc.Balance__c = 100;
        acc.RecordTypeId = Schema.SObjectType.Account.getRecordTypeInfosByName().get('>=$0').getRecordTypeId();
        acc.Email__c = 'testUpdate@pairwise.test';
        acc.Active__c = 'Yes';
        insert acc;
        
        acc.Name = '';
        acc.Balance__c = 194;
        acc.Calculated_Interest__c = null;
        acc.Email__c = 'test100@pairwise.test';
        acc.Loan_Interest_Rate__c = 0.125;
        acc.Loan_Type__c = 'Home Loan';
        acc.Remaining_Loan_Amount__c = ;
        acc.Total_Loan_Amount__c = 9812582;
        
        Test.startTest();
        try {
            update acc;
            Account testAcc = [SELECT name, balance__c, calculated_interest__c, email__c, interest_rate__c, loan_interest_rate__c, loan_type__c, remaining_loan_amount__c, total_loan_amount__c, active__c FROM Account WHERE name='' LIMIT 1];
            System.assert(acc.Name, testAcc.Name);
            System.assert(acc.Balance__c, testAcc.Balance__c);
            System.assert(acc.Balance__c * 0.05, testAcc.Calculated_Interest__c);
            System.assert(acc.Email__c, testAcc.Email__c);
            System.assert(acc.Loan_Interest_Rate__c, testAcc.Loan_Interest_Rate__c);
            System.assert(acc.Loan_Type__c, testAcc.Loan_Type__c);
            //System.assert(acc.Remaining_Loan_Amount__c, testAcc.Remaining_Loan_Amount__c);
            System.assert(acc.Total_Loan_Amount__c, testAcc.Total_Loan_Amount__c);
        } catch (Exception e) {
            System.assert(false, e.getMessage());
        }
        Test.stopTest();
    }
    

    @isTest
    public static void testAccount_101() {
        Account acc = new Account();
        acc.Name = 'ToUpdate Account';
        acc.Balance__c = 100;
        acc.RecordTypeId = Schema.SObjectType.Account.getRecordTypeInfosByName().get('Blank').getRecordTypeId();
        acc.Email__c = 'testUpdate@pairwise.test';
        acc.Active__c = 'Yes';
        insert acc;
        
        acc.Name = '';
        acc.Balance__c = 112;
        acc.Calculated_Interest__c = 7;
        acc.Email__c = '';
        acc.Loan_Interest_Rate__c = 0.10300000000000001;
        acc.Loan_Type__c = '';
        acc.Remaining_Loan_Amount__c = ;
        acc.Total_Loan_Amount__c = null;
        
        Test.startTest();
        try {
            update acc;
            Account testAcc = [SELECT name, balance__c, calculated_interest__c, email__c, interest_rate__c, loan_interest_rate__c, loan_type__c, remaining_loan_amount__c, total_loan_amount__c, active__c FROM Account WHERE name='' LIMIT 1];
            System.assert(acc.Name, testAcc.Name);
            System.assert(acc.Balance__c, testAcc.Balance__c);
            System.assert(acc.Balance__c * 0.05, testAcc.Calculated_Interest__c);
            System.assert(acc.Email__c, testAcc.Email__c);
            System.assert(acc.Loan_Interest_Rate__c, testAcc.Loan_Interest_Rate__c);
            System.assert(acc.Loan_Type__c, testAcc.Loan_Type__c);
            //System.assert(acc.Remaining_Loan_Amount__c, testAcc.Remaining_Loan_Amount__c);
            System.assert(acc.Total_Loan_Amount__c, testAcc.Total_Loan_Amount__c);
        } catch (Exception e) {
            System.assert(false, e.getMessage());
        }
        Test.stopTest();
    }
    

    @isTest
    public static void testAccount_102() {
        Account acc = new Account();
        acc.Name = '';
        acc.Balance__c = 193;
        acc.RecordTypeId = Schema.SObjectType.Account.getRecordTypeInfosByName().get('>=$100').getRecordTypeId();
        acc.Calculated_Interest__c = 7;
        acc.Email__c = '';
        acc.Loan_Interest_Rate__c = 0.084;
        acc.Loan_Type__c = 'Car Loan';
        //acc.Remaining_Loan_Amount__c = 15000000;
        acc.Total_Loan_Amount__c = 859107;
        acc.Active__c = 'Yes';
        
        Test.startTest();
        try {
            insert acc;
            Account testAcc = [SELECT name, balance__c, calculated_interest__c, email__c, interest_rate__c, loan_interest_rate__c, loan_type__c, remaining_loan_amount__c, total_loan_amount__c, active__c FROM Account WHERE name='' LIMIT 1];
            System.assert(acc.Name, testAcc.Name);
            System.assert(acc.Balance__c, testAcc.Balance__c);
            System.assert(acc.Balance__c * 0.05, testAcc.Calculated_Interest__c);
            System.assert(acc.Email__c, testAcc.Email__c);
            System.assert(acc.Loan_Interest_Rate__c, testAcc.Loan_Interest_Rate__c);
            System.assert(acc.Loan_Type__c, testAcc.Loan_Type__c);
            //System.assert(acc.Remaining_Loan_Amount__c, testAcc.Remaining_Loan_Amount__c);
            System.assert(acc.Total_Loan_Amount__c, testAcc.Total_Loan_Amount__c);
        } catch (Exception e) {
            System.assert(false, e.getMessage());
        }
        Test.stopTest();
    }
    

    @isTest
    public static void testAccount_103() {
        Account acc = new Account();
        acc.Name = 'ToUpdate Account';
        acc.Balance__c = 100;
        acc.RecordTypeId = Schema.SObjectType.Account.getRecordTypeInfosByName().get('Negative').getRecordTypeId();
        acc.Email__c = 'testUpdate@pairwise.test';
        acc.Active__c = 'Yes';
        insert acc;
        
        acc.Name = '';
        acc.Balance__c = 113;
        acc.Calculated_Interest__c = 7;
        acc.Email__c = 'test103@pairwise.test';
        acc.Loan_Interest_Rate__c = 0.1;
        acc.Loan_Type__c = 'Home Loan';
        acc.Remaining_Loan_Amount__c = ;
        acc.Total_Loan_Amount__c = 195276;
        
        Test.startTest();
        try {
            update acc;
            Account testAcc = [SELECT name, balance__c, calculated_interest__c, email__c, interest_rate__c, loan_interest_rate__c, loan_type__c, remaining_loan_amount__c, total_loan_amount__c, active__c FROM Account WHERE name='' LIMIT 1];
            System.assert(acc.Name, testAcc.Name);
            System.assert(acc.Balance__c, testAcc.Balance__c);
            System.assert(acc.Balance__c * 0.038, testAcc.Calculated_Interest__c);
            System.assert(acc.Email__c, testAcc.Email__c);
            System.assert(acc.Loan_Interest_Rate__c, testAcc.Loan_Interest_Rate__c);
            System.assert(acc.Loan_Type__c, testAcc.Loan_Type__c);
            //System.assert(acc.Remaining_Loan_Amount__c, testAcc.Remaining_Loan_Amount__c);
            System.assert(acc.Total_Loan_Amount__c, testAcc.Total_Loan_Amount__c);
        } catch (Exception e) {
            System.assert(false, e.getMessage());
        }
        Test.stopTest();
    }
    

    @isTest
    public static void testAccount_104() {
        Account acc = new Account();
        acc.Name = 'ToUpdate Account';
        acc.Balance__c = 100;
        acc.RecordTypeId = Schema.SObjectType.Account.getRecordTypeInfosByName().get('Blank').getRecordTypeId();
        acc.Email__c = 'testUpdate@pairwise.test';
        acc.Active__c = 'Yes';
        insert acc;
        
        acc.Name = '';
        acc.Balance__c = 121;
        acc.Calculated_Interest__c = null;
        acc.Email__c = 'test104@pairwise.test';
        acc.Loan_Interest_Rate__c = 0.14;
        acc.Loan_Type__c = 'Home Loan';
        acc.Remaining_Loan_Amount__c = 15000000;
        acc.Total_Loan_Amount__c = 832638;
        
        Test.startTest();
        try {
            update acc;
            Account testAcc = [SELECT name, balance__c, calculated_interest__c, email__c, interest_rate__c, loan_interest_rate__c, loan_type__c, remaining_loan_amount__c, total_loan_amount__c, active__c FROM Account WHERE name='' LIMIT 1];
            System.assert(acc.Name, testAcc.Name);
            System.assert(acc.Balance__c, testAcc.Balance__c);
            System.assert(acc.Balance__c * 0.038, testAcc.Calculated_Interest__c);
            System.assert(acc.Email__c, testAcc.Email__c);
            System.assert(acc.Loan_Interest_Rate__c, testAcc.Loan_Interest_Rate__c);
            System.assert(acc.Loan_Type__c, testAcc.Loan_Type__c);
            //System.assert(acc.Remaining_Loan_Amount__c, testAcc.Remaining_Loan_Amount__c);
            System.assert(acc.Total_Loan_Amount__c, testAcc.Total_Loan_Amount__c);
        } catch (Exception e) {
            System.assert(false, e.getMessage());
        }
        Test.stopTest();
    }
    

    @isTest
    public static void testAccount_105() {
        Account acc = new Account();
        acc.Name = 'ToUpdate Account';
        acc.Balance__c = 100;
        acc.RecordTypeId = Schema.SObjectType.Account.getRecordTypeInfosByName().get('Blank').getRecordTypeId();
        acc.Email__c = 'testUpdate@pairwise.test';
        acc.Active__c = 'Yes';
        insert acc;
        
        acc.Name = '';
        acc.Balance__c = 168;
        acc.Calculated_Interest__c = 7;
        acc.Email__c = 'test105@pairwise.test';
        acc.Loan_Interest_Rate__c = null;
        acc.Loan_Type__c = '';
        acc.Remaining_Loan_Amount__c = ;
        acc.Total_Loan_Amount__c = null;
        
        Test.startTest();
        try {
            update acc;
            Account testAcc = [SELECT name, balance__c, calculated_interest__c, email__c, interest_rate__c, loan_interest_rate__c, loan_type__c, remaining_loan_amount__c, total_loan_amount__c, active__c FROM Account WHERE name='' LIMIT 1];
            System.assert(acc.Name, testAcc.Name);
            System.assert(acc.Balance__c, testAcc.Balance__c);
            System.assert(acc.Balance__c * 0.05, testAcc.Calculated_Interest__c);
            System.assert(acc.Email__c, testAcc.Email__c);
            System.assert(acc.Loan_Interest_Rate__c, testAcc.Loan_Interest_Rate__c);
            System.assert(acc.Loan_Type__c, testAcc.Loan_Type__c);
            //System.assert(acc.Remaining_Loan_Amount__c, testAcc.Remaining_Loan_Amount__c);
            System.assert(acc.Total_Loan_Amount__c, testAcc.Total_Loan_Amount__c);
        } catch (Exception e) {
            System.assert(false, e.getMessage());
        }
        Test.stopTest();
    }
    

    @isTest
    public static void testAccount_106() {
        Account acc = new Account();
        acc.Name = '';
        acc.Balance__c = 183;
        acc.RecordTypeId = Schema.SObjectType.Account.getRecordTypeInfosByName().get('>=$100').getRecordTypeId();
        acc.Calculated_Interest__c = 7;
        acc.Email__c = '';
        acc.Loan_Interest_Rate__c = 0.084;
        acc.Loan_Type__c = 'Home Loan';
        //acc.Remaining_Loan_Amount__c = ;
        acc.Total_Loan_Amount__c = 814106;
        acc.Active__c = 'Yes';
        
        Test.startTest();
        try {
            insert acc;
            Account testAcc = [SELECT name, balance__c, calculated_interest__c, email__c, interest_rate__c, loan_interest_rate__c, loan_type__c, remaining_loan_amount__c, total_loan_amount__c, active__c FROM Account WHERE name='' LIMIT 1];
            System.assert(acc.Name, testAcc.Name);
            System.assert(acc.Balance__c, testAcc.Balance__c);
            System.assert(acc.Balance__c * 0.05, testAcc.Calculated_Interest__c);
            System.assert(acc.Email__c, testAcc.Email__c);
            System.assert(acc.Loan_Interest_Rate__c, testAcc.Loan_Interest_Rate__c);
            System.assert(acc.Loan_Type__c, testAcc.Loan_Type__c);
            //System.assert(acc.Remaining_Loan_Amount__c, testAcc.Remaining_Loan_Amount__c);
            System.assert(acc.Total_Loan_Amount__c, testAcc.Total_Loan_Amount__c);
        } catch (Exception e) {
            System.assert(false, e.getMessage());
        }
        Test.stopTest();
    }
    

    @isTest
    public static void testAccount_107() {
        Account acc = new Account();
        acc.Name = 'ToUpdate Account';
        acc.Balance__c = 100;
        acc.RecordTypeId = Schema.SObjectType.Account.getRecordTypeInfosByName().get('Blank').getRecordTypeId();
        acc.Email__c = 'testUpdate@pairwise.test';
        acc.Active__c = 'Yes';
        insert acc;
        
        acc.Name = '';
        acc.Balance__c = 113;
        acc.Calculated_Interest__c = 7;
        acc.Email__c = '';
        acc.Loan_Interest_Rate__c = 0.11900000000000001;
        acc.Loan_Type__c = '';
        acc.Remaining_Loan_Amount__c = ;
        acc.Total_Loan_Amount__c = null;
        
        Test.startTest();
        try {
            update acc;
            Account testAcc = [SELECT name, balance__c, calculated_interest__c, email__c, interest_rate__c, loan_interest_rate__c, loan_type__c, remaining_loan_amount__c, total_loan_amount__c, active__c FROM Account WHERE name='' LIMIT 1];
            System.assert(acc.Name, testAcc.Name);
            System.assert(acc.Balance__c, testAcc.Balance__c);
            System.assert(acc.Balance__c * 0.05, testAcc.Calculated_Interest__c);
            System.assert(acc.Email__c, testAcc.Email__c);
            System.assert(acc.Loan_Interest_Rate__c, testAcc.Loan_Interest_Rate__c);
            System.assert(acc.Loan_Type__c, testAcc.Loan_Type__c);
            //System.assert(acc.Remaining_Loan_Amount__c, testAcc.Remaining_Loan_Amount__c);
            System.assert(acc.Total_Loan_Amount__c, testAcc.Total_Loan_Amount__c);
        } catch (Exception e) {
            System.assert(false, e.getMessage());
        }
        Test.stopTest();
    }
    

    @isTest
    public static void testAccount_108() {
        Account acc = new Account();
        acc.Name = 'ToUpdate Account';
        acc.Balance__c = 100;
        acc.RecordTypeId = Schema.SObjectType.Account.getRecordTypeInfosByName().get('Negative').getRecordTypeId();
        acc.Email__c = 'testUpdate@pairwise.test';
        acc.Active__c = 'Yes';
        insert acc;
        
        acc.Name = '';
        acc.Balance__c = 118;
        acc.Calculated_Interest__c = 7;
        acc.Email__c = 'test108@pairwise.test';
        acc.Loan_Interest_Rate__c = null;
        acc.Loan_Type__c = 'Car Loan';
        acc.Remaining_Loan_Amount__c = 15000000;
        acc.Total_Loan_Amount__c = 250659;
        
        Test.startTest();
        try {
            update acc;
            Account testAcc = [SELECT name, balance__c, calculated_interest__c, email__c, interest_rate__c, loan_interest_rate__c, loan_type__c, remaining_loan_amount__c, total_loan_amount__c, active__c FROM Account WHERE name='' LIMIT 1];
            System.assert(acc.Name, testAcc.Name);
            System.assert(acc.Balance__c, testAcc.Balance__c);
            System.assert(acc.Balance__c * 0.038, testAcc.Calculated_Interest__c);
            System.assert(acc.Email__c, testAcc.Email__c);
            System.assert(acc.Loan_Interest_Rate__c, testAcc.Loan_Interest_Rate__c);
            System.assert(acc.Loan_Type__c, testAcc.Loan_Type__c);
            //System.assert(acc.Remaining_Loan_Amount__c, testAcc.Remaining_Loan_Amount__c);
            System.assert(acc.Total_Loan_Amount__c, testAcc.Total_Loan_Amount__c);
        } catch (Exception e) {
            System.assert(false, e.getMessage());
        }
        Test.stopTest();
    }
    

    @isTest
    public static void testAccount_109() {
        Account acc = new Account();
        acc.Name = 'ToUpdate Account';
        acc.Balance__c = 100;
        acc.RecordTypeId = Schema.SObjectType.Account.getRecordTypeInfosByName().get('Negative').getRecordTypeId();
        acc.Email__c = 'testUpdate@pairwise.test';
        acc.Active__c = 'Yes';
        insert acc;
        
        acc.Name = '';
        acc.Balance__c = 183;
        acc.Calculated_Interest__c = 7;
        acc.Email__c = 'test109@pairwise.test';
        acc.Loan_Interest_Rate__c = 0.11900000000000001;
        acc.Loan_Type__c = 'Home Loan';
        acc.Remaining_Loan_Amount__c = 15000000;
        acc.Total_Loan_Amount__c = 21820;
        
        Test.startTest();
        try {
            update acc;
            Account testAcc = [SELECT name, balance__c, calculated_interest__c, email__c, interest_rate__c, loan_interest_rate__c, loan_type__c, remaining_loan_amount__c, total_loan_amount__c, active__c FROM Account WHERE name='' LIMIT 1];
            System.assert(acc.Name, testAcc.Name);
            System.assert(acc.Balance__c, testAcc.Balance__c);
            System.assert(acc.Balance__c * 0.038, testAcc.Calculated_Interest__c);
            System.assert(acc.Email__c, testAcc.Email__c);
            System.assert(acc.Loan_Interest_Rate__c, testAcc.Loan_Interest_Rate__c);
            System.assert(acc.Loan_Type__c, testAcc.Loan_Type__c);
            //System.assert(acc.Remaining_Loan_Amount__c, testAcc.Remaining_Loan_Amount__c);
            System.assert(acc.Total_Loan_Amount__c, testAcc.Total_Loan_Amount__c);
        } catch (Exception e) {
            System.assert(false, e.getMessage());
        }
        Test.stopTest();
    }
    

    @isTest
    public static void testAccount_110() {
        Account acc = new Account();
        acc.Name = 'ToUpdate Account';
        acc.Balance__c = 100;
        acc.RecordTypeId = Schema.SObjectType.Account.getRecordTypeInfosByName().get('>=$0').getRecordTypeId();
        acc.Email__c = 'testUpdate@pairwise.test';
        acc.Active__c = 'Yes';
        insert acc;
        
        acc.Name = '';
        acc.Balance__c = 187;
        acc.Calculated_Interest__c = null;
        acc.Email__c = 'test110@pairwise.test';
        acc.Loan_Interest_Rate__c = 0.146;
        acc.Loan_Type__c = '';
        acc.Remaining_Loan_Amount__c = ;
        acc.Total_Loan_Amount__c = null;
        
        Test.startTest();
        try {
            update acc;
            Account testAcc = [SELECT name, balance__c, calculated_interest__c, email__c, interest_rate__c, loan_interest_rate__c, loan_type__c, remaining_loan_amount__c, total_loan_amount__c, active__c FROM Account WHERE name='' LIMIT 1];
            System.assert(acc.Name, testAcc.Name);
            System.assert(acc.Balance__c, testAcc.Balance__c);
            System.assert(acc.Balance__c * 0.05, testAcc.Calculated_Interest__c);
            System.assert(acc.Email__c, testAcc.Email__c);
            System.assert(acc.Loan_Interest_Rate__c, testAcc.Loan_Interest_Rate__c);
            System.assert(acc.Loan_Type__c, testAcc.Loan_Type__c);
            //System.assert(acc.Remaining_Loan_Amount__c, testAcc.Remaining_Loan_Amount__c);
            System.assert(acc.Total_Loan_Amount__c, testAcc.Total_Loan_Amount__c);
        } catch (Exception e) {
            System.assert(false, e.getMessage());
        }
        Test.stopTest();
    }
    

    @isTest
    public static void testAccount_111() {
        Account acc = new Account();
        acc.Name = '';
        acc.Balance__c = 167;
        acc.RecordTypeId = Schema.SObjectType.Account.getRecordTypeInfosByName().get('>=$100').getRecordTypeId();
        acc.Calculated_Interest__c = 7;
        acc.Email__c = '';
        acc.Loan_Interest_Rate__c = 0.109;
        acc.Loan_Type__c = 'Home Loan';
        //acc.Remaining_Loan_Amount__c = ;
        acc.Total_Loan_Amount__c = null;
        acc.Active__c = 'Yes';
        
        Test.startTest();
        try {
            insert acc;
            Account testAcc = [SELECT name, balance__c, calculated_interest__c, email__c, interest_rate__c, loan_interest_rate__c, loan_type__c, remaining_loan_amount__c, total_loan_amount__c, active__c FROM Account WHERE name='' LIMIT 1];
            System.assert(acc.Name, testAcc.Name);
            System.assert(acc.Balance__c, testAcc.Balance__c);
            System.assert(acc.Balance__c * 0.05, testAcc.Calculated_Interest__c);
            System.assert(acc.Email__c, testAcc.Email__c);
            System.assert(acc.Loan_Interest_Rate__c, testAcc.Loan_Interest_Rate__c);
            System.assert(acc.Loan_Type__c, testAcc.Loan_Type__c);
            //System.assert(acc.Remaining_Loan_Amount__c, testAcc.Remaining_Loan_Amount__c);
            System.assert(acc.Total_Loan_Amount__c, testAcc.Total_Loan_Amount__c);
        } catch (Exception e) {
            System.assert(false, e.getMessage());
        }
        Test.stopTest();
    }
    

    @isTest
    public static void testAccount_112() {
        Account acc = new Account();
        acc.Name = '';
        acc.Balance__c = 176;
        acc.RecordTypeId = Schema.SObjectType.Account.getRecordTypeInfosByName().get('>=$100').getRecordTypeId();
        acc.Calculated_Interest__c = 7;
        acc.Email__c = 'test112@pairwise.test';
        acc.Loan_Interest_Rate__c = 0.109;
        acc.Loan_Type__c = 'Home Loan';
        //acc.Remaining_Loan_Amount__c = 15000000;
        acc.Total_Loan_Amount__c = 40553;
        acc.Active__c = 'Yes';
        
        Test.startTest();
        try {
            insert acc;
            Account testAcc = [SELECT name, balance__c, calculated_interest__c, email__c, interest_rate__c, loan_interest_rate__c, loan_type__c, remaining_loan_amount__c, total_loan_amount__c, active__c FROM Account WHERE name='' LIMIT 1];
            System.assert(acc.Name, testAcc.Name);
            System.assert(acc.Balance__c, testAcc.Balance__c);
            System.assert(acc.Balance__c * 0.038, testAcc.Calculated_Interest__c);
            System.assert(acc.Email__c, testAcc.Email__c);
            System.assert(acc.Loan_Interest_Rate__c, testAcc.Loan_Interest_Rate__c);
            System.assert(acc.Loan_Type__c, testAcc.Loan_Type__c);
            //System.assert(acc.Remaining_Loan_Amount__c, testAcc.Remaining_Loan_Amount__c);
            System.assert(acc.Total_Loan_Amount__c, testAcc.Total_Loan_Amount__c);
        } catch (Exception e) {
            System.assert(false, e.getMessage());
        }
        Test.stopTest();
    }
    

    @isTest
    public static void testAccount_113() {
        Account acc = new Account();
        acc.Name = 'ToUpdate Account';
        acc.Balance__c = 100;
        acc.RecordTypeId = Schema.SObjectType.Account.getRecordTypeInfosByName().get('Negative').getRecordTypeId();
        acc.Email__c = 'testUpdate@pairwise.test';
        acc.Active__c = 'Yes';
        insert acc;
        
        acc.Name = '';
        acc.Balance__c = 163;
        acc.Calculated_Interest__c = null;
        acc.Email__c = 'test113@pairwise.test';
        acc.Loan_Interest_Rate__c = 0.11;
        acc.Loan_Type__c = 'Home Loan';
        acc.Remaining_Loan_Amount__c = 15000000;
        acc.Total_Loan_Amount__c = 2094311;
        
        Test.startTest();
        try {
            update acc;
            Account testAcc = [SELECT name, balance__c, calculated_interest__c, email__c, interest_rate__c, loan_interest_rate__c, loan_type__c, remaining_loan_amount__c, total_loan_amount__c, active__c FROM Account WHERE name='' LIMIT 1];
            System.assert(acc.Name, testAcc.Name);
            System.assert(acc.Balance__c, testAcc.Balance__c);
            System.assert(acc.Balance__c * 0.05, testAcc.Calculated_Interest__c);
            System.assert(acc.Email__c, testAcc.Email__c);
            System.assert(acc.Loan_Interest_Rate__c, testAcc.Loan_Interest_Rate__c);
            System.assert(acc.Loan_Type__c, testAcc.Loan_Type__c);
            //System.assert(acc.Remaining_Loan_Amount__c, testAcc.Remaining_Loan_Amount__c);
            System.assert(acc.Total_Loan_Amount__c, testAcc.Total_Loan_Amount__c);
        } catch (Exception e) {
            System.assert(false, e.getMessage());
        }
        Test.stopTest();
    }
    

    @isTest
    public static void testAccount_114() {
        Account acc = new Account();
        acc.Name = 'ToUpdate Account';
        acc.Balance__c = 100;
        acc.RecordTypeId = Schema.SObjectType.Account.getRecordTypeInfosByName().get('Negative').getRecordTypeId();
        acc.Email__c = 'testUpdate@pairwise.test';
        acc.Active__c = 'Yes';
        insert acc;
        
        acc.Name = '';
        acc.Balance__c = 123;
        acc.Calculated_Interest__c = 7;
        acc.Email__c = '';
        acc.Loan_Interest_Rate__c = 0.084;
        acc.Loan_Type__c = 'Car Loan';
        acc.Remaining_Loan_Amount__c = 15000000;
        acc.Total_Loan_Amount__c = 757667;
        
        Test.startTest();
        try {
            update acc;
            Account testAcc = [SELECT name, balance__c, calculated_interest__c, email__c, interest_rate__c, loan_interest_rate__c, loan_type__c, remaining_loan_amount__c, total_loan_amount__c, active__c FROM Account WHERE name='' LIMIT 1];
            System.assert(acc.Name, testAcc.Name);
            System.assert(acc.Balance__c, testAcc.Balance__c);
            System.assert(acc.Balance__c * 0.06, testAcc.Calculated_Interest__c);
            System.assert(acc.Email__c, testAcc.Email__c);
            System.assert(acc.Loan_Interest_Rate__c, testAcc.Loan_Interest_Rate__c);
            System.assert(acc.Loan_Type__c, testAcc.Loan_Type__c);
            //System.assert(acc.Remaining_Loan_Amount__c, testAcc.Remaining_Loan_Amount__c);
            System.assert(acc.Total_Loan_Amount__c, testAcc.Total_Loan_Amount__c);
        } catch (Exception e) {
            System.assert(false, e.getMessage());
        }
        Test.stopTest();
    }
    

    @isTest
    public static void testAccount_115() {
        Account acc = new Account();
        acc.Name = 'ToUpdate Account';
        acc.Balance__c = 100;
        acc.RecordTypeId = Schema.SObjectType.Account.getRecordTypeInfosByName().get('>=$0').getRecordTypeId();
        acc.Email__c = 'testUpdate@pairwise.test';
        acc.Active__c = 'Yes';
        insert acc;
        
        acc.Name = '';
        acc.Balance__c = 128;
        acc.Calculated_Interest__c = 7;
        acc.Email__c = '';
        acc.Loan_Interest_Rate__c = null;
        acc.Loan_Type__c = 'Car Loan';
        acc.Remaining_Loan_Amount__c = 15000000;
        acc.Total_Loan_Amount__c = 321233;
        
        Test.startTest();
        try {
            update acc;
            Account testAcc = [SELECT name, balance__c, calculated_interest__c, email__c, interest_rate__c, loan_interest_rate__c, loan_type__c, remaining_loan_amount__c, total_loan_amount__c, active__c FROM Account WHERE name='' LIMIT 1];
            System.assert(acc.Name, testAcc.Name);
            System.assert(acc.Balance__c, testAcc.Balance__c);
            System.assert(acc.Balance__c * 0.05, testAcc.Calculated_Interest__c);
            System.assert(acc.Email__c, testAcc.Email__c);
            System.assert(acc.Loan_Interest_Rate__c, testAcc.Loan_Interest_Rate__c);
            System.assert(acc.Loan_Type__c, testAcc.Loan_Type__c);
            //System.assert(acc.Remaining_Loan_Amount__c, testAcc.Remaining_Loan_Amount__c);
            System.assert(acc.Total_Loan_Amount__c, testAcc.Total_Loan_Amount__c);
        } catch (Exception e) {
            System.assert(false, e.getMessage());
        }
        Test.stopTest();
    }
    

    @isTest
    public static void testAccount_116() {
        Account acc = new Account();
        acc.Name = 'ToUpdate Account';
        acc.Balance__c = 100;
        acc.RecordTypeId = Schema.SObjectType.Account.getRecordTypeInfosByName().get('Negative').getRecordTypeId();
        acc.Email__c = 'testUpdate@pairwise.test';
        acc.Active__c = 'Yes';
        insert acc;
        
        acc.Name = '';
        acc.Balance__c = 105;
        acc.Calculated_Interest__c = null;
        acc.Email__c = '';
        acc.Loan_Interest_Rate__c = 0.09;
        acc.Loan_Type__c = 'Car Loan';
        acc.Remaining_Loan_Amount__c = 15000000;
        acc.Total_Loan_Amount__c = 4694941;
        
        Test.startTest();
        try {
            update acc;
            Account testAcc = [SELECT name, balance__c, calculated_interest__c, email__c, interest_rate__c, loan_interest_rate__c, loan_type__c, remaining_loan_amount__c, total_loan_amount__c, active__c FROM Account WHERE name='' LIMIT 1];
            System.assert(acc.Name, testAcc.Name);
            System.assert(acc.Balance__c, testAcc.Balance__c);
            System.assert(acc.Balance__c * 0.05, testAcc.Calculated_Interest__c);
            System.assert(acc.Email__c, testAcc.Email__c);
            System.assert(acc.Loan_Interest_Rate__c, testAcc.Loan_Interest_Rate__c);
            System.assert(acc.Loan_Type__c, testAcc.Loan_Type__c);
            //System.assert(acc.Remaining_Loan_Amount__c, testAcc.Remaining_Loan_Amount__c);
            System.assert(acc.Total_Loan_Amount__c, testAcc.Total_Loan_Amount__c);
        } catch (Exception e) {
            System.assert(false, e.getMessage());
        }
        Test.stopTest();
    }
    

    @isTest
    public static void testAccount_117() {
        Account acc = new Account();
        acc.Name = 'ToUpdate Account';
        acc.Balance__c = 100;
        acc.RecordTypeId = Schema.SObjectType.Account.getRecordTypeInfosByName().get('>=$100').getRecordTypeId();
        acc.Email__c = 'testUpdate@pairwise.test';
        acc.Active__c = 'Yes';
        insert acc;
        
        acc.Name = '';
        acc.Balance__c = 109;
        acc.Calculated_Interest__c = null;
        acc.Email__c = 'test117@pairwise.test';
        acc.Loan_Interest_Rate__c = null;
        acc.Loan_Type__c = 'Home Loan';
        acc.Remaining_Loan_Amount__c = ;
        acc.Total_Loan_Amount__c = null;
        
        Test.startTest();
        try {
            update acc;
            Account testAcc = [SELECT name, balance__c, calculated_interest__c, email__c, interest_rate__c, loan_interest_rate__c, loan_type__c, remaining_loan_amount__c, total_loan_amount__c, active__c FROM Account WHERE name='' LIMIT 1];
            System.assert(acc.Name, testAcc.Name);
            System.assert(acc.Balance__c, testAcc.Balance__c);
            System.assert(acc.Balance__c * 0.06, testAcc.Calculated_Interest__c);
            System.assert(acc.Email__c, testAcc.Email__c);
            System.assert(acc.Loan_Interest_Rate__c, testAcc.Loan_Interest_Rate__c);
            System.assert(acc.Loan_Type__c, testAcc.Loan_Type__c);
            //System.assert(acc.Remaining_Loan_Amount__c, testAcc.Remaining_Loan_Amount__c);
            System.assert(acc.Total_Loan_Amount__c, testAcc.Total_Loan_Amount__c);
        } catch (Exception e) {
            System.assert(false, e.getMessage());
        }
        Test.stopTest();
    }
    

    @isTest
    public static void testAccount_118() {
        Account acc = new Account();
        acc.Name = 'ToUpdate Account';
        acc.Balance__c = 100;
        acc.RecordTypeId = Schema.SObjectType.Account.getRecordTypeInfosByName().get('>=$0').getRecordTypeId();
        acc.Email__c = 'testUpdate@pairwise.test';
        acc.Active__c = 'Yes';
        insert acc;
        
        acc.Name = '';
        acc.Balance__c = 102;
        acc.Calculated_Interest__c = 7;
        acc.Email__c = '';
        acc.Loan_Interest_Rate__c = 0.09;
        acc.Loan_Type__c = 'Car Loan';
        acc.Remaining_Loan_Amount__c = ;
        acc.Total_Loan_Amount__c = 293061;
        
        Test.startTest();
        try {
            update acc;
            Account testAcc = [SELECT name, balance__c, calculated_interest__c, email__c, interest_rate__c, loan_interest_rate__c, loan_type__c, remaining_loan_amount__c, total_loan_amount__c, active__c FROM Account WHERE name='' LIMIT 1];
            System.assert(acc.Name, testAcc.Name);
            System.assert(acc.Balance__c, testAcc.Balance__c);
            System.assert(acc.Balance__c * 0.038, testAcc.Calculated_Interest__c);
            System.assert(acc.Email__c, testAcc.Email__c);
            System.assert(acc.Loan_Interest_Rate__c, testAcc.Loan_Interest_Rate__c);
            System.assert(acc.Loan_Type__c, testAcc.Loan_Type__c);
            //System.assert(acc.Remaining_Loan_Amount__c, testAcc.Remaining_Loan_Amount__c);
            System.assert(acc.Total_Loan_Amount__c, testAcc.Total_Loan_Amount__c);
        } catch (Exception e) {
            System.assert(false, e.getMessage());
        }
        Test.stopTest();
    }
    

    @isTest
    public static void testAccount_119() {
        Account acc = new Account();
        acc.Name = 'ToUpdate Account';
        acc.Balance__c = 100;
        acc.RecordTypeId = Schema.SObjectType.Account.getRecordTypeInfosByName().get('Negative').getRecordTypeId();
        acc.Email__c = 'testUpdate@pairwise.test';
        acc.Active__c = 'Yes';
        insert acc;
        
        acc.Name = '';
        acc.Balance__c = 122;
        acc.Calculated_Interest__c = null;
        acc.Email__c = 'test119@pairwise.test';
        acc.Loan_Interest_Rate__c = 0.136;
        acc.Loan_Type__c = 'Home Loan';
        acc.Remaining_Loan_Amount__c = 15000000;
        acc.Total_Loan_Amount__c = 494944;
        
        Test.startTest();
        try {
            update acc;
            Account testAcc = [SELECT name, balance__c, calculated_interest__c, email__c, interest_rate__c, loan_interest_rate__c, loan_type__c, remaining_loan_amount__c, total_loan_amount__c, active__c FROM Account WHERE name='' LIMIT 1];
            System.assert(acc.Name, testAcc.Name);
            System.assert(acc.Balance__c, testAcc.Balance__c);
            System.assert(acc.Balance__c * 0.038, testAcc.Calculated_Interest__c);
            System.assert(acc.Email__c, testAcc.Email__c);
            System.assert(acc.Loan_Interest_Rate__c, testAcc.Loan_Interest_Rate__c);
            System.assert(acc.Loan_Type__c, testAcc.Loan_Type__c);
            //System.assert(acc.Remaining_Loan_Amount__c, testAcc.Remaining_Loan_Amount__c);
            System.assert(acc.Total_Loan_Amount__c, testAcc.Total_Loan_Amount__c);
        } catch (Exception e) {
            System.assert(false, e.getMessage());
        }
        Test.stopTest();
    }
    

    @isTest
    public static void testAccount_120() {
        Account acc = new Account();
        acc.Name = 'ToUpdate Account';
        acc.Balance__c = 100;
        acc.RecordTypeId = Schema.SObjectType.Account.getRecordTypeInfosByName().get('Negative').getRecordTypeId();
        acc.Email__c = 'testUpdate@pairwise.test';
        acc.Active__c = 'Yes';
        insert acc;
        
        acc.Name = '';
        acc.Balance__c = 198;
        acc.Calculated_Interest__c = 7;
        acc.Email__c = '';
        acc.Loan_Interest_Rate__c = 0.146;
        acc.Loan_Type__c = 'Home Loan';
        acc.Remaining_Loan_Amount__c = 15000000;
        acc.Total_Loan_Amount__c = 943718;
        
        Test.startTest();
        try {
            update acc;
            Account testAcc = [SELECT name, balance__c, calculated_interest__c, email__c, interest_rate__c, loan_interest_rate__c, loan_type__c, remaining_loan_amount__c, total_loan_amount__c, active__c FROM Account WHERE name='' LIMIT 1];
            System.assert(acc.Name, testAcc.Name);
            System.assert(acc.Balance__c, testAcc.Balance__c);
            System.assert(acc.Balance__c * 0.038, testAcc.Calculated_Interest__c);
            System.assert(acc.Email__c, testAcc.Email__c);
            System.assert(acc.Loan_Interest_Rate__c, testAcc.Loan_Interest_Rate__c);
            System.assert(acc.Loan_Type__c, testAcc.Loan_Type__c);
            //System.assert(acc.Remaining_Loan_Amount__c, testAcc.Remaining_Loan_Amount__c);
            System.assert(acc.Total_Loan_Amount__c, testAcc.Total_Loan_Amount__c);
        } catch (Exception e) {
            System.assert(false, e.getMessage());
        }
        Test.stopTest();
    }
    

    @isTest
    public static void testAccount_121() {
        Account acc = new Account();
        acc.Name = 'ToUpdate Account';
        acc.Balance__c = 100;
        acc.RecordTypeId = Schema.SObjectType.Account.getRecordTypeInfosByName().get('>=$100').getRecordTypeId();
        acc.Email__c = 'testUpdate@pairwise.test';
        acc.Active__c = 'Yes';
        insert acc;
        
        acc.Name = '';
        acc.Balance__c = 173;
        acc.Calculated_Interest__c = 7;
        acc.Email__c = '';
        acc.Loan_Interest_Rate__c = 0.11900000000000001;
        acc.Loan_Type__c = 'Car Loan';
        acc.Remaining_Loan_Amount__c = 15000000;
        acc.Total_Loan_Amount__c = 922696;
        
        Test.startTest();
        try {
            update acc;
            Account testAcc = [SELECT name, balance__c, calculated_interest__c, email__c, interest_rate__c, loan_interest_rate__c, loan_type__c, remaining_loan_amount__c, total_loan_amount__c, active__c FROM Account WHERE name='' LIMIT 1];
            System.assert(acc.Name, testAcc.Name);
            System.assert(acc.Balance__c, testAcc.Balance__c);
            System.assert(acc.Balance__c * 0.038, testAcc.Calculated_Interest__c);
            System.assert(acc.Email__c, testAcc.Email__c);
            System.assert(acc.Loan_Interest_Rate__c, testAcc.Loan_Interest_Rate__c);
            System.assert(acc.Loan_Type__c, testAcc.Loan_Type__c);
            //System.assert(acc.Remaining_Loan_Amount__c, testAcc.Remaining_Loan_Amount__c);
            System.assert(acc.Total_Loan_Amount__c, testAcc.Total_Loan_Amount__c);
        } catch (Exception e) {
            System.assert(false, e.getMessage());
        }
        Test.stopTest();
    }
    

    @isTest
    public static void testAccount_122() {
        Account acc = new Account();
        acc.Name = 'ToUpdate Account';
        acc.Balance__c = 100;
        acc.RecordTypeId = Schema.SObjectType.Account.getRecordTypeInfosByName().get('>=$100').getRecordTypeId();
        acc.Email__c = 'testUpdate@pairwise.test';
        acc.Active__c = 'Yes';
        insert acc;
        
        acc.Name = '';
        acc.Balance__c = 106;
        acc.Calculated_Interest__c = 7;
        acc.Email__c = '';
        acc.Loan_Interest_Rate__c = 0.08;
        acc.Loan_Type__c = 'Home Loan';
        acc.Remaining_Loan_Amount__c = ;
        acc.Total_Loan_Amount__c = 788274;
        
        Test.startTest();
        try {
            update acc;
            Account testAcc = [SELECT name, balance__c, calculated_interest__c, email__c, interest_rate__c, loan_interest_rate__c, loan_type__c, remaining_loan_amount__c, total_loan_amount__c, active__c FROM Account WHERE name='' LIMIT 1];
            System.assert(acc.Name, testAcc.Name);
            System.assert(acc.Balance__c, testAcc.Balance__c);
            System.assert(acc.Balance__c * 0.06, testAcc.Calculated_Interest__c);
            System.assert(acc.Email__c, testAcc.Email__c);
            System.assert(acc.Loan_Interest_Rate__c, testAcc.Loan_Interest_Rate__c);
            System.assert(acc.Loan_Type__c, testAcc.Loan_Type__c);
            //System.assert(acc.Remaining_Loan_Amount__c, testAcc.Remaining_Loan_Amount__c);
            System.assert(acc.Total_Loan_Amount__c, testAcc.Total_Loan_Amount__c);
        } catch (Exception e) {
            System.assert(false, e.getMessage());
        }
        Test.stopTest();
    }
    

    @isTest
    public static void testAccount_123() {
        Account acc = new Account();
        acc.Name = 'ToUpdate Account';
        acc.Balance__c = 100;
        acc.RecordTypeId = Schema.SObjectType.Account.getRecordTypeInfosByName().get('>=$100').getRecordTypeId();
        acc.Email__c = 'testUpdate@pairwise.test';
        acc.Active__c = 'Yes';
        insert acc;
        
        acc.Name = '';
        acc.Balance__c = 142;
        acc.Calculated_Interest__c = null;
        acc.Email__c = '';
        acc.Loan_Interest_Rate__c = 0.084;
        acc.Loan_Type__c = 'Home Loan';
        acc.Remaining_Loan_Amount__c = ;
        acc.Total_Loan_Amount__c = 5629654;
        
        Test.startTest();
        try {
            update acc;
            Account testAcc = [SELECT name, balance__c, calculated_interest__c, email__c, interest_rate__c, loan_interest_rate__c, loan_type__c, remaining_loan_amount__c, total_loan_amount__c, active__c FROM Account WHERE name='' LIMIT 1];
            System.assert(acc.Name, testAcc.Name);
            System.assert(acc.Balance__c, testAcc.Balance__c);
            System.assert(acc.Balance__c * 0.06, testAcc.Calculated_Interest__c);
            System.assert(acc.Email__c, testAcc.Email__c);
            System.assert(acc.Loan_Interest_Rate__c, testAcc.Loan_Interest_Rate__c);
            System.assert(acc.Loan_Type__c, testAcc.Loan_Type__c);
            //System.assert(acc.Remaining_Loan_Amount__c, testAcc.Remaining_Loan_Amount__c);
            System.assert(acc.Total_Loan_Amount__c, testAcc.Total_Loan_Amount__c);
        } catch (Exception e) {
            System.assert(false, e.getMessage());
        }
        Test.stopTest();
    }
    

    @isTest
    public static void testAccount_124() {
        Account acc = new Account();
        acc.Name = 'ToUpdate Account';
        acc.Balance__c = 100;
        acc.RecordTypeId = Schema.SObjectType.Account.getRecordTypeInfosByName().get('Negative').getRecordTypeId();
        acc.Email__c = 'testUpdate@pairwise.test';
        acc.Active__c = 'Yes';
        insert acc;
        
        acc.Name = '';
        acc.Balance__c = 184;
        acc.Calculated_Interest__c = 7;
        acc.Email__c = '';
        acc.Loan_Interest_Rate__c = 0.14;
        acc.Loan_Type__c = 'Car Loan';
        acc.Remaining_Loan_Amount__c = ;
        acc.Total_Loan_Amount__c = 2344322;
        
        Test.startTest();
        try {
            update acc;
            Account testAcc = [SELECT name, balance__c, calculated_interest__c, email__c, interest_rate__c, loan_interest_rate__c, loan_type__c, remaining_loan_amount__c, total_loan_amount__c, active__c FROM Account WHERE name='' LIMIT 1];
            System.assert(acc.Name, testAcc.Name);
            System.assert(acc.Balance__c, testAcc.Balance__c);
            System.assert(acc.Balance__c * 0.05, testAcc.Calculated_Interest__c);
            System.assert(acc.Email__c, testAcc.Email__c);
            System.assert(acc.Loan_Interest_Rate__c, testAcc.Loan_Interest_Rate__c);
            System.assert(acc.Loan_Type__c, testAcc.Loan_Type__c);
            //System.assert(acc.Remaining_Loan_Amount__c, testAcc.Remaining_Loan_Amount__c);
            System.assert(acc.Total_Loan_Amount__c, testAcc.Total_Loan_Amount__c);
        } catch (Exception e) {
            System.assert(false, e.getMessage());
        }
        Test.stopTest();
    }
    

    @isTest
    public static void testAccount_125() {
        Account acc = new Account();
        acc.Name = 'ToUpdate Account';
        acc.Balance__c = 100;
        acc.RecordTypeId = Schema.SObjectType.Account.getRecordTypeInfosByName().get('>=$100').getRecordTypeId();
        acc.Email__c = 'testUpdate@pairwise.test';
        acc.Active__c = 'Yes';
        insert acc;
        
        acc.Name = '';
        acc.Balance__c = 110;
        acc.Calculated_Interest__c = null;
        acc.Email__c = 'test125@pairwise.test';
        acc.Loan_Interest_Rate__c = 107;
        acc.Loan_Type__c = 'Car Loan';
        acc.Remaining_Loan_Amount__c = 15000000;
        acc.Total_Loan_Amount__c = 5351401;
        
        Test.startTest();
        try {
            update acc;
            Account testAcc = [SELECT name, balance__c, calculated_interest__c, email__c, interest_rate__c, loan_interest_rate__c, loan_type__c, remaining_loan_amount__c, total_loan_amount__c, active__c FROM Account WHERE name='' LIMIT 1];
            System.assert(acc.Name, testAcc.Name);
            System.assert(acc.Balance__c, testAcc.Balance__c);
            System.assert(acc.Balance__c * 0.05, testAcc.Calculated_Interest__c);
            System.assert(acc.Email__c, testAcc.Email__c);
            System.assert(acc.Loan_Interest_Rate__c, testAcc.Loan_Interest_Rate__c);
            System.assert(acc.Loan_Type__c, testAcc.Loan_Type__c);
            //System.assert(acc.Remaining_Loan_Amount__c, testAcc.Remaining_Loan_Amount__c);
            System.assert(acc.Total_Loan_Amount__c, testAcc.Total_Loan_Amount__c);
        } catch (Exception e) {
            System.assert(false, e.getMessage());
        }
        Test.stopTest();
    }
    

    @isTest
    public static void testAccount_126() {
        Account acc = new Account();
        acc.Name = 'ToUpdate Account';
        acc.Balance__c = 100;
        acc.RecordTypeId = Schema.SObjectType.Account.getRecordTypeInfosByName().get('>=$0').getRecordTypeId();
        acc.Email__c = 'testUpdate@pairwise.test';
        acc.Active__c = 'Yes';
        insert acc;
        
        acc.Name = '';
        acc.Balance__c = 195;
        acc.Calculated_Interest__c = 7;
        acc.Email__c = 'test126@pairwise.test';
        acc.Loan_Interest_Rate__c = 0.08;
        acc.Loan_Type__c = 'Home Loan';
        acc.Remaining_Loan_Amount__c = ;
        acc.Total_Loan_Amount__c = 4312526;
        
        Test.startTest();
        try {
            update acc;
            Account testAcc = [SELECT name, balance__c, calculated_interest__c, email__c, interest_rate__c, loan_interest_rate__c, loan_type__c, remaining_loan_amount__c, total_loan_amount__c, active__c FROM Account WHERE name='' LIMIT 1];
            System.assert(acc.Name, testAcc.Name);
            System.assert(acc.Balance__c, testAcc.Balance__c);
            System.assert(acc.Balance__c * 0.06, testAcc.Calculated_Interest__c);
            System.assert(acc.Email__c, testAcc.Email__c);
            System.assert(acc.Loan_Interest_Rate__c, testAcc.Loan_Interest_Rate__c);
            System.assert(acc.Loan_Type__c, testAcc.Loan_Type__c);
            //System.assert(acc.Remaining_Loan_Amount__c, testAcc.Remaining_Loan_Amount__c);
            System.assert(acc.Total_Loan_Amount__c, testAcc.Total_Loan_Amount__c);
        } catch (Exception e) {
            System.assert(false, e.getMessage());
        }
        Test.stopTest();
    }
    

    @isTest
    public static void testAccount_127() {
        Account acc = new Account();
        acc.Name = 'ToUpdate Account';
        acc.Balance__c = 100;
        acc.RecordTypeId = Schema.SObjectType.Account.getRecordTypeInfosByName().get('>=$100').getRecordTypeId();
        acc.Email__c = 'testUpdate@pairwise.test';
        acc.Active__c = 'Yes';
        insert acc;
        
        acc.Name = '';
        acc.Balance__c = 145;
        acc.Calculated_Interest__c = null;
        acc.Email__c = '';
        acc.Loan_Interest_Rate__c = 0.136;
        acc.Loan_Type__c = 'Car Loan';
        acc.Remaining_Loan_Amount__c = 15000000;
        acc.Total_Loan_Amount__c = 9049568;
        
        Test.startTest();
        try {
            update acc;
            Account testAcc = [SELECT name, balance__c, calculated_interest__c, email__c, interest_rate__c, loan_interest_rate__c, loan_type__c, remaining_loan_amount__c, total_loan_amount__c, active__c FROM Account WHERE name='' LIMIT 1];
            System.assert(acc.Name, testAcc.Name);
            System.assert(acc.Balance__c, testAcc.Balance__c);
            System.assert(acc.Balance__c * 0.06, testAcc.Calculated_Interest__c);
            System.assert(acc.Email__c, testAcc.Email__c);
            System.assert(acc.Loan_Interest_Rate__c, testAcc.Loan_Interest_Rate__c);
            System.assert(acc.Loan_Type__c, testAcc.Loan_Type__c);
            //System.assert(acc.Remaining_Loan_Amount__c, testAcc.Remaining_Loan_Amount__c);
            System.assert(acc.Total_Loan_Amount__c, testAcc.Total_Loan_Amount__c);
        } catch (Exception e) {
            System.assert(false, e.getMessage());
        }
        Test.stopTest();
    }
    

    @isTest
    public static void testAccount_128() {
        Account acc = new Account();
        acc.Name = '';
        acc.Balance__c = 139;
        acc.RecordTypeId = Schema.SObjectType.Account.getRecordTypeInfosByName().get('>=$0').getRecordTypeId();
        acc.Calculated_Interest__c = null;
        acc.Email__c = 'test128@pairwise.test';
        acc.Loan_Interest_Rate__c = 0.09;
        acc.Loan_Type__c = 'Home Loan';
        //acc.Remaining_Loan_Amount__c = 15000000;
        acc.Total_Loan_Amount__c = 505417;
        acc.Active__c = 'Yes';
        
        Test.startTest();
        try {
            insert acc;
            Account testAcc = [SELECT name, balance__c, calculated_interest__c, email__c, interest_rate__c, loan_interest_rate__c, loan_type__c, remaining_loan_amount__c, total_loan_amount__c, active__c FROM Account WHERE name='' LIMIT 1];
            System.assert(acc.Name, testAcc.Name);
            System.assert(acc.Balance__c, testAcc.Balance__c);
            System.assert(acc.Balance__c * 0.06, testAcc.Calculated_Interest__c);
            System.assert(acc.Email__c, testAcc.Email__c);
            System.assert(acc.Loan_Interest_Rate__c, testAcc.Loan_Interest_Rate__c);
            System.assert(acc.Loan_Type__c, testAcc.Loan_Type__c);
            //System.assert(acc.Remaining_Loan_Amount__c, testAcc.Remaining_Loan_Amount__c);
            System.assert(acc.Total_Loan_Amount__c, testAcc.Total_Loan_Amount__c);
        } catch (Exception e) {
            System.assert(false, e.getMessage());
        }
        Test.stopTest();
    }
    

    @isTest
    public static void testAccount_129() {
        Account acc = new Account();
        acc.Name = 'ToUpdate Account';
        acc.Balance__c = 100;
        acc.RecordTypeId = Schema.SObjectType.Account.getRecordTypeInfosByName().get('>=$100').getRecordTypeId();
        acc.Email__c = 'testUpdate@pairwise.test';
        acc.Active__c = 'Yes';
        insert acc;
        
        acc.Name = '';
        acc.Balance__c = 100;
        acc.Calculated_Interest__c = 7;
        acc.Email__c = 'test129@pairwise.test';
        acc.Loan_Interest_Rate__c = 0.11;
        acc.Loan_Type__c = 'Home Loan';
        acc.Remaining_Loan_Amount__c = ;
        acc.Total_Loan_Amount__c = 177114;
        
        Test.startTest();
        try {
            update acc;
            Account testAcc = [SELECT name, balance__c, calculated_interest__c, email__c, interest_rate__c, loan_interest_rate__c, loan_type__c, remaining_loan_amount__c, total_loan_amount__c, active__c FROM Account WHERE name='' LIMIT 1];
            System.assert(acc.Name, testAcc.Name);
            System.assert(acc.Balance__c, testAcc.Balance__c);
            System.assert(acc.Balance__c * 0.06, testAcc.Calculated_Interest__c);
            System.assert(acc.Email__c, testAcc.Email__c);
            System.assert(acc.Loan_Interest_Rate__c, testAcc.Loan_Interest_Rate__c);
            System.assert(acc.Loan_Type__c, testAcc.Loan_Type__c);
            //System.assert(acc.Remaining_Loan_Amount__c, testAcc.Remaining_Loan_Amount__c);
            System.assert(acc.Total_Loan_Amount__c, testAcc.Total_Loan_Amount__c);
        } catch (Exception e) {
            System.assert(false, e.getMessage());
        }
        Test.stopTest();
    }
    

    @isTest
    public static void testAccount_130() {
        Account acc = new Account();
        acc.Name = 'ToUpdate Account';
        acc.Balance__c = 100;
        acc.RecordTypeId = Schema.SObjectType.Account.getRecordTypeInfosByName().get('>=$0').getRecordTypeId();
        acc.Email__c = 'testUpdate@pairwise.test';
        acc.Active__c = 'Yes';
        insert acc;
        
        acc.Name = '';
        acc.Balance__c = 119;
        acc.Calculated_Interest__c = null;
        acc.Email__c = '';
        acc.Loan_Interest_Rate__c = 0.09;
        acc.Loan_Type__c = '';
        acc.Remaining_Loan_Amount__c = 15000000;
        acc.Total_Loan_Amount__c = null;
        
        Test.startTest();
        try {
            update acc;
            Account testAcc = [SELECT name, balance__c, calculated_interest__c, email__c, interest_rate__c, loan_interest_rate__c, loan_type__c, remaining_loan_amount__c, total_loan_amount__c, active__c FROM Account WHERE name='' LIMIT 1];
            System.assert(acc.Name, testAcc.Name);
            System.assert(acc.Balance__c, testAcc.Balance__c);
            System.assert(acc.Balance__c * 0.038, testAcc.Calculated_Interest__c);
            System.assert(acc.Email__c, testAcc.Email__c);
            System.assert(acc.Loan_Interest_Rate__c, testAcc.Loan_Interest_Rate__c);
            System.assert(acc.Loan_Type__c, testAcc.Loan_Type__c);
            //System.assert(acc.Remaining_Loan_Amount__c, testAcc.Remaining_Loan_Amount__c);
            System.assert(acc.Total_Loan_Amount__c, testAcc.Total_Loan_Amount__c);
        } catch (Exception e) {
            System.assert(false, e.getMessage());
        }
        Test.stopTest();
    }
    

    @isTest
    public static void testAccount_131() {
        Account acc = new Account();
        acc.Name = '';
        acc.Balance__c = 160;
        acc.RecordTypeId = Schema.SObjectType.Account.getRecordTypeInfosByName().get('>=$100').getRecordTypeId();
        acc.Calculated_Interest__c = null;
        acc.Email__c = '';
        acc.Loan_Interest_Rate__c = null;
        acc.Loan_Type__c = 'Car Loan';
        //acc.Remaining_Loan_Amount__c = 15000000;
        acc.Total_Loan_Amount__c = 8857163;
        acc.Active__c = 'Yes';
        
        Test.startTest();
        try {
            insert acc;
            Account testAcc = [SELECT name, balance__c, calculated_interest__c, email__c, interest_rate__c, loan_interest_rate__c, loan_type__c, remaining_loan_amount__c, total_loan_amount__c, active__c FROM Account WHERE name='' LIMIT 1];
            System.assert(acc.Name, testAcc.Name);
            System.assert(acc.Balance__c, testAcc.Balance__c);
            System.assert(acc.Balance__c * 0.05, testAcc.Calculated_Interest__c);
            System.assert(acc.Email__c, testAcc.Email__c);
            System.assert(acc.Loan_Interest_Rate__c, testAcc.Loan_Interest_Rate__c);
            System.assert(acc.Loan_Type__c, testAcc.Loan_Type__c);
            //System.assert(acc.Remaining_Loan_Amount__c, testAcc.Remaining_Loan_Amount__c);
            System.assert(acc.Total_Loan_Amount__c, testAcc.Total_Loan_Amount__c);
        } catch (Exception e) {
            System.assert(false, e.getMessage());
        }
        Test.stopTest();
    }
    

    @isTest
    public static void testAccount_132() {
        Account acc = new Account();
        acc.Name = 'ToUpdate Account';
        acc.Balance__c = 100;
        acc.RecordTypeId = Schema.SObjectType.Account.getRecordTypeInfosByName().get('Negative').getRecordTypeId();
        acc.Email__c = 'testUpdate@pairwise.test';
        acc.Active__c = 'Yes';
        insert acc;
        
        acc.Name = '';
        acc.Balance__c = 171;
        acc.Calculated_Interest__c = null;
        acc.Email__c = 'test132@pairwise.test';
        acc.Loan_Interest_Rate__c = 0.11800000000000001;
        acc.Loan_Type__c = 'Car Loan';
        acc.Remaining_Loan_Amount__c = 15000000;
        acc.Total_Loan_Amount__c = 51948;
        
        Test.startTest();
        try {
            update acc;
            Account testAcc = [SELECT name, balance__c, calculated_interest__c, email__c, interest_rate__c, loan_interest_rate__c, loan_type__c, remaining_loan_amount__c, total_loan_amount__c, active__c FROM Account WHERE name='' LIMIT 1];
            System.assert(acc.Name, testAcc.Name);
            System.assert(acc.Balance__c, testAcc.Balance__c);
            System.assert(acc.Balance__c * 0.05, testAcc.Calculated_Interest__c);
            System.assert(acc.Email__c, testAcc.Email__c);
            System.assert(acc.Loan_Interest_Rate__c, testAcc.Loan_Interest_Rate__c);
            System.assert(acc.Loan_Type__c, testAcc.Loan_Type__c);
            //System.assert(acc.Remaining_Loan_Amount__c, testAcc.Remaining_Loan_Amount__c);
            System.assert(acc.Total_Loan_Amount__c, testAcc.Total_Loan_Amount__c);
        } catch (Exception e) {
            System.assert(false, e.getMessage());
        }
        Test.stopTest();
    }
    

    @isTest
    public static void testAccount_133() {
        Account acc = new Account();
        acc.Name = 'ToUpdate Account';
        acc.Balance__c = 100;
        acc.RecordTypeId = Schema.SObjectType.Account.getRecordTypeInfosByName().get('>=$100').getRecordTypeId();
        acc.Email__c = 'testUpdate@pairwise.test';
        acc.Active__c = 'Yes';
        insert acc;
        
        acc.Name = '';
        acc.Balance__c = 185;
        acc.Calculated_Interest__c = 7;
        acc.Email__c = 'test133@pairwise.test';
        acc.Loan_Interest_Rate__c = 0.11900000000000001;
        acc.Loan_Type__c = 'Home Loan';
        acc.Remaining_Loan_Amount__c = 15000000;
        acc.Total_Loan_Amount__c = null;
        
        Test.startTest();
        try {
            update acc;
            Account testAcc = [SELECT name, balance__c, calculated_interest__c, email__c, interest_rate__c, loan_interest_rate__c, loan_type__c, remaining_loan_amount__c, total_loan_amount__c, active__c FROM Account WHERE name='' LIMIT 1];
            System.assert(acc.Name, testAcc.Name);
            System.assert(acc.Balance__c, testAcc.Balance__c);
            System.assert(acc.Balance__c * 0.05, testAcc.Calculated_Interest__c);
            System.assert(acc.Email__c, testAcc.Email__c);
            System.assert(acc.Loan_Interest_Rate__c, testAcc.Loan_Interest_Rate__c);
            System.assert(acc.Loan_Type__c, testAcc.Loan_Type__c);
            //System.assert(acc.Remaining_Loan_Amount__c, testAcc.Remaining_Loan_Amount__c);
            System.assert(acc.Total_Loan_Amount__c, testAcc.Total_Loan_Amount__c);
        } catch (Exception e) {
            System.assert(false, e.getMessage());
        }
        Test.stopTest();
    }
    

    @isTest
    public static void testAccount_134() {
        Account acc = new Account();
        acc.Name = 'ToUpdate Account';
        acc.Balance__c = 100;
        acc.RecordTypeId = Schema.SObjectType.Account.getRecordTypeInfosByName().get('>=$100').getRecordTypeId();
        acc.Email__c = 'testUpdate@pairwise.test';
        acc.Active__c = 'Yes';
        insert acc;
        
        acc.Name = '';
        acc.Balance__c = 119;
        acc.Calculated_Interest__c = null;
        acc.Email__c = '';
        acc.Loan_Interest_Rate__c = null;
        acc.Loan_Type__c = 'Car Loan';
        acc.Remaining_Loan_Amount__c = 15000000;
        acc.Total_Loan_Amount__c = 954718;
        
        Test.startTest();
        try {
            update acc;
            Account testAcc = [SELECT name, balance__c, calculated_interest__c, email__c, interest_rate__c, loan_interest_rate__c, loan_type__c, remaining_loan_amount__c, total_loan_amount__c, active__c FROM Account WHERE name='' LIMIT 1];
            System.assert(acc.Name, testAcc.Name);
            System.assert(acc.Balance__c, testAcc.Balance__c);
            System.assert(acc.Balance__c * 0.06, testAcc.Calculated_Interest__c);
            System.assert(acc.Email__c, testAcc.Email__c);
            System.assert(acc.Loan_Interest_Rate__c, testAcc.Loan_Interest_Rate__c);
            System.assert(acc.Loan_Type__c, testAcc.Loan_Type__c);
            //System.assert(acc.Remaining_Loan_Amount__c, testAcc.Remaining_Loan_Amount__c);
            System.assert(acc.Total_Loan_Amount__c, testAcc.Total_Loan_Amount__c);
        } catch (Exception e) {
            System.assert(false, e.getMessage());
        }
        Test.stopTest();
    }
    

    @isTest
    public static void testAccount_135() {
        Account acc = new Account();
        acc.Name = 'ToUpdate Account';
        acc.Balance__c = 100;
        acc.RecordTypeId = Schema.SObjectType.Account.getRecordTypeInfosByName().get('>=$0').getRecordTypeId();
        acc.Email__c = 'testUpdate@pairwise.test';
        acc.Active__c = 'Yes';
        insert acc;
        
        acc.Name = '';
        acc.Balance__c = 161;
        acc.Calculated_Interest__c = 7;
        acc.Email__c = '';
        acc.Loan_Interest_Rate__c = 0.1;
        acc.Loan_Type__c = '';
        acc.Remaining_Loan_Amount__c = 15000000;
        acc.Total_Loan_Amount__c = null;
        
        Test.startTest();
        try {
            update acc;
            Account testAcc = [SELECT name, balance__c, calculated_interest__c, email__c, interest_rate__c, loan_interest_rate__c, loan_type__c, remaining_loan_amount__c, total_loan_amount__c, active__c FROM Account WHERE name='' LIMIT 1];
            System.assert(acc.Name, testAcc.Name);
            System.assert(acc.Balance__c, testAcc.Balance__c);
            System.assert(acc.Balance__c * 0.038, testAcc.Calculated_Interest__c);
            System.assert(acc.Email__c, testAcc.Email__c);
            System.assert(acc.Loan_Interest_Rate__c, testAcc.Loan_Interest_Rate__c);
            System.assert(acc.Loan_Type__c, testAcc.Loan_Type__c);
            //System.assert(acc.Remaining_Loan_Amount__c, testAcc.Remaining_Loan_Amount__c);
            System.assert(acc.Total_Loan_Amount__c, testAcc.Total_Loan_Amount__c);
        } catch (Exception e) {
            System.assert(false, e.getMessage());
        }
        Test.stopTest();
    }
    

    @isTest
    public static void testAccount_136() {
        Account acc = new Account();
        acc.Name = '';
        acc.Balance__c = 132;
        acc.RecordTypeId = Schema.SObjectType.Account.getRecordTypeInfosByName().get('>=$0').getRecordTypeId();
        acc.Calculated_Interest__c = null;
        acc.Email__c = '';
        acc.Loan_Interest_Rate__c = 0.125;
        acc.Loan_Type__c = 'Car Loan';
        //acc.Remaining_Loan_Amount__c = 15000000;
        acc.Total_Loan_Amount__c = 986603;
        acc.Active__c = 'Yes';
        
        Test.startTest();
        try {
            insert acc;
            Account testAcc = [SELECT name, balance__c, calculated_interest__c, email__c, interest_rate__c, loan_interest_rate__c, loan_type__c, remaining_loan_amount__c, total_loan_amount__c, active__c FROM Account WHERE name='' LIMIT 1];
            System.assert(acc.Name, testAcc.Name);
            System.assert(acc.Balance__c, testAcc.Balance__c);
            System.assert(acc.Balance__c * 0.06, testAcc.Calculated_Interest__c);
            System.assert(acc.Email__c, testAcc.Email__c);
            System.assert(acc.Loan_Interest_Rate__c, testAcc.Loan_Interest_Rate__c);
            System.assert(acc.Loan_Type__c, testAcc.Loan_Type__c);
            //System.assert(acc.Remaining_Loan_Amount__c, testAcc.Remaining_Loan_Amount__c);
            System.assert(acc.Total_Loan_Amount__c, testAcc.Total_Loan_Amount__c);
        } catch (Exception e) {
            System.assert(false, e.getMessage());
        }
        Test.stopTest();
    }
    

    @isTest
    public static void testAccount_137() {
        Account acc = new Account();
        acc.Name = 'ToUpdate Account';
        acc.Balance__c = 100;
        acc.RecordTypeId = Schema.SObjectType.Account.getRecordTypeInfosByName().get('Blank').getRecordTypeId();
        acc.Email__c = 'testUpdate@pairwise.test';
        acc.Active__c = 'Yes';
        insert acc;
        
        acc.Name = '';
        acc.Balance__c = 180;
        acc.Calculated_Interest__c = null;
        acc.Email__c = 'test137@pairwise.test';
        acc.Loan_Interest_Rate__c = 0.159;
        acc.Loan_Type__c = 'Home Loan';
        acc.Remaining_Loan_Amount__c = 15000000;
        acc.Total_Loan_Amount__c = 856217;
        
        Test.startTest();
        try {
            update acc;
            Account testAcc = [SELECT name, balance__c, calculated_interest__c, email__c, interest_rate__c, loan_interest_rate__c, loan_type__c, remaining_loan_amount__c, total_loan_amount__c, active__c FROM Account WHERE name='' LIMIT 1];
            System.assert(acc.Name, testAcc.Name);
            System.assert(acc.Balance__c, testAcc.Balance__c);
            System.assert(acc.Balance__c * 0.038, testAcc.Calculated_Interest__c);
            System.assert(acc.Email__c, testAcc.Email__c);
            System.assert(acc.Loan_Interest_Rate__c, testAcc.Loan_Interest_Rate__c);
            System.assert(acc.Loan_Type__c, testAcc.Loan_Type__c);
            //System.assert(acc.Remaining_Loan_Amount__c, testAcc.Remaining_Loan_Amount__c);
            System.assert(acc.Total_Loan_Amount__c, testAcc.Total_Loan_Amount__c);
        } catch (Exception e) {
            System.assert(false, e.getMessage());
        }
        Test.stopTest();
    }
    

    @isTest
    public static void testAccount_138() {
        Account acc = new Account();
        acc.Name = 'ToUpdate Account';
        acc.Balance__c = 100;
        acc.RecordTypeId = Schema.SObjectType.Account.getRecordTypeInfosByName().get('Blank').getRecordTypeId();
        acc.Email__c = 'testUpdate@pairwise.test';
        acc.Active__c = 'Yes';
        insert acc;
        
        acc.Name = '';
        acc.Balance__c = 141;
        acc.Calculated_Interest__c = null;
        acc.Email__c = '';
        acc.Loan_Interest_Rate__c = 0.08;
        acc.Loan_Type__c = 'Home Loan';
        acc.Remaining_Loan_Amount__c = 15000000;
        acc.Total_Loan_Amount__c = 935658;
        
        Test.startTest();
        try {
            update acc;
            Account testAcc = [SELECT name, balance__c, calculated_interest__c, email__c, interest_rate__c, loan_interest_rate__c, loan_type__c, remaining_loan_amount__c, total_loan_amount__c, active__c FROM Account WHERE name='' LIMIT 1];
            System.assert(acc.Name, testAcc.Name);
            System.assert(acc.Balance__c, testAcc.Balance__c);
            System.assert(acc.Balance__c * 0.038, testAcc.Calculated_Interest__c);
            System.assert(acc.Email__c, testAcc.Email__c);
            System.assert(acc.Loan_Interest_Rate__c, testAcc.Loan_Interest_Rate__c);
            System.assert(acc.Loan_Type__c, testAcc.Loan_Type__c);
            //System.assert(acc.Remaining_Loan_Amount__c, testAcc.Remaining_Loan_Amount__c);
            System.assert(acc.Total_Loan_Amount__c, testAcc.Total_Loan_Amount__c);
        } catch (Exception e) {
            System.assert(false, e.getMessage());
        }
        Test.stopTest();
    }
    

    @isTest
    public static void testAccount_139() {
        Account acc = new Account();
        acc.Name = 'ToUpdate Account';
        acc.Balance__c = 100;
        acc.RecordTypeId = Schema.SObjectType.Account.getRecordTypeInfosByName().get('>=$100').getRecordTypeId();
        acc.Email__c = 'testUpdate@pairwise.test';
        acc.Active__c = 'Yes';
        insert acc;
        
        acc.Name = '';
        acc.Balance__c = 104;
        acc.Calculated_Interest__c = 7;
        acc.Email__c = 'test139@pairwise.test';
        acc.Loan_Interest_Rate__c = 0.162;
        acc.Loan_Type__c = 'Car Loan';
        acc.Remaining_Loan_Amount__c = 15000000;
        acc.Total_Loan_Amount__c = 750383;
        
        Test.startTest();
        try {
            update acc;
            Account testAcc = [SELECT name, balance__c, calculated_interest__c, email__c, interest_rate__c, loan_interest_rate__c, loan_type__c, remaining_loan_amount__c, total_loan_amount__c, active__c FROM Account WHERE name='' LIMIT 1];
            System.assert(acc.Name, testAcc.Name);
            System.assert(acc.Balance__c, testAcc.Balance__c);
            System.assert(acc.Balance__c * 0.06, testAcc.Calculated_Interest__c);
            System.assert(acc.Email__c, testAcc.Email__c);
            System.assert(acc.Loan_Interest_Rate__c, testAcc.Loan_Interest_Rate__c);
            System.assert(acc.Loan_Type__c, testAcc.Loan_Type__c);
            //System.assert(acc.Remaining_Loan_Amount__c, testAcc.Remaining_Loan_Amount__c);
            System.assert(acc.Total_Loan_Amount__c, testAcc.Total_Loan_Amount__c);
        } catch (Exception e) {
            System.assert(false, e.getMessage());
        }
        Test.stopTest();
    }
    

    @isTest
    public static void testAccount_140() {
        Account acc = new Account();
        acc.Name = '';
        acc.Balance__c = 140;
        acc.RecordTypeId = Schema.SObjectType.Account.getRecordTypeInfosByName().get('>=$100').getRecordTypeId();
        acc.Calculated_Interest__c = null;
        acc.Email__c = 'test140@pairwise.test';
        acc.Loan_Interest_Rate__c = 0.162;
        acc.Loan_Type__c = 'Home Loan';
        //acc.Remaining_Loan_Amount__c = ;
        acc.Total_Loan_Amount__c = 236875;
        acc.Active__c = 'Yes';
        
        Test.startTest();
        try {
            insert acc;
            Account testAcc = [SELECT name, balance__c, calculated_interest__c, email__c, interest_rate__c, loan_interest_rate__c, loan_type__c, remaining_loan_amount__c, total_loan_amount__c, active__c FROM Account WHERE name='' LIMIT 1];
            System.assert(acc.Name, testAcc.Name);
            System.assert(acc.Balance__c, testAcc.Balance__c);
            System.assert(acc.Balance__c * 0.038, testAcc.Calculated_Interest__c);
            System.assert(acc.Email__c, testAcc.Email__c);
            System.assert(acc.Loan_Interest_Rate__c, testAcc.Loan_Interest_Rate__c);
            System.assert(acc.Loan_Type__c, testAcc.Loan_Type__c);
            //System.assert(acc.Remaining_Loan_Amount__c, testAcc.Remaining_Loan_Amount__c);
            System.assert(acc.Total_Loan_Amount__c, testAcc.Total_Loan_Amount__c);
        } catch (Exception e) {
            System.assert(false, e.getMessage());
        }
        Test.stopTest();
    }
    

    @isTest
    public static void testAccount_141() {
        Account acc = new Account();
        acc.Name = 'ToUpdate Account';
        acc.Balance__c = 100;
        acc.RecordTypeId = Schema.SObjectType.Account.getRecordTypeInfosByName().get('>=$100').getRecordTypeId();
        acc.Email__c = 'testUpdate@pairwise.test';
        acc.Active__c = 'Yes';
        insert acc;
        
        acc.Name = '';
        acc.Balance__c = 124;
        acc.Calculated_Interest__c = null;
        acc.Email__c = '';
        acc.Loan_Interest_Rate__c = 0.159;
        acc.Loan_Type__c = 'Home Loan';
        acc.Remaining_Loan_Amount__c = ;
        acc.Total_Loan_Amount__c = 301877;
        
        Test.startTest();
        try {
            update acc;
            Account testAcc = [SELECT name, balance__c, calculated_interest__c, email__c, interest_rate__c, loan_interest_rate__c, loan_type__c, remaining_loan_amount__c, total_loan_amount__c, active__c FROM Account WHERE name='' LIMIT 1];
            System.assert(acc.Name, testAcc.Name);
            System.assert(acc.Balance__c, testAcc.Balance__c);
            System.assert(acc.Balance__c * 0.05, testAcc.Calculated_Interest__c);
            System.assert(acc.Email__c, testAcc.Email__c);
            System.assert(acc.Loan_Interest_Rate__c, testAcc.Loan_Interest_Rate__c);
            System.assert(acc.Loan_Type__c, testAcc.Loan_Type__c);
            //System.assert(acc.Remaining_Loan_Amount__c, testAcc.Remaining_Loan_Amount__c);
            System.assert(acc.Total_Loan_Amount__c, testAcc.Total_Loan_Amount__c);
        } catch (Exception e) {
            System.assert(false, e.getMessage());
        }
        Test.stopTest();
    }
    

    @isTest
    public static void testAccount_142() {
        Account acc = new Account();
        acc.Name = 'ToUpdate Account';
        acc.Balance__c = 100;
        acc.RecordTypeId = Schema.SObjectType.Account.getRecordTypeInfosByName().get('>=$0').getRecordTypeId();
        acc.Email__c = 'testUpdate@pairwise.test';
        acc.Active__c = 'Yes';
        insert acc;
        
        acc.Name = '';
        acc.Balance__c = 119;
        acc.Calculated_Interest__c = 7;
        acc.Email__c = 'test142@pairwise.test';
        acc.Loan_Interest_Rate__c = 0.159;
        acc.Loan_Type__c = 'Home Loan';
        acc.Remaining_Loan_Amount__c = ;
        acc.Total_Loan_Amount__c = 213669;
        
        Test.startTest();
        try {
            update acc;
            Account testAcc = [SELECT name, balance__c, calculated_interest__c, email__c, interest_rate__c, loan_interest_rate__c, loan_type__c, remaining_loan_amount__c, total_loan_amount__c, active__c FROM Account WHERE name='' LIMIT 1];
            System.assert(acc.Name, testAcc.Name);
            System.assert(acc.Balance__c, testAcc.Balance__c);
            System.assert(acc.Balance__c * 0.038, testAcc.Calculated_Interest__c);
            System.assert(acc.Email__c, testAcc.Email__c);
            System.assert(acc.Loan_Interest_Rate__c, testAcc.Loan_Interest_Rate__c);
            System.assert(acc.Loan_Type__c, testAcc.Loan_Type__c);
            //System.assert(acc.Remaining_Loan_Amount__c, testAcc.Remaining_Loan_Amount__c);
            System.assert(acc.Total_Loan_Amount__c, testAcc.Total_Loan_Amount__c);
        } catch (Exception e) {
            System.assert(false, e.getMessage());
        }
        Test.stopTest();
    }
    

    @isTest
    public static void testAccount_143() {
        Account acc = new Account();
        acc.Name = '';
        acc.Balance__c = 152;
        acc.RecordTypeId = Schema.SObjectType.Account.getRecordTypeInfosByName().get('>=$100').getRecordTypeId();
        acc.Calculated_Interest__c = 7;
        acc.Email__c = '';
        acc.Loan_Interest_Rate__c = null;
        acc.Loan_Type__c = 'Home Loan';
        //acc.Remaining_Loan_Amount__c = 15000000;
        acc.Total_Loan_Amount__c = 908908;
        acc.Active__c = 'Yes';
        
        Test.startTest();
        try {
            insert acc;
            Account testAcc = [SELECT name, balance__c, calculated_interest__c, email__c, interest_rate__c, loan_interest_rate__c, loan_type__c, remaining_loan_amount__c, total_loan_amount__c, active__c FROM Account WHERE name='' LIMIT 1];
            System.assert(acc.Name, testAcc.Name);
            System.assert(acc.Balance__c, testAcc.Balance__c);
            System.assert(acc.Balance__c * 0.038, testAcc.Calculated_Interest__c);
            System.assert(acc.Email__c, testAcc.Email__c);
            System.assert(acc.Loan_Interest_Rate__c, testAcc.Loan_Interest_Rate__c);
            System.assert(acc.Loan_Type__c, testAcc.Loan_Type__c);
            //System.assert(acc.Remaining_Loan_Amount__c, testAcc.Remaining_Loan_Amount__c);
            System.assert(acc.Total_Loan_Amount__c, testAcc.Total_Loan_Amount__c);
        } catch (Exception e) {
            System.assert(false, e.getMessage());
        }
        Test.stopTest();
    }
    

    @isTest
    public static void testAccount_144() {
        Account acc = new Account();
        acc.Name = 'ToUpdate Account';
        acc.Balance__c = 100;
        acc.RecordTypeId = Schema.SObjectType.Account.getRecordTypeInfosByName().get('Blank').getRecordTypeId();
        acc.Email__c = 'testUpdate@pairwise.test';
        acc.Active__c = 'Yes';
        insert acc;
        
        acc.Name = '';
        acc.Balance__c = 139;
        acc.Calculated_Interest__c = 7;
        acc.Email__c = '';
        acc.Loan_Interest_Rate__c = 0.10300000000000001;
        acc.Loan_Type__c = 'Home Loan';
        acc.Remaining_Loan_Amount__c = ;
        acc.Total_Loan_Amount__c = null;
        
        Test.startTest();
        try {
            update acc;
            Account testAcc = [SELECT name, balance__c, calculated_interest__c, email__c, interest_rate__c, loan_interest_rate__c, loan_type__c, remaining_loan_amount__c, total_loan_amount__c, active__c FROM Account WHERE name='' LIMIT 1];
            System.assert(acc.Name, testAcc.Name);
            System.assert(acc.Balance__c, testAcc.Balance__c);
            System.assert(acc.Balance__c * 0.038, testAcc.Calculated_Interest__c);
            System.assert(acc.Email__c, testAcc.Email__c);
            System.assert(acc.Loan_Interest_Rate__c, testAcc.Loan_Interest_Rate__c);
            System.assert(acc.Loan_Type__c, testAcc.Loan_Type__c);
            //System.assert(acc.Remaining_Loan_Amount__c, testAcc.Remaining_Loan_Amount__c);
            System.assert(acc.Total_Loan_Amount__c, testAcc.Total_Loan_Amount__c);
        } catch (Exception e) {
            System.assert(false, e.getMessage());
        }
        Test.stopTest();
    }
    

    @isTest
    public static void testAccount_145() {
        Account acc = new Account();
        acc.Name = 'ToUpdate Account';
        acc.Balance__c = 100;
        acc.RecordTypeId = Schema.SObjectType.Account.getRecordTypeInfosByName().get('>=$0').getRecordTypeId();
        acc.Email__c = 'testUpdate@pairwise.test';
        acc.Active__c = 'Yes';
        insert acc;
        
        acc.Name = '';
        acc.Balance__c = 164;
        acc.Calculated_Interest__c = null;
        acc.Email__c = 'test145@pairwise.test';
        acc.Loan_Interest_Rate__c = 0.09;
        acc.Loan_Type__c = 'Car Loan';
        acc.Remaining_Loan_Amount__c = 15000000;
        acc.Total_Loan_Amount__c = 5381567;
        
        Test.startTest();
        try {
            update acc;
            Account testAcc = [SELECT name, balance__c, calculated_interest__c, email__c, interest_rate__c, loan_interest_rate__c, loan_type__c, remaining_loan_amount__c, total_loan_amount__c, active__c FROM Account WHERE name='' LIMIT 1];
            System.assert(acc.Name, testAcc.Name);
            System.assert(acc.Balance__c, testAcc.Balance__c);
            System.assert(acc.Balance__c * 0.05, testAcc.Calculated_Interest__c);
            System.assert(acc.Email__c, testAcc.Email__c);
            System.assert(acc.Loan_Interest_Rate__c, testAcc.Loan_Interest_Rate__c);
            System.assert(acc.Loan_Type__c, testAcc.Loan_Type__c);
            //System.assert(acc.Remaining_Loan_Amount__c, testAcc.Remaining_Loan_Amount__c);
            System.assert(acc.Total_Loan_Amount__c, testAcc.Total_Loan_Amount__c);
        } catch (Exception e) {
            System.assert(false, e.getMessage());
        }
        Test.stopTest();
    }
    

    @isTest
    public static void testAccount_146() {
        Account acc = new Account();
        acc.Name = 'ToUpdate Account';
        acc.Balance__c = 100;
        acc.RecordTypeId = Schema.SObjectType.Account.getRecordTypeInfosByName().get('>=$100').getRecordTypeId();
        acc.Email__c = 'testUpdate@pairwise.test';
        acc.Active__c = 'Yes';
        insert acc;
        
        acc.Name = '';
        acc.Balance__c = 111;
        acc.Calculated_Interest__c = null;
        acc.Email__c = 'test146@pairwise.test';
        acc.Loan_Interest_Rate__c = 0.084;
        acc.Loan_Type__c = 'Home Loan';
        acc.Remaining_Loan_Amount__c = ;
        acc.Total_Loan_Amount__c = null;
        
        Test.startTest();
        try {
            update acc;
            Account testAcc = [SELECT name, balance__c, calculated_interest__c, email__c, interest_rate__c, loan_interest_rate__c, loan_type__c, remaining_loan_amount__c, total_loan_amount__c, active__c FROM Account WHERE name='' LIMIT 1];
            System.assert(acc.Name, testAcc.Name);
            System.assert(acc.Balance__c, testAcc.Balance__c);
            System.assert(acc.Balance__c * 0.05, testAcc.Calculated_Interest__c);
            System.assert(acc.Email__c, testAcc.Email__c);
            System.assert(acc.Loan_Interest_Rate__c, testAcc.Loan_Interest_Rate__c);
            System.assert(acc.Loan_Type__c, testAcc.Loan_Type__c);
            //System.assert(acc.Remaining_Loan_Amount__c, testAcc.Remaining_Loan_Amount__c);
            System.assert(acc.Total_Loan_Amount__c, testAcc.Total_Loan_Amount__c);
        } catch (Exception e) {
            System.assert(false, e.getMessage());
        }
        Test.stopTest();
    }
    

    @isTest
    public static void testAccount_147() {
        Account acc = new Account();
        acc.Name = '';
        acc.Balance__c = 193;
        acc.RecordTypeId = Schema.SObjectType.Account.getRecordTypeInfosByName().get('>=$100').getRecordTypeId();
        acc.Calculated_Interest__c = null;
        acc.Email__c = '';
        acc.Loan_Interest_Rate__c = 0.136;
        acc.Loan_Type__c = 'Home Loan';
        //acc.Remaining_Loan_Amount__c = ;
        acc.Total_Loan_Amount__c = 4630186;
        acc.Active__c = 'Yes';
        
        Test.startTest();
        try {
            insert acc;
            Account testAcc = [SELECT name, balance__c, calculated_interest__c, email__c, interest_rate__c, loan_interest_rate__c, loan_type__c, remaining_loan_amount__c, total_loan_amount__c, active__c FROM Account WHERE name='' LIMIT 1];
            System.assert(acc.Name, testAcc.Name);
            System.assert(acc.Balance__c, testAcc.Balance__c);
            System.assert(acc.Balance__c * 0.05, testAcc.Calculated_Interest__c);
            System.assert(acc.Email__c, testAcc.Email__c);
            System.assert(acc.Loan_Interest_Rate__c, testAcc.Loan_Interest_Rate__c);
            System.assert(acc.Loan_Type__c, testAcc.Loan_Type__c);
            //System.assert(acc.Remaining_Loan_Amount__c, testAcc.Remaining_Loan_Amount__c);
            System.assert(acc.Total_Loan_Amount__c, testAcc.Total_Loan_Amount__c);
        } catch (Exception e) {
            System.assert(false, e.getMessage());
        }
        Test.stopTest();
    }
    

    @isTest
    public static void testAccount_148() {
        Account acc = new Account();
        acc.Name = 'ToUpdate Account';
        acc.Balance__c = 100;
        acc.RecordTypeId = Schema.SObjectType.Account.getRecordTypeInfosByName().get('>=$100').getRecordTypeId();
        acc.Email__c = 'testUpdate@pairwise.test';
        acc.Active__c = 'Yes';
        insert acc;
        
        acc.Name = '';
        acc.Balance__c = 143;
        acc.Calculated_Interest__c = 7;
        acc.Email__c = 'test148@pairwise.test';
        acc.Loan_Interest_Rate__c = 0.159;
        acc.Loan_Type__c = 'Home Loan';
        acc.Remaining_Loan_Amount__c = ;
        acc.Total_Loan_Amount__c = 740809;
        
        Test.startTest();
        try {
            update acc;
            Account testAcc = [SELECT name, balance__c, calculated_interest__c, email__c, interest_rate__c, loan_interest_rate__c, loan_type__c, remaining_loan_amount__c, total_loan_amount__c, active__c FROM Account WHERE name='' LIMIT 1];
            System.assert(acc.Name, testAcc.Name);
            System.assert(acc.Balance__c, testAcc.Balance__c);
            System.assert(acc.Balance__c * 0.05, testAcc.Calculated_Interest__c);
            System.assert(acc.Email__c, testAcc.Email__c);
            System.assert(acc.Loan_Interest_Rate__c, testAcc.Loan_Interest_Rate__c);
            System.assert(acc.Loan_Type__c, testAcc.Loan_Type__c);
            //System.assert(acc.Remaining_Loan_Amount__c, testAcc.Remaining_Loan_Amount__c);
            System.assert(acc.Total_Loan_Amount__c, testAcc.Total_Loan_Amount__c);
        } catch (Exception e) {
            System.assert(false, e.getMessage());
        }
        Test.stopTest();
    }
    

    @isTest
    public static void testAccount_149() {
        Account acc = new Account();
        acc.Name = 'ToUpdate Account';
        acc.Balance__c = 100;
        acc.RecordTypeId = Schema.SObjectType.Account.getRecordTypeInfosByName().get('>=$100').getRecordTypeId();
        acc.Email__c = 'testUpdate@pairwise.test';
        acc.Active__c = 'Yes';
        insert acc;
        
        acc.Name = '';
        acc.Balance__c = 109;
        acc.Calculated_Interest__c = null;
        acc.Email__c = 'test149@pairwise.test';
        acc.Loan_Interest_Rate__c = 0.11800000000000001;
        acc.Loan_Type__c = 'Home Loan';
        acc.Remaining_Loan_Amount__c = ;
        acc.Total_Loan_Amount__c = 439843;
        
        Test.startTest();
        try {
            update acc;
            Account testAcc = [SELECT name, balance__c, calculated_interest__c, email__c, interest_rate__c, loan_interest_rate__c, loan_type__c, remaining_loan_amount__c, total_loan_amount__c, active__c FROM Account WHERE name='' LIMIT 1];
            System.assert(acc.Name, testAcc.Name);
            System.assert(acc.Balance__c, testAcc.Balance__c);
            System.assert(acc.Balance__c * 0.05, testAcc.Calculated_Interest__c);
            System.assert(acc.Email__c, testAcc.Email__c);
            System.assert(acc.Loan_Interest_Rate__c, testAcc.Loan_Interest_Rate__c);
            System.assert(acc.Loan_Type__c, testAcc.Loan_Type__c);
            //System.assert(acc.Remaining_Loan_Amount__c, testAcc.Remaining_Loan_Amount__c);
            System.assert(acc.Total_Loan_Amount__c, testAcc.Total_Loan_Amount__c);
        } catch (Exception e) {
            System.assert(false, e.getMessage());
        }
        Test.stopTest();
    }
    

    @isTest
    public static void testAccount_150() {
        Account acc = new Account();
        acc.Name = 'ToUpdate Account';
        acc.Balance__c = 100;
        acc.RecordTypeId = Schema.SObjectType.Account.getRecordTypeInfosByName().get('Blank').getRecordTypeId();
        acc.Email__c = 'testUpdate@pairwise.test';
        acc.Active__c = 'Yes';
        insert acc;
        
        acc.Name = '';
        acc.Balance__c = 141;
        acc.Calculated_Interest__c = null;
        acc.Email__c = 'test150@pairwise.test';
        acc.Loan_Interest_Rate__c = 0.11;
        acc.Loan_Type__c = 'Car Loan';
        acc.Remaining_Loan_Amount__c = 15000000;
        acc.Total_Loan_Amount__c = 9159498;
        
        Test.startTest();
        try {
            update acc;
            Account testAcc = [SELECT name, balance__c, calculated_interest__c, email__c, interest_rate__c, loan_interest_rate__c, loan_type__c, remaining_loan_amount__c, total_loan_amount__c, active__c FROM Account WHERE name='' LIMIT 1];
            System.assert(acc.Name, testAcc.Name);
            System.assert(acc.Balance__c, testAcc.Balance__c);
            System.assert(acc.Balance__c * 0.05, testAcc.Calculated_Interest__c);
            System.assert(acc.Email__c, testAcc.Email__c);
            System.assert(acc.Loan_Interest_Rate__c, testAcc.Loan_Interest_Rate__c);
            System.assert(acc.Loan_Type__c, testAcc.Loan_Type__c);
            //System.assert(acc.Remaining_Loan_Amount__c, testAcc.Remaining_Loan_Amount__c);
            System.assert(acc.Total_Loan_Amount__c, testAcc.Total_Loan_Amount__c);
        } catch (Exception e) {
            System.assert(false, e.getMessage());
        }
        Test.stopTest();
    }
    

    @isTest
    public static void testAccount_151() {
        Account acc = new Account();
        acc.Name = 'ToUpdate Account';
        acc.Balance__c = 100;
        acc.RecordTypeId = Schema.SObjectType.Account.getRecordTypeInfosByName().get('>=$0').getRecordTypeId();
        acc.Email__c = 'testUpdate@pairwise.test';
        acc.Active__c = 'Yes';
        insert acc;
        
        acc.Name = '';
        acc.Balance__c = 193;
        acc.Calculated_Interest__c = 7;
        acc.Email__c = '';
        acc.Loan_Interest_Rate__c = 0.11900000000000001;
        acc.Loan_Type__c = 'Car Loan';
        acc.Remaining_Loan_Amount__c = 15000000;
        acc.Total_Loan_Amount__c = 112910;
        
        Test.startTest();
        try {
            update acc;
            Account testAcc = [SELECT name, balance__c, calculated_interest__c, email__c, interest_rate__c, loan_interest_rate__c, loan_type__c, remaining_loan_amount__c, total_loan_amount__c, active__c FROM Account WHERE name='' LIMIT 1];
            System.assert(acc.Name, testAcc.Name);
            System.assert(acc.Balance__c, testAcc.Balance__c);
            System.assert(acc.Balance__c * 0.038, testAcc.Calculated_Interest__c);
            System.assert(acc.Email__c, testAcc.Email__c);
            System.assert(acc.Loan_Interest_Rate__c, testAcc.Loan_Interest_Rate__c);
            System.assert(acc.Loan_Type__c, testAcc.Loan_Type__c);
            //System.assert(acc.Remaining_Loan_Amount__c, testAcc.Remaining_Loan_Amount__c);
            System.assert(acc.Total_Loan_Amount__c, testAcc.Total_Loan_Amount__c);
        } catch (Exception e) {
            System.assert(false, e.getMessage());
        }
        Test.stopTest();
    }
    

    @isTest
    public static void testAccount_152() {
        Account acc = new Account();
        acc.Name = 'ToUpdate Account';
        acc.Balance__c = 100;
        acc.RecordTypeId = Schema.SObjectType.Account.getRecordTypeInfosByName().get('Blank').getRecordTypeId();
        acc.Email__c = 'testUpdate@pairwise.test';
        acc.Active__c = 'Yes';
        insert acc;
        
        acc.Name = '';
        acc.Balance__c = 168;
        acc.Calculated_Interest__c = null;
        acc.Email__c = '';
        acc.Loan_Interest_Rate__c = 0.136;
        acc.Loan_Type__c = 'Car Loan';
        acc.Remaining_Loan_Amount__c = ;
        acc.Total_Loan_Amount__c = 969754;
        
        Test.startTest();
        try {
            update acc;
            Account testAcc = [SELECT name, balance__c, calculated_interest__c, email__c, interest_rate__c, loan_interest_rate__c, loan_type__c, remaining_loan_amount__c, total_loan_amount__c, active__c FROM Account WHERE name='' LIMIT 1];
            System.assert(acc.Name, testAcc.Name);
            System.assert(acc.Balance__c, testAcc.Balance__c);
            System.assert(acc.Balance__c * 0.05, testAcc.Calculated_Interest__c);
            System.assert(acc.Email__c, testAcc.Email__c);
            System.assert(acc.Loan_Interest_Rate__c, testAcc.Loan_Interest_Rate__c);
            System.assert(acc.Loan_Type__c, testAcc.Loan_Type__c);
            //System.assert(acc.Remaining_Loan_Amount__c, testAcc.Remaining_Loan_Amount__c);
            System.assert(acc.Total_Loan_Amount__c, testAcc.Total_Loan_Amount__c);
        } catch (Exception e) {
            System.assert(false, e.getMessage());
        }
        Test.stopTest();
    }
    

    @isTest
    public static void testAccount_153() {
        Account acc = new Account();
        acc.Name = 'ToUpdate Account';
        acc.Balance__c = 100;
        acc.RecordTypeId = Schema.SObjectType.Account.getRecordTypeInfosByName().get('>=$100').getRecordTypeId();
        acc.Email__c = 'testUpdate@pairwise.test';
        acc.Active__c = 'Yes';
        insert acc;
        
        acc.Name = '';
        acc.Balance__c = 113;
        acc.Calculated_Interest__c = 7;
        acc.Email__c = 'test153@pairwise.test';
        acc.Loan_Interest_Rate__c = 0.109;
        acc.Loan_Type__c = 'Car Loan';
        acc.Remaining_Loan_Amount__c = 15000000;
        acc.Total_Loan_Amount__c = 863965;
        
        Test.startTest();
        try {
            update acc;
            Account testAcc = [SELECT name, balance__c, calculated_interest__c, email__c, interest_rate__c, loan_interest_rate__c, loan_type__c, remaining_loan_amount__c, total_loan_amount__c, active__c FROM Account WHERE name='' LIMIT 1];
            System.assert(acc.Name, testAcc.Name);
            System.assert(acc.Balance__c, testAcc.Balance__c);
            System.assert(acc.Balance__c * 0.06, testAcc.Calculated_Interest__c);
            System.assert(acc.Email__c, testAcc.Email__c);
            System.assert(acc.Loan_Interest_Rate__c, testAcc.Loan_Interest_Rate__c);
            System.assert(acc.Loan_Type__c, testAcc.Loan_Type__c);
            //System.assert(acc.Remaining_Loan_Amount__c, testAcc.Remaining_Loan_Amount__c);
            System.assert(acc.Total_Loan_Amount__c, testAcc.Total_Loan_Amount__c);
        } catch (Exception e) {
            System.assert(false, e.getMessage());
        }
        Test.stopTest();
    }
    

    @isTest
    public static void testAccount_154() {
        Account acc = new Account();
        acc.Name = '';
        acc.Balance__c = 154;
        acc.RecordTypeId = Schema.SObjectType.Account.getRecordTypeInfosByName().get('>=$0').getRecordTypeId();
        acc.Calculated_Interest__c = 7;
        acc.Email__c = '';
        acc.Loan_Interest_Rate__c = 0.11900000000000001;
        acc.Loan_Type__c = 'Home Loan';
        //acc.Remaining_Loan_Amount__c = ;
        acc.Total_Loan_Amount__c = 396462;
        acc.Active__c = 'Yes';
        
        Test.startTest();
        try {
            insert acc;
            Account testAcc = [SELECT name, balance__c, calculated_interest__c, email__c, interest_rate__c, loan_interest_rate__c, loan_type__c, remaining_loan_amount__c, total_loan_amount__c, active__c FROM Account WHERE name='' LIMIT 1];
            System.assert(acc.Name, testAcc.Name);
            System.assert(acc.Balance__c, testAcc.Balance__c);
            System.assert(acc.Balance__c * 0.06, testAcc.Calculated_Interest__c);
            System.assert(acc.Email__c, testAcc.Email__c);
            System.assert(acc.Loan_Interest_Rate__c, testAcc.Loan_Interest_Rate__c);
            System.assert(acc.Loan_Type__c, testAcc.Loan_Type__c);
            //System.assert(acc.Remaining_Loan_Amount__c, testAcc.Remaining_Loan_Amount__c);
            System.assert(acc.Total_Loan_Amount__c, testAcc.Total_Loan_Amount__c);
        } catch (Exception e) {
            System.assert(false, e.getMessage());
        }
        Test.stopTest();
    }
    

    @isTest
    public static void testAccount_155() {
        Account acc = new Account();
        acc.Name = 'ToUpdate Account';
        acc.Balance__c = 100;
        acc.RecordTypeId = Schema.SObjectType.Account.getRecordTypeInfosByName().get('>=$100').getRecordTypeId();
        acc.Email__c = 'testUpdate@pairwise.test';
        acc.Active__c = 'Yes';
        insert acc;
        
        acc.Name = '';
        acc.Balance__c = 121;
        acc.Calculated_Interest__c = null;
        acc.Email__c = '';
        acc.Loan_Interest_Rate__c = 0.109;
        acc.Loan_Type__c = 'Car Loan';
        acc.Remaining_Loan_Amount__c = 15000000;
        acc.Total_Loan_Amount__c = 8681504;
        
        Test.startTest();
        try {
            update acc;
            Account testAcc = [SELECT name, balance__c, calculated_interest__c, email__c, interest_rate__c, loan_interest_rate__c, loan_type__c, remaining_loan_amount__c, total_loan_amount__c, active__c FROM Account WHERE name='' LIMIT 1];
            System.assert(acc.Name, testAcc.Name);
            System.assert(acc.Balance__c, testAcc.Balance__c);
            System.assert(acc.Balance__c * 0.05, testAcc.Calculated_Interest__c);
            System.assert(acc.Email__c, testAcc.Email__c);
            System.assert(acc.Loan_Interest_Rate__c, testAcc.Loan_Interest_Rate__c);
            System.assert(acc.Loan_Type__c, testAcc.Loan_Type__c);
            //System.assert(acc.Remaining_Loan_Amount__c, testAcc.Remaining_Loan_Amount__c);
            System.assert(acc.Total_Loan_Amount__c, testAcc.Total_Loan_Amount__c);
        } catch (Exception e) {
            System.assert(false, e.getMessage());
        }
        Test.stopTest();
    }
    

    @isTest
    public static void testAccount_156() {
        Account acc = new Account();
        acc.Name = 'ToUpdate Account';
        acc.Balance__c = 100;
        acc.RecordTypeId = Schema.SObjectType.Account.getRecordTypeInfosByName().get('Blank').getRecordTypeId();
        acc.Email__c = 'testUpdate@pairwise.test';
        acc.Active__c = 'Yes';
        insert acc;
        
        acc.Name = '';
        acc.Balance__c = 180;
        acc.Calculated_Interest__c = null;
        acc.Email__c = 'test156@pairwise.test';
        acc.Loan_Interest_Rate__c = 0.07;
        acc.Loan_Type__c = 'Car Loan';
        acc.Remaining_Loan_Amount__c = 15000000;
        acc.Total_Loan_Amount__c = 1645591;
        
        Test.startTest();
        try {
            update acc;
            Account testAcc = [SELECT name, balance__c, calculated_interest__c, email__c, interest_rate__c, loan_interest_rate__c, loan_type__c, remaining_loan_amount__c, total_loan_amount__c, active__c FROM Account WHERE name='' LIMIT 1];
            System.assert(acc.Name, testAcc.Name);
            System.assert(acc.Balance__c, testAcc.Balance__c);
            System.assert(acc.Balance__c * 0.06, testAcc.Calculated_Interest__c);
            System.assert(acc.Email__c, testAcc.Email__c);
            System.assert(acc.Loan_Interest_Rate__c, testAcc.Loan_Interest_Rate__c);
            System.assert(acc.Loan_Type__c, testAcc.Loan_Type__c);
            //System.assert(acc.Remaining_Loan_Amount__c, testAcc.Remaining_Loan_Amount__c);
            System.assert(acc.Total_Loan_Amount__c, testAcc.Total_Loan_Amount__c);
        } catch (Exception e) {
            System.assert(false, e.getMessage());
        }
        Test.stopTest();
    }
    

    @isTest
    public static void testAccount_157() {
        Account acc = new Account();
        acc.Name = 'ToUpdate Account';
        acc.Balance__c = 100;
        acc.RecordTypeId = Schema.SObjectType.Account.getRecordTypeInfosByName().get('>=$100').getRecordTypeId();
        acc.Email__c = 'testUpdate@pairwise.test';
        acc.Active__c = 'Yes';
        insert acc;
        
        acc.Name = '';
        acc.Balance__c = 152;
        acc.Calculated_Interest__c = null;
        acc.Email__c = 'test157@pairwise.test';
        acc.Loan_Interest_Rate__c = 0.11800000000000001;
        acc.Loan_Type__c = 'Home Loan';
        acc.Remaining_Loan_Amount__c = 15000000;
        acc.Total_Loan_Amount__c = 2929767;
        
        Test.startTest();
        try {
            update acc;
            Account testAcc = [SELECT name, balance__c, calculated_interest__c, email__c, interest_rate__c, loan_interest_rate__c, loan_type__c, remaining_loan_amount__c, total_loan_amount__c, active__c FROM Account WHERE name='' LIMIT 1];
            System.assert(acc.Name, testAcc.Name);
            System.assert(acc.Balance__c, testAcc.Balance__c);
            System.assert(acc.Balance__c * 0.06, testAcc.Calculated_Interest__c);
            System.assert(acc.Email__c, testAcc.Email__c);
            System.assert(acc.Loan_Interest_Rate__c, testAcc.Loan_Interest_Rate__c);
            System.assert(acc.Loan_Type__c, testAcc.Loan_Type__c);
            //System.assert(acc.Remaining_Loan_Amount__c, testAcc.Remaining_Loan_Amount__c);
            System.assert(acc.Total_Loan_Amount__c, testAcc.Total_Loan_Amount__c);
        } catch (Exception e) {
            System.assert(false, e.getMessage());
        }
        Test.stopTest();
    }
    

    @isTest
    public static void testAccount_158() {
        Account acc = new Account();
        acc.Name = '';
        acc.Balance__c = 151;
        acc.RecordTypeId = Schema.SObjectType.Account.getRecordTypeInfosByName().get('>=$100').getRecordTypeId();
        acc.Calculated_Interest__c = null;
        acc.Email__c = '';
        acc.Loan_Interest_Rate__c = 0.162;
        acc.Loan_Type__c = 'Home Loan';
        //acc.Remaining_Loan_Amount__c = ;
        acc.Total_Loan_Amount__c = null;
        acc.Active__c = 'Yes';
        
        Test.startTest();
        try {
            insert acc;
            Account testAcc = [SELECT name, balance__c, calculated_interest__c, email__c, interest_rate__c, loan_interest_rate__c, loan_type__c, remaining_loan_amount__c, total_loan_amount__c, active__c FROM Account WHERE name='' LIMIT 1];
            System.assert(acc.Name, testAcc.Name);
            System.assert(acc.Balance__c, testAcc.Balance__c);
            System.assert(acc.Balance__c * 0.05, testAcc.Calculated_Interest__c);
            System.assert(acc.Email__c, testAcc.Email__c);
            System.assert(acc.Loan_Interest_Rate__c, testAcc.Loan_Interest_Rate__c);
            System.assert(acc.Loan_Type__c, testAcc.Loan_Type__c);
            //System.assert(acc.Remaining_Loan_Amount__c, testAcc.Remaining_Loan_Amount__c);
            System.assert(acc.Total_Loan_Amount__c, testAcc.Total_Loan_Amount__c);
        } catch (Exception e) {
            System.assert(false, e.getMessage());
        }
        Test.stopTest();
    }
    

    @isTest
    public static void testAccount_159() {
        Account acc = new Account();
        acc.Name = 'ToUpdate Account';
        acc.Balance__c = 100;
        acc.RecordTypeId = Schema.SObjectType.Account.getRecordTypeInfosByName().get('>=$0').getRecordTypeId();
        acc.Email__c = 'testUpdate@pairwise.test';
        acc.Active__c = 'Yes';
        insert acc;
        
        acc.Name = '';
        acc.Balance__c = 193;
        acc.Calculated_Interest__c = 7;
        acc.Email__c = 'test159@pairwise.test';
        acc.Loan_Interest_Rate__c = 0.08;
        acc.Loan_Type__c = 'Car Loan';
        acc.Remaining_Loan_Amount__c = ;
        acc.Total_Loan_Amount__c = 458605;
        
        Test.startTest();
        try {
            update acc;
            Account testAcc = [SELECT name, balance__c, calculated_interest__c, email__c, interest_rate__c, loan_interest_rate__c, loan_type__c, remaining_loan_amount__c, total_loan_amount__c, active__c FROM Account WHERE name='' LIMIT 1];
            System.assert(acc.Name, testAcc.Name);
            System.assert(acc.Balance__c, testAcc.Balance__c);
            System.assert(acc.Balance__c * 0.038, testAcc.Calculated_Interest__c);
            System.assert(acc.Email__c, testAcc.Email__c);
            System.assert(acc.Loan_Interest_Rate__c, testAcc.Loan_Interest_Rate__c);
            System.assert(acc.Loan_Type__c, testAcc.Loan_Type__c);
            //System.assert(acc.Remaining_Loan_Amount__c, testAcc.Remaining_Loan_Amount__c);
            System.assert(acc.Total_Loan_Amount__c, testAcc.Total_Loan_Amount__c);
        } catch (Exception e) {
            System.assert(false, e.getMessage());
        }
        Test.stopTest();
    }
    

    @isTest
    public static void testAccount_160() {
        Account acc = new Account();
        acc.Name = '';
        acc.Balance__c = 194;
        acc.RecordTypeId = Schema.SObjectType.Account.getRecordTypeInfosByName().get('>=$0').getRecordTypeId();
        acc.Calculated_Interest__c = 7;
        acc.Email__c = '';
        acc.Loan_Interest_Rate__c = 0.125;
        acc.Loan_Type__c = 'Car Loan';
        //acc.Remaining_Loan_Amount__c = ;
        acc.Total_Loan_Amount__c = 788759;
        acc.Active__c = 'Yes';
        
        Test.startTest();
        try {
            insert acc;
            Account testAcc = [SELECT name, balance__c, calculated_interest__c, email__c, interest_rate__c, loan_interest_rate__c, loan_type__c, remaining_loan_amount__c, total_loan_amount__c, active__c FROM Account WHERE name='' LIMIT 1];
            System.assert(acc.Name, testAcc.Name);
            System.assert(acc.Balance__c, testAcc.Balance__c);
            System.assert(acc.Balance__c * 0.06, testAcc.Calculated_Interest__c);
            System.assert(acc.Email__c, testAcc.Email__c);
            System.assert(acc.Loan_Interest_Rate__c, testAcc.Loan_Interest_Rate__c);
            System.assert(acc.Loan_Type__c, testAcc.Loan_Type__c);
            //System.assert(acc.Remaining_Loan_Amount__c, testAcc.Remaining_Loan_Amount__c);
            System.assert(acc.Total_Loan_Amount__c, testAcc.Total_Loan_Amount__c);
        } catch (Exception e) {
            System.assert(false, e.getMessage());
        }
        Test.stopTest();
    }
    

    @isTest
    public static void testAccount_161() {
        Account acc = new Account();
        acc.Name = '';
        acc.Balance__c = 111;
        acc.RecordTypeId = Schema.SObjectType.Account.getRecordTypeInfosByName().get('>=$100').getRecordTypeId();
        acc.Calculated_Interest__c = 7;
        acc.Email__c = 'test161@pairwise.test';
        acc.Loan_Interest_Rate__c = 0.14;
        acc.Loan_Type__c = 'Home Loan';
        //acc.Remaining_Loan_Amount__c = 15000000;
        acc.Total_Loan_Amount__c = 612114;
        acc.Active__c = 'Yes';
        
        Test.startTest();
        try {
            insert acc;
            Account testAcc = [SELECT name, balance__c, calculated_interest__c, email__c, interest_rate__c, loan_interest_rate__c, loan_type__c, remaining_loan_amount__c, total_loan_amount__c, active__c FROM Account WHERE name='' LIMIT 1];
            System.assert(acc.Name, testAcc.Name);
            System.assert(acc.Balance__c, testAcc.Balance__c);
            System.assert(acc.Balance__c * 0.05, testAcc.Calculated_Interest__c);
            System.assert(acc.Email__c, testAcc.Email__c);
            System.assert(acc.Loan_Interest_Rate__c, testAcc.Loan_Interest_Rate__c);
            System.assert(acc.Loan_Type__c, testAcc.Loan_Type__c);
            //System.assert(acc.Remaining_Loan_Amount__c, testAcc.Remaining_Loan_Amount__c);
            System.assert(acc.Total_Loan_Amount__c, testAcc.Total_Loan_Amount__c);
        } catch (Exception e) {
            System.assert(false, e.getMessage());
        }
        Test.stopTest();
    }
    

    @isTest
    public static void testAccount_162() {
        Account acc = new Account();
        acc.Name = 'ToUpdate Account';
        acc.Balance__c = 100;
        acc.RecordTypeId = Schema.SObjectType.Account.getRecordTypeInfosByName().get('>=$0').getRecordTypeId();
        acc.Email__c = 'testUpdate@pairwise.test';
        acc.Active__c = 'Yes';
        insert acc;
        
        acc.Name = '';
        acc.Balance__c = 117;
        acc.Calculated_Interest__c = null;
        acc.Email__c = '';
        acc.Loan_Interest_Rate__c = 0.09;
        acc.Loan_Type__c = 'Car Loan';
        acc.Remaining_Loan_Amount__c = 15000000;
        acc.Total_Loan_Amount__c = 847301;
        
        Test.startTest();
        try {
            update acc;
            Account testAcc = [SELECT name, balance__c, calculated_interest__c, email__c, interest_rate__c, loan_interest_rate__c, loan_type__c, remaining_loan_amount__c, total_loan_amount__c, active__c FROM Account WHERE name='' LIMIT 1];
            System.assert(acc.Name, testAcc.Name);
            System.assert(acc.Balance__c, testAcc.Balance__c);
            System.assert(acc.Balance__c * 0.06, testAcc.Calculated_Interest__c);
            System.assert(acc.Email__c, testAcc.Email__c);
            System.assert(acc.Loan_Interest_Rate__c, testAcc.Loan_Interest_Rate__c);
            System.assert(acc.Loan_Type__c, testAcc.Loan_Type__c);
            //System.assert(acc.Remaining_Loan_Amount__c, testAcc.Remaining_Loan_Amount__c);
            System.assert(acc.Total_Loan_Amount__c, testAcc.Total_Loan_Amount__c);
        } catch (Exception e) {
            System.assert(false, e.getMessage());
        }
        Test.stopTest();
    }
    

    @isTest
    public static void testAccount_163() {
        Account acc = new Account();
        acc.Name = '';
        acc.Balance__c = 195;
        acc.RecordTypeId = Schema.SObjectType.Account.getRecordTypeInfosByName().get('>=$0').getRecordTypeId();
        acc.Calculated_Interest__c = null;
        acc.Email__c = 'test163@pairwise.test';
        acc.Loan_Interest_Rate__c = 0.07;
        acc.Loan_Type__c = 'Car Loan';
        //acc.Remaining_Loan_Amount__c = 15000000;
        acc.Total_Loan_Amount__c = null;
        acc.Active__c = 'Yes';
        
        Test.startTest();
        try {
            insert acc;
            Account testAcc = [SELECT name, balance__c, calculated_interest__c, email__c, interest_rate__c, loan_interest_rate__c, loan_type__c, remaining_loan_amount__c, total_loan_amount__c, active__c FROM Account WHERE name='' LIMIT 1];
            System.assert(acc.Name, testAcc.Name);
            System.assert(acc.Balance__c, testAcc.Balance__c);
            System.assert(acc.Balance__c * 0.06, testAcc.Calculated_Interest__c);
            System.assert(acc.Email__c, testAcc.Email__c);
            System.assert(acc.Loan_Interest_Rate__c, testAcc.Loan_Interest_Rate__c);
            System.assert(acc.Loan_Type__c, testAcc.Loan_Type__c);
            //System.assert(acc.Remaining_Loan_Amount__c, testAcc.Remaining_Loan_Amount__c);
            System.assert(acc.Total_Loan_Amount__c, testAcc.Total_Loan_Amount__c);
        } catch (Exception e) {
            System.assert(false, e.getMessage());
        }
        Test.stopTest();
    }
    

    @isTest
    public static void testAccount_164() {
        Account acc = new Account();
        acc.Name = '';
        acc.Balance__c = 186;
        acc.RecordTypeId = Schema.SObjectType.Account.getRecordTypeInfosByName().get('>=$100').getRecordTypeId();
        acc.Calculated_Interest__c = null;
        acc.Email__c = '';
        acc.Loan_Interest_Rate__c = 0.125;
        acc.Loan_Type__c = 'Home Loan';
        //acc.Remaining_Loan_Amount__c = ;
        acc.Total_Loan_Amount__c = 10286;
        acc.Active__c = 'Yes';
        
        Test.startTest();
        try {
            insert acc;
            Account testAcc = [SELECT name, balance__c, calculated_interest__c, email__c, interest_rate__c, loan_interest_rate__c, loan_type__c, remaining_loan_amount__c, total_loan_amount__c, active__c FROM Account WHERE name='' LIMIT 1];
            System.assert(acc.Name, testAcc.Name);
            System.assert(acc.Balance__c, testAcc.Balance__c);
            System.assert(acc.Balance__c * 0.038, testAcc.Calculated_Interest__c);
            System.assert(acc.Email__c, testAcc.Email__c);
            System.assert(acc.Loan_Interest_Rate__c, testAcc.Loan_Interest_Rate__c);
            System.assert(acc.Loan_Type__c, testAcc.Loan_Type__c);
            //System.assert(acc.Remaining_Loan_Amount__c, testAcc.Remaining_Loan_Amount__c);
            System.assert(acc.Total_Loan_Amount__c, testAcc.Total_Loan_Amount__c);
        } catch (Exception e) {
            System.assert(false, e.getMessage());
        }
        Test.stopTest();
    }
    

    @isTest
    public static void testAccount_165() {
        Account acc = new Account();
        acc.Name = 'ToUpdate Account';
        acc.Balance__c = 100;
        acc.RecordTypeId = Schema.SObjectType.Account.getRecordTypeInfosByName().get('>=$0').getRecordTypeId();
        acc.Email__c = 'testUpdate@pairwise.test';
        acc.Active__c = 'Yes';
        insert acc;
        
        acc.Name = '';
        acc.Balance__c = 181;
        acc.Calculated_Interest__c = 7;
        acc.Email__c = '';
        acc.Loan_Interest_Rate__c = null;
        acc.Loan_Type__c = 'Car Loan';
        acc.Remaining_Loan_Amount__c = ;
        acc.Total_Loan_Amount__c = 49196;
        
        Test.startTest();
        try {
            update acc;
            Account testAcc = [SELECT name, balance__c, calculated_interest__c, email__c, interest_rate__c, loan_interest_rate__c, loan_type__c, remaining_loan_amount__c, total_loan_amount__c, active__c FROM Account WHERE name='' LIMIT 1];
            System.assert(acc.Name, testAcc.Name);
            System.assert(acc.Balance__c, testAcc.Balance__c);
            System.assert(acc.Balance__c * 0.038, testAcc.Calculated_Interest__c);
            System.assert(acc.Email__c, testAcc.Email__c);
            System.assert(acc.Loan_Interest_Rate__c, testAcc.Loan_Interest_Rate__c);
            System.assert(acc.Loan_Type__c, testAcc.Loan_Type__c);
            //System.assert(acc.Remaining_Loan_Amount__c, testAcc.Remaining_Loan_Amount__c);
            System.assert(acc.Total_Loan_Amount__c, testAcc.Total_Loan_Amount__c);
        } catch (Exception e) {
            System.assert(false, e.getMessage());
        }
        Test.stopTest();
    }
    

    @isTest
    public static void testAccount_166() {
        Account acc = new Account();
        acc.Name = 'ToUpdate Account';
        acc.Balance__c = 100;
        acc.RecordTypeId = Schema.SObjectType.Account.getRecordTypeInfosByName().get('Negative').getRecordTypeId();
        acc.Email__c = 'testUpdate@pairwise.test';
        acc.Active__c = 'Yes';
        insert acc;
        
        acc.Name = '';
        acc.Balance__c = 155;
        acc.Calculated_Interest__c = 7;
        acc.Email__c = 'test166@pairwise.test';
        acc.Loan_Interest_Rate__c = 0.084;
        acc.Loan_Type__c = 'Car Loan';
        acc.Remaining_Loan_Amount__c = ;
        acc.Total_Loan_Amount__c = 2246081;
        
        Test.startTest();
        try {
            update acc;
            Account testAcc = [SELECT name, balance__c, calculated_interest__c, email__c, interest_rate__c, loan_interest_rate__c, loan_type__c, remaining_loan_amount__c, total_loan_amount__c, active__c FROM Account WHERE name='' LIMIT 1];
            System.assert(acc.Name, testAcc.Name);
            System.assert(acc.Balance__c, testAcc.Balance__c);
            System.assert(acc.Balance__c * 0.05, testAcc.Calculated_Interest__c);
            System.assert(acc.Email__c, testAcc.Email__c);
            System.assert(acc.Loan_Interest_Rate__c, testAcc.Loan_Interest_Rate__c);
            System.assert(acc.Loan_Type__c, testAcc.Loan_Type__c);
            //System.assert(acc.Remaining_Loan_Amount__c, testAcc.Remaining_Loan_Amount__c);
            System.assert(acc.Total_Loan_Amount__c, testAcc.Total_Loan_Amount__c);
        } catch (Exception e) {
            System.assert(false, e.getMessage());
        }
        Test.stopTest();
    }
    

    @isTest
    public static void testAccount_167() {
        Account acc = new Account();
        acc.Name = 'ToUpdate Account';
        acc.Balance__c = 100;
        acc.RecordTypeId = Schema.SObjectType.Account.getRecordTypeInfosByName().get('Negative').getRecordTypeId();
        acc.Email__c = 'testUpdate@pairwise.test';
        acc.Active__c = 'Yes';
        insert acc;
        
        acc.Name = '';
        acc.Balance__c = 146;
        acc.Calculated_Interest__c = null;
        acc.Email__c = 'test167@pairwise.test';
        acc.Loan_Interest_Rate__c = null;
        acc.Loan_Type__c = 'Car Loan';
        acc.Remaining_Loan_Amount__c = 15000000;
        acc.Total_Loan_Amount__c = 621280;
        
        Test.startTest();
        try {
            update acc;
            Account testAcc = [SELECT name, balance__c, calculated_interest__c, email__c, interest_rate__c, loan_interest_rate__c, loan_type__c, remaining_loan_amount__c, total_loan_amount__c, active__c FROM Account WHERE name='' LIMIT 1];
            System.assert(acc.Name, testAcc.Name);
            System.assert(acc.Balance__c, testAcc.Balance__c);
            System.assert(acc.Balance__c * 0.038, testAcc.Calculated_Interest__c);
            System.assert(acc.Email__c, testAcc.Email__c);
            System.assert(acc.Loan_Interest_Rate__c, testAcc.Loan_Interest_Rate__c);
            System.assert(acc.Loan_Type__c, testAcc.Loan_Type__c);
            //System.assert(acc.Remaining_Loan_Amount__c, testAcc.Remaining_Loan_Amount__c);
            System.assert(acc.Total_Loan_Amount__c, testAcc.Total_Loan_Amount__c);
        } catch (Exception e) {
            System.assert(false, e.getMessage());
        }
        Test.stopTest();
    }
    

    @isTest
    public static void testAccount_168() {
        Account acc = new Account();
        acc.Name = 'ToUpdate Account';
        acc.Balance__c = 100;
        acc.RecordTypeId = Schema.SObjectType.Account.getRecordTypeInfosByName().get('>=$0').getRecordTypeId();
        acc.Email__c = 'testUpdate@pairwise.test';
        acc.Active__c = 'Yes';
        insert acc;
        
        acc.Name = '';
        acc.Balance__c = 158;
        acc.Calculated_Interest__c = null;
        acc.Email__c = '';
        acc.Loan_Interest_Rate__c = 0.11;
        acc.Loan_Type__c = 'Home Loan';
        acc.Remaining_Loan_Amount__c = ;
        acc.Total_Loan_Amount__c = null;
        
        Test.startTest();
        try {
            update acc;
            Account testAcc = [SELECT name, balance__c, calculated_interest__c, email__c, interest_rate__c, loan_interest_rate__c, loan_type__c, remaining_loan_amount__c, total_loan_amount__c, active__c FROM Account WHERE name='' LIMIT 1];
            System.assert(acc.Name, testAcc.Name);
            System.assert(acc.Balance__c, testAcc.Balance__c);
            System.assert(acc.Balance__c * 0.038, testAcc.Calculated_Interest__c);
            System.assert(acc.Email__c, testAcc.Email__c);
            System.assert(acc.Loan_Interest_Rate__c, testAcc.Loan_Interest_Rate__c);
            System.assert(acc.Loan_Type__c, testAcc.Loan_Type__c);
            //System.assert(acc.Remaining_Loan_Amount__c, testAcc.Remaining_Loan_Amount__c);
            System.assert(acc.Total_Loan_Amount__c, testAcc.Total_Loan_Amount__c);
        } catch (Exception e) {
            System.assert(false, e.getMessage());
        }
        Test.stopTest();
    }
    

    @isTest
    public static void testAccount_169() {
        Account acc = new Account();
        acc.Name = 'ToUpdate Account';
        acc.Balance__c = 100;
        acc.RecordTypeId = Schema.SObjectType.Account.getRecordTypeInfosByName().get('Negative').getRecordTypeId();
        acc.Email__c = 'testUpdate@pairwise.test';
        acc.Active__c = 'Yes';
        insert acc;
        
        acc.Name = '';
        acc.Balance__c = 184;
        acc.Calculated_Interest__c = 7;
        acc.Email__c = '';
        acc.Loan_Interest_Rate__c = 0.11800000000000001;
        acc.Loan_Type__c = 'Car Loan';
        acc.Remaining_Loan_Amount__c = 15000000;
        acc.Total_Loan_Amount__c = 908260;
        
        Test.startTest();
        try {
            update acc;
            Account testAcc = [SELECT name, balance__c, calculated_interest__c, email__c, interest_rate__c, loan_interest_rate__c, loan_type__c, remaining_loan_amount__c, total_loan_amount__c, active__c FROM Account WHERE name='' LIMIT 1];
            System.assert(acc.Name, testAcc.Name);
            System.assert(acc.Balance__c, testAcc.Balance__c);
            System.assert(acc.Balance__c * 0.038, testAcc.Calculated_Interest__c);
            System.assert(acc.Email__c, testAcc.Email__c);
            System.assert(acc.Loan_Interest_Rate__c, testAcc.Loan_Interest_Rate__c);
            System.assert(acc.Loan_Type__c, testAcc.Loan_Type__c);
            //System.assert(acc.Remaining_Loan_Amount__c, testAcc.Remaining_Loan_Amount__c);
            System.assert(acc.Total_Loan_Amount__c, testAcc.Total_Loan_Amount__c);
        } catch (Exception e) {
            System.assert(false, e.getMessage());
        }
        Test.stopTest();
    }
    

    @isTest
    public static void testAccount_170() {
        Account acc = new Account();
        acc.Name = 'ToUpdate Account';
        acc.Balance__c = 100;
        acc.RecordTypeId = Schema.SObjectType.Account.getRecordTypeInfosByName().get('Blank').getRecordTypeId();
        acc.Email__c = 'testUpdate@pairwise.test';
        acc.Active__c = 'Yes';
        insert acc;
        
        acc.Name = '';
        acc.Balance__c = 188;
        acc.Calculated_Interest__c = null;
        acc.Email__c = 'test170@pairwise.test';
        acc.Loan_Interest_Rate__c = 0.10300000000000001;
        acc.Loan_Type__c = 'Home Loan';
        acc.Remaining_Loan_Amount__c = ;
        acc.Total_Loan_Amount__c = 1944396;
        
        Test.startTest();
        try {
            update acc;
            Account testAcc = [SELECT name, balance__c, calculated_interest__c, email__c, interest_rate__c, loan_interest_rate__c, loan_type__c, remaining_loan_amount__c, total_loan_amount__c, active__c FROM Account WHERE name='' LIMIT 1];
            System.assert(acc.Name, testAcc.Name);
            System.assert(acc.Balance__c, testAcc.Balance__c);
            System.assert(acc.Balance__c * 0.05, testAcc.Calculated_Interest__c);
            System.assert(acc.Email__c, testAcc.Email__c);
            System.assert(acc.Loan_Interest_Rate__c, testAcc.Loan_Interest_Rate__c);
            System.assert(acc.Loan_Type__c, testAcc.Loan_Type__c);
            //System.assert(acc.Remaining_Loan_Amount__c, testAcc.Remaining_Loan_Amount__c);
            System.assert(acc.Total_Loan_Amount__c, testAcc.Total_Loan_Amount__c);
        } catch (Exception e) {
            System.assert(false, e.getMessage());
        }
        Test.stopTest();
    }
    

    @isTest
    public static void testAccount_171() {
        Account acc = new Account();
        acc.Name = '';
        acc.Balance__c = 120;
        acc.RecordTypeId = Schema.SObjectType.Account.getRecordTypeInfosByName().get('>=$100').getRecordTypeId();
        acc.Calculated_Interest__c = null;
        acc.Email__c = '';
        acc.Loan_Interest_Rate__c = 0.109;
        acc.Loan_Type__c = 'Home Loan';
        //acc.Remaining_Loan_Amount__c = ;
        acc.Total_Loan_Amount__c = 929088;
        acc.Active__c = 'Yes';
        
        Test.startTest();
        try {
            insert acc;
            Account testAcc = [SELECT name, balance__c, calculated_interest__c, email__c, interest_rate__c, loan_interest_rate__c, loan_type__c, remaining_loan_amount__c, total_loan_amount__c, active__c FROM Account WHERE name='' LIMIT 1];
            System.assert(acc.Name, testAcc.Name);
            System.assert(acc.Balance__c, testAcc.Balance__c);
            System.assert(acc.Balance__c * 0.038, testAcc.Calculated_Interest__c);
            System.assert(acc.Email__c, testAcc.Email__c);
            System.assert(acc.Loan_Interest_Rate__c, testAcc.Loan_Interest_Rate__c);
            System.assert(acc.Loan_Type__c, testAcc.Loan_Type__c);
            //System.assert(acc.Remaining_Loan_Amount__c, testAcc.Remaining_Loan_Amount__c);
            System.assert(acc.Total_Loan_Amount__c, testAcc.Total_Loan_Amount__c);
        } catch (Exception e) {
            System.assert(false, e.getMessage());
        }
        Test.stopTest();
    }
    

    @isTest
    public static void testAccount_172() {
        Account acc = new Account();
        acc.Name = 'ToUpdate Account';
        acc.Balance__c = 100;
        acc.RecordTypeId = Schema.SObjectType.Account.getRecordTypeInfosByName().get('>=$100').getRecordTypeId();
        acc.Email__c = 'testUpdate@pairwise.test';
        acc.Active__c = 'Yes';
        insert acc;
        
        acc.Name = '';
        acc.Balance__c = 143;
        acc.Calculated_Interest__c = null;
        acc.Email__c = 'test172@pairwise.test';
        acc.Loan_Interest_Rate__c = 0.1;
        acc.Loan_Type__c = 'Car Loan';
        acc.Remaining_Loan_Amount__c = ;
        acc.Total_Loan_Amount__c = 6898922;
        
        Test.startTest();
        try {
            update acc;
            Account testAcc = [SELECT name, balance__c, calculated_interest__c, email__c, interest_rate__c, loan_interest_rate__c, loan_type__c, remaining_loan_amount__c, total_loan_amount__c, active__c FROM Account WHERE name='' LIMIT 1];
            System.assert(acc.Name, testAcc.Name);
            System.assert(acc.Balance__c, testAcc.Balance__c);
            System.assert(acc.Balance__c * 0.06, testAcc.Calculated_Interest__c);
            System.assert(acc.Email__c, testAcc.Email__c);
            System.assert(acc.Loan_Interest_Rate__c, testAcc.Loan_Interest_Rate__c);
            System.assert(acc.Loan_Type__c, testAcc.Loan_Type__c);
            //System.assert(acc.Remaining_Loan_Amount__c, testAcc.Remaining_Loan_Amount__c);
            System.assert(acc.Total_Loan_Amount__c, testAcc.Total_Loan_Amount__c);
        } catch (Exception e) {
            System.assert(false, e.getMessage());
        }
        Test.stopTest();
    }
    

    @isTest
    public static void testAccount_173() {
        Account acc = new Account();
        acc.Name = 'ToUpdate Account';
        acc.Balance__c = 100;
        acc.RecordTypeId = Schema.SObjectType.Account.getRecordTypeInfosByName().get('Negative').getRecordTypeId();
        acc.Email__c = 'testUpdate@pairwise.test';
        acc.Active__c = 'Yes';
        insert acc;
        
        acc.Name = '';
        acc.Balance__c = 191;
        acc.Calculated_Interest__c = null;
        acc.Email__c = '';
        acc.Loan_Interest_Rate__c = 0.109;
        acc.Loan_Type__c = 'Home Loan';
        acc.Remaining_Loan_Amount__c = ;
        acc.Total_Loan_Amount__c = 4013423;
        
        Test.startTest();
        try {
            update acc;
            Account testAcc = [SELECT name, balance__c, calculated_interest__c, email__c, interest_rate__c, loan_interest_rate__c, loan_type__c, remaining_loan_amount__c, total_loan_amount__c, active__c FROM Account WHERE name='' LIMIT 1];
            System.assert(acc.Name, testAcc.Name);
            System.assert(acc.Balance__c, testAcc.Balance__c);
            System.assert(acc.Balance__c * 0.06, testAcc.Calculated_Interest__c);
            System.assert(acc.Email__c, testAcc.Email__c);
            System.assert(acc.Loan_Interest_Rate__c, testAcc.Loan_Interest_Rate__c);
            System.assert(acc.Loan_Type__c, testAcc.Loan_Type__c);
            //System.assert(acc.Remaining_Loan_Amount__c, testAcc.Remaining_Loan_Amount__c);
            System.assert(acc.Total_Loan_Amount__c, testAcc.Total_Loan_Amount__c);
        } catch (Exception e) {
            System.assert(false, e.getMessage());
        }
        Test.stopTest();
    }
            