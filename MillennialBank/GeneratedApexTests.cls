
    @isTest
    public static void testAccount_1() {
        Test.startTest();
        Account acc = new Account();
        acc.Name = 'ToUpdate Account';
        acc.Balance__c = 100;
        acc.RecordTypeId = Schema.SObjectType.Account.getRecordTypeInfosByName().get('Negative').getRecordTypeId();
        acc.Email__c = 'testUpdate@pairwise.test';
        acc.Active__c = 'Yes';
        insert acc;
        
        acc.Name = '';
        acc.Balance__c = 199;
        acc.Calculated_Interest__c = null;
        acc.Email__c = '';
        acc.Loan_Interest_Rate__c = 107;
        acc.Loan_Type__c = 'Car Loan';
        acc.Remaining_Loan_Amount__c = 15000000;
        acc.Total_Loan_Amount__c = 881162;
        
        
        try {
            update acc;
            Account testAcc = [SELECT name, balance__c, calculated_interest__c, email__c, interest_rate__c, loan_interest_rate__c, loan_type__c, remaining_loan_amount__c, total_loan_amount__c, active__c FROM Account WHERE name='' LIMIT 1];
            System.assertEquals(acc.Name, testAcc.Name);
            System.assertEquals(acc.Balance__c, testAcc.Balance__c);
            System.assertEquals(acc.Balance__c * 0.06, testAcc.Calculated_Interest__c);
            System.assertEquals(acc.Email__c, testAcc.Email__c);
            System.assertEquals(acc.Loan_Interest_Rate__c, testAcc.Loan_Interest_Rate__c);
            System.assertEquals(acc.Loan_Type__c, testAcc.Loan_Type__c);
            //System.assertEquals(acc.Remaining_Loan_Amount__c, testAcc.Remaining_Loan_Amount__c);
            System.assertEquals(acc.Total_Loan_Amount__c, testAcc.Total_Loan_Amount__c);
        } catch (Exception e) {
            System.assert(false, e.getMessage());
        }
        Test.stopTest();
    }
    

    @isTest
    public static void testAccount_2() {
        Test.startTest();
        Account acc = new Account();
        acc.Name = 'ToUpdate Account';
        acc.Balance__c = 100;
        acc.RecordTypeId = Schema.SObjectType.Account.getRecordTypeInfosByName().get('Negative').getRecordTypeId();
        acc.Email__c = 'testUpdate@pairwise.test';
        acc.Active__c = 'Yes';
        insert acc;
        
        acc.Name = '';
        acc.Balance__c = 186;
        acc.Calculated_Interest__c = 7;
        acc.Email__c = '';
        acc.Loan_Interest_Rate__c = 0.11;
        acc.Loan_Type__c = 'Home Loan';
        acc.Remaining_Loan_Amount__c = 15000000;
        acc.Total_Loan_Amount__c = 674136;
        
        
        try {
            update acc;
            Account testAcc = [SELECT name, balance__c, calculated_interest__c, email__c, interest_rate__c, loan_interest_rate__c, loan_type__c, remaining_loan_amount__c, total_loan_amount__c, active__c FROM Account WHERE name='' LIMIT 1];
            System.assertEquals(acc.Name, testAcc.Name);
            System.assertEquals(acc.Balance__c, testAcc.Balance__c);
            System.assertEquals(acc.Balance__c * 0.06, testAcc.Calculated_Interest__c);
            System.assertEquals(acc.Email__c, testAcc.Email__c);
            System.assertEquals(acc.Loan_Interest_Rate__c, testAcc.Loan_Interest_Rate__c);
            System.assertEquals(acc.Loan_Type__c, testAcc.Loan_Type__c);
            //System.assertEquals(acc.Remaining_Loan_Amount__c, testAcc.Remaining_Loan_Amount__c);
            System.assertEquals(acc.Total_Loan_Amount__c, testAcc.Total_Loan_Amount__c);
        } catch (Exception e) {
            System.assert(false, e.getMessage());
        }
        Test.stopTest();
    }
    

    @isTest
    public static void testAccount_3() {
        Test.startTest();
        Account acc = new Account();
        acc.Name = 'ToUpdate Account';
        acc.Balance__c = 100;
        acc.RecordTypeId = Schema.SObjectType.Account.getRecordTypeInfosByName().get('Negative').getRecordTypeId();
        acc.Email__c = 'testUpdate@pairwise.test';
        acc.Active__c = 'Yes';
        insert acc;
        
        acc.Name = '';
        acc.Balance__c = 159;
        acc.Calculated_Interest__c = null;
        acc.Email__c = '';
        acc.Loan_Interest_Rate__c = 0.07;
        acc.Loan_Type__c = 'Car Loan';
        acc.Remaining_Loan_Amount__c = null;
        acc.Total_Loan_Amount__c = 449855;
        
        
        try {
            update acc;
            Account testAcc = [SELECT name, balance__c, calculated_interest__c, email__c, interest_rate__c, loan_interest_rate__c, loan_type__c, remaining_loan_amount__c, total_loan_amount__c, active__c FROM Account WHERE name='' LIMIT 1];
            System.assertEquals(acc.Name, testAcc.Name);
            System.assertEquals(acc.Balance__c, testAcc.Balance__c);
            System.assertEquals(acc.Balance__c * 0.038, testAcc.Calculated_Interest__c);
            System.assertEquals(acc.Email__c, testAcc.Email__c);
            System.assertEquals(acc.Loan_Interest_Rate__c, testAcc.Loan_Interest_Rate__c);
            System.assertEquals(acc.Loan_Type__c, testAcc.Loan_Type__c);
            //System.assertEquals(acc.Remaining_Loan_Amount__c, testAcc.Remaining_Loan_Amount__c);
            System.assertEquals(acc.Total_Loan_Amount__c, testAcc.Total_Loan_Amount__c);
        } catch (Exception e) {
            System.assert(false, e.getMessage());
        }
        Test.stopTest();
    }
    

    @isTest
    public static void testAccount_4() {
        Test.startTest();
        Account acc = new Account();
        acc.Name = 'ToUpdate Account';
        acc.Balance__c = 100;
        acc.RecordTypeId = Schema.SObjectType.Account.getRecordTypeInfosByName().get('Negative').getRecordTypeId();
        acc.Email__c = 'testUpdate@pairwise.test';
        acc.Active__c = 'Yes';
        insert acc;
        
        acc.Name = '';
        acc.Balance__c = 135;
        acc.Calculated_Interest__c = 7;
        acc.Email__c = '';
        acc.Loan_Interest_Rate__c = null;
        acc.Loan_Type__c = 'Home Loan';
        acc.Remaining_Loan_Amount__c = null;
        acc.Total_Loan_Amount__c = 33890;
        
        
        try {
            update acc;
            Account testAcc = [SELECT name, balance__c, calculated_interest__c, email__c, interest_rate__c, loan_interest_rate__c, loan_type__c, remaining_loan_amount__c, total_loan_amount__c, active__c FROM Account WHERE name='' LIMIT 1];
            System.assertEquals(acc.Name, testAcc.Name);
            System.assertEquals(acc.Balance__c, testAcc.Balance__c);
            System.assertEquals(acc.Balance__c * 0.038, testAcc.Calculated_Interest__c);
            System.assertEquals(acc.Email__c, testAcc.Email__c);
            System.assertEquals(acc.Loan_Interest_Rate__c, testAcc.Loan_Interest_Rate__c);
            System.assertEquals(acc.Loan_Type__c, testAcc.Loan_Type__c);
            //System.assertEquals(acc.Remaining_Loan_Amount__c, testAcc.Remaining_Loan_Amount__c);
            System.assertEquals(acc.Total_Loan_Amount__c, testAcc.Total_Loan_Amount__c);
        } catch (Exception e) {
            System.assert(false, e.getMessage());
        }
        Test.stopTest();
    }
    

    @isTest
    public static void testAccount_5() {
        Test.startTest();
        Account acc = new Account();
        acc.Name = '';
        acc.Balance__c = 184;
        acc.RecordTypeId = Schema.SObjectType.Account.getRecordTypeInfosByName().get('>=$100').getRecordTypeId();
        acc.Calculated_Interest__c = 7;
        acc.Email__c = 'test5@pairwise.test';
        acc.Loan_Interest_Rate__c = 0.11;
        acc.Loan_Type__c = '';
        //acc.Remaining_Loan_Amount__c = 15000000;
        acc.Total_Loan_Amount__c = null;
        acc.Active__c = 'Yes';
        
        
        try {
            insert acc;
            Account testAcc = [SELECT name, balance__c, calculated_interest__c, email__c, interest_rate__c, loan_interest_rate__c, loan_type__c, remaining_loan_amount__c, total_loan_amount__c, active__c FROM Account WHERE name='' LIMIT 1];
            System.assertEquals(acc.Name, testAcc.Name);
            System.assertEquals(acc.Balance__c, testAcc.Balance__c);
            System.assertEquals(acc.Balance__c * 0.038, testAcc.Calculated_Interest__c);
            System.assertEquals(acc.Email__c, testAcc.Email__c);
            System.assertEquals(acc.Loan_Interest_Rate__c, testAcc.Loan_Interest_Rate__c);
            System.assertEquals(acc.Loan_Type__c, testAcc.Loan_Type__c);
            //System.assertEquals(acc.Remaining_Loan_Amount__c, testAcc.Remaining_Loan_Amount__c);
            System.assertEquals(acc.Total_Loan_Amount__c, testAcc.Total_Loan_Amount__c);
        } catch (Exception e) {
            System.assert(false, e.getMessage());
        }
        Test.stopTest();
    }
    

    @isTest
    public static void testAccount_6() {
        Test.startTest();
        Account acc = new Account();
        acc.Name = 'ToUpdate Account';
        acc.Balance__c = 100;
        acc.RecordTypeId = Schema.SObjectType.Account.getRecordTypeInfosByName().get('Negative').getRecordTypeId();
        acc.Email__c = 'testUpdate@pairwise.test';
        acc.Active__c = 'Yes';
        insert acc;
        
        acc.Name = '';
        acc.Balance__c = 156;
        acc.Calculated_Interest__c = 7;
        acc.Email__c = 'test6@pairwise.test';
        acc.Loan_Interest_Rate__c = 0.08;
        acc.Loan_Type__c = 'Car Loan';
        acc.Remaining_Loan_Amount__c = null;
        acc.Total_Loan_Amount__c = 917873;
        
        
        try {
            update acc;
            Account testAcc = [SELECT name, balance__c, calculated_interest__c, email__c, interest_rate__c, loan_interest_rate__c, loan_type__c, remaining_loan_amount__c, total_loan_amount__c, active__c FROM Account WHERE name='' LIMIT 1];
            System.assertEquals(acc.Name, testAcc.Name);
            System.assertEquals(acc.Balance__c, testAcc.Balance__c);
            System.assertEquals(acc.Balance__c * 0.05, testAcc.Calculated_Interest__c);
            System.assertEquals(acc.Email__c, testAcc.Email__c);
            System.assertEquals(acc.Loan_Interest_Rate__c, testAcc.Loan_Interest_Rate__c);
            System.assertEquals(acc.Loan_Type__c, testAcc.Loan_Type__c);
            //System.assertEquals(acc.Remaining_Loan_Amount__c, testAcc.Remaining_Loan_Amount__c);
            System.assertEquals(acc.Total_Loan_Amount__c, testAcc.Total_Loan_Amount__c);
        } catch (Exception e) {
            System.assert(false, e.getMessage());
        }
        Test.stopTest();
    }
    

    @isTest
    public static void testAccount_7() {
        Test.startTest();
        Account acc = new Account();
        acc.Name = 'ToUpdate Account';
        acc.Balance__c = 100;
        acc.RecordTypeId = Schema.SObjectType.Account.getRecordTypeInfosByName().get('Negative').getRecordTypeId();
        acc.Email__c = 'testUpdate@pairwise.test';
        acc.Active__c = 'Yes';
        insert acc;
        
        acc.Name = '';
        acc.Balance__c = 120;
        acc.Calculated_Interest__c = null;
        acc.Email__c = 'test7@pairwise.test';
        acc.Loan_Interest_Rate__c = 0.125;
        acc.Loan_Type__c = 'Car Loan';
        acc.Remaining_Loan_Amount__c = null;
        acc.Total_Loan_Amount__c = 2237463;
        
        
        try {
            update acc;
            Account testAcc = [SELECT name, balance__c, calculated_interest__c, email__c, interest_rate__c, loan_interest_rate__c, loan_type__c, remaining_loan_amount__c, total_loan_amount__c, active__c FROM Account WHERE name='' LIMIT 1];
            System.assertEquals(acc.Name, testAcc.Name);
            System.assertEquals(acc.Balance__c, testAcc.Balance__c);
            System.assertEquals(acc.Balance__c * 0.06, testAcc.Calculated_Interest__c);
            System.assertEquals(acc.Email__c, testAcc.Email__c);
            System.assertEquals(acc.Loan_Interest_Rate__c, testAcc.Loan_Interest_Rate__c);
            System.assertEquals(acc.Loan_Type__c, testAcc.Loan_Type__c);
            //System.assertEquals(acc.Remaining_Loan_Amount__c, testAcc.Remaining_Loan_Amount__c);
            System.assertEquals(acc.Total_Loan_Amount__c, testAcc.Total_Loan_Amount__c);
        } catch (Exception e) {
            System.assert(false, e.getMessage());
        }
        Test.stopTest();
    }
    

    @isTest
    public static void testAccount_8() {
        Test.startTest();
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
        acc.Email__c = 'test8@pairwise.test';
        acc.Loan_Interest_Rate__c = 0.14;
        acc.Loan_Type__c = 'Car Loan';
        acc.Remaining_Loan_Amount__c = null;
        acc.Total_Loan_Amount__c = null;
        
        
        try {
            update acc;
            Account testAcc = [SELECT name, balance__c, calculated_interest__c, email__c, interest_rate__c, loan_interest_rate__c, loan_type__c, remaining_loan_amount__c, total_loan_amount__c, active__c FROM Account WHERE name='' LIMIT 1];
            System.assertEquals(acc.Name, testAcc.Name);
            System.assertEquals(acc.Balance__c, testAcc.Balance__c);
            System.assertEquals(acc.Balance__c * 0.038, testAcc.Calculated_Interest__c);
            System.assertEquals(acc.Email__c, testAcc.Email__c);
            System.assertEquals(acc.Loan_Interest_Rate__c, testAcc.Loan_Interest_Rate__c);
            System.assertEquals(acc.Loan_Type__c, testAcc.Loan_Type__c);
            //System.assertEquals(acc.Remaining_Loan_Amount__c, testAcc.Remaining_Loan_Amount__c);
            System.assertEquals(acc.Total_Loan_Amount__c, testAcc.Total_Loan_Amount__c);
        } catch (Exception e) {
            System.assert(false, e.getMessage());
        }
        Test.stopTest();
    }
    

    @isTest
    public static void testAccount_9() {
        Test.startTest();
        Account acc = new Account();
        acc.Name = 'ToUpdate Account';
        acc.Balance__c = 100;
        acc.RecordTypeId = Schema.SObjectType.Account.getRecordTypeInfosByName().get('>=$0').getRecordTypeId();
        acc.Email__c = 'testUpdate@pairwise.test';
        acc.Active__c = 'Yes';
        insert acc;
        
        acc.Name = '';
        acc.Balance__c = 101;
        acc.Calculated_Interest__c = null;
        acc.Email__c = 'test9@pairwise.test';
        acc.Loan_Interest_Rate__c = 0.11;
        acc.Loan_Type__c = 'Car Loan';
        acc.Remaining_Loan_Amount__c = null;
        acc.Total_Loan_Amount__c = 75893;
        
        
        try {
            update acc;
            Account testAcc = [SELECT name, balance__c, calculated_interest__c, email__c, interest_rate__c, loan_interest_rate__c, loan_type__c, remaining_loan_amount__c, total_loan_amount__c, active__c FROM Account WHERE name='' LIMIT 1];
            System.assertEquals(acc.Name, testAcc.Name);
            System.assertEquals(acc.Balance__c, testAcc.Balance__c);
            System.assertEquals(acc.Balance__c * 0.038, testAcc.Calculated_Interest__c);
            System.assertEquals(acc.Email__c, testAcc.Email__c);
            System.assertEquals(acc.Loan_Interest_Rate__c, testAcc.Loan_Interest_Rate__c);
            System.assertEquals(acc.Loan_Type__c, testAcc.Loan_Type__c);
            //System.assertEquals(acc.Remaining_Loan_Amount__c, testAcc.Remaining_Loan_Amount__c);
            System.assertEquals(acc.Total_Loan_Amount__c, testAcc.Total_Loan_Amount__c);
        } catch (Exception e) {
            System.assert(false, e.getMessage());
        }
        Test.stopTest();
    }
    

    @isTest
    public static void testAccount_10() {
        Test.startTest();
        Account acc = new Account();
        acc.Name = 'ToUpdate Account';
        acc.Balance__c = 100;
        acc.RecordTypeId = Schema.SObjectType.Account.getRecordTypeInfosByName().get('>=$100').getRecordTypeId();
        acc.Email__c = 'testUpdate@pairwise.test';
        acc.Active__c = 'Yes';
        insert acc;
        
        acc.Name = '';
        acc.Balance__c = 154;
        acc.Calculated_Interest__c = 7;
        acc.Email__c = '';
        acc.Loan_Interest_Rate__c = 0.125;
        acc.Loan_Type__c = 'Car Loan';
        acc.Remaining_Loan_Amount__c = null;
        acc.Total_Loan_Amount__c = null;
        
        
        try {
            update acc;
            Account testAcc = [SELECT name, balance__c, calculated_interest__c, email__c, interest_rate__c, loan_interest_rate__c, loan_type__c, remaining_loan_amount__c, total_loan_amount__c, active__c FROM Account WHERE name='' LIMIT 1];
            System.assertEquals(acc.Name, testAcc.Name);
            System.assertEquals(acc.Balance__c, testAcc.Balance__c);
            System.assertEquals(acc.Balance__c * 0.05, testAcc.Calculated_Interest__c);
            System.assertEquals(acc.Email__c, testAcc.Email__c);
            System.assertEquals(acc.Loan_Interest_Rate__c, testAcc.Loan_Interest_Rate__c);
            System.assertEquals(acc.Loan_Type__c, testAcc.Loan_Type__c);
            //System.assertEquals(acc.Remaining_Loan_Amount__c, testAcc.Remaining_Loan_Amount__c);
            System.assertEquals(acc.Total_Loan_Amount__c, testAcc.Total_Loan_Amount__c);
        } catch (Exception e) {
            System.assert(false, e.getMessage());
        }
        Test.stopTest();
    }
    

    @isTest
    public static void testAccount_11() {
        Test.startTest();
        Account acc = new Account();
        acc.Name = 'ToUpdate Account';
        acc.Balance__c = 100;
        acc.RecordTypeId = Schema.SObjectType.Account.getRecordTypeInfosByName().get('Negative').getRecordTypeId();
        acc.Email__c = 'testUpdate@pairwise.test';
        acc.Active__c = 'Yes';
        insert acc;
        
        acc.Name = '';
        acc.Balance__c = 137;
        acc.Calculated_Interest__c = 7;
        acc.Email__c = 'test11@pairwise.test';
        acc.Loan_Interest_Rate__c = 0.125;
        acc.Loan_Type__c = 'Car Loan';
        acc.Remaining_Loan_Amount__c = null;
        acc.Total_Loan_Amount__c = null;
        
        
        try {
            update acc;
            Account testAcc = [SELECT name, balance__c, calculated_interest__c, email__c, interest_rate__c, loan_interest_rate__c, loan_type__c, remaining_loan_amount__c, total_loan_amount__c, active__c FROM Account WHERE name='' LIMIT 1];
            System.assertEquals(acc.Name, testAcc.Name);
            System.assertEquals(acc.Balance__c, testAcc.Balance__c);
            System.assertEquals(acc.Balance__c * 0.06, testAcc.Calculated_Interest__c);
            System.assertEquals(acc.Email__c, testAcc.Email__c);
            System.assertEquals(acc.Loan_Interest_Rate__c, testAcc.Loan_Interest_Rate__c);
            System.assertEquals(acc.Loan_Type__c, testAcc.Loan_Type__c);
            //System.assertEquals(acc.Remaining_Loan_Amount__c, testAcc.Remaining_Loan_Amount__c);
            System.assertEquals(acc.Total_Loan_Amount__c, testAcc.Total_Loan_Amount__c);
        } catch (Exception e) {
            System.assert(false, e.getMessage());
        }
        Test.stopTest();
    }
    

    @isTest
    public static void testAccount_12() {
        Test.startTest();
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
        acc.Email__c = 'test12@pairwise.test';
        acc.Loan_Interest_Rate__c = 0.10300000000000001;
        acc.Loan_Type__c = 'Car Loan';
        acc.Remaining_Loan_Amount__c = null;
        acc.Total_Loan_Amount__c = 808150;
        
        
        try {
            update acc;
            Account testAcc = [SELECT name, balance__c, calculated_interest__c, email__c, interest_rate__c, loan_interest_rate__c, loan_type__c, remaining_loan_amount__c, total_loan_amount__c, active__c FROM Account WHERE name='' LIMIT 1];
            System.assertEquals(acc.Name, testAcc.Name);
            System.assertEquals(acc.Balance__c, testAcc.Balance__c);
            System.assertEquals(acc.Balance__c * 0.05, testAcc.Calculated_Interest__c);
            System.assertEquals(acc.Email__c, testAcc.Email__c);
            System.assertEquals(acc.Loan_Interest_Rate__c, testAcc.Loan_Interest_Rate__c);
            System.assertEquals(acc.Loan_Type__c, testAcc.Loan_Type__c);
            //System.assertEquals(acc.Remaining_Loan_Amount__c, testAcc.Remaining_Loan_Amount__c);
            System.assertEquals(acc.Total_Loan_Amount__c, testAcc.Total_Loan_Amount__c);
        } catch (Exception e) {
            System.assert(false, e.getMessage());
        }
        Test.stopTest();
    }
    

    @isTest
    public static void testAccount_13() {
        Test.startTest();
        Account acc = new Account();
        acc.Name = 'ToUpdate Account';
        acc.Balance__c = 100;
        acc.RecordTypeId = Schema.SObjectType.Account.getRecordTypeInfosByName().get('Negative').getRecordTypeId();
        acc.Email__c = 'testUpdate@pairwise.test';
        acc.Active__c = 'Yes';
        insert acc;
        
        acc.Name = '';
        acc.Balance__c = 121;
        acc.Calculated_Interest__c = null;
        acc.Email__c = 'test13@pairwise.test';
        acc.Loan_Interest_Rate__c = null;
        acc.Loan_Type__c = 'Car Loan';
        acc.Remaining_Loan_Amount__c = null;
        acc.Total_Loan_Amount__c = 607286;
        
        
        try {
            update acc;
            Account testAcc = [SELECT name, balance__c, calculated_interest__c, email__c, interest_rate__c, loan_interest_rate__c, loan_type__c, remaining_loan_amount__c, total_loan_amount__c, active__c FROM Account WHERE name='' LIMIT 1];
            System.assertEquals(acc.Name, testAcc.Name);
            System.assertEquals(acc.Balance__c, testAcc.Balance__c);
            System.assertEquals(acc.Balance__c * 0.05, testAcc.Calculated_Interest__c);
            System.assertEquals(acc.Email__c, testAcc.Email__c);
            System.assertEquals(acc.Loan_Interest_Rate__c, testAcc.Loan_Interest_Rate__c);
            System.assertEquals(acc.Loan_Type__c, testAcc.Loan_Type__c);
            //System.assertEquals(acc.Remaining_Loan_Amount__c, testAcc.Remaining_Loan_Amount__c);
            System.assertEquals(acc.Total_Loan_Amount__c, testAcc.Total_Loan_Amount__c);
        } catch (Exception e) {
            System.assert(false, e.getMessage());
        }
        Test.stopTest();
    }
    

    @isTest
    public static void testAccount_14() {
        Test.startTest();
        Account acc = new Account();
        acc.Name = 'ToUpdate Account';
        acc.Balance__c = 100;
        acc.RecordTypeId = Schema.SObjectType.Account.getRecordTypeInfosByName().get('Negative').getRecordTypeId();
        acc.Email__c = 'testUpdate@pairwise.test';
        acc.Active__c = 'Yes';
        insert acc;
        
        acc.Name = '';
        acc.Balance__c = 175;
        acc.Calculated_Interest__c = null;
        acc.Email__c = '';
        acc.Loan_Interest_Rate__c = 0.08;
        acc.Loan_Type__c = '';
        acc.Remaining_Loan_Amount__c = null;
        acc.Total_Loan_Amount__c = null;
        
        
        try {
            update acc;
            Account testAcc = [SELECT name, balance__c, calculated_interest__c, email__c, interest_rate__c, loan_interest_rate__c, loan_type__c, remaining_loan_amount__c, total_loan_amount__c, active__c FROM Account WHERE name='' LIMIT 1];
            System.assertEquals(acc.Name, testAcc.Name);
            System.assertEquals(acc.Balance__c, testAcc.Balance__c);
            System.assertEquals(acc.Balance__c * 0.05, testAcc.Calculated_Interest__c);
            System.assertEquals(acc.Email__c, testAcc.Email__c);
            System.assertEquals(acc.Loan_Interest_Rate__c, testAcc.Loan_Interest_Rate__c);
            System.assertEquals(acc.Loan_Type__c, testAcc.Loan_Type__c);
            //System.assertEquals(acc.Remaining_Loan_Amount__c, testAcc.Remaining_Loan_Amount__c);
            System.assertEquals(acc.Total_Loan_Amount__c, testAcc.Total_Loan_Amount__c);
        } catch (Exception e) {
            System.assert(false, e.getMessage());
        }
        Test.stopTest();
    }
    

    @isTest
    public static void testAccount_15() {
        Test.startTest();
        Account acc = new Account();
        acc.Name = 'ToUpdate Account';
        acc.Balance__c = 100;
        acc.RecordTypeId = Schema.SObjectType.Account.getRecordTypeInfosByName().get('Negative').getRecordTypeId();
        acc.Email__c = 'testUpdate@pairwise.test';
        acc.Active__c = 'Yes';
        insert acc;
        
        acc.Name = '';
        acc.Balance__c = 135;
        acc.Calculated_Interest__c = 7;
        acc.Email__c = '';
        acc.Loan_Interest_Rate__c = 0.162;
        acc.Loan_Type__c = 'Home Loan';
        acc.Remaining_Loan_Amount__c = null;
        acc.Total_Loan_Amount__c = 7275663;
        
        
        try {
            update acc;
            Account testAcc = [SELECT name, balance__c, calculated_interest__c, email__c, interest_rate__c, loan_interest_rate__c, loan_type__c, remaining_loan_amount__c, total_loan_amount__c, active__c FROM Account WHERE name='' LIMIT 1];
            System.assertEquals(acc.Name, testAcc.Name);
            System.assertEquals(acc.Balance__c, testAcc.Balance__c);
            System.assertEquals(acc.Balance__c * 0.038, testAcc.Calculated_Interest__c);
            System.assertEquals(acc.Email__c, testAcc.Email__c);
            System.assertEquals(acc.Loan_Interest_Rate__c, testAcc.Loan_Interest_Rate__c);
            System.assertEquals(acc.Loan_Type__c, testAcc.Loan_Type__c);
            //System.assertEquals(acc.Remaining_Loan_Amount__c, testAcc.Remaining_Loan_Amount__c);
            System.assertEquals(acc.Total_Loan_Amount__c, testAcc.Total_Loan_Amount__c);
        } catch (Exception e) {
            System.assert(false, e.getMessage());
        }
        Test.stopTest();
    }
    

    @isTest
    public static void testAccount_16() {
        Test.startTest();
        Account acc = new Account();
        acc.Name = 'ToUpdate Account';
        acc.Balance__c = 100;
        acc.RecordTypeId = Schema.SObjectType.Account.getRecordTypeInfosByName().get('Negative').getRecordTypeId();
        acc.Email__c = 'testUpdate@pairwise.test';
        acc.Active__c = 'Yes';
        insert acc;
        
        acc.Name = '';
        acc.Balance__c = 189;
        acc.Calculated_Interest__c = 7;
        acc.Email__c = '';
        acc.Loan_Interest_Rate__c = 0.07;
        acc.Loan_Type__c = 'Car Loan';
        acc.Remaining_Loan_Amount__c = null;
        acc.Total_Loan_Amount__c = 575107;
        
        
        try {
            update acc;
            Account testAcc = [SELECT name, balance__c, calculated_interest__c, email__c, interest_rate__c, loan_interest_rate__c, loan_type__c, remaining_loan_amount__c, total_loan_amount__c, active__c FROM Account WHERE name='' LIMIT 1];
            System.assertEquals(acc.Name, testAcc.Name);
            System.assertEquals(acc.Balance__c, testAcc.Balance__c);
            System.assertEquals(acc.Balance__c * 0.06, testAcc.Calculated_Interest__c);
            System.assertEquals(acc.Email__c, testAcc.Email__c);
            System.assertEquals(acc.Loan_Interest_Rate__c, testAcc.Loan_Interest_Rate__c);
            System.assertEquals(acc.Loan_Type__c, testAcc.Loan_Type__c);
            //System.assertEquals(acc.Remaining_Loan_Amount__c, testAcc.Remaining_Loan_Amount__c);
            System.assertEquals(acc.Total_Loan_Amount__c, testAcc.Total_Loan_Amount__c);
        } catch (Exception e) {
            System.assert(false, e.getMessage());
        }
        Test.stopTest();
    }
    

    @isTest
    public static void testAccount_17() {
        Test.startTest();
        Account acc = new Account();
        acc.Name = 'ToUpdate Account';
        acc.Balance__c = 100;
        acc.RecordTypeId = Schema.SObjectType.Account.getRecordTypeInfosByName().get('>=$0').getRecordTypeId();
        acc.Email__c = 'testUpdate@pairwise.test';
        acc.Active__c = 'Yes';
        insert acc;
        
        acc.Name = '';
        acc.Balance__c = 135;
        acc.Calculated_Interest__c = null;
        acc.Email__c = 'test17@pairwise.test';
        acc.Loan_Interest_Rate__c = 0.136;
        acc.Loan_Type__c = 'Car Loan';
        acc.Remaining_Loan_Amount__c = 15000000;
        acc.Total_Loan_Amount__c = 508899;
        
        
        try {
            update acc;
            Account testAcc = [SELECT name, balance__c, calculated_interest__c, email__c, interest_rate__c, loan_interest_rate__c, loan_type__c, remaining_loan_amount__c, total_loan_amount__c, active__c FROM Account WHERE name='' LIMIT 1];
            System.assertEquals(acc.Name, testAcc.Name);
            System.assertEquals(acc.Balance__c, testAcc.Balance__c);
            System.assertEquals(acc.Balance__c * 0.05, testAcc.Calculated_Interest__c);
            System.assertEquals(acc.Email__c, testAcc.Email__c);
            System.assertEquals(acc.Loan_Interest_Rate__c, testAcc.Loan_Interest_Rate__c);
            System.assertEquals(acc.Loan_Type__c, testAcc.Loan_Type__c);
            //System.assertEquals(acc.Remaining_Loan_Amount__c, testAcc.Remaining_Loan_Amount__c);
            System.assertEquals(acc.Total_Loan_Amount__c, testAcc.Total_Loan_Amount__c);
        } catch (Exception e) {
            System.assert(false, e.getMessage());
        }
        Test.stopTest();
    }
    

    @isTest
    public static void testAccount_18() {
        Test.startTest();
        Account acc = new Account();
        acc.Name = 'ToUpdate Account';
        acc.Balance__c = 100;
        acc.RecordTypeId = Schema.SObjectType.Account.getRecordTypeInfosByName().get('Negative').getRecordTypeId();
        acc.Email__c = 'testUpdate@pairwise.test';
        acc.Active__c = 'Yes';
        insert acc;
        
        acc.Name = '';
        acc.Balance__c = 160;
        acc.Calculated_Interest__c = null;
        acc.Email__c = '';
        acc.Loan_Interest_Rate__c = 0.1;
        acc.Loan_Type__c = 'Home Loan';
        acc.Remaining_Loan_Amount__c = 15000000;
        acc.Total_Loan_Amount__c = 807352;
        
        
        try {
            update acc;
            Account testAcc = [SELECT name, balance__c, calculated_interest__c, email__c, interest_rate__c, loan_interest_rate__c, loan_type__c, remaining_loan_amount__c, total_loan_amount__c, active__c FROM Account WHERE name='' LIMIT 1];
            System.assertEquals(acc.Name, testAcc.Name);
            System.assertEquals(acc.Balance__c, testAcc.Balance__c);
            System.assertEquals(acc.Balance__c * 0.06, testAcc.Calculated_Interest__c);
            System.assertEquals(acc.Email__c, testAcc.Email__c);
            System.assertEquals(acc.Loan_Interest_Rate__c, testAcc.Loan_Interest_Rate__c);
            System.assertEquals(acc.Loan_Type__c, testAcc.Loan_Type__c);
            //System.assertEquals(acc.Remaining_Loan_Amount__c, testAcc.Remaining_Loan_Amount__c);
            System.assertEquals(acc.Total_Loan_Amount__c, testAcc.Total_Loan_Amount__c);
        } catch (Exception e) {
            System.assert(false, e.getMessage());
        }
        Test.stopTest();
    }
    

    @isTest
    public static void testAccount_19() {
        Test.startTest();
        Account acc = new Account();
        acc.Name = '';
        acc.Balance__c = 190;
        acc.RecordTypeId = Schema.SObjectType.Account.getRecordTypeInfosByName().get('>=$0').getRecordTypeId();
        acc.Calculated_Interest__c = 7;
        acc.Email__c = 'test19@pairwise.test';
        acc.Loan_Interest_Rate__c = 0.10300000000000001;
        acc.Loan_Type__c = 'Car Loan';
        //acc.Remaining_Loan_Amount__c = null;
        acc.Total_Loan_Amount__c = 7908803;
        acc.Active__c = 'Yes';
        
        
        try {
            insert acc;
            Account testAcc = [SELECT name, balance__c, calculated_interest__c, email__c, interest_rate__c, loan_interest_rate__c, loan_type__c, remaining_loan_amount__c, total_loan_amount__c, active__c FROM Account WHERE name='' LIMIT 1];
            System.assertEquals(acc.Name, testAcc.Name);
            System.assertEquals(acc.Balance__c, testAcc.Balance__c);
            System.assertEquals(acc.Balance__c * 0.06, testAcc.Calculated_Interest__c);
            System.assertEquals(acc.Email__c, testAcc.Email__c);
            System.assertEquals(acc.Loan_Interest_Rate__c, testAcc.Loan_Interest_Rate__c);
            System.assertEquals(acc.Loan_Type__c, testAcc.Loan_Type__c);
            //System.assertEquals(acc.Remaining_Loan_Amount__c, testAcc.Remaining_Loan_Amount__c);
            System.assertEquals(acc.Total_Loan_Amount__c, testAcc.Total_Loan_Amount__c);
        } catch (Exception e) {
            System.assert(false, e.getMessage());
        }
        Test.stopTest();
    }
    

    @isTest
    public static void testAccount_20() {
        Test.startTest();
        Account acc = new Account();
        acc.Name = '';
        acc.Balance__c = 126;
        acc.RecordTypeId = Schema.SObjectType.Account.getRecordTypeInfosByName().get('>=$0').getRecordTypeId();
        acc.Calculated_Interest__c = null;
        acc.Email__c = '';
        acc.Loan_Interest_Rate__c = 0.07;
        acc.Loan_Type__c = 'Home Loan';
        //acc.Remaining_Loan_Amount__c = 15000000;
        acc.Total_Loan_Amount__c = 891428;
        acc.Active__c = 'Yes';
        
        
        try {
            insert acc;
            Account testAcc = [SELECT name, balance__c, calculated_interest__c, email__c, interest_rate__c, loan_interest_rate__c, loan_type__c, remaining_loan_amount__c, total_loan_amount__c, active__c FROM Account WHERE name='' LIMIT 1];
            System.assertEquals(acc.Name, testAcc.Name);
            System.assertEquals(acc.Balance__c, testAcc.Balance__c);
            System.assertEquals(acc.Balance__c * 0.06, testAcc.Calculated_Interest__c);
            System.assertEquals(acc.Email__c, testAcc.Email__c);
            System.assertEquals(acc.Loan_Interest_Rate__c, testAcc.Loan_Interest_Rate__c);
            System.assertEquals(acc.Loan_Type__c, testAcc.Loan_Type__c);
            //System.assertEquals(acc.Remaining_Loan_Amount__c, testAcc.Remaining_Loan_Amount__c);
            System.assertEquals(acc.Total_Loan_Amount__c, testAcc.Total_Loan_Amount__c);
        } catch (Exception e) {
            System.assert(false, e.getMessage());
        }
        Test.stopTest();
    }
    

    @isTest
    public static void testAccount_21() {
        Test.startTest();
        Account acc = new Account();
        acc.Name = '';
        acc.Balance__c = 109;
        acc.RecordTypeId = Schema.SObjectType.Account.getRecordTypeInfosByName().get('>=$100').getRecordTypeId();
        acc.Calculated_Interest__c = 7;
        acc.Email__c = '';
        acc.Loan_Interest_Rate__c = 107;
        acc.Loan_Type__c = 'Home Loan';
        //acc.Remaining_Loan_Amount__c = 15000000;
        acc.Total_Loan_Amount__c = 2306002;
        acc.Active__c = 'Yes';
        
        
        try {
            insert acc;
            Account testAcc = [SELECT name, balance__c, calculated_interest__c, email__c, interest_rate__c, loan_interest_rate__c, loan_type__c, remaining_loan_amount__c, total_loan_amount__c, active__c FROM Account WHERE name='' LIMIT 1];
            System.assertEquals(acc.Name, testAcc.Name);
            System.assertEquals(acc.Balance__c, testAcc.Balance__c);
            System.assertEquals(acc.Balance__c * 0.05, testAcc.Calculated_Interest__c);
            System.assertEquals(acc.Email__c, testAcc.Email__c);
            System.assertEquals(acc.Loan_Interest_Rate__c, testAcc.Loan_Interest_Rate__c);
            System.assertEquals(acc.Loan_Type__c, testAcc.Loan_Type__c);
            //System.assertEquals(acc.Remaining_Loan_Amount__c, testAcc.Remaining_Loan_Amount__c);
            System.assertEquals(acc.Total_Loan_Amount__c, testAcc.Total_Loan_Amount__c);
        } catch (Exception e) {
            System.assert(false, e.getMessage());
        }
        Test.stopTest();
    }
    

    @isTest
    public static void testAccount_22() {
        Test.startTest();
        Account acc = new Account();
        acc.Name = 'ToUpdate Account';
        acc.Balance__c = 100;
        acc.RecordTypeId = Schema.SObjectType.Account.getRecordTypeInfosByName().get('Negative').getRecordTypeId();
        acc.Email__c = 'testUpdate@pairwise.test';
        acc.Active__c = 'Yes';
        insert acc;
        
        acc.Name = '';
        acc.Balance__c = 151;
        acc.Calculated_Interest__c = 7;
        acc.Email__c = 'test22@pairwise.test';
        acc.Loan_Interest_Rate__c = 107;
        acc.Loan_Type__c = 'Car Loan';
        acc.Remaining_Loan_Amount__c = null;
        acc.Total_Loan_Amount__c = null;
        
        
        try {
            update acc;
            Account testAcc = [SELECT name, balance__c, calculated_interest__c, email__c, interest_rate__c, loan_interest_rate__c, loan_type__c, remaining_loan_amount__c, total_loan_amount__c, active__c FROM Account WHERE name='' LIMIT 1];
            System.assertEquals(acc.Name, testAcc.Name);
            System.assertEquals(acc.Balance__c, testAcc.Balance__c);
            System.assertEquals(acc.Balance__c * 0.06, testAcc.Calculated_Interest__c);
            System.assertEquals(acc.Email__c, testAcc.Email__c);
            System.assertEquals(acc.Loan_Interest_Rate__c, testAcc.Loan_Interest_Rate__c);
            System.assertEquals(acc.Loan_Type__c, testAcc.Loan_Type__c);
            //System.assertEquals(acc.Remaining_Loan_Amount__c, testAcc.Remaining_Loan_Amount__c);
            System.assertEquals(acc.Total_Loan_Amount__c, testAcc.Total_Loan_Amount__c);
        } catch (Exception e) {
            System.assert(false, e.getMessage());
        }
        Test.stopTest();
    }
    

    @isTest
    public static void testAccount_23() {
        Test.startTest();
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
        acc.Loan_Interest_Rate__c = 0.159;
        acc.Loan_Type__c = 'Car Loan';
        acc.Remaining_Loan_Amount__c = null;
        acc.Total_Loan_Amount__c = 6542215;
        
        
        try {
            update acc;
            Account testAcc = [SELECT name, balance__c, calculated_interest__c, email__c, interest_rate__c, loan_interest_rate__c, loan_type__c, remaining_loan_amount__c, total_loan_amount__c, active__c FROM Account WHERE name='' LIMIT 1];
            System.assertEquals(acc.Name, testAcc.Name);
            System.assertEquals(acc.Balance__c, testAcc.Balance__c);
            System.assertEquals(acc.Balance__c * 0.05, testAcc.Calculated_Interest__c);
            System.assertEquals(acc.Email__c, testAcc.Email__c);
            System.assertEquals(acc.Loan_Interest_Rate__c, testAcc.Loan_Interest_Rate__c);
            System.assertEquals(acc.Loan_Type__c, testAcc.Loan_Type__c);
            //System.assertEquals(acc.Remaining_Loan_Amount__c, testAcc.Remaining_Loan_Amount__c);
            System.assertEquals(acc.Total_Loan_Amount__c, testAcc.Total_Loan_Amount__c);
        } catch (Exception e) {
            System.assert(false, e.getMessage());
        }
        Test.stopTest();
    }
    

    @isTest
    public static void testAccount_24() {
        Test.startTest();
        Account acc = new Account();
        acc.Name = '';
        acc.Balance__c = 115;
        acc.RecordTypeId = Schema.SObjectType.Account.getRecordTypeInfosByName().get('>=$100').getRecordTypeId();
        acc.Calculated_Interest__c = 7;
        acc.Email__c = 'test24@pairwise.test';
        acc.Loan_Interest_Rate__c = 0.11900000000000001;
        acc.Loan_Type__c = 'Car Loan';
        //acc.Remaining_Loan_Amount__c = 15000000;
        acc.Total_Loan_Amount__c = 4566967;
        acc.Active__c = 'Yes';
        
        
        try {
            insert acc;
            Account testAcc = [SELECT name, balance__c, calculated_interest__c, email__c, interest_rate__c, loan_interest_rate__c, loan_type__c, remaining_loan_amount__c, total_loan_amount__c, active__c FROM Account WHERE name='' LIMIT 1];
            System.assertEquals(acc.Name, testAcc.Name);
            System.assertEquals(acc.Balance__c, testAcc.Balance__c);
            System.assertEquals(acc.Balance__c * 0.038, testAcc.Calculated_Interest__c);
            System.assertEquals(acc.Email__c, testAcc.Email__c);
            System.assertEquals(acc.Loan_Interest_Rate__c, testAcc.Loan_Interest_Rate__c);
            System.assertEquals(acc.Loan_Type__c, testAcc.Loan_Type__c);
            //System.assertEquals(acc.Remaining_Loan_Amount__c, testAcc.Remaining_Loan_Amount__c);
            System.assertEquals(acc.Total_Loan_Amount__c, testAcc.Total_Loan_Amount__c);
        } catch (Exception e) {
            System.assert(false, e.getMessage());
        }
        Test.stopTest();
    }
    

    @isTest
    public static void testAccount_25() {
        Test.startTest();
        Account acc = new Account();
        acc.Name = 'ToUpdate Account';
        acc.Balance__c = 100;
        acc.RecordTypeId = Schema.SObjectType.Account.getRecordTypeInfosByName().get('Negative').getRecordTypeId();
        acc.Email__c = 'testUpdate@pairwise.test';
        acc.Active__c = 'Yes';
        insert acc;
        
        acc.Name = '';
        acc.Balance__c = 151;
        acc.Calculated_Interest__c = 7;
        acc.Email__c = '';
        acc.Loan_Interest_Rate__c = 0.125;
        acc.Loan_Type__c = '';
        acc.Remaining_Loan_Amount__c = null;
        acc.Total_Loan_Amount__c = null;
        
        
        try {
            update acc;
            Account testAcc = [SELECT name, balance__c, calculated_interest__c, email__c, interest_rate__c, loan_interest_rate__c, loan_type__c, remaining_loan_amount__c, total_loan_amount__c, active__c FROM Account WHERE name='' LIMIT 1];
            System.assertEquals(acc.Name, testAcc.Name);
            System.assertEquals(acc.Balance__c, testAcc.Balance__c);
            System.assertEquals(acc.Balance__c * 0.038, testAcc.Calculated_Interest__c);
            System.assertEquals(acc.Email__c, testAcc.Email__c);
            System.assertEquals(acc.Loan_Interest_Rate__c, testAcc.Loan_Interest_Rate__c);
            System.assertEquals(acc.Loan_Type__c, testAcc.Loan_Type__c);
            //System.assertEquals(acc.Remaining_Loan_Amount__c, testAcc.Remaining_Loan_Amount__c);
            System.assertEquals(acc.Total_Loan_Amount__c, testAcc.Total_Loan_Amount__c);
        } catch (Exception e) {
            System.assert(false, e.getMessage());
        }
        Test.stopTest();
    }
    

    @isTest
    public static void testAccount_26() {
        Test.startTest();
        Account acc = new Account();
        acc.Name = 'ToUpdate Account';
        acc.Balance__c = 100;
        acc.RecordTypeId = Schema.SObjectType.Account.getRecordTypeInfosByName().get('Blank').getRecordTypeId();
        acc.Email__c = 'testUpdate@pairwise.test';
        acc.Active__c = 'Yes';
        insert acc;
        
        acc.Name = '';
        acc.Balance__c = 124;
        acc.Calculated_Interest__c = 7;
        acc.Email__c = 'test26@pairwise.test';
        acc.Loan_Interest_Rate__c = 0.146;
        acc.Loan_Type__c = 'Home Loan';
        acc.Remaining_Loan_Amount__c = 15000000;
        acc.Total_Loan_Amount__c = 3272936;
        
        
        try {
            update acc;
            Account testAcc = [SELECT name, balance__c, calculated_interest__c, email__c, interest_rate__c, loan_interest_rate__c, loan_type__c, remaining_loan_amount__c, total_loan_amount__c, active__c FROM Account WHERE name='' LIMIT 1];
            System.assertEquals(acc.Name, testAcc.Name);
            System.assertEquals(acc.Balance__c, testAcc.Balance__c);
            System.assertEquals(acc.Balance__c * 0.06, testAcc.Calculated_Interest__c);
            System.assertEquals(acc.Email__c, testAcc.Email__c);
            System.assertEquals(acc.Loan_Interest_Rate__c, testAcc.Loan_Interest_Rate__c);
            System.assertEquals(acc.Loan_Type__c, testAcc.Loan_Type__c);
            //System.assertEquals(acc.Remaining_Loan_Amount__c, testAcc.Remaining_Loan_Amount__c);
            System.assertEquals(acc.Total_Loan_Amount__c, testAcc.Total_Loan_Amount__c);
        } catch (Exception e) {
            System.assert(false, e.getMessage());
        }
        Test.stopTest();
    }
    

    @isTest
    public static void testAccount_27() {
        Test.startTest();
        Account acc = new Account();
        acc.Name = '';
        acc.Balance__c = 161;
        acc.RecordTypeId = Schema.SObjectType.Account.getRecordTypeInfosByName().get('>=$100').getRecordTypeId();
        acc.Calculated_Interest__c = null;
        acc.Email__c = 'test27@pairwise.test';
        acc.Loan_Interest_Rate__c = 0.162;
        acc.Loan_Type__c = 'Car Loan';
        //acc.Remaining_Loan_Amount__c = 15000000;
        acc.Total_Loan_Amount__c = 224050;
        acc.Active__c = 'Yes';
        
        
        try {
            insert acc;
            Account testAcc = [SELECT name, balance__c, calculated_interest__c, email__c, interest_rate__c, loan_interest_rate__c, loan_type__c, remaining_loan_amount__c, total_loan_amount__c, active__c FROM Account WHERE name='' LIMIT 1];
            System.assertEquals(acc.Name, testAcc.Name);
            System.assertEquals(acc.Balance__c, testAcc.Balance__c);
            System.assertEquals(acc.Balance__c * 0.05, testAcc.Calculated_Interest__c);
            System.assertEquals(acc.Email__c, testAcc.Email__c);
            System.assertEquals(acc.Loan_Interest_Rate__c, testAcc.Loan_Interest_Rate__c);
            System.assertEquals(acc.Loan_Type__c, testAcc.Loan_Type__c);
            //System.assertEquals(acc.Remaining_Loan_Amount__c, testAcc.Remaining_Loan_Amount__c);
            System.assertEquals(acc.Total_Loan_Amount__c, testAcc.Total_Loan_Amount__c);
        } catch (Exception e) {
            System.assert(false, e.getMessage());
        }
        Test.stopTest();
    }
    

    @isTest
    public static void testAccount_28() {
        Test.startTest();
        Account acc = new Account();
        acc.Name = '';
        acc.Balance__c = 123;
        acc.RecordTypeId = Schema.SObjectType.Account.getRecordTypeInfosByName().get('>=$100').getRecordTypeId();
        acc.Calculated_Interest__c = 7;
        acc.Email__c = '';
        acc.Loan_Interest_Rate__c = 0.08;
        acc.Loan_Type__c = 'Home Loan';
        //acc.Remaining_Loan_Amount__c = null;
        acc.Total_Loan_Amount__c = null;
        acc.Active__c = 'Yes';
        
        
        try {
            insert acc;
            Account testAcc = [SELECT name, balance__c, calculated_interest__c, email__c, interest_rate__c, loan_interest_rate__c, loan_type__c, remaining_loan_amount__c, total_loan_amount__c, active__c FROM Account WHERE name='' LIMIT 1];
            System.assertEquals(acc.Name, testAcc.Name);
            System.assertEquals(acc.Balance__c, testAcc.Balance__c);
            System.assertEquals(acc.Balance__c * 0.038, testAcc.Calculated_Interest__c);
            System.assertEquals(acc.Email__c, testAcc.Email__c);
            System.assertEquals(acc.Loan_Interest_Rate__c, testAcc.Loan_Interest_Rate__c);
            System.assertEquals(acc.Loan_Type__c, testAcc.Loan_Type__c);
            //System.assertEquals(acc.Remaining_Loan_Amount__c, testAcc.Remaining_Loan_Amount__c);
            System.assertEquals(acc.Total_Loan_Amount__c, testAcc.Total_Loan_Amount__c);
        } catch (Exception e) {
            System.assert(false, e.getMessage());
        }
        Test.stopTest();
    }
    

    @isTest
    public static void testAccount_29() {
        Test.startTest();
        Account acc = new Account();
        acc.Name = 'ToUpdate Account';
        acc.Balance__c = 100;
        acc.RecordTypeId = Schema.SObjectType.Account.getRecordTypeInfosByName().get('Negative').getRecordTypeId();
        acc.Email__c = 'testUpdate@pairwise.test';
        acc.Active__c = 'Yes';
        insert acc;
        
        acc.Name = '';
        acc.Balance__c = 101;
        acc.Calculated_Interest__c = 7;
        acc.Email__c = '';
        acc.Loan_Interest_Rate__c = 0.084;
        acc.Loan_Type__c = 'Home Loan';
        acc.Remaining_Loan_Amount__c = null;
        acc.Total_Loan_Amount__c = 118142;
        
        
        try {
            update acc;
            Account testAcc = [SELECT name, balance__c, calculated_interest__c, email__c, interest_rate__c, loan_interest_rate__c, loan_type__c, remaining_loan_amount__c, total_loan_amount__c, active__c FROM Account WHERE name='' LIMIT 1];
            System.assertEquals(acc.Name, testAcc.Name);
            System.assertEquals(acc.Balance__c, testAcc.Balance__c);
            System.assertEquals(acc.Balance__c * 0.038, testAcc.Calculated_Interest__c);
            System.assertEquals(acc.Email__c, testAcc.Email__c);
            System.assertEquals(acc.Loan_Interest_Rate__c, testAcc.Loan_Interest_Rate__c);
            System.assertEquals(acc.Loan_Type__c, testAcc.Loan_Type__c);
            //System.assertEquals(acc.Remaining_Loan_Amount__c, testAcc.Remaining_Loan_Amount__c);
            System.assertEquals(acc.Total_Loan_Amount__c, testAcc.Total_Loan_Amount__c);
        } catch (Exception e) {
            System.assert(false, e.getMessage());
        }
        Test.stopTest();
    }
    

    @isTest
    public static void testAccount_30() {
        Test.startTest();
        Account acc = new Account();
        acc.Name = 'ToUpdate Account';
        acc.Balance__c = 100;
        acc.RecordTypeId = Schema.SObjectType.Account.getRecordTypeInfosByName().get('Blank').getRecordTypeId();
        acc.Email__c = 'testUpdate@pairwise.test';
        acc.Active__c = 'Yes';
        insert acc;
        
        acc.Name = '';
        acc.Balance__c = 149;
        acc.Calculated_Interest__c = 7;
        acc.Email__c = '';
        acc.Loan_Interest_Rate__c = 107;
        acc.Loan_Type__c = 'Home Loan';
        acc.Remaining_Loan_Amount__c = 15000000;
        acc.Total_Loan_Amount__c = 684812;
        
        
        try {
            update acc;
            Account testAcc = [SELECT name, balance__c, calculated_interest__c, email__c, interest_rate__c, loan_interest_rate__c, loan_type__c, remaining_loan_amount__c, total_loan_amount__c, active__c FROM Account WHERE name='' LIMIT 1];
            System.assertEquals(acc.Name, testAcc.Name);
            System.assertEquals(acc.Balance__c, testAcc.Balance__c);
            System.assertEquals(acc.Balance__c * 0.038, testAcc.Calculated_Interest__c);
            System.assertEquals(acc.Email__c, testAcc.Email__c);
            System.assertEquals(acc.Loan_Interest_Rate__c, testAcc.Loan_Interest_Rate__c);
            System.assertEquals(acc.Loan_Type__c, testAcc.Loan_Type__c);
            //System.assertEquals(acc.Remaining_Loan_Amount__c, testAcc.Remaining_Loan_Amount__c);
            System.assertEquals(acc.Total_Loan_Amount__c, testAcc.Total_Loan_Amount__c);
        } catch (Exception e) {
            System.assert(false, e.getMessage());
        }
        Test.stopTest();
    }
    

    @isTest
    public static void testAccount_31() {
        Test.startTest();
        Account acc = new Account();
        acc.Name = 'ToUpdate Account';
        acc.Balance__c = 100;
        acc.RecordTypeId = Schema.SObjectType.Account.getRecordTypeInfosByName().get('Negative').getRecordTypeId();
        acc.Email__c = 'testUpdate@pairwise.test';
        acc.Active__c = 'Yes';
        insert acc;
        
        acc.Name = '';
        acc.Balance__c = 120;
        acc.Calculated_Interest__c = null;
        acc.Email__c = '';
        acc.Loan_Interest_Rate__c = 0.08;
        acc.Loan_Type__c = 'Home Loan';
        acc.Remaining_Loan_Amount__c = null;
        acc.Total_Loan_Amount__c = 70292;
        
        
        try {
            update acc;
            Account testAcc = [SELECT name, balance__c, calculated_interest__c, email__c, interest_rate__c, loan_interest_rate__c, loan_type__c, remaining_loan_amount__c, total_loan_amount__c, active__c FROM Account WHERE name='' LIMIT 1];
            System.assertEquals(acc.Name, testAcc.Name);
            System.assertEquals(acc.Balance__c, testAcc.Balance__c);
            System.assertEquals(acc.Balance__c * 0.06, testAcc.Calculated_Interest__c);
            System.assertEquals(acc.Email__c, testAcc.Email__c);
            System.assertEquals(acc.Loan_Interest_Rate__c, testAcc.Loan_Interest_Rate__c);
            System.assertEquals(acc.Loan_Type__c, testAcc.Loan_Type__c);
            //System.assertEquals(acc.Remaining_Loan_Amount__c, testAcc.Remaining_Loan_Amount__c);
            System.assertEquals(acc.Total_Loan_Amount__c, testAcc.Total_Loan_Amount__c);
        } catch (Exception e) {
            System.assert(false, e.getMessage());
        }
        Test.stopTest();
    }
    

    @isTest
    public static void testAccount_32() {
        Test.startTest();
        Account acc = new Account();
        acc.Name = 'ToUpdate Account';
        acc.Balance__c = 100;
        acc.RecordTypeId = Schema.SObjectType.Account.getRecordTypeInfosByName().get('Negative').getRecordTypeId();
        acc.Email__c = 'testUpdate@pairwise.test';
        acc.Active__c = 'Yes';
        insert acc;
        
        acc.Name = '';
        acc.Balance__c = 170;
        acc.Calculated_Interest__c = null;
        acc.Email__c = 'test32@pairwise.test';
        acc.Loan_Interest_Rate__c = 0.109;
        acc.Loan_Type__c = '';
        acc.Remaining_Loan_Amount__c = null;
        acc.Total_Loan_Amount__c = null;
        
        
        try {
            update acc;
            Account testAcc = [SELECT name, balance__c, calculated_interest__c, email__c, interest_rate__c, loan_interest_rate__c, loan_type__c, remaining_loan_amount__c, total_loan_amount__c, active__c FROM Account WHERE name='' LIMIT 1];
            System.assertEquals(acc.Name, testAcc.Name);
            System.assertEquals(acc.Balance__c, testAcc.Balance__c);
            System.assertEquals(acc.Balance__c * 0.06, testAcc.Calculated_Interest__c);
            System.assertEquals(acc.Email__c, testAcc.Email__c);
            System.assertEquals(acc.Loan_Interest_Rate__c, testAcc.Loan_Interest_Rate__c);
            System.assertEquals(acc.Loan_Type__c, testAcc.Loan_Type__c);
            //System.assertEquals(acc.Remaining_Loan_Amount__c, testAcc.Remaining_Loan_Amount__c);
            System.assertEquals(acc.Total_Loan_Amount__c, testAcc.Total_Loan_Amount__c);
        } catch (Exception e) {
            System.assert(false, e.getMessage());
        }
        Test.stopTest();
    }
    

    @isTest
    public static void testAccount_33() {
        Test.startTest();
        Account acc = new Account();
        acc.Name = 'ToUpdate Account';
        acc.Balance__c = 100;
        acc.RecordTypeId = Schema.SObjectType.Account.getRecordTypeInfosByName().get('>=$100').getRecordTypeId();
        acc.Email__c = 'testUpdate@pairwise.test';
        acc.Active__c = 'Yes';
        insert acc;
        
        acc.Name = '';
        acc.Balance__c = 137;
        acc.Calculated_Interest__c = null;
        acc.Email__c = 'test33@pairwise.test';
        acc.Loan_Interest_Rate__c = 0.11900000000000001;
        acc.Loan_Type__c = 'Home Loan';
        acc.Remaining_Loan_Amount__c = 15000000;
        acc.Total_Loan_Amount__c = 5361560;
        
        
        try {
            update acc;
            Account testAcc = [SELECT name, balance__c, calculated_interest__c, email__c, interest_rate__c, loan_interest_rate__c, loan_type__c, remaining_loan_amount__c, total_loan_amount__c, active__c FROM Account WHERE name='' LIMIT 1];
            System.assertEquals(acc.Name, testAcc.Name);
            System.assertEquals(acc.Balance__c, testAcc.Balance__c);
            System.assertEquals(acc.Balance__c * 0.06, testAcc.Calculated_Interest__c);
            System.assertEquals(acc.Email__c, testAcc.Email__c);
            System.assertEquals(acc.Loan_Interest_Rate__c, testAcc.Loan_Interest_Rate__c);
            System.assertEquals(acc.Loan_Type__c, testAcc.Loan_Type__c);
            //System.assertEquals(acc.Remaining_Loan_Amount__c, testAcc.Remaining_Loan_Amount__c);
            System.assertEquals(acc.Total_Loan_Amount__c, testAcc.Total_Loan_Amount__c);
        } catch (Exception e) {
            System.assert(false, e.getMessage());
        }
        Test.stopTest();
    }
    

    @isTest
    public static void testAccount_34() {
        Test.startTest();
        Account acc = new Account();
        acc.Name = 'ToUpdate Account';
        acc.Balance__c = 100;
        acc.RecordTypeId = Schema.SObjectType.Account.getRecordTypeInfosByName().get('>=$0').getRecordTypeId();
        acc.Email__c = 'testUpdate@pairwise.test';
        acc.Active__c = 'Yes';
        insert acc;
        
        acc.Name = '';
        acc.Balance__c = 156;
        acc.Calculated_Interest__c = 7;
        acc.Email__c = '';
        acc.Loan_Interest_Rate__c = null;
        acc.Loan_Type__c = '';
        acc.Remaining_Loan_Amount__c = 15000000;
        acc.Total_Loan_Amount__c = null;
        
        
        try {
            update acc;
            Account testAcc = [SELECT name, balance__c, calculated_interest__c, email__c, interest_rate__c, loan_interest_rate__c, loan_type__c, remaining_loan_amount__c, total_loan_amount__c, active__c FROM Account WHERE name='' LIMIT 1];
            System.assertEquals(acc.Name, testAcc.Name);
            System.assertEquals(acc.Balance__c, testAcc.Balance__c);
            System.assertEquals(acc.Balance__c * 0.038, testAcc.Calculated_Interest__c);
            System.assertEquals(acc.Email__c, testAcc.Email__c);
            System.assertEquals(acc.Loan_Interest_Rate__c, testAcc.Loan_Interest_Rate__c);
            System.assertEquals(acc.Loan_Type__c, testAcc.Loan_Type__c);
            //System.assertEquals(acc.Remaining_Loan_Amount__c, testAcc.Remaining_Loan_Amount__c);
            System.assertEquals(acc.Total_Loan_Amount__c, testAcc.Total_Loan_Amount__c);
        } catch (Exception e) {
            System.assert(false, e.getMessage());
        }
        Test.stopTest();
    }
    

    @isTest
    public static void testAccount_35() {
        Test.startTest();
        Account acc = new Account();
        acc.Name = 'ToUpdate Account';
        acc.Balance__c = 100;
        acc.RecordTypeId = Schema.SObjectType.Account.getRecordTypeInfosByName().get('Negative').getRecordTypeId();
        acc.Email__c = 'testUpdate@pairwise.test';
        acc.Active__c = 'Yes';
        insert acc;
        
        acc.Name = '';
        acc.Balance__c = 159;
        acc.Calculated_Interest__c = null;
        acc.Email__c = 'test35@pairwise.test';
        acc.Loan_Interest_Rate__c = null;
        acc.Loan_Type__c = 'Home Loan';
        acc.Remaining_Loan_Amount__c = 15000000;
        acc.Total_Loan_Amount__c = 9347448;
        
        
        try {
            update acc;
            Account testAcc = [SELECT name, balance__c, calculated_interest__c, email__c, interest_rate__c, loan_interest_rate__c, loan_type__c, remaining_loan_amount__c, total_loan_amount__c, active__c FROM Account WHERE name='' LIMIT 1];
            System.assertEquals(acc.Name, testAcc.Name);
            System.assertEquals(acc.Balance__c, testAcc.Balance__c);
            System.assertEquals(acc.Balance__c * 0.06, testAcc.Calculated_Interest__c);
            System.assertEquals(acc.Email__c, testAcc.Email__c);
            System.assertEquals(acc.Loan_Interest_Rate__c, testAcc.Loan_Interest_Rate__c);
            System.assertEquals(acc.Loan_Type__c, testAcc.Loan_Type__c);
            //System.assertEquals(acc.Remaining_Loan_Amount__c, testAcc.Remaining_Loan_Amount__c);
            System.assertEquals(acc.Total_Loan_Amount__c, testAcc.Total_Loan_Amount__c);
        } catch (Exception e) {
            System.assert(false, e.getMessage());
        }
        Test.stopTest();
    }
    

    @isTest
    public static void testAccount_36() {
        Test.startTest();
        Account acc = new Account();
        acc.Name = 'ToUpdate Account';
        acc.Balance__c = 100;
        acc.RecordTypeId = Schema.SObjectType.Account.getRecordTypeInfosByName().get('>=$100').getRecordTypeId();
        acc.Email__c = 'testUpdate@pairwise.test';
        acc.Active__c = 'Yes';
        insert acc;
        
        acc.Name = '';
        acc.Balance__c = 165;
        acc.Calculated_Interest__c = 7;
        acc.Email__c = 'test36@pairwise.test';
        acc.Loan_Interest_Rate__c = 0.162;
        acc.Loan_Type__c = 'Car Loan';
        acc.Remaining_Loan_Amount__c = 15000000;
        acc.Total_Loan_Amount__c = 3842528;
        
        
        try {
            update acc;
            Account testAcc = [SELECT name, balance__c, calculated_interest__c, email__c, interest_rate__c, loan_interest_rate__c, loan_type__c, remaining_loan_amount__c, total_loan_amount__c, active__c FROM Account WHERE name='' LIMIT 1];
            System.assertEquals(acc.Name, testAcc.Name);
            System.assertEquals(acc.Balance__c, testAcc.Balance__c);
            System.assertEquals(acc.Balance__c * 0.06, testAcc.Calculated_Interest__c);
            System.assertEquals(acc.Email__c, testAcc.Email__c);
            System.assertEquals(acc.Loan_Interest_Rate__c, testAcc.Loan_Interest_Rate__c);
            System.assertEquals(acc.Loan_Type__c, testAcc.Loan_Type__c);
            //System.assertEquals(acc.Remaining_Loan_Amount__c, testAcc.Remaining_Loan_Amount__c);
            System.assertEquals(acc.Total_Loan_Amount__c, testAcc.Total_Loan_Amount__c);
        } catch (Exception e) {
            System.assert(false, e.getMessage());
        }
        Test.stopTest();
    }
    

    @isTest
    public static void testAccount_37() {
        Test.startTest();
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
        acc.Remaining_Loan_Amount__c = null;
        acc.Total_Loan_Amount__c = 809891;
        
        
        try {
            update acc;
            Account testAcc = [SELECT name, balance__c, calculated_interest__c, email__c, interest_rate__c, loan_interest_rate__c, loan_type__c, remaining_loan_amount__c, total_loan_amount__c, active__c FROM Account WHERE name='' LIMIT 1];
            System.assertEquals(acc.Name, testAcc.Name);
            System.assertEquals(acc.Balance__c, testAcc.Balance__c);
            System.assertEquals(acc.Balance__c * 0.038, testAcc.Calculated_Interest__c);
            System.assertEquals(acc.Email__c, testAcc.Email__c);
            System.assertEquals(acc.Loan_Interest_Rate__c, testAcc.Loan_Interest_Rate__c);
            System.assertEquals(acc.Loan_Type__c, testAcc.Loan_Type__c);
            //System.assertEquals(acc.Remaining_Loan_Amount__c, testAcc.Remaining_Loan_Amount__c);
            System.assertEquals(acc.Total_Loan_Amount__c, testAcc.Total_Loan_Amount__c);
        } catch (Exception e) {
            System.assert(false, e.getMessage());
        }
        Test.stopTest();
    }
    

    @isTest
    public static void testAccount_38() {
        Test.startTest();
        Account acc = new Account();
        acc.Name = 'ToUpdate Account';
        acc.Balance__c = 100;
        acc.RecordTypeId = Schema.SObjectType.Account.getRecordTypeInfosByName().get('>=$0').getRecordTypeId();
        acc.Email__c = 'testUpdate@pairwise.test';
        acc.Active__c = 'Yes';
        insert acc;
        
        acc.Name = '';
        acc.Balance__c = 153;
        acc.Calculated_Interest__c = null;
        acc.Email__c = '';
        acc.Loan_Interest_Rate__c = 0.146;
        acc.Loan_Type__c = 'Car Loan';
        acc.Remaining_Loan_Amount__c = null;
        acc.Total_Loan_Amount__c = null;
        
        
        try {
            update acc;
            Account testAcc = [SELECT name, balance__c, calculated_interest__c, email__c, interest_rate__c, loan_interest_rate__c, loan_type__c, remaining_loan_amount__c, total_loan_amount__c, active__c FROM Account WHERE name='' LIMIT 1];
            System.assertEquals(acc.Name, testAcc.Name);
            System.assertEquals(acc.Balance__c, testAcc.Balance__c);
            System.assertEquals(acc.Balance__c * 0.038, testAcc.Calculated_Interest__c);
            System.assertEquals(acc.Email__c, testAcc.Email__c);
            System.assertEquals(acc.Loan_Interest_Rate__c, testAcc.Loan_Interest_Rate__c);
            System.assertEquals(acc.Loan_Type__c, testAcc.Loan_Type__c);
            //System.assertEquals(acc.Remaining_Loan_Amount__c, testAcc.Remaining_Loan_Amount__c);
            System.assertEquals(acc.Total_Loan_Amount__c, testAcc.Total_Loan_Amount__c);
        } catch (Exception e) {
            System.assert(false, e.getMessage());
        }
        Test.stopTest();
    }
    

    @isTest
    public static void testAccount_39() {
        Test.startTest();
        Account acc = new Account();
        acc.Name = '';
        acc.Balance__c = 164;
        acc.RecordTypeId = Schema.SObjectType.Account.getRecordTypeInfosByName().get('>=$100').getRecordTypeId();
        acc.Calculated_Interest__c = 7;
        acc.Email__c = 'test39@pairwise.test';
        acc.Loan_Interest_Rate__c = 0.146;
        acc.Loan_Type__c = 'Home Loan';
        //acc.Remaining_Loan_Amount__c = 15000000;
        acc.Total_Loan_Amount__c = 741965;
        acc.Active__c = 'Yes';
        
        
        try {
            insert acc;
            Account testAcc = [SELECT name, balance__c, calculated_interest__c, email__c, interest_rate__c, loan_interest_rate__c, loan_type__c, remaining_loan_amount__c, total_loan_amount__c, active__c FROM Account WHERE name='' LIMIT 1];
            System.assertEquals(acc.Name, testAcc.Name);
            System.assertEquals(acc.Balance__c, testAcc.Balance__c);
            System.assertEquals(acc.Balance__c * 0.038, testAcc.Calculated_Interest__c);
            System.assertEquals(acc.Email__c, testAcc.Email__c);
            System.assertEquals(acc.Loan_Interest_Rate__c, testAcc.Loan_Interest_Rate__c);
            System.assertEquals(acc.Loan_Type__c, testAcc.Loan_Type__c);
            //System.assertEquals(acc.Remaining_Loan_Amount__c, testAcc.Remaining_Loan_Amount__c);
            System.assertEquals(acc.Total_Loan_Amount__c, testAcc.Total_Loan_Amount__c);
        } catch (Exception e) {
            System.assert(false, e.getMessage());
        }
        Test.stopTest();
    }
    

    @isTest
    public static void testAccount_40() {
        Test.startTest();
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
        acc.Email__c = 'test40@pairwise.test';
        acc.Loan_Interest_Rate__c = 0.146;
        acc.Loan_Type__c = 'Home Loan';
        acc.Remaining_Loan_Amount__c = null;
        acc.Total_Loan_Amount__c = 63518;
        
        
        try {
            update acc;
            Account testAcc = [SELECT name, balance__c, calculated_interest__c, email__c, interest_rate__c, loan_interest_rate__c, loan_type__c, remaining_loan_amount__c, total_loan_amount__c, active__c FROM Account WHERE name='' LIMIT 1];
            System.assertEquals(acc.Name, testAcc.Name);
            System.assertEquals(acc.Balance__c, testAcc.Balance__c);
            System.assertEquals(acc.Balance__c * 0.05, testAcc.Calculated_Interest__c);
            System.assertEquals(acc.Email__c, testAcc.Email__c);
            System.assertEquals(acc.Loan_Interest_Rate__c, testAcc.Loan_Interest_Rate__c);
            System.assertEquals(acc.Loan_Type__c, testAcc.Loan_Type__c);
            //System.assertEquals(acc.Remaining_Loan_Amount__c, testAcc.Remaining_Loan_Amount__c);
            System.assertEquals(acc.Total_Loan_Amount__c, testAcc.Total_Loan_Amount__c);
        } catch (Exception e) {
            System.assert(false, e.getMessage());
        }
        Test.stopTest();
    }
    

    @isTest
    public static void testAccount_41() {
        Test.startTest();
        Account acc = new Account();
        acc.Name = 'ToUpdate Account';
        acc.Balance__c = 100;
        acc.RecordTypeId = Schema.SObjectType.Account.getRecordTypeInfosByName().get('Blank').getRecordTypeId();
        acc.Email__c = 'testUpdate@pairwise.test';
        acc.Active__c = 'Yes';
        insert acc;
        
        acc.Name = '';
        acc.Balance__c = 120;
        acc.Calculated_Interest__c = null;
        acc.Email__c = 'test41@pairwise.test';
        acc.Loan_Interest_Rate__c = 0.08;
        acc.Loan_Type__c = 'Home Loan';
        acc.Remaining_Loan_Amount__c = 15000000;
        acc.Total_Loan_Amount__c = 8970440;
        
        
        try {
            update acc;
            Account testAcc = [SELECT name, balance__c, calculated_interest__c, email__c, interest_rate__c, loan_interest_rate__c, loan_type__c, remaining_loan_amount__c, total_loan_amount__c, active__c FROM Account WHERE name='' LIMIT 1];
            System.assertEquals(acc.Name, testAcc.Name);
            System.assertEquals(acc.Balance__c, testAcc.Balance__c);
            System.assertEquals(acc.Balance__c * 0.05, testAcc.Calculated_Interest__c);
            System.assertEquals(acc.Email__c, testAcc.Email__c);
            System.assertEquals(acc.Loan_Interest_Rate__c, testAcc.Loan_Interest_Rate__c);
            System.assertEquals(acc.Loan_Type__c, testAcc.Loan_Type__c);
            //System.assertEquals(acc.Remaining_Loan_Amount__c, testAcc.Remaining_Loan_Amount__c);
            System.assertEquals(acc.Total_Loan_Amount__c, testAcc.Total_Loan_Amount__c);
        } catch (Exception e) {
            System.assert(false, e.getMessage());
        }
        Test.stopTest();
    }
    

    @isTest
    public static void testAccount_42() {
        Test.startTest();
        Account acc = new Account();
        acc.Name = '';
        acc.Balance__c = 160;
        acc.RecordTypeId = Schema.SObjectType.Account.getRecordTypeInfosByName().get('>=$100').getRecordTypeId();
        acc.Calculated_Interest__c = null;
        acc.Email__c = 'test42@pairwise.test';
        acc.Loan_Interest_Rate__c = null;
        acc.Loan_Type__c = 'Car Loan';
        //acc.Remaining_Loan_Amount__c = 15000000;
        acc.Total_Loan_Amount__c = 745241;
        acc.Active__c = 'Yes';
        
        
        try {
            insert acc;
            Account testAcc = [SELECT name, balance__c, calculated_interest__c, email__c, interest_rate__c, loan_interest_rate__c, loan_type__c, remaining_loan_amount__c, total_loan_amount__c, active__c FROM Account WHERE name='' LIMIT 1];
            System.assertEquals(acc.Name, testAcc.Name);
            System.assertEquals(acc.Balance__c, testAcc.Balance__c);
            System.assertEquals(acc.Balance__c * 0.05, testAcc.Calculated_Interest__c);
            System.assertEquals(acc.Email__c, testAcc.Email__c);
            System.assertEquals(acc.Loan_Interest_Rate__c, testAcc.Loan_Interest_Rate__c);
            System.assertEquals(acc.Loan_Type__c, testAcc.Loan_Type__c);
            //System.assertEquals(acc.Remaining_Loan_Amount__c, testAcc.Remaining_Loan_Amount__c);
            System.assertEquals(acc.Total_Loan_Amount__c, testAcc.Total_Loan_Amount__c);
        } catch (Exception e) {
            System.assert(false, e.getMessage());
        }
        Test.stopTest();
    }
    

    @isTest
    public static void testAccount_43() {
        Test.startTest();
        Account acc = new Account();
        acc.Name = '';
        acc.Balance__c = 180;
        acc.RecordTypeId = Schema.SObjectType.Account.getRecordTypeInfosByName().get('>=$0').getRecordTypeId();
        acc.Calculated_Interest__c = 7;
        acc.Email__c = 'test43@pairwise.test';
        acc.Loan_Interest_Rate__c = 0.11;
        acc.Loan_Type__c = 'Car Loan';
        //acc.Remaining_Loan_Amount__c = 15000000;
        acc.Total_Loan_Amount__c = 681043;
        acc.Active__c = 'Yes';
        
        
        try {
            insert acc;
            Account testAcc = [SELECT name, balance__c, calculated_interest__c, email__c, interest_rate__c, loan_interest_rate__c, loan_type__c, remaining_loan_amount__c, total_loan_amount__c, active__c FROM Account WHERE name='' LIMIT 1];
            System.assertEquals(acc.Name, testAcc.Name);
            System.assertEquals(acc.Balance__c, testAcc.Balance__c);
            System.assertEquals(acc.Balance__c * 0.06, testAcc.Calculated_Interest__c);
            System.assertEquals(acc.Email__c, testAcc.Email__c);
            System.assertEquals(acc.Loan_Interest_Rate__c, testAcc.Loan_Interest_Rate__c);
            System.assertEquals(acc.Loan_Type__c, testAcc.Loan_Type__c);
            //System.assertEquals(acc.Remaining_Loan_Amount__c, testAcc.Remaining_Loan_Amount__c);
            System.assertEquals(acc.Total_Loan_Amount__c, testAcc.Total_Loan_Amount__c);
        } catch (Exception e) {
            System.assert(false, e.getMessage());
        }
        Test.stopTest();
    }
    

    @isTest
    public static void testAccount_44() {
        Test.startTest();
        Account acc = new Account();
        acc.Name = '';
        acc.Balance__c = 142;
        acc.RecordTypeId = Schema.SObjectType.Account.getRecordTypeInfosByName().get('>=$0').getRecordTypeId();
        acc.Calculated_Interest__c = null;
        acc.Email__c = 'test44@pairwise.test';
        acc.Loan_Interest_Rate__c = 0.14;
        acc.Loan_Type__c = '';
        //acc.Remaining_Loan_Amount__c = 15000000;
        acc.Total_Loan_Amount__c = null;
        acc.Active__c = 'Yes';
        
        
        try {
            insert acc;
            Account testAcc = [SELECT name, balance__c, calculated_interest__c, email__c, interest_rate__c, loan_interest_rate__c, loan_type__c, remaining_loan_amount__c, total_loan_amount__c, active__c FROM Account WHERE name='' LIMIT 1];
            System.assertEquals(acc.Name, testAcc.Name);
            System.assertEquals(acc.Balance__c, testAcc.Balance__c);
            System.assertEquals(acc.Balance__c * 0.06, testAcc.Calculated_Interest__c);
            System.assertEquals(acc.Email__c, testAcc.Email__c);
            System.assertEquals(acc.Loan_Interest_Rate__c, testAcc.Loan_Interest_Rate__c);
            System.assertEquals(acc.Loan_Type__c, testAcc.Loan_Type__c);
            //System.assertEquals(acc.Remaining_Loan_Amount__c, testAcc.Remaining_Loan_Amount__c);
            System.assertEquals(acc.Total_Loan_Amount__c, testAcc.Total_Loan_Amount__c);
        } catch (Exception e) {
            System.assert(false, e.getMessage());
        }
        Test.stopTest();
    }
    

    @isTest
    public static void testAccount_45() {
        Test.startTest();
        Account acc = new Account();
        acc.Name = 'ToUpdate Account';
        acc.Balance__c = 100;
        acc.RecordTypeId = Schema.SObjectType.Account.getRecordTypeInfosByName().get('Negative').getRecordTypeId();
        acc.Email__c = 'testUpdate@pairwise.test';
        acc.Active__c = 'Yes';
        insert acc;
        
        acc.Name = '';
        acc.Balance__c = 180;
        acc.Calculated_Interest__c = null;
        acc.Email__c = 'test45@pairwise.test';
        acc.Loan_Interest_Rate__c = 0.136;
        acc.Loan_Type__c = 'Home Loan';
        acc.Remaining_Loan_Amount__c = 15000000;
        acc.Total_Loan_Amount__c = null;
        
        
        try {
            update acc;
            Account testAcc = [SELECT name, balance__c, calculated_interest__c, email__c, interest_rate__c, loan_interest_rate__c, loan_type__c, remaining_loan_amount__c, total_loan_amount__c, active__c FROM Account WHERE name='' LIMIT 1];
            System.assertEquals(acc.Name, testAcc.Name);
            System.assertEquals(acc.Balance__c, testAcc.Balance__c);
            System.assertEquals(acc.Balance__c * 0.038, testAcc.Calculated_Interest__c);
            System.assertEquals(acc.Email__c, testAcc.Email__c);
            System.assertEquals(acc.Loan_Interest_Rate__c, testAcc.Loan_Interest_Rate__c);
            System.assertEquals(acc.Loan_Type__c, testAcc.Loan_Type__c);
            //System.assertEquals(acc.Remaining_Loan_Amount__c, testAcc.Remaining_Loan_Amount__c);
            System.assertEquals(acc.Total_Loan_Amount__c, testAcc.Total_Loan_Amount__c);
        } catch (Exception e) {
            System.assert(false, e.getMessage());
        }
        Test.stopTest();
    }
    

    @isTest
    public static void testAccount_46() {
        Test.startTest();
        Account acc = new Account();
        acc.Name = 'ToUpdate Account';
        acc.Balance__c = 100;
        acc.RecordTypeId = Schema.SObjectType.Account.getRecordTypeInfosByName().get('Negative').getRecordTypeId();
        acc.Email__c = 'testUpdate@pairwise.test';
        acc.Active__c = 'Yes';
        insert acc;
        
        acc.Name = '';
        acc.Balance__c = 192;
        acc.Calculated_Interest__c = 7;
        acc.Email__c = 'test46@pairwise.test';
        acc.Loan_Interest_Rate__c = 0.14;
        acc.Loan_Type__c = 'Home Loan';
        acc.Remaining_Loan_Amount__c = null;
        acc.Total_Loan_Amount__c = 329378;
        
        
        try {
            update acc;
            Account testAcc = [SELECT name, balance__c, calculated_interest__c, email__c, interest_rate__c, loan_interest_rate__c, loan_type__c, remaining_loan_amount__c, total_loan_amount__c, active__c FROM Account WHERE name='' LIMIT 1];
            System.assertEquals(acc.Name, testAcc.Name);
            System.assertEquals(acc.Balance__c, testAcc.Balance__c);
            System.assertEquals(acc.Balance__c * 0.05, testAcc.Calculated_Interest__c);
            System.assertEquals(acc.Email__c, testAcc.Email__c);
            System.assertEquals(acc.Loan_Interest_Rate__c, testAcc.Loan_Interest_Rate__c);
            System.assertEquals(acc.Loan_Type__c, testAcc.Loan_Type__c);
            //System.assertEquals(acc.Remaining_Loan_Amount__c, testAcc.Remaining_Loan_Amount__c);
            System.assertEquals(acc.Total_Loan_Amount__c, testAcc.Total_Loan_Amount__c);
        } catch (Exception e) {
            System.assert(false, e.getMessage());
        }
        Test.stopTest();
    }
    

    @isTest
    public static void testAccount_47() {
        Test.startTest();
        Account acc = new Account();
        acc.Name = 'ToUpdate Account';
        acc.Balance__c = 100;
        acc.RecordTypeId = Schema.SObjectType.Account.getRecordTypeInfosByName().get('Negative').getRecordTypeId();
        acc.Email__c = 'testUpdate@pairwise.test';
        acc.Active__c = 'Yes';
        insert acc;
        
        acc.Name = '';
        acc.Balance__c = 150;
        acc.Calculated_Interest__c = 7;
        acc.Email__c = 'test47@pairwise.test';
        acc.Loan_Interest_Rate__c = 107;
        acc.Loan_Type__c = '';
        acc.Remaining_Loan_Amount__c = 15000000;
        acc.Total_Loan_Amount__c = null;
        
        
        try {
            update acc;
            Account testAcc = [SELECT name, balance__c, calculated_interest__c, email__c, interest_rate__c, loan_interest_rate__c, loan_type__c, remaining_loan_amount__c, total_loan_amount__c, active__c FROM Account WHERE name='' LIMIT 1];
            System.assertEquals(acc.Name, testAcc.Name);
            System.assertEquals(acc.Balance__c, testAcc.Balance__c);
            System.assertEquals(acc.Balance__c * 0.05, testAcc.Calculated_Interest__c);
            System.assertEquals(acc.Email__c, testAcc.Email__c);
            System.assertEquals(acc.Loan_Interest_Rate__c, testAcc.Loan_Interest_Rate__c);
            System.assertEquals(acc.Loan_Type__c, testAcc.Loan_Type__c);
            //System.assertEquals(acc.Remaining_Loan_Amount__c, testAcc.Remaining_Loan_Amount__c);
            System.assertEquals(acc.Total_Loan_Amount__c, testAcc.Total_Loan_Amount__c);
        } catch (Exception e) {
            System.assert(false, e.getMessage());
        }
        Test.stopTest();
    }
    

    @isTest
    public static void testAccount_48() {
        Test.startTest();
        Account acc = new Account();
        acc.Name = 'ToUpdate Account';
        acc.Balance__c = 100;
        acc.RecordTypeId = Schema.SObjectType.Account.getRecordTypeInfosByName().get('Blank').getRecordTypeId();
        acc.Email__c = 'testUpdate@pairwise.test';
        acc.Active__c = 'Yes';
        insert acc;
        
        acc.Name = '';
        acc.Balance__c = 186;
        acc.Calculated_Interest__c = null;
        acc.Email__c = 'test48@pairwise.test';
        acc.Loan_Interest_Rate__c = 0.09;
        acc.Loan_Type__c = 'Car Loan';
        acc.Remaining_Loan_Amount__c = null;
        acc.Total_Loan_Amount__c = null;
        
        
        try {
            update acc;
            Account testAcc = [SELECT name, balance__c, calculated_interest__c, email__c, interest_rate__c, loan_interest_rate__c, loan_type__c, remaining_loan_amount__c, total_loan_amount__c, active__c FROM Account WHERE name='' LIMIT 1];
            System.assertEquals(acc.Name, testAcc.Name);
            System.assertEquals(acc.Balance__c, testAcc.Balance__c);
            System.assertEquals(acc.Balance__c * 0.05, testAcc.Calculated_Interest__c);
            System.assertEquals(acc.Email__c, testAcc.Email__c);
            System.assertEquals(acc.Loan_Interest_Rate__c, testAcc.Loan_Interest_Rate__c);
            System.assertEquals(acc.Loan_Type__c, testAcc.Loan_Type__c);
            //System.assertEquals(acc.Remaining_Loan_Amount__c, testAcc.Remaining_Loan_Amount__c);
            System.assertEquals(acc.Total_Loan_Amount__c, testAcc.Total_Loan_Amount__c);
        } catch (Exception e) {
            System.assert(false, e.getMessage());
        }
        Test.stopTest();
    }
    

    @isTest
    public static void testAccount_49() {
        Test.startTest();
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
        acc.Email__c = 'test49@pairwise.test';
        acc.Loan_Interest_Rate__c = 0.136;
        acc.Loan_Type__c = '';
        acc.Remaining_Loan_Amount__c = null;
        acc.Total_Loan_Amount__c = null;
        
        
        try {
            update acc;
            Account testAcc = [SELECT name, balance__c, calculated_interest__c, email__c, interest_rate__c, loan_interest_rate__c, loan_type__c, remaining_loan_amount__c, total_loan_amount__c, active__c FROM Account WHERE name='' LIMIT 1];
            System.assertEquals(acc.Name, testAcc.Name);
            System.assertEquals(acc.Balance__c, testAcc.Balance__c);
            System.assertEquals(acc.Balance__c * 0.05, testAcc.Calculated_Interest__c);
            System.assertEquals(acc.Email__c, testAcc.Email__c);
            System.assertEquals(acc.Loan_Interest_Rate__c, testAcc.Loan_Interest_Rate__c);
            System.assertEquals(acc.Loan_Type__c, testAcc.Loan_Type__c);
            //System.assertEquals(acc.Remaining_Loan_Amount__c, testAcc.Remaining_Loan_Amount__c);
            System.assertEquals(acc.Total_Loan_Amount__c, testAcc.Total_Loan_Amount__c);
        } catch (Exception e) {
            System.assert(false, e.getMessage());
        }
        Test.stopTest();
    }
    

    @isTest
    public static void testAccount_50() {
        Test.startTest();
        Account acc = new Account();
        acc.Name = 'ToUpdate Account';
        acc.Balance__c = 100;
        acc.RecordTypeId = Schema.SObjectType.Account.getRecordTypeInfosByName().get('Negative').getRecordTypeId();
        acc.Email__c = 'testUpdate@pairwise.test';
        acc.Active__c = 'Yes';
        insert acc;
        
        acc.Name = '';
        acc.Balance__c = 162;
        acc.Calculated_Interest__c = 7;
        acc.Email__c = 'test50@pairwise.test';
        acc.Loan_Interest_Rate__c = 107;
        acc.Loan_Type__c = 'Home Loan';
        acc.Remaining_Loan_Amount__c = 15000000;
        acc.Total_Loan_Amount__c = 295503;
        
        
        try {
            update acc;
            Account testAcc = [SELECT name, balance__c, calculated_interest__c, email__c, interest_rate__c, loan_interest_rate__c, loan_type__c, remaining_loan_amount__c, total_loan_amount__c, active__c FROM Account WHERE name='' LIMIT 1];
            System.assertEquals(acc.Name, testAcc.Name);
            System.assertEquals(acc.Balance__c, testAcc.Balance__c);
            System.assertEquals(acc.Balance__c * 0.038, testAcc.Calculated_Interest__c);
            System.assertEquals(acc.Email__c, testAcc.Email__c);
            System.assertEquals(acc.Loan_Interest_Rate__c, testAcc.Loan_Interest_Rate__c);
            System.assertEquals(acc.Loan_Type__c, testAcc.Loan_Type__c);
            //System.assertEquals(acc.Remaining_Loan_Amount__c, testAcc.Remaining_Loan_Amount__c);
            System.assertEquals(acc.Total_Loan_Amount__c, testAcc.Total_Loan_Amount__c);
        } catch (Exception e) {
            System.assert(false, e.getMessage());
        }
        Test.stopTest();
    }
    

    @isTest
    public static void testAccount_51() {
        Test.startTest();
        Account acc = new Account();
        acc.Name = '';
        acc.Balance__c = 174;
        acc.RecordTypeId = Schema.SObjectType.Account.getRecordTypeInfosByName().get('>=$100').getRecordTypeId();
        acc.Calculated_Interest__c = null;
        acc.Email__c = 'test51@pairwise.test';
        acc.Loan_Interest_Rate__c = 0.11800000000000001;
        acc.Loan_Type__c = 'Home Loan';
        //acc.Remaining_Loan_Amount__c = 15000000;
        acc.Total_Loan_Amount__c = 18751;
        acc.Active__c = 'Yes';
        
        
        try {
            insert acc;
            Account testAcc = [SELECT name, balance__c, calculated_interest__c, email__c, interest_rate__c, loan_interest_rate__c, loan_type__c, remaining_loan_amount__c, total_loan_amount__c, active__c FROM Account WHERE name='' LIMIT 1];
            System.assertEquals(acc.Name, testAcc.Name);
            System.assertEquals(acc.Balance__c, testAcc.Balance__c);
            System.assertEquals(acc.Balance__c * 0.038, testAcc.Calculated_Interest__c);
            System.assertEquals(acc.Email__c, testAcc.Email__c);
            System.assertEquals(acc.Loan_Interest_Rate__c, testAcc.Loan_Interest_Rate__c);
            System.assertEquals(acc.Loan_Type__c, testAcc.Loan_Type__c);
            //System.assertEquals(acc.Remaining_Loan_Amount__c, testAcc.Remaining_Loan_Amount__c);
            System.assertEquals(acc.Total_Loan_Amount__c, testAcc.Total_Loan_Amount__c);
        } catch (Exception e) {
            System.assert(false, e.getMessage());
        }
        Test.stopTest();
    }
    

    @isTest
    public static void testAccount_52() {
        Test.startTest();
        Account acc = new Account();
        acc.Name = '';
        acc.Balance__c = 117;
        acc.RecordTypeId = Schema.SObjectType.Account.getRecordTypeInfosByName().get('>=$100').getRecordTypeId();
        acc.Calculated_Interest__c = null;
        acc.Email__c = 'test52@pairwise.test';
        acc.Loan_Interest_Rate__c = 0.1;
        acc.Loan_Type__c = 'Home Loan';
        //acc.Remaining_Loan_Amount__c = null;
        acc.Total_Loan_Amount__c = 896049;
        acc.Active__c = 'Yes';
        
        
        try {
            insert acc;
            Account testAcc = [SELECT name, balance__c, calculated_interest__c, email__c, interest_rate__c, loan_interest_rate__c, loan_type__c, remaining_loan_amount__c, total_loan_amount__c, active__c FROM Account WHERE name='' LIMIT 1];
            System.assertEquals(acc.Name, testAcc.Name);
            System.assertEquals(acc.Balance__c, testAcc.Balance__c);
            System.assertEquals(acc.Balance__c * 0.038, testAcc.Calculated_Interest__c);
            System.assertEquals(acc.Email__c, testAcc.Email__c);
            System.assertEquals(acc.Loan_Interest_Rate__c, testAcc.Loan_Interest_Rate__c);
            System.assertEquals(acc.Loan_Type__c, testAcc.Loan_Type__c);
            //System.assertEquals(acc.Remaining_Loan_Amount__c, testAcc.Remaining_Loan_Amount__c);
            System.assertEquals(acc.Total_Loan_Amount__c, testAcc.Total_Loan_Amount__c);
        } catch (Exception e) {
            System.assert(false, e.getMessage());
        }
        Test.stopTest();
    }
    

    @isTest
    public static void testAccount_53() {
        Test.startTest();
        Account acc = new Account();
        acc.Name = 'ToUpdate Account';
        acc.Balance__c = 100;
        acc.RecordTypeId = Schema.SObjectType.Account.getRecordTypeInfosByName().get('Negative').getRecordTypeId();
        acc.Email__c = 'testUpdate@pairwise.test';
        acc.Active__c = 'Yes';
        insert acc;
        
        acc.Name = '';
        acc.Balance__c = 167;
        acc.Calculated_Interest__c = null;
        acc.Email__c = 'test53@pairwise.test';
        acc.Loan_Interest_Rate__c = 0.159;
        acc.Loan_Type__c = '';
        acc.Remaining_Loan_Amount__c = 15000000;
        acc.Total_Loan_Amount__c = null;
        
        
        try {
            update acc;
            Account testAcc = [SELECT name, balance__c, calculated_interest__c, email__c, interest_rate__c, loan_interest_rate__c, loan_type__c, remaining_loan_amount__c, total_loan_amount__c, active__c FROM Account WHERE name='' LIMIT 1];
            System.assertEquals(acc.Name, testAcc.Name);
            System.assertEquals(acc.Balance__c, testAcc.Balance__c);
            System.assertEquals(acc.Balance__c * 0.06, testAcc.Calculated_Interest__c);
            System.assertEquals(acc.Email__c, testAcc.Email__c);
            System.assertEquals(acc.Loan_Interest_Rate__c, testAcc.Loan_Interest_Rate__c);
            System.assertEquals(acc.Loan_Type__c, testAcc.Loan_Type__c);
            //System.assertEquals(acc.Remaining_Loan_Amount__c, testAcc.Remaining_Loan_Amount__c);
            System.assertEquals(acc.Total_Loan_Amount__c, testAcc.Total_Loan_Amount__c);
        } catch (Exception e) {
            System.assert(false, e.getMessage());
        }
        Test.stopTest();
    }
    

    @isTest
    public static void testAccount_54() {
        Test.startTest();
        Account acc = new Account();
        acc.Name = '';
        acc.Balance__c = 151;
        acc.RecordTypeId = Schema.SObjectType.Account.getRecordTypeInfosByName().get('>=$0').getRecordTypeId();
        acc.Calculated_Interest__c = 7;
        acc.Email__c = 'test54@pairwise.test';
        acc.Loan_Interest_Rate__c = 0.136;
        acc.Loan_Type__c = 'Home Loan';
        //acc.Remaining_Loan_Amount__c = 15000000;
        acc.Total_Loan_Amount__c = 312112;
        acc.Active__c = 'Yes';
        
        
        try {
            insert acc;
            Account testAcc = [SELECT name, balance__c, calculated_interest__c, email__c, interest_rate__c, loan_interest_rate__c, loan_type__c, remaining_loan_amount__c, total_loan_amount__c, active__c FROM Account WHERE name='' LIMIT 1];
            System.assertEquals(acc.Name, testAcc.Name);
            System.assertEquals(acc.Balance__c, testAcc.Balance__c);
            System.assertEquals(acc.Balance__c * 0.06, testAcc.Calculated_Interest__c);
            System.assertEquals(acc.Email__c, testAcc.Email__c);
            System.assertEquals(acc.Loan_Interest_Rate__c, testAcc.Loan_Interest_Rate__c);
            System.assertEquals(acc.Loan_Type__c, testAcc.Loan_Type__c);
            //System.assertEquals(acc.Remaining_Loan_Amount__c, testAcc.Remaining_Loan_Amount__c);
            System.assertEquals(acc.Total_Loan_Amount__c, testAcc.Total_Loan_Amount__c);
        } catch (Exception e) {
            System.assert(false, e.getMessage());
        }
        Test.stopTest();
    }
    

    @isTest
    public static void testAccount_55() {
        Test.startTest();
        Account acc = new Account();
        acc.Name = 'ToUpdate Account';
        acc.Balance__c = 100;
        acc.RecordTypeId = Schema.SObjectType.Account.getRecordTypeInfosByName().get('Blank').getRecordTypeId();
        acc.Email__c = 'testUpdate@pairwise.test';
        acc.Active__c = 'Yes';
        insert acc;
        
        acc.Name = '';
        acc.Balance__c = 196;
        acc.Calculated_Interest__c = 7;
        acc.Email__c = '';
        acc.Loan_Interest_Rate__c = 0.11;
        acc.Loan_Type__c = 'Home Loan';
        acc.Remaining_Loan_Amount__c = 15000000;
        acc.Total_Loan_Amount__c = 265146;
        
        
        try {
            update acc;
            Account testAcc = [SELECT name, balance__c, calculated_interest__c, email__c, interest_rate__c, loan_interest_rate__c, loan_type__c, remaining_loan_amount__c, total_loan_amount__c, active__c FROM Account WHERE name='' LIMIT 1];
            System.assertEquals(acc.Name, testAcc.Name);
            System.assertEquals(acc.Balance__c, testAcc.Balance__c);
            System.assertEquals(acc.Balance__c * 0.06, testAcc.Calculated_Interest__c);
            System.assertEquals(acc.Email__c, testAcc.Email__c);
            System.assertEquals(acc.Loan_Interest_Rate__c, testAcc.Loan_Interest_Rate__c);
            System.assertEquals(acc.Loan_Type__c, testAcc.Loan_Type__c);
            //System.assertEquals(acc.Remaining_Loan_Amount__c, testAcc.Remaining_Loan_Amount__c);
            System.assertEquals(acc.Total_Loan_Amount__c, testAcc.Total_Loan_Amount__c);
        } catch (Exception e) {
            System.assert(false, e.getMessage());
        }
        Test.stopTest();
    }
    

    @isTest
    public static void testAccount_56() {
        Test.startTest();
        Account acc = new Account();
        acc.Name = '';
        acc.Balance__c = 134;
        acc.RecordTypeId = Schema.SObjectType.Account.getRecordTypeInfosByName().get('>=$100').getRecordTypeId();
        acc.Calculated_Interest__c = null;
        acc.Email__c = '';
        acc.Loan_Interest_Rate__c = null;
        acc.Loan_Type__c = 'Home Loan';
        //acc.Remaining_Loan_Amount__c = 15000000;
        acc.Total_Loan_Amount__c = null;
        acc.Active__c = 'Yes';
        
        
        try {
            insert acc;
            Account testAcc = [SELECT name, balance__c, calculated_interest__c, email__c, interest_rate__c, loan_interest_rate__c, loan_type__c, remaining_loan_amount__c, total_loan_amount__c, active__c FROM Account WHERE name='' LIMIT 1];
            System.assertEquals(acc.Name, testAcc.Name);
            System.assertEquals(acc.Balance__c, testAcc.Balance__c);
            System.assertEquals(acc.Balance__c * 0.05, testAcc.Calculated_Interest__c);
            System.assertEquals(acc.Email__c, testAcc.Email__c);
            System.assertEquals(acc.Loan_Interest_Rate__c, testAcc.Loan_Interest_Rate__c);
            System.assertEquals(acc.Loan_Type__c, testAcc.Loan_Type__c);
            //System.assertEquals(acc.Remaining_Loan_Amount__c, testAcc.Remaining_Loan_Amount__c);
            System.assertEquals(acc.Total_Loan_Amount__c, testAcc.Total_Loan_Amount__c);
        } catch (Exception e) {
            System.assert(false, e.getMessage());
        }
        Test.stopTest();
    }
    

    @isTest
    public static void testAccount_57() {
        Test.startTest();
        Account acc = new Account();
        acc.Name = '';
        acc.Balance__c = 197;
        acc.RecordTypeId = Schema.SObjectType.Account.getRecordTypeInfosByName().get('>=$100').getRecordTypeId();
        acc.Calculated_Interest__c = 7;
        acc.Email__c = '';
        acc.Loan_Interest_Rate__c = 0.14;
        acc.Loan_Type__c = 'Home Loan';
        //acc.Remaining_Loan_Amount__c = 15000000;
        acc.Total_Loan_Amount__c = 7206186;
        acc.Active__c = 'Yes';
        
        
        try {
            insert acc;
            Account testAcc = [SELECT name, balance__c, calculated_interest__c, email__c, interest_rate__c, loan_interest_rate__c, loan_type__c, remaining_loan_amount__c, total_loan_amount__c, active__c FROM Account WHERE name='' LIMIT 1];
            System.assertEquals(acc.Name, testAcc.Name);
            System.assertEquals(acc.Balance__c, testAcc.Balance__c);
            System.assertEquals(acc.Balance__c * 0.05, testAcc.Calculated_Interest__c);
            System.assertEquals(acc.Email__c, testAcc.Email__c);
            System.assertEquals(acc.Loan_Interest_Rate__c, testAcc.Loan_Interest_Rate__c);
            System.assertEquals(acc.Loan_Type__c, testAcc.Loan_Type__c);
            //System.assertEquals(acc.Remaining_Loan_Amount__c, testAcc.Remaining_Loan_Amount__c);
            System.assertEquals(acc.Total_Loan_Amount__c, testAcc.Total_Loan_Amount__c);
        } catch (Exception e) {
            System.assert(false, e.getMessage());
        }
        Test.stopTest();
    }
    

    @isTest
    public static void testAccount_58() {
        Test.startTest();
        Account acc = new Account();
        acc.Name = 'ToUpdate Account';
        acc.Balance__c = 100;
        acc.RecordTypeId = Schema.SObjectType.Account.getRecordTypeInfosByName().get('>=$0').getRecordTypeId();
        acc.Email__c = 'testUpdate@pairwise.test';
        acc.Active__c = 'Yes';
        insert acc;
        
        acc.Name = '';
        acc.Balance__c = 190;
        acc.Calculated_Interest__c = 7;
        acc.Email__c = '';
        acc.Loan_Interest_Rate__c = 0.14;
        acc.Loan_Type__c = 'Car Loan';
        acc.Remaining_Loan_Amount__c = 15000000;
        acc.Total_Loan_Amount__c = 63054;
        
        
        try {
            update acc;
            Account testAcc = [SELECT name, balance__c, calculated_interest__c, email__c, interest_rate__c, loan_interest_rate__c, loan_type__c, remaining_loan_amount__c, total_loan_amount__c, active__c FROM Account WHERE name='' LIMIT 1];
            System.assertEquals(acc.Name, testAcc.Name);
            System.assertEquals(acc.Balance__c, testAcc.Balance__c);
            System.assertEquals(acc.Balance__c * 0.038, testAcc.Calculated_Interest__c);
            System.assertEquals(acc.Email__c, testAcc.Email__c);
            System.assertEquals(acc.Loan_Interest_Rate__c, testAcc.Loan_Interest_Rate__c);
            System.assertEquals(acc.Loan_Type__c, testAcc.Loan_Type__c);
            //System.assertEquals(acc.Remaining_Loan_Amount__c, testAcc.Remaining_Loan_Amount__c);
            System.assertEquals(acc.Total_Loan_Amount__c, testAcc.Total_Loan_Amount__c);
        } catch (Exception e) {
            System.assert(false, e.getMessage());
        }
        Test.stopTest();
    }
    

    @isTest
    public static void testAccount_59() {
        Test.startTest();
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
        acc.Email__c = '';
        acc.Loan_Interest_Rate__c = 0.09;
        acc.Loan_Type__c = 'Home Loan';
        acc.Remaining_Loan_Amount__c = 15000000;
        acc.Total_Loan_Amount__c = 90919;
        
        
        try {
            update acc;
            Account testAcc = [SELECT name, balance__c, calculated_interest__c, email__c, interest_rate__c, loan_interest_rate__c, loan_type__c, remaining_loan_amount__c, total_loan_amount__c, active__c FROM Account WHERE name='' LIMIT 1];
            System.assertEquals(acc.Name, testAcc.Name);
            System.assertEquals(acc.Balance__c, testAcc.Balance__c);
            System.assertEquals(acc.Balance__c * 0.05, testAcc.Calculated_Interest__c);
            System.assertEquals(acc.Email__c, testAcc.Email__c);
            System.assertEquals(acc.Loan_Interest_Rate__c, testAcc.Loan_Interest_Rate__c);
            System.assertEquals(acc.Loan_Type__c, testAcc.Loan_Type__c);
            //System.assertEquals(acc.Remaining_Loan_Amount__c, testAcc.Remaining_Loan_Amount__c);
            System.assertEquals(acc.Total_Loan_Amount__c, testAcc.Total_Loan_Amount__c);
        } catch (Exception e) {
            System.assert(false, e.getMessage());
        }
        Test.stopTest();
    }
    

    @isTest
    public static void testAccount_60() {
        Test.startTest();
        Account acc = new Account();
        acc.Name = '';
        acc.Balance__c = 125;
        acc.RecordTypeId = Schema.SObjectType.Account.getRecordTypeInfosByName().get('>=$0').getRecordTypeId();
        acc.Calculated_Interest__c = null;
        acc.Email__c = 'test60@pairwise.test';
        acc.Loan_Interest_Rate__c = 0.07;
        acc.Loan_Type__c = '';
        //acc.Remaining_Loan_Amount__c = 15000000;
        acc.Total_Loan_Amount__c = null;
        acc.Active__c = 'Yes';
        
        
        try {
            insert acc;
            Account testAcc = [SELECT name, balance__c, calculated_interest__c, email__c, interest_rate__c, loan_interest_rate__c, loan_type__c, remaining_loan_amount__c, total_loan_amount__c, active__c FROM Account WHERE name='' LIMIT 1];
            System.assertEquals(acc.Name, testAcc.Name);
            System.assertEquals(acc.Balance__c, testAcc.Balance__c);
            System.assertEquals(acc.Balance__c * 0.06, testAcc.Calculated_Interest__c);
            System.assertEquals(acc.Email__c, testAcc.Email__c);
            System.assertEquals(acc.Loan_Interest_Rate__c, testAcc.Loan_Interest_Rate__c);
            System.assertEquals(acc.Loan_Type__c, testAcc.Loan_Type__c);
            //System.assertEquals(acc.Remaining_Loan_Amount__c, testAcc.Remaining_Loan_Amount__c);
            System.assertEquals(acc.Total_Loan_Amount__c, testAcc.Total_Loan_Amount__c);
        } catch (Exception e) {
            System.assert(false, e.getMessage());
        }
        Test.stopTest();
    }
    

    @isTest
    public static void testAccount_61() {
        Test.startTest();
        Account acc = new Account();
        acc.Name = 'ToUpdate Account';
        acc.Balance__c = 100;
        acc.RecordTypeId = Schema.SObjectType.Account.getRecordTypeInfosByName().get('Blank').getRecordTypeId();
        acc.Email__c = 'testUpdate@pairwise.test';
        acc.Active__c = 'Yes';
        insert acc;
        
        acc.Name = '';
        acc.Balance__c = 172;
        acc.Calculated_Interest__c = 7;
        acc.Email__c = '';
        acc.Loan_Interest_Rate__c = 0.109;
        acc.Loan_Type__c = 'Car Loan';
        acc.Remaining_Loan_Amount__c = 15000000;
        acc.Total_Loan_Amount__c = 914057;
        
        
        try {
            update acc;
            Account testAcc = [SELECT name, balance__c, calculated_interest__c, email__c, interest_rate__c, loan_interest_rate__c, loan_type__c, remaining_loan_amount__c, total_loan_amount__c, active__c FROM Account WHERE name='' LIMIT 1];
            System.assertEquals(acc.Name, testAcc.Name);
            System.assertEquals(acc.Balance__c, testAcc.Balance__c);
            System.assertEquals(acc.Balance__c * 0.038, testAcc.Calculated_Interest__c);
            System.assertEquals(acc.Email__c, testAcc.Email__c);
            System.assertEquals(acc.Loan_Interest_Rate__c, testAcc.Loan_Interest_Rate__c);
            System.assertEquals(acc.Loan_Type__c, testAcc.Loan_Type__c);
            //System.assertEquals(acc.Remaining_Loan_Amount__c, testAcc.Remaining_Loan_Amount__c);
            System.assertEquals(acc.Total_Loan_Amount__c, testAcc.Total_Loan_Amount__c);
        } catch (Exception e) {
            System.assert(false, e.getMessage());
        }
        Test.stopTest();
    }
    

    @isTest
    public static void testAccount_62() {
        Test.startTest();
        Account acc = new Account();
        acc.Name = '';
        acc.Balance__c = 112;
        acc.RecordTypeId = Schema.SObjectType.Account.getRecordTypeInfosByName().get('>=$100').getRecordTypeId();
        acc.Calculated_Interest__c = null;
        acc.Email__c = '';
        acc.Loan_Interest_Rate__c = 0.10300000000000001;
        acc.Loan_Type__c = 'Home Loan';
        //acc.Remaining_Loan_Amount__c = 15000000;
        acc.Total_Loan_Amount__c = 767056;
        acc.Active__c = 'Yes';
        
        
        try {
            insert acc;
            Account testAcc = [SELECT name, balance__c, calculated_interest__c, email__c, interest_rate__c, loan_interest_rate__c, loan_type__c, remaining_loan_amount__c, total_loan_amount__c, active__c FROM Account WHERE name='' LIMIT 1];
            System.assertEquals(acc.Name, testAcc.Name);
            System.assertEquals(acc.Balance__c, testAcc.Balance__c);
            System.assertEquals(acc.Balance__c * 0.05, testAcc.Calculated_Interest__c);
            System.assertEquals(acc.Email__c, testAcc.Email__c);
            System.assertEquals(acc.Loan_Interest_Rate__c, testAcc.Loan_Interest_Rate__c);
            System.assertEquals(acc.Loan_Type__c, testAcc.Loan_Type__c);
            //System.assertEquals(acc.Remaining_Loan_Amount__c, testAcc.Remaining_Loan_Amount__c);
            System.assertEquals(acc.Total_Loan_Amount__c, testAcc.Total_Loan_Amount__c);
        } catch (Exception e) {
            System.assert(false, e.getMessage());
        }
        Test.stopTest();
    }
    

    @isTest
    public static void testAccount_63() {
        Test.startTest();
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
        acc.Loan_Interest_Rate__c = 107;
        acc.Loan_Type__c = 'Home Loan';
        acc.Remaining_Loan_Amount__c = 15000000;
        acc.Total_Loan_Amount__c = 14320;
        
        
        try {
            update acc;
            Account testAcc = [SELECT name, balance__c, calculated_interest__c, email__c, interest_rate__c, loan_interest_rate__c, loan_type__c, remaining_loan_amount__c, total_loan_amount__c, active__c FROM Account WHERE name='' LIMIT 1];
            System.assertEquals(acc.Name, testAcc.Name);
            System.assertEquals(acc.Balance__c, testAcc.Balance__c);
            System.assertEquals(acc.Balance__c * 0.038, testAcc.Calculated_Interest__c);
            System.assertEquals(acc.Email__c, testAcc.Email__c);
            System.assertEquals(acc.Loan_Interest_Rate__c, testAcc.Loan_Interest_Rate__c);
            System.assertEquals(acc.Loan_Type__c, testAcc.Loan_Type__c);
            //System.assertEquals(acc.Remaining_Loan_Amount__c, testAcc.Remaining_Loan_Amount__c);
            System.assertEquals(acc.Total_Loan_Amount__c, testAcc.Total_Loan_Amount__c);
        } catch (Exception e) {
            System.assert(false, e.getMessage());
        }
        Test.stopTest();
    }
    

    @isTest
    public static void testAccount_64() {
        Test.startTest();
        Account acc = new Account();
        acc.Name = '';
        acc.Balance__c = 158;
        acc.RecordTypeId = Schema.SObjectType.Account.getRecordTypeInfosByName().get('>=$100').getRecordTypeId();
        acc.Calculated_Interest__c = null;
        acc.Email__c = 'test64@pairwise.test';
        acc.Loan_Interest_Rate__c = 0.125;
        acc.Loan_Type__c = 'Home Loan';
        //acc.Remaining_Loan_Amount__c = 15000000;
        acc.Total_Loan_Amount__c = 157082;
        acc.Active__c = 'Yes';
        
        
        try {
            insert acc;
            Account testAcc = [SELECT name, balance__c, calculated_interest__c, email__c, interest_rate__c, loan_interest_rate__c, loan_type__c, remaining_loan_amount__c, total_loan_amount__c, active__c FROM Account WHERE name='' LIMIT 1];
            System.assertEquals(acc.Name, testAcc.Name);
            System.assertEquals(acc.Balance__c, testAcc.Balance__c);
            System.assertEquals(acc.Balance__c * 0.038, testAcc.Calculated_Interest__c);
            System.assertEquals(acc.Email__c, testAcc.Email__c);
            System.assertEquals(acc.Loan_Interest_Rate__c, testAcc.Loan_Interest_Rate__c);
            System.assertEquals(acc.Loan_Type__c, testAcc.Loan_Type__c);
            //System.assertEquals(acc.Remaining_Loan_Amount__c, testAcc.Remaining_Loan_Amount__c);
            System.assertEquals(acc.Total_Loan_Amount__c, testAcc.Total_Loan_Amount__c);
        } catch (Exception e) {
            System.assert(false, e.getMessage());
        }
        Test.stopTest();
    }
    

    @isTest
    public static void testAccount_65() {
        Test.startTest();
        Account acc = new Account();
        acc.Name = 'ToUpdate Account';
        acc.Balance__c = 100;
        acc.RecordTypeId = Schema.SObjectType.Account.getRecordTypeInfosByName().get('Blank').getRecordTypeId();
        acc.Email__c = 'testUpdate@pairwise.test';
        acc.Active__c = 'Yes';
        insert acc;
        
        acc.Name = '';
        acc.Balance__c = 200;
        acc.Calculated_Interest__c = null;
        acc.Email__c = '';
        acc.Loan_Interest_Rate__c = 0.162;
        acc.Loan_Type__c = '';
        acc.Remaining_Loan_Amount__c = null;
        acc.Total_Loan_Amount__c = null;
        
        
        try {
            update acc;
            Account testAcc = [SELECT name, balance__c, calculated_interest__c, email__c, interest_rate__c, loan_interest_rate__c, loan_type__c, remaining_loan_amount__c, total_loan_amount__c, active__c FROM Account WHERE name='' LIMIT 1];
            System.assertEquals(acc.Name, testAcc.Name);
            System.assertEquals(acc.Balance__c, testAcc.Balance__c);
            System.assertEquals(acc.Balance__c * 0.05, testAcc.Calculated_Interest__c);
            System.assertEquals(acc.Email__c, testAcc.Email__c);
            System.assertEquals(acc.Loan_Interest_Rate__c, testAcc.Loan_Interest_Rate__c);
            System.assertEquals(acc.Loan_Type__c, testAcc.Loan_Type__c);
            //System.assertEquals(acc.Remaining_Loan_Amount__c, testAcc.Remaining_Loan_Amount__c);
            System.assertEquals(acc.Total_Loan_Amount__c, testAcc.Total_Loan_Amount__c);
        } catch (Exception e) {
            System.assert(false, e.getMessage());
        }
        Test.stopTest();
    }
    

    @isTest
    public static void testAccount_66() {
        Test.startTest();
        Account acc = new Account();
        acc.Name = '';
        acc.Balance__c = 121;
        acc.RecordTypeId = Schema.SObjectType.Account.getRecordTypeInfosByName().get('>=$0').getRecordTypeId();
        acc.Calculated_Interest__c = null;
        acc.Email__c = 'test66@pairwise.test';
        acc.Loan_Interest_Rate__c = 0.1;
        acc.Loan_Type__c = 'Car Loan';
        //acc.Remaining_Loan_Amount__c = null;
        acc.Total_Loan_Amount__c = 4057336;
        acc.Active__c = 'Yes';
        
        
        try {
            insert acc;
            Account testAcc = [SELECT name, balance__c, calculated_interest__c, email__c, interest_rate__c, loan_interest_rate__c, loan_type__c, remaining_loan_amount__c, total_loan_amount__c, active__c FROM Account WHERE name='' LIMIT 1];
            System.assertEquals(acc.Name, testAcc.Name);
            System.assertEquals(acc.Balance__c, testAcc.Balance__c);
            System.assertEquals(acc.Balance__c * 0.06, testAcc.Calculated_Interest__c);
            System.assertEquals(acc.Email__c, testAcc.Email__c);
            System.assertEquals(acc.Loan_Interest_Rate__c, testAcc.Loan_Interest_Rate__c);
            System.assertEquals(acc.Loan_Type__c, testAcc.Loan_Type__c);
            //System.assertEquals(acc.Remaining_Loan_Amount__c, testAcc.Remaining_Loan_Amount__c);
            System.assertEquals(acc.Total_Loan_Amount__c, testAcc.Total_Loan_Amount__c);
        } catch (Exception e) {
            System.assert(false, e.getMessage());
        }
        Test.stopTest();
    }
    

    @isTest
    public static void testAccount_67() {
        Test.startTest();
        Account acc = new Account();
        acc.Name = '';
        acc.Balance__c = 191;
        acc.RecordTypeId = Schema.SObjectType.Account.getRecordTypeInfosByName().get('>=$100').getRecordTypeId();
        acc.Calculated_Interest__c = 7;
        acc.Email__c = 'test67@pairwise.test';
        acc.Loan_Interest_Rate__c = 0.09;
        acc.Loan_Type__c = 'Home Loan';
        //acc.Remaining_Loan_Amount__c = 15000000;
        acc.Total_Loan_Amount__c = 411023;
        acc.Active__c = 'Yes';
        
        
        try {
            insert acc;
            Account testAcc = [SELECT name, balance__c, calculated_interest__c, email__c, interest_rate__c, loan_interest_rate__c, loan_type__c, remaining_loan_amount__c, total_loan_amount__c, active__c FROM Account WHERE name='' LIMIT 1];
            System.assertEquals(acc.Name, testAcc.Name);
            System.assertEquals(acc.Balance__c, testAcc.Balance__c);
            System.assertEquals(acc.Balance__c * 0.038, testAcc.Calculated_Interest__c);
            System.assertEquals(acc.Email__c, testAcc.Email__c);
            System.assertEquals(acc.Loan_Interest_Rate__c, testAcc.Loan_Interest_Rate__c);
            System.assertEquals(acc.Loan_Type__c, testAcc.Loan_Type__c);
            //System.assertEquals(acc.Remaining_Loan_Amount__c, testAcc.Remaining_Loan_Amount__c);
            System.assertEquals(acc.Total_Loan_Amount__c, testAcc.Total_Loan_Amount__c);
        } catch (Exception e) {
            System.assert(false, e.getMessage());
        }
        Test.stopTest();
    }
    

    @isTest
    public static void testAccount_68() {
        Test.startTest();
        Account acc = new Account();
        acc.Name = 'ToUpdate Account';
        acc.Balance__c = 100;
        acc.RecordTypeId = Schema.SObjectType.Account.getRecordTypeInfosByName().get('Blank').getRecordTypeId();
        acc.Email__c = 'testUpdate@pairwise.test';
        acc.Active__c = 'Yes';
        insert acc;
        
        acc.Name = '';
        acc.Balance__c = 143;
        acc.Calculated_Interest__c = null;
        acc.Email__c = 'test68@pairwise.test';
        acc.Loan_Interest_Rate__c = 0.159;
        acc.Loan_Type__c = 'Home Loan';
        acc.Remaining_Loan_Amount__c = null;
        acc.Total_Loan_Amount__c = null;
        
        
        try {
            update acc;
            Account testAcc = [SELECT name, balance__c, calculated_interest__c, email__c, interest_rate__c, loan_interest_rate__c, loan_type__c, remaining_loan_amount__c, total_loan_amount__c, active__c FROM Account WHERE name='' LIMIT 1];
            System.assertEquals(acc.Name, testAcc.Name);
            System.assertEquals(acc.Balance__c, testAcc.Balance__c);
            System.assertEquals(acc.Balance__c * 0.038, testAcc.Calculated_Interest__c);
            System.assertEquals(acc.Email__c, testAcc.Email__c);
            System.assertEquals(acc.Loan_Interest_Rate__c, testAcc.Loan_Interest_Rate__c);
            System.assertEquals(acc.Loan_Type__c, testAcc.Loan_Type__c);
            //System.assertEquals(acc.Remaining_Loan_Amount__c, testAcc.Remaining_Loan_Amount__c);
            System.assertEquals(acc.Total_Loan_Amount__c, testAcc.Total_Loan_Amount__c);
        } catch (Exception e) {
            System.assert(false, e.getMessage());
        }
        Test.stopTest();
    }
    

    @isTest
    public static void testAccount_69() {
        Test.startTest();
        Account acc = new Account();
        acc.Name = 'ToUpdate Account';
        acc.Balance__c = 100;
        acc.RecordTypeId = Schema.SObjectType.Account.getRecordTypeInfosByName().get('>=$0').getRecordTypeId();
        acc.Email__c = 'testUpdate@pairwise.test';
        acc.Active__c = 'Yes';
        insert acc;
        
        acc.Name = '';
        acc.Balance__c = 169;
        acc.Calculated_Interest__c = 7;
        acc.Email__c = '';
        acc.Loan_Interest_Rate__c = 0.162;
        acc.Loan_Type__c = 'Car Loan';
        acc.Remaining_Loan_Amount__c = null;
        acc.Total_Loan_Amount__c = 72925;
        
        
        try {
            update acc;
            Account testAcc = [SELECT name, balance__c, calculated_interest__c, email__c, interest_rate__c, loan_interest_rate__c, loan_type__c, remaining_loan_amount__c, total_loan_amount__c, active__c FROM Account WHERE name='' LIMIT 1];
            System.assertEquals(acc.Name, testAcc.Name);
            System.assertEquals(acc.Balance__c, testAcc.Balance__c);
            System.assertEquals(acc.Balance__c * 0.038, testAcc.Calculated_Interest__c);
            System.assertEquals(acc.Email__c, testAcc.Email__c);
            System.assertEquals(acc.Loan_Interest_Rate__c, testAcc.Loan_Interest_Rate__c);
            System.assertEquals(acc.Loan_Type__c, testAcc.Loan_Type__c);
            //System.assertEquals(acc.Remaining_Loan_Amount__c, testAcc.Remaining_Loan_Amount__c);
            System.assertEquals(acc.Total_Loan_Amount__c, testAcc.Total_Loan_Amount__c);
        } catch (Exception e) {
            System.assert(false, e.getMessage());
        }
        Test.stopTest();
    }
    

    @isTest
    public static void testAccount_70() {
        Test.startTest();
        Account acc = new Account();
        acc.Name = 'ToUpdate Account';
        acc.Balance__c = 100;
        acc.RecordTypeId = Schema.SObjectType.Account.getRecordTypeInfosByName().get('Blank').getRecordTypeId();
        acc.Email__c = 'testUpdate@pairwise.test';
        acc.Active__c = 'Yes';
        insert acc;
        
        acc.Name = '';
        acc.Balance__c = 100;
        acc.Calculated_Interest__c = 7;
        acc.Email__c = '';
        acc.Loan_Interest_Rate__c = 0.146;
        acc.Loan_Type__c = 'Car Loan';
        acc.Remaining_Loan_Amount__c = null;
        acc.Total_Loan_Amount__c = 75549;
        
        
        try {
            update acc;
            Account testAcc = [SELECT name, balance__c, calculated_interest__c, email__c, interest_rate__c, loan_interest_rate__c, loan_type__c, remaining_loan_amount__c, total_loan_amount__c, active__c FROM Account WHERE name='' LIMIT 1];
            System.assertEquals(acc.Name, testAcc.Name);
            System.assertEquals(acc.Balance__c, testAcc.Balance__c);
            System.assertEquals(acc.Balance__c * 0.038, testAcc.Calculated_Interest__c);
            System.assertEquals(acc.Email__c, testAcc.Email__c);
            System.assertEquals(acc.Loan_Interest_Rate__c, testAcc.Loan_Interest_Rate__c);
            System.assertEquals(acc.Loan_Type__c, testAcc.Loan_Type__c);
            //System.assertEquals(acc.Remaining_Loan_Amount__c, testAcc.Remaining_Loan_Amount__c);
            System.assertEquals(acc.Total_Loan_Amount__c, testAcc.Total_Loan_Amount__c);
        } catch (Exception e) {
            System.assert(false, e.getMessage());
        }
        Test.stopTest();
    }
    

    @isTest
    public static void testAccount_71() {
        Test.startTest();
        Account acc = new Account();
        acc.Name = '';
        acc.Balance__c = 114;
        acc.RecordTypeId = Schema.SObjectType.Account.getRecordTypeInfosByName().get('>=$0').getRecordTypeId();
        acc.Calculated_Interest__c = null;
        acc.Email__c = '';
        acc.Loan_Interest_Rate__c = 0.11800000000000001;
        acc.Loan_Type__c = '';
        //acc.Remaining_Loan_Amount__c = null;
        acc.Total_Loan_Amount__c = null;
        acc.Active__c = 'Yes';
        
        
        try {
            insert acc;
            Account testAcc = [SELECT name, balance__c, calculated_interest__c, email__c, interest_rate__c, loan_interest_rate__c, loan_type__c, remaining_loan_amount__c, total_loan_amount__c, active__c FROM Account WHERE name='' LIMIT 1];
            System.assertEquals(acc.Name, testAcc.Name);
            System.assertEquals(acc.Balance__c, testAcc.Balance__c);
            System.assertEquals(acc.Balance__c * 0.06, testAcc.Calculated_Interest__c);
            System.assertEquals(acc.Email__c, testAcc.Email__c);
            System.assertEquals(acc.Loan_Interest_Rate__c, testAcc.Loan_Interest_Rate__c);
            System.assertEquals(acc.Loan_Type__c, testAcc.Loan_Type__c);
            //System.assertEquals(acc.Remaining_Loan_Amount__c, testAcc.Remaining_Loan_Amount__c);
            System.assertEquals(acc.Total_Loan_Amount__c, testAcc.Total_Loan_Amount__c);
        } catch (Exception e) {
            System.assert(false, e.getMessage());
        }
        Test.stopTest();
    }
    

    @isTest
    public static void testAccount_72() {
        Test.startTest();
        Account acc = new Account();
        acc.Name = '';
        acc.Balance__c = 154;
        acc.RecordTypeId = Schema.SObjectType.Account.getRecordTypeInfosByName().get('>=$100').getRecordTypeId();
        acc.Calculated_Interest__c = null;
        acc.Email__c = '';
        acc.Loan_Interest_Rate__c = 0.07;
        acc.Loan_Type__c = 'Home Loan';
        //acc.Remaining_Loan_Amount__c = null;
        acc.Total_Loan_Amount__c = 8889633;
        acc.Active__c = 'Yes';
        
        
        try {
            insert acc;
            Account testAcc = [SELECT name, balance__c, calculated_interest__c, email__c, interest_rate__c, loan_interest_rate__c, loan_type__c, remaining_loan_amount__c, total_loan_amount__c, active__c FROM Account WHERE name='' LIMIT 1];
            System.assertEquals(acc.Name, testAcc.Name);
            System.assertEquals(acc.Balance__c, testAcc.Balance__c);
            System.assertEquals(acc.Balance__c * 0.05, testAcc.Calculated_Interest__c);
            System.assertEquals(acc.Email__c, testAcc.Email__c);
            System.assertEquals(acc.Loan_Interest_Rate__c, testAcc.Loan_Interest_Rate__c);
            System.assertEquals(acc.Loan_Type__c, testAcc.Loan_Type__c);
            //System.assertEquals(acc.Remaining_Loan_Amount__c, testAcc.Remaining_Loan_Amount__c);
            System.assertEquals(acc.Total_Loan_Amount__c, testAcc.Total_Loan_Amount__c);
        } catch (Exception e) {
            System.assert(false, e.getMessage());
        }
        Test.stopTest();
    }
    

    @isTest
    public static void testAccount_73() {
        Test.startTest();
        Account acc = new Account();
        acc.Name = 'ToUpdate Account';
        acc.Balance__c = 100;
        acc.RecordTypeId = Schema.SObjectType.Account.getRecordTypeInfosByName().get('Blank').getRecordTypeId();
        acc.Email__c = 'testUpdate@pairwise.test';
        acc.Active__c = 'Yes';
        insert acc;
        
        acc.Name = '';
        acc.Balance__c = 165;
        acc.Calculated_Interest__c = null;
        acc.Email__c = '';
        acc.Loan_Interest_Rate__c = 0.07;
        acc.Loan_Type__c = 'Car Loan';
        acc.Remaining_Loan_Amount__c = null;
        acc.Total_Loan_Amount__c = 831537;
        
        
        try {
            update acc;
            Account testAcc = [SELECT name, balance__c, calculated_interest__c, email__c, interest_rate__c, loan_interest_rate__c, loan_type__c, remaining_loan_amount__c, total_loan_amount__c, active__c FROM Account WHERE name='' LIMIT 1];
            System.assertEquals(acc.Name, testAcc.Name);
            System.assertEquals(acc.Balance__c, testAcc.Balance__c);
            System.assertEquals(acc.Balance__c * 0.06, testAcc.Calculated_Interest__c);
            System.assertEquals(acc.Email__c, testAcc.Email__c);
            System.assertEquals(acc.Loan_Interest_Rate__c, testAcc.Loan_Interest_Rate__c);
            System.assertEquals(acc.Loan_Type__c, testAcc.Loan_Type__c);
            //System.assertEquals(acc.Remaining_Loan_Amount__c, testAcc.Remaining_Loan_Amount__c);
            System.assertEquals(acc.Total_Loan_Amount__c, testAcc.Total_Loan_Amount__c);
        } catch (Exception e) {
            System.assert(false, e.getMessage());
        }
        Test.stopTest();
    }
    

    @isTest
    public static void testAccount_74() {
        Test.startTest();
        Account acc = new Account();
        acc.Name = 'ToUpdate Account';
        acc.Balance__c = 100;
        acc.RecordTypeId = Schema.SObjectType.Account.getRecordTypeInfosByName().get('Blank').getRecordTypeId();
        acc.Email__c = 'testUpdate@pairwise.test';
        acc.Active__c = 'Yes';
        insert acc;
        
        acc.Name = '';
        acc.Balance__c = 107;
        acc.Calculated_Interest__c = null;
        acc.Email__c = '';
        acc.Loan_Interest_Rate__c = 0.07;
        acc.Loan_Type__c = 'Car Loan';
        acc.Remaining_Loan_Amount__c = null;
        acc.Total_Loan_Amount__c = 34157;
        
        
        try {
            update acc;
            Account testAcc = [SELECT name, balance__c, calculated_interest__c, email__c, interest_rate__c, loan_interest_rate__c, loan_type__c, remaining_loan_amount__c, total_loan_amount__c, active__c FROM Account WHERE name='' LIMIT 1];
            System.assertEquals(acc.Name, testAcc.Name);
            System.assertEquals(acc.Balance__c, testAcc.Balance__c);
            System.assertEquals(acc.Balance__c * 0.05, testAcc.Calculated_Interest__c);
            System.assertEquals(acc.Email__c, testAcc.Email__c);
            System.assertEquals(acc.Loan_Interest_Rate__c, testAcc.Loan_Interest_Rate__c);
            System.assertEquals(acc.Loan_Type__c, testAcc.Loan_Type__c);
            //System.assertEquals(acc.Remaining_Loan_Amount__c, testAcc.Remaining_Loan_Amount__c);
            System.assertEquals(acc.Total_Loan_Amount__c, testAcc.Total_Loan_Amount__c);
        } catch (Exception e) {
            System.assert(false, e.getMessage());
        }
        Test.stopTest();
    }
    

    @isTest
    public static void testAccount_75() {
        Test.startTest();
        Account acc = new Account();
        acc.Name = '';
        acc.Balance__c = 146;
        acc.RecordTypeId = Schema.SObjectType.Account.getRecordTypeInfosByName().get('>=$100').getRecordTypeId();
        acc.Calculated_Interest__c = null;
        acc.Email__c = '';
        acc.Loan_Interest_Rate__c = 0.162;
        acc.Loan_Type__c = 'Home Loan';
        //acc.Remaining_Loan_Amount__c = null;
        acc.Total_Loan_Amount__c = 583641;
        acc.Active__c = 'Yes';
        
        
        try {
            insert acc;
            Account testAcc = [SELECT name, balance__c, calculated_interest__c, email__c, interest_rate__c, loan_interest_rate__c, loan_type__c, remaining_loan_amount__c, total_loan_amount__c, active__c FROM Account WHERE name='' LIMIT 1];
            System.assertEquals(acc.Name, testAcc.Name);
            System.assertEquals(acc.Balance__c, testAcc.Balance__c);
            System.assertEquals(acc.Balance__c * 0.05, testAcc.Calculated_Interest__c);
            System.assertEquals(acc.Email__c, testAcc.Email__c);
            System.assertEquals(acc.Loan_Interest_Rate__c, testAcc.Loan_Interest_Rate__c);
            System.assertEquals(acc.Loan_Type__c, testAcc.Loan_Type__c);
            //System.assertEquals(acc.Remaining_Loan_Amount__c, testAcc.Remaining_Loan_Amount__c);
            System.assertEquals(acc.Total_Loan_Amount__c, testAcc.Total_Loan_Amount__c);
        } catch (Exception e) {
            System.assert(false, e.getMessage());
        }
        Test.stopTest();
    }
    

    @isTest
    public static void testAccount_76() {
        Test.startTest();
        Account acc = new Account();
        acc.Name = '';
        acc.Balance__c = 192;
        acc.RecordTypeId = Schema.SObjectType.Account.getRecordTypeInfosByName().get('>=$100').getRecordTypeId();
        acc.Calculated_Interest__c = null;
        acc.Email__c = 'test76@pairwise.test';
        acc.Loan_Interest_Rate__c = 0.11800000000000001;
        acc.Loan_Type__c = 'Car Loan';
        //acc.Remaining_Loan_Amount__c = null;
        acc.Total_Loan_Amount__c = null;
        acc.Active__c = 'Yes';
        
        
        try {
            insert acc;
            Account testAcc = [SELECT name, balance__c, calculated_interest__c, email__c, interest_rate__c, loan_interest_rate__c, loan_type__c, remaining_loan_amount__c, total_loan_amount__c, active__c FROM Account WHERE name='' LIMIT 1];
            System.assertEquals(acc.Name, testAcc.Name);
            System.assertEquals(acc.Balance__c, testAcc.Balance__c);
            System.assertEquals(acc.Balance__c * 0.05, testAcc.Calculated_Interest__c);
            System.assertEquals(acc.Email__c, testAcc.Email__c);
            System.assertEquals(acc.Loan_Interest_Rate__c, testAcc.Loan_Interest_Rate__c);
            System.assertEquals(acc.Loan_Type__c, testAcc.Loan_Type__c);
            //System.assertEquals(acc.Remaining_Loan_Amount__c, testAcc.Remaining_Loan_Amount__c);
            System.assertEquals(acc.Total_Loan_Amount__c, testAcc.Total_Loan_Amount__c);
        } catch (Exception e) {
            System.assert(false, e.getMessage());
        }
        Test.stopTest();
    }
    

    @isTest
    public static void testAccount_77() {
        Test.startTest();
        Account acc = new Account();
        acc.Name = '';
        acc.Balance__c = 120;
        acc.RecordTypeId = Schema.SObjectType.Account.getRecordTypeInfosByName().get('>=$100').getRecordTypeId();
        acc.Calculated_Interest__c = null;
        acc.Email__c = '';
        acc.Loan_Interest_Rate__c = 0.10300000000000001;
        acc.Loan_Type__c = 'Car Loan';
        //acc.Remaining_Loan_Amount__c = 15000000;
        acc.Total_Loan_Amount__c = 492805;
        acc.Active__c = 'Yes';
        
        
        try {
            insert acc;
            Account testAcc = [SELECT name, balance__c, calculated_interest__c, email__c, interest_rate__c, loan_interest_rate__c, loan_type__c, remaining_loan_amount__c, total_loan_amount__c, active__c FROM Account WHERE name='' LIMIT 1];
            System.assertEquals(acc.Name, testAcc.Name);
            System.assertEquals(acc.Balance__c, testAcc.Balance__c);
            System.assertEquals(acc.Balance__c * 0.038, testAcc.Calculated_Interest__c);
            System.assertEquals(acc.Email__c, testAcc.Email__c);
            System.assertEquals(acc.Loan_Interest_Rate__c, testAcc.Loan_Interest_Rate__c);
            System.assertEquals(acc.Loan_Type__c, testAcc.Loan_Type__c);
            //System.assertEquals(acc.Remaining_Loan_Amount__c, testAcc.Remaining_Loan_Amount__c);
            System.assertEquals(acc.Total_Loan_Amount__c, testAcc.Total_Loan_Amount__c);
        } catch (Exception e) {
            System.assert(false, e.getMessage());
        }
        Test.stopTest();
    }
    

    @isTest
    public static void testAccount_78() {
        Test.startTest();
        Account acc = new Account();
        acc.Name = '';
        acc.Balance__c = 155;
        acc.RecordTypeId = Schema.SObjectType.Account.getRecordTypeInfosByName().get('>=$100').getRecordTypeId();
        acc.Calculated_Interest__c = null;
        acc.Email__c = '';
        acc.Loan_Interest_Rate__c = 0.159;
        acc.Loan_Type__c = 'Home Loan';
        //acc.Remaining_Loan_Amount__c = 15000000;
        acc.Total_Loan_Amount__c = 64029;
        acc.Active__c = 'Yes';
        
        
        try {
            insert acc;
            Account testAcc = [SELECT name, balance__c, calculated_interest__c, email__c, interest_rate__c, loan_interest_rate__c, loan_type__c, remaining_loan_amount__c, total_loan_amount__c, active__c FROM Account WHERE name='' LIMIT 1];
            System.assertEquals(acc.Name, testAcc.Name);
            System.assertEquals(acc.Balance__c, testAcc.Balance__c);
            System.assertEquals(acc.Balance__c * 0.038, testAcc.Calculated_Interest__c);
            System.assertEquals(acc.Email__c, testAcc.Email__c);
            System.assertEquals(acc.Loan_Interest_Rate__c, testAcc.Loan_Interest_Rate__c);
            System.assertEquals(acc.Loan_Type__c, testAcc.Loan_Type__c);
            //System.assertEquals(acc.Remaining_Loan_Amount__c, testAcc.Remaining_Loan_Amount__c);
            System.assertEquals(acc.Total_Loan_Amount__c, testAcc.Total_Loan_Amount__c);
        } catch (Exception e) {
            System.assert(false, e.getMessage());
        }
        Test.stopTest();
    }
    

    @isTest
    public static void testAccount_79() {
        Test.startTest();
        Account acc = new Account();
        acc.Name = 'ToUpdate Account';
        acc.Balance__c = 100;
        acc.RecordTypeId = Schema.SObjectType.Account.getRecordTypeInfosByName().get('Blank').getRecordTypeId();
        acc.Email__c = 'testUpdate@pairwise.test';
        acc.Active__c = 'Yes';
        insert acc;
        
        acc.Name = '';
        acc.Balance__c = 180;
        acc.Calculated_Interest__c = 7;
        acc.Email__c = 'test79@pairwise.test';
        acc.Loan_Interest_Rate__c = 0.1;
        acc.Loan_Type__c = 'Home Loan';
        acc.Remaining_Loan_Amount__c = null;
        acc.Total_Loan_Amount__c = 27252;
        
        
        try {
            update acc;
            Account testAcc = [SELECT name, balance__c, calculated_interest__c, email__c, interest_rate__c, loan_interest_rate__c, loan_type__c, remaining_loan_amount__c, total_loan_amount__c, active__c FROM Account WHERE name='' LIMIT 1];
            System.assertEquals(acc.Name, testAcc.Name);
            System.assertEquals(acc.Balance__c, testAcc.Balance__c);
            System.assertEquals(acc.Balance__c * 0.038, testAcc.Calculated_Interest__c);
            System.assertEquals(acc.Email__c, testAcc.Email__c);
            System.assertEquals(acc.Loan_Interest_Rate__c, testAcc.Loan_Interest_Rate__c);
            System.assertEquals(acc.Loan_Type__c, testAcc.Loan_Type__c);
            //System.assertEquals(acc.Remaining_Loan_Amount__c, testAcc.Remaining_Loan_Amount__c);
            System.assertEquals(acc.Total_Loan_Amount__c, testAcc.Total_Loan_Amount__c);
        } catch (Exception e) {
            System.assert(false, e.getMessage());
        }
        Test.stopTest();
    }
    

    @isTest
    public static void testAccount_80() {
        Test.startTest();
        Account acc = new Account();
        acc.Name = '';
        acc.Balance__c = 195;
        acc.RecordTypeId = Schema.SObjectType.Account.getRecordTypeInfosByName().get('>=$0').getRecordTypeId();
        acc.Calculated_Interest__c = null;
        acc.Email__c = '';
        acc.Loan_Interest_Rate__c = 0.084;
        acc.Loan_Type__c = 'Car Loan';
        //acc.Remaining_Loan_Amount__c = null;
        acc.Total_Loan_Amount__c = 50695;
        acc.Active__c = 'Yes';
        
        
        try {
            insert acc;
            Account testAcc = [SELECT name, balance__c, calculated_interest__c, email__c, interest_rate__c, loan_interest_rate__c, loan_type__c, remaining_loan_amount__c, total_loan_amount__c, active__c FROM Account WHERE name='' LIMIT 1];
            System.assertEquals(acc.Name, testAcc.Name);
            System.assertEquals(acc.Balance__c, testAcc.Balance__c);
            System.assertEquals(acc.Balance__c * 0.06, testAcc.Calculated_Interest__c);
            System.assertEquals(acc.Email__c, testAcc.Email__c);
            System.assertEquals(acc.Loan_Interest_Rate__c, testAcc.Loan_Interest_Rate__c);
            System.assertEquals(acc.Loan_Type__c, testAcc.Loan_Type__c);
            //System.assertEquals(acc.Remaining_Loan_Amount__c, testAcc.Remaining_Loan_Amount__c);
            System.assertEquals(acc.Total_Loan_Amount__c, testAcc.Total_Loan_Amount__c);
        } catch (Exception e) {
            System.assert(false, e.getMessage());
        }
        Test.stopTest();
    }
    

    @isTest
    public static void testAccount_81() {
        Test.startTest();
        Account acc = new Account();
        acc.Name = '';
        acc.Balance__c = 112;
        acc.RecordTypeId = Schema.SObjectType.Account.getRecordTypeInfosByName().get('>=$100').getRecordTypeId();
        acc.Calculated_Interest__c = 7;
        acc.Email__c = 'test81@pairwise.test';
        acc.Loan_Interest_Rate__c = 0.14;
        acc.Loan_Type__c = 'Car Loan';
        //acc.Remaining_Loan_Amount__c = null;
        acc.Total_Loan_Amount__c = 439665;
        acc.Active__c = 'Yes';
        
        
        try {
            insert acc;
            Account testAcc = [SELECT name, balance__c, calculated_interest__c, email__c, interest_rate__c, loan_interest_rate__c, loan_type__c, remaining_loan_amount__c, total_loan_amount__c, active__c FROM Account WHERE name='' LIMIT 1];
            System.assertEquals(acc.Name, testAcc.Name);
            System.assertEquals(acc.Balance__c, testAcc.Balance__c);
            System.assertEquals(acc.Balance__c * 0.038, testAcc.Calculated_Interest__c);
            System.assertEquals(acc.Email__c, testAcc.Email__c);
            System.assertEquals(acc.Loan_Interest_Rate__c, testAcc.Loan_Interest_Rate__c);
            System.assertEquals(acc.Loan_Type__c, testAcc.Loan_Type__c);
            //System.assertEquals(acc.Remaining_Loan_Amount__c, testAcc.Remaining_Loan_Amount__c);
            System.assertEquals(acc.Total_Loan_Amount__c, testAcc.Total_Loan_Amount__c);
        } catch (Exception e) {
            System.assert(false, e.getMessage());
        }
        Test.stopTest();
    }
    

    @isTest
    public static void testAccount_82() {
        Test.startTest();
        Account acc = new Account();
        acc.Name = 'ToUpdate Account';
        acc.Balance__c = 100;
        acc.RecordTypeId = Schema.SObjectType.Account.getRecordTypeInfosByName().get('>=$0').getRecordTypeId();
        acc.Email__c = 'testUpdate@pairwise.test';
        acc.Active__c = 'Yes';
        insert acc;
        
        acc.Name = '';
        acc.Balance__c = 100;
        acc.Calculated_Interest__c = 7;
        acc.Email__c = '';
        acc.Loan_Interest_Rate__c = 0.109;
        acc.Loan_Type__c = 'Car Loan';
        acc.Remaining_Loan_Amount__c = null;
        acc.Total_Loan_Amount__c = 337787;
        
        
        try {
            update acc;
            Account testAcc = [SELECT name, balance__c, calculated_interest__c, email__c, interest_rate__c, loan_interest_rate__c, loan_type__c, remaining_loan_amount__c, total_loan_amount__c, active__c FROM Account WHERE name='' LIMIT 1];
            System.assertEquals(acc.Name, testAcc.Name);
            System.assertEquals(acc.Balance__c, testAcc.Balance__c);
            System.assertEquals(acc.Balance__c * 0.05, testAcc.Calculated_Interest__c);
            System.assertEquals(acc.Email__c, testAcc.Email__c);
            System.assertEquals(acc.Loan_Interest_Rate__c, testAcc.Loan_Interest_Rate__c);
            System.assertEquals(acc.Loan_Type__c, testAcc.Loan_Type__c);
            //System.assertEquals(acc.Remaining_Loan_Amount__c, testAcc.Remaining_Loan_Amount__c);
            System.assertEquals(acc.Total_Loan_Amount__c, testAcc.Total_Loan_Amount__c);
        } catch (Exception e) {
            System.assert(false, e.getMessage());
        }
        Test.stopTest();
    }
    

    @isTest
    public static void testAccount_83() {
        Test.startTest();
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
        acc.Email__c = '';
        acc.Loan_Interest_Rate__c = 0.146;
        acc.Loan_Type__c = 'Home Loan';
        acc.Remaining_Loan_Amount__c = 15000000;
        acc.Total_Loan_Amount__c = 9591298;
        
        
        try {
            update acc;
            Account testAcc = [SELECT name, balance__c, calculated_interest__c, email__c, interest_rate__c, loan_interest_rate__c, loan_type__c, remaining_loan_amount__c, total_loan_amount__c, active__c FROM Account WHERE name='' LIMIT 1];
            System.assertEquals(acc.Name, testAcc.Name);
            System.assertEquals(acc.Balance__c, testAcc.Balance__c);
            System.assertEquals(acc.Balance__c * 0.05, testAcc.Calculated_Interest__c);
            System.assertEquals(acc.Email__c, testAcc.Email__c);
            System.assertEquals(acc.Loan_Interest_Rate__c, testAcc.Loan_Interest_Rate__c);
            System.assertEquals(acc.Loan_Type__c, testAcc.Loan_Type__c);
            //System.assertEquals(acc.Remaining_Loan_Amount__c, testAcc.Remaining_Loan_Amount__c);
            System.assertEquals(acc.Total_Loan_Amount__c, testAcc.Total_Loan_Amount__c);
        } catch (Exception e) {
            System.assert(false, e.getMessage());
        }
        Test.stopTest();
    }
    

    @isTest
    public static void testAccount_84() {
        Test.startTest();
        Account acc = new Account();
        acc.Name = 'ToUpdate Account';
        acc.Balance__c = 100;
        acc.RecordTypeId = Schema.SObjectType.Account.getRecordTypeInfosByName().get('Blank').getRecordTypeId();
        acc.Email__c = 'testUpdate@pairwise.test';
        acc.Active__c = 'Yes';
        insert acc;
        
        acc.Name = '';
        acc.Balance__c = 100;
        acc.Calculated_Interest__c = 7;
        acc.Email__c = 'test84@pairwise.test';
        acc.Loan_Interest_Rate__c = null;
        acc.Loan_Type__c = 'Car Loan';
        acc.Remaining_Loan_Amount__c = null;
        acc.Total_Loan_Amount__c = 443778;
        
        
        try {
            update acc;
            Account testAcc = [SELECT name, balance__c, calculated_interest__c, email__c, interest_rate__c, loan_interest_rate__c, loan_type__c, remaining_loan_amount__c, total_loan_amount__c, active__c FROM Account WHERE name='' LIMIT 1];
            System.assertEquals(acc.Name, testAcc.Name);
            System.assertEquals(acc.Balance__c, testAcc.Balance__c);
            System.assertEquals(acc.Balance__c * 0.038, testAcc.Calculated_Interest__c);
            System.assertEquals(acc.Email__c, testAcc.Email__c);
            System.assertEquals(acc.Loan_Interest_Rate__c, testAcc.Loan_Interest_Rate__c);
            System.assertEquals(acc.Loan_Type__c, testAcc.Loan_Type__c);
            //System.assertEquals(acc.Remaining_Loan_Amount__c, testAcc.Remaining_Loan_Amount__c);
            System.assertEquals(acc.Total_Loan_Amount__c, testAcc.Total_Loan_Amount__c);
        } catch (Exception e) {
            System.assert(false, e.getMessage());
        }
        Test.stopTest();
    }
    

    @isTest
    public static void testAccount_85() {
        Test.startTest();
        Account acc = new Account();
        acc.Name = '';
        acc.Balance__c = 128;
        acc.RecordTypeId = Schema.SObjectType.Account.getRecordTypeInfosByName().get('>=$100').getRecordTypeId();
        acc.Calculated_Interest__c = null;
        acc.Email__c = 'test85@pairwise.test';
        acc.Loan_Interest_Rate__c = null;
        acc.Loan_Type__c = 'Home Loan';
        //acc.Remaining_Loan_Amount__c = 15000000;
        acc.Total_Loan_Amount__c = 4891531;
        acc.Active__c = 'Yes';
        
        
        try {
            insert acc;
            Account testAcc = [SELECT name, balance__c, calculated_interest__c, email__c, interest_rate__c, loan_interest_rate__c, loan_type__c, remaining_loan_amount__c, total_loan_amount__c, active__c FROM Account WHERE name='' LIMIT 1];
            System.assertEquals(acc.Name, testAcc.Name);
            System.assertEquals(acc.Balance__c, testAcc.Balance__c);
            System.assertEquals(acc.Balance__c * 0.05, testAcc.Calculated_Interest__c);
            System.assertEquals(acc.Email__c, testAcc.Email__c);
            System.assertEquals(acc.Loan_Interest_Rate__c, testAcc.Loan_Interest_Rate__c);
            System.assertEquals(acc.Loan_Type__c, testAcc.Loan_Type__c);
            //System.assertEquals(acc.Remaining_Loan_Amount__c, testAcc.Remaining_Loan_Amount__c);
            System.assertEquals(acc.Total_Loan_Amount__c, testAcc.Total_Loan_Amount__c);
        } catch (Exception e) {
            System.assert(false, e.getMessage());
        }
        Test.stopTest();
    }
    

    @isTest
    public static void testAccount_86() {
        Test.startTest();
        Account acc = new Account();
        acc.Name = 'ToUpdate Account';
        acc.Balance__c = 100;
        acc.RecordTypeId = Schema.SObjectType.Account.getRecordTypeInfosByName().get('Negative').getRecordTypeId();
        acc.Email__c = 'testUpdate@pairwise.test';
        acc.Active__c = 'Yes';
        insert acc;
        
        acc.Name = '';
        acc.Balance__c = 130;
        acc.Calculated_Interest__c = 7;
        acc.Email__c = 'test86@pairwise.test';
        acc.Loan_Interest_Rate__c = 0.1;
        acc.Loan_Type__c = 'Home Loan';
        acc.Remaining_Loan_Amount__c = null;
        acc.Total_Loan_Amount__c = 316323;
        
        
        try {
            update acc;
            Account testAcc = [SELECT name, balance__c, calculated_interest__c, email__c, interest_rate__c, loan_interest_rate__c, loan_type__c, remaining_loan_amount__c, total_loan_amount__c, active__c FROM Account WHERE name='' LIMIT 1];
            System.assertEquals(acc.Name, testAcc.Name);
            System.assertEquals(acc.Balance__c, testAcc.Balance__c);
            System.assertEquals(acc.Balance__c * 0.05, testAcc.Calculated_Interest__c);
            System.assertEquals(acc.Email__c, testAcc.Email__c);
            System.assertEquals(acc.Loan_Interest_Rate__c, testAcc.Loan_Interest_Rate__c);
            System.assertEquals(acc.Loan_Type__c, testAcc.Loan_Type__c);
            //System.assertEquals(acc.Remaining_Loan_Amount__c, testAcc.Remaining_Loan_Amount__c);
            System.assertEquals(acc.Total_Loan_Amount__c, testAcc.Total_Loan_Amount__c);
        } catch (Exception e) {
            System.assert(false, e.getMessage());
        }
        Test.stopTest();
    }
    

    @isTest
    public static void testAccount_87() {
        Test.startTest();
        Account acc = new Account();
        acc.Name = '';
        acc.Balance__c = 120;
        acc.RecordTypeId = Schema.SObjectType.Account.getRecordTypeInfosByName().get('>=$0').getRecordTypeId();
        acc.Calculated_Interest__c = 7;
        acc.Email__c = '';
        acc.Loan_Interest_Rate__c = 0.11900000000000001;
        acc.Loan_Type__c = 'Car Loan';
        //acc.Remaining_Loan_Amount__c = 15000000;
        acc.Total_Loan_Amount__c = 956322;
        acc.Active__c = 'Yes';
        
        
        try {
            insert acc;
            Account testAcc = [SELECT name, balance__c, calculated_interest__c, email__c, interest_rate__c, loan_interest_rate__c, loan_type__c, remaining_loan_amount__c, total_loan_amount__c, active__c FROM Account WHERE name='' LIMIT 1];
            System.assertEquals(acc.Name, testAcc.Name);
            System.assertEquals(acc.Balance__c, testAcc.Balance__c);
            System.assertEquals(acc.Balance__c * 0.06, testAcc.Calculated_Interest__c);
            System.assertEquals(acc.Email__c, testAcc.Email__c);
            System.assertEquals(acc.Loan_Interest_Rate__c, testAcc.Loan_Interest_Rate__c);
            System.assertEquals(acc.Loan_Type__c, testAcc.Loan_Type__c);
            //System.assertEquals(acc.Remaining_Loan_Amount__c, testAcc.Remaining_Loan_Amount__c);
            System.assertEquals(acc.Total_Loan_Amount__c, testAcc.Total_Loan_Amount__c);
        } catch (Exception e) {
            System.assert(false, e.getMessage());
        }
        Test.stopTest();
    }
    

    @isTest
    public static void testAccount_88() {
        Test.startTest();
        Account acc = new Account();
        acc.Name = 'ToUpdate Account';
        acc.Balance__c = 100;
        acc.RecordTypeId = Schema.SObjectType.Account.getRecordTypeInfosByName().get('>=$0').getRecordTypeId();
        acc.Email__c = 'testUpdate@pairwise.test';
        acc.Active__c = 'Yes';
        insert acc;
        
        acc.Name = '';
        acc.Balance__c = 148;
        acc.Calculated_Interest__c = 7;
        acc.Email__c = 'test88@pairwise.test';
        acc.Loan_Interest_Rate__c = 0.10300000000000001;
        acc.Loan_Type__c = 'Car Loan';
        acc.Remaining_Loan_Amount__c = 15000000;
        acc.Total_Loan_Amount__c = 825113;
        
        
        try {
            update acc;
            Account testAcc = [SELECT name, balance__c, calculated_interest__c, email__c, interest_rate__c, loan_interest_rate__c, loan_type__c, remaining_loan_amount__c, total_loan_amount__c, active__c FROM Account WHERE name='' LIMIT 1];
            System.assertEquals(acc.Name, testAcc.Name);
            System.assertEquals(acc.Balance__c, testAcc.Balance__c);
            System.assertEquals(acc.Balance__c * 0.06, testAcc.Calculated_Interest__c);
            System.assertEquals(acc.Email__c, testAcc.Email__c);
            System.assertEquals(acc.Loan_Interest_Rate__c, testAcc.Loan_Interest_Rate__c);
            System.assertEquals(acc.Loan_Type__c, testAcc.Loan_Type__c);
            //System.assertEquals(acc.Remaining_Loan_Amount__c, testAcc.Remaining_Loan_Amount__c);
            System.assertEquals(acc.Total_Loan_Amount__c, testAcc.Total_Loan_Amount__c);
        } catch (Exception e) {
            System.assert(false, e.getMessage());
        }
        Test.stopTest();
    }
    

    @isTest
    public static void testAccount_89() {
        Test.startTest();
        Account acc = new Account();
        acc.Name = 'ToUpdate Account';
        acc.Balance__c = 100;
        acc.RecordTypeId = Schema.SObjectType.Account.getRecordTypeInfosByName().get('Blank').getRecordTypeId();
        acc.Email__c = 'testUpdate@pairwise.test';
        acc.Active__c = 'Yes';
        insert acc;
        
        acc.Name = '';
        acc.Balance__c = 112;
        acc.Calculated_Interest__c = null;
        acc.Email__c = 'test89@pairwise.test';
        acc.Loan_Interest_Rate__c = 0.10300000000000001;
        acc.Loan_Type__c = 'Home Loan';
        acc.Remaining_Loan_Amount__c = null;
        acc.Total_Loan_Amount__c = 27282;
        
        
        try {
            update acc;
            Account testAcc = [SELECT name, balance__c, calculated_interest__c, email__c, interest_rate__c, loan_interest_rate__c, loan_type__c, remaining_loan_amount__c, total_loan_amount__c, active__c FROM Account WHERE name='' LIMIT 1];
            System.assertEquals(acc.Name, testAcc.Name);
            System.assertEquals(acc.Balance__c, testAcc.Balance__c);
            System.assertEquals(acc.Balance__c * 0.038, testAcc.Calculated_Interest__c);
            System.assertEquals(acc.Email__c, testAcc.Email__c);
            System.assertEquals(acc.Loan_Interest_Rate__c, testAcc.Loan_Interest_Rate__c);
            System.assertEquals(acc.Loan_Type__c, testAcc.Loan_Type__c);
            //System.assertEquals(acc.Remaining_Loan_Amount__c, testAcc.Remaining_Loan_Amount__c);
            System.assertEquals(acc.Total_Loan_Amount__c, testAcc.Total_Loan_Amount__c);
        } catch (Exception e) {
            System.assert(false, e.getMessage());
        }
        Test.stopTest();
    }
    

    @isTest
    public static void testAccount_90() {
        Test.startTest();
        Account acc = new Account();
        acc.Name = 'ToUpdate Account';
        acc.Balance__c = 100;
        acc.RecordTypeId = Schema.SObjectType.Account.getRecordTypeInfosByName().get('Blank').getRecordTypeId();
        acc.Email__c = 'testUpdate@pairwise.test';
        acc.Active__c = 'Yes';
        insert acc;
        
        acc.Name = '';
        acc.Balance__c = 190;
        acc.Calculated_Interest__c = 7;
        acc.Email__c = '';
        acc.Loan_Interest_Rate__c = 0.11800000000000001;
        acc.Loan_Type__c = 'Home Loan';
        acc.Remaining_Loan_Amount__c = 15000000;
        acc.Total_Loan_Amount__c = 9449580;
        
        
        try {
            update acc;
            Account testAcc = [SELECT name, balance__c, calculated_interest__c, email__c, interest_rate__c, loan_interest_rate__c, loan_type__c, remaining_loan_amount__c, total_loan_amount__c, active__c FROM Account WHERE name='' LIMIT 1];
            System.assertEquals(acc.Name, testAcc.Name);
            System.assertEquals(acc.Balance__c, testAcc.Balance__c);
            System.assertEquals(acc.Balance__c * 0.05, testAcc.Calculated_Interest__c);
            System.assertEquals(acc.Email__c, testAcc.Email__c);
            System.assertEquals(acc.Loan_Interest_Rate__c, testAcc.Loan_Interest_Rate__c);
            System.assertEquals(acc.Loan_Type__c, testAcc.Loan_Type__c);
            //System.assertEquals(acc.Remaining_Loan_Amount__c, testAcc.Remaining_Loan_Amount__c);
            System.assertEquals(acc.Total_Loan_Amount__c, testAcc.Total_Loan_Amount__c);
        } catch (Exception e) {
            System.assert(false, e.getMessage());
        }
        Test.stopTest();
    }
    

    @isTest
    public static void testAccount_91() {
        Test.startTest();
        Account acc = new Account();
        acc.Name = '';
        acc.Balance__c = 177;
        acc.RecordTypeId = Schema.SObjectType.Account.getRecordTypeInfosByName().get('>=$0').getRecordTypeId();
        acc.Calculated_Interest__c = null;
        acc.Email__c = '';
        acc.Loan_Interest_Rate__c = 107;
        acc.Loan_Type__c = 'Home Loan';
        //acc.Remaining_Loan_Amount__c = null;
        acc.Total_Loan_Amount__c = 479387;
        acc.Active__c = 'Yes';
        
        
        try {
            insert acc;
            Account testAcc = [SELECT name, balance__c, calculated_interest__c, email__c, interest_rate__c, loan_interest_rate__c, loan_type__c, remaining_loan_amount__c, total_loan_amount__c, active__c FROM Account WHERE name='' LIMIT 1];
            System.assertEquals(acc.Name, testAcc.Name);
            System.assertEquals(acc.Balance__c, testAcc.Balance__c);
            System.assertEquals(acc.Balance__c * 0.06, testAcc.Calculated_Interest__c);
            System.assertEquals(acc.Email__c, testAcc.Email__c);
            System.assertEquals(acc.Loan_Interest_Rate__c, testAcc.Loan_Interest_Rate__c);
            System.assertEquals(acc.Loan_Type__c, testAcc.Loan_Type__c);
            //System.assertEquals(acc.Remaining_Loan_Amount__c, testAcc.Remaining_Loan_Amount__c);
            System.assertEquals(acc.Total_Loan_Amount__c, testAcc.Total_Loan_Amount__c);
        } catch (Exception e) {
            System.assert(false, e.getMessage());
        }
        Test.stopTest();
    }
    

    @isTest
    public static void testAccount_92() {
        Test.startTest();
        Account acc = new Account();
        acc.Name = 'ToUpdate Account';
        acc.Balance__c = 100;
        acc.RecordTypeId = Schema.SObjectType.Account.getRecordTypeInfosByName().get('Blank').getRecordTypeId();
        acc.Email__c = 'testUpdate@pairwise.test';
        acc.Active__c = 'Yes';
        insert acc;
        
        acc.Name = '';
        acc.Balance__c = 138;
        acc.Calculated_Interest__c = 7;
        acc.Email__c = '';
        acc.Loan_Interest_Rate__c = 0.136;
        acc.Loan_Type__c = 'Home Loan';
        acc.Remaining_Loan_Amount__c = null;
        acc.Total_Loan_Amount__c = 30246;
        
        
        try {
            update acc;
            Account testAcc = [SELECT name, balance__c, calculated_interest__c, email__c, interest_rate__c, loan_interest_rate__c, loan_type__c, remaining_loan_amount__c, total_loan_amount__c, active__c FROM Account WHERE name='' LIMIT 1];
            System.assertEquals(acc.Name, testAcc.Name);
            System.assertEquals(acc.Balance__c, testAcc.Balance__c);
            System.assertEquals(acc.Balance__c * 0.038, testAcc.Calculated_Interest__c);
            System.assertEquals(acc.Email__c, testAcc.Email__c);
            System.assertEquals(acc.Loan_Interest_Rate__c, testAcc.Loan_Interest_Rate__c);
            System.assertEquals(acc.Loan_Type__c, testAcc.Loan_Type__c);
            //System.assertEquals(acc.Remaining_Loan_Amount__c, testAcc.Remaining_Loan_Amount__c);
            System.assertEquals(acc.Total_Loan_Amount__c, testAcc.Total_Loan_Amount__c);
        } catch (Exception e) {
            System.assert(false, e.getMessage());
        }
        Test.stopTest();
    }
    

    @isTest
    public static void testAccount_93() {
        Test.startTest();
        Account acc = new Account();
        acc.Name = 'ToUpdate Account';
        acc.Balance__c = 100;
        acc.RecordTypeId = Schema.SObjectType.Account.getRecordTypeInfosByName().get('Blank').getRecordTypeId();
        acc.Email__c = 'testUpdate@pairwise.test';
        acc.Active__c = 'Yes';
        insert acc;
        
        acc.Name = '';
        acc.Balance__c = 104;
        acc.Calculated_Interest__c = 7;
        acc.Email__c = '';
        acc.Loan_Interest_Rate__c = 0.125;
        acc.Loan_Type__c = 'Car Loan';
        acc.Remaining_Loan_Amount__c = null;
        acc.Total_Loan_Amount__c = 694453;
        
        
        try {
            update acc;
            Account testAcc = [SELECT name, balance__c, calculated_interest__c, email__c, interest_rate__c, loan_interest_rate__c, loan_type__c, remaining_loan_amount__c, total_loan_amount__c, active__c FROM Account WHERE name='' LIMIT 1];
            System.assertEquals(acc.Name, testAcc.Name);
            System.assertEquals(acc.Balance__c, testAcc.Balance__c);
            System.assertEquals(acc.Balance__c * 0.05, testAcc.Calculated_Interest__c);
            System.assertEquals(acc.Email__c, testAcc.Email__c);
            System.assertEquals(acc.Loan_Interest_Rate__c, testAcc.Loan_Interest_Rate__c);
            System.assertEquals(acc.Loan_Type__c, testAcc.Loan_Type__c);
            //System.assertEquals(acc.Remaining_Loan_Amount__c, testAcc.Remaining_Loan_Amount__c);
            System.assertEquals(acc.Total_Loan_Amount__c, testAcc.Total_Loan_Amount__c);
        } catch (Exception e) {
            System.assert(false, e.getMessage());
        }
        Test.stopTest();
    }
    

    @isTest
    public static void testAccount_94() {
        Test.startTest();
        Account acc = new Account();
        acc.Name = 'ToUpdate Account';
        acc.Balance__c = 100;
        acc.RecordTypeId = Schema.SObjectType.Account.getRecordTypeInfosByName().get('Blank').getRecordTypeId();
        acc.Email__c = 'testUpdate@pairwise.test';
        acc.Active__c = 'Yes';
        insert acc;
        
        acc.Name = '';
        acc.Balance__c = 192;
        acc.Calculated_Interest__c = null;
        acc.Email__c = 'test94@pairwise.test';
        acc.Loan_Interest_Rate__c = 0.084;
        acc.Loan_Type__c = '';
        acc.Remaining_Loan_Amount__c = 15000000;
        acc.Total_Loan_Amount__c = null;
        
        
        try {
            update acc;
            Account testAcc = [SELECT name, balance__c, calculated_interest__c, email__c, interest_rate__c, loan_interest_rate__c, loan_type__c, remaining_loan_amount__c, total_loan_amount__c, active__c FROM Account WHERE name='' LIMIT 1];
            System.assertEquals(acc.Name, testAcc.Name);
            System.assertEquals(acc.Balance__c, testAcc.Balance__c);
            System.assertEquals(acc.Balance__c * 0.05, testAcc.Calculated_Interest__c);
            System.assertEquals(acc.Email__c, testAcc.Email__c);
            System.assertEquals(acc.Loan_Interest_Rate__c, testAcc.Loan_Interest_Rate__c);
            System.assertEquals(acc.Loan_Type__c, testAcc.Loan_Type__c);
            //System.assertEquals(acc.Remaining_Loan_Amount__c, testAcc.Remaining_Loan_Amount__c);
            System.assertEquals(acc.Total_Loan_Amount__c, testAcc.Total_Loan_Amount__c);
        } catch (Exception e) {
            System.assert(false, e.getMessage());
        }
        Test.stopTest();
    }
    

    @isTest
    public static void testAccount_95() {
        Test.startTest();
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
        acc.Email__c = 'test95@pairwise.test';
        acc.Loan_Interest_Rate__c = null;
        acc.Loan_Type__c = 'Home Loan';
        acc.Remaining_Loan_Amount__c = null;
        acc.Total_Loan_Amount__c = 2180539;
        
        
        try {
            update acc;
            Account testAcc = [SELECT name, balance__c, calculated_interest__c, email__c, interest_rate__c, loan_interest_rate__c, loan_type__c, remaining_loan_amount__c, total_loan_amount__c, active__c FROM Account WHERE name='' LIMIT 1];
            System.assertEquals(acc.Name, testAcc.Name);
            System.assertEquals(acc.Balance__c, testAcc.Balance__c);
            System.assertEquals(acc.Balance__c * 0.06, testAcc.Calculated_Interest__c);
            System.assertEquals(acc.Email__c, testAcc.Email__c);
            System.assertEquals(acc.Loan_Interest_Rate__c, testAcc.Loan_Interest_Rate__c);
            System.assertEquals(acc.Loan_Type__c, testAcc.Loan_Type__c);
            //System.assertEquals(acc.Remaining_Loan_Amount__c, testAcc.Remaining_Loan_Amount__c);
            System.assertEquals(acc.Total_Loan_Amount__c, testAcc.Total_Loan_Amount__c);
        } catch (Exception e) {
            System.assert(false, e.getMessage());
        }
        Test.stopTest();
    }
    

    @isTest
    public static void testAccount_96() {
        Test.startTest();
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
        acc.Email__c = '';
        acc.Loan_Interest_Rate__c = 0.09;
        acc.Loan_Type__c = 'Home Loan';
        acc.Remaining_Loan_Amount__c = null;
        acc.Total_Loan_Amount__c = 781758;
        
        
        try {
            update acc;
            Account testAcc = [SELECT name, balance__c, calculated_interest__c, email__c, interest_rate__c, loan_interest_rate__c, loan_type__c, remaining_loan_amount__c, total_loan_amount__c, active__c FROM Account WHERE name='' LIMIT 1];
            System.assertEquals(acc.Name, testAcc.Name);
            System.assertEquals(acc.Balance__c, testAcc.Balance__c);
            System.assertEquals(acc.Balance__c * 0.06, testAcc.Calculated_Interest__c);
            System.assertEquals(acc.Email__c, testAcc.Email__c);
            System.assertEquals(acc.Loan_Interest_Rate__c, testAcc.Loan_Interest_Rate__c);
            System.assertEquals(acc.Loan_Type__c, testAcc.Loan_Type__c);
            //System.assertEquals(acc.Remaining_Loan_Amount__c, testAcc.Remaining_Loan_Amount__c);
            System.assertEquals(acc.Total_Loan_Amount__c, testAcc.Total_Loan_Amount__c);
        } catch (Exception e) {
            System.assert(false, e.getMessage());
        }
        Test.stopTest();
    }
    

    @isTest
    public static void testAccount_97() {
        Test.startTest();
        Account acc = new Account();
        acc.Name = 'ToUpdate Account';
        acc.Balance__c = 100;
        acc.RecordTypeId = Schema.SObjectType.Account.getRecordTypeInfosByName().get('Negative').getRecordTypeId();
        acc.Email__c = 'testUpdate@pairwise.test';
        acc.Active__c = 'Yes';
        insert acc;
        
        acc.Name = '';
        acc.Balance__c = 144;
        acc.Calculated_Interest__c = 7;
        acc.Email__c = '';
        acc.Loan_Interest_Rate__c = 0.146;
        acc.Loan_Type__c = 'Home Loan';
        acc.Remaining_Loan_Amount__c = null;
        acc.Total_Loan_Amount__c = 434895;
        
        
        try {
            update acc;
            Account testAcc = [SELECT name, balance__c, calculated_interest__c, email__c, interest_rate__c, loan_interest_rate__c, loan_type__c, remaining_loan_amount__c, total_loan_amount__c, active__c FROM Account WHERE name='' LIMIT 1];
            System.assertEquals(acc.Name, testAcc.Name);
            System.assertEquals(acc.Balance__c, testAcc.Balance__c);
            System.assertEquals(acc.Balance__c * 0.038, testAcc.Calculated_Interest__c);
            System.assertEquals(acc.Email__c, testAcc.Email__c);
            System.assertEquals(acc.Loan_Interest_Rate__c, testAcc.Loan_Interest_Rate__c);
            System.assertEquals(acc.Loan_Type__c, testAcc.Loan_Type__c);
            //System.assertEquals(acc.Remaining_Loan_Amount__c, testAcc.Remaining_Loan_Amount__c);
            System.assertEquals(acc.Total_Loan_Amount__c, testAcc.Total_Loan_Amount__c);
        } catch (Exception e) {
            System.assert(false, e.getMessage());
        }
        Test.stopTest();
    }
    

    @isTest
    public static void testAccount_98() {
        Test.startTest();
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
        acc.Email__c = 'test98@pairwise.test';
        acc.Loan_Interest_Rate__c = 0.159;
        acc.Loan_Type__c = 'Home Loan';
        acc.Remaining_Loan_Amount__c = null;
        acc.Total_Loan_Amount__c = 3881926;
        
        
        try {
            update acc;
            Account testAcc = [SELECT name, balance__c, calculated_interest__c, email__c, interest_rate__c, loan_interest_rate__c, loan_type__c, remaining_loan_amount__c, total_loan_amount__c, active__c FROM Account WHERE name='' LIMIT 1];
            System.assertEquals(acc.Name, testAcc.Name);
            System.assertEquals(acc.Balance__c, testAcc.Balance__c);
            System.assertEquals(acc.Balance__c * 0.05, testAcc.Calculated_Interest__c);
            System.assertEquals(acc.Email__c, testAcc.Email__c);
            System.assertEquals(acc.Loan_Interest_Rate__c, testAcc.Loan_Interest_Rate__c);
            System.assertEquals(acc.Loan_Type__c, testAcc.Loan_Type__c);
            //System.assertEquals(acc.Remaining_Loan_Amount__c, testAcc.Remaining_Loan_Amount__c);
            System.assertEquals(acc.Total_Loan_Amount__c, testAcc.Total_Loan_Amount__c);
        } catch (Exception e) {
            System.assert(false, e.getMessage());
        }
        Test.stopTest();
    }
    

    @isTest
    public static void testAccount_99() {
        Test.startTest();
        Account acc = new Account();
        acc.Name = '';
        acc.Balance__c = 187;
        acc.RecordTypeId = Schema.SObjectType.Account.getRecordTypeInfosByName().get('>=$100').getRecordTypeId();
        acc.Calculated_Interest__c = null;
        acc.Email__c = '';
        acc.Loan_Interest_Rate__c = 0.1;
        acc.Loan_Type__c = 'Home Loan';
        //acc.Remaining_Loan_Amount__c = 15000000;
        acc.Total_Loan_Amount__c = null;
        acc.Active__c = 'Yes';
        
        
        try {
            insert acc;
            Account testAcc = [SELECT name, balance__c, calculated_interest__c, email__c, interest_rate__c, loan_interest_rate__c, loan_type__c, remaining_loan_amount__c, total_loan_amount__c, active__c FROM Account WHERE name='' LIMIT 1];
            System.assertEquals(acc.Name, testAcc.Name);
            System.assertEquals(acc.Balance__c, testAcc.Balance__c);
            System.assertEquals(acc.Balance__c * 0.05, testAcc.Calculated_Interest__c);
            System.assertEquals(acc.Email__c, testAcc.Email__c);
            System.assertEquals(acc.Loan_Interest_Rate__c, testAcc.Loan_Interest_Rate__c);
            System.assertEquals(acc.Loan_Type__c, testAcc.Loan_Type__c);
            //System.assertEquals(acc.Remaining_Loan_Amount__c, testAcc.Remaining_Loan_Amount__c);
            System.assertEquals(acc.Total_Loan_Amount__c, testAcc.Total_Loan_Amount__c);
        } catch (Exception e) {
            System.assert(false, e.getMessage());
        }
        Test.stopTest();
    }
    

    @isTest
    public static void testAccount_100() {
        Test.startTest();
        Account acc = new Account();
        acc.Name = 'ToUpdate Account';
        acc.Balance__c = 100;
        acc.RecordTypeId = Schema.SObjectType.Account.getRecordTypeInfosByName().get('>=$0').getRecordTypeId();
        acc.Email__c = 'testUpdate@pairwise.test';
        acc.Active__c = 'Yes';
        insert acc;
        
        acc.Name = '';
        acc.Balance__c = 170;
        acc.Calculated_Interest__c = null;
        acc.Email__c = 'test100@pairwise.test';
        acc.Loan_Interest_Rate__c = 0.125;
        acc.Loan_Type__c = 'Home Loan';
        acc.Remaining_Loan_Amount__c = null;
        acc.Total_Loan_Amount__c = 5805265;
        
        
        try {
            update acc;
            Account testAcc = [SELECT name, balance__c, calculated_interest__c, email__c, interest_rate__c, loan_interest_rate__c, loan_type__c, remaining_loan_amount__c, total_loan_amount__c, active__c FROM Account WHERE name='' LIMIT 1];
            System.assertEquals(acc.Name, testAcc.Name);
            System.assertEquals(acc.Balance__c, testAcc.Balance__c);
            System.assertEquals(acc.Balance__c * 0.05, testAcc.Calculated_Interest__c);
            System.assertEquals(acc.Email__c, testAcc.Email__c);
            System.assertEquals(acc.Loan_Interest_Rate__c, testAcc.Loan_Interest_Rate__c);
            System.assertEquals(acc.Loan_Type__c, testAcc.Loan_Type__c);
            //System.assertEquals(acc.Remaining_Loan_Amount__c, testAcc.Remaining_Loan_Amount__c);
            System.assertEquals(acc.Total_Loan_Amount__c, testAcc.Total_Loan_Amount__c);
        } catch (Exception e) {
            System.assert(false, e.getMessage());
        }
        Test.stopTest();
    }
    

    @isTest
    public static void testAccount_101() {
        Test.startTest();
        Account acc = new Account();
        acc.Name = 'ToUpdate Account';
        acc.Balance__c = 100;
        acc.RecordTypeId = Schema.SObjectType.Account.getRecordTypeInfosByName().get('Blank').getRecordTypeId();
        acc.Email__c = 'testUpdate@pairwise.test';
        acc.Active__c = 'Yes';
        insert acc;
        
        acc.Name = '';
        acc.Balance__c = 172;
        acc.Calculated_Interest__c = 7;
        acc.Email__c = '';
        acc.Loan_Interest_Rate__c = 0.10300000000000001;
        acc.Loan_Type__c = '';
        acc.Remaining_Loan_Amount__c = null;
        acc.Total_Loan_Amount__c = null;
        
        
        try {
            update acc;
            Account testAcc = [SELECT name, balance__c, calculated_interest__c, email__c, interest_rate__c, loan_interest_rate__c, loan_type__c, remaining_loan_amount__c, total_loan_amount__c, active__c FROM Account WHERE name='' LIMIT 1];
            System.assertEquals(acc.Name, testAcc.Name);
            System.assertEquals(acc.Balance__c, testAcc.Balance__c);
            System.assertEquals(acc.Balance__c * 0.05, testAcc.Calculated_Interest__c);
            System.assertEquals(acc.Email__c, testAcc.Email__c);
            System.assertEquals(acc.Loan_Interest_Rate__c, testAcc.Loan_Interest_Rate__c);
            System.assertEquals(acc.Loan_Type__c, testAcc.Loan_Type__c);
            //System.assertEquals(acc.Remaining_Loan_Amount__c, testAcc.Remaining_Loan_Amount__c);
            System.assertEquals(acc.Total_Loan_Amount__c, testAcc.Total_Loan_Amount__c);
        } catch (Exception e) {
            System.assert(false, e.getMessage());
        }
        Test.stopTest();
    }
    

    @isTest
    public static void testAccount_102() {
        Test.startTest();
        Account acc = new Account();
        acc.Name = '';
        acc.Balance__c = 136;
        acc.RecordTypeId = Schema.SObjectType.Account.getRecordTypeInfosByName().get('>=$100').getRecordTypeId();
        acc.Calculated_Interest__c = 7;
        acc.Email__c = '';
        acc.Loan_Interest_Rate__c = 0.084;
        acc.Loan_Type__c = 'Car Loan';
        //acc.Remaining_Loan_Amount__c = 15000000;
        acc.Total_Loan_Amount__c = 771391;
        acc.Active__c = 'Yes';
        
        
        try {
            insert acc;
            Account testAcc = [SELECT name, balance__c, calculated_interest__c, email__c, interest_rate__c, loan_interest_rate__c, loan_type__c, remaining_loan_amount__c, total_loan_amount__c, active__c FROM Account WHERE name='' LIMIT 1];
            System.assertEquals(acc.Name, testAcc.Name);
            System.assertEquals(acc.Balance__c, testAcc.Balance__c);
            System.assertEquals(acc.Balance__c * 0.05, testAcc.Calculated_Interest__c);
            System.assertEquals(acc.Email__c, testAcc.Email__c);
            System.assertEquals(acc.Loan_Interest_Rate__c, testAcc.Loan_Interest_Rate__c);
            System.assertEquals(acc.Loan_Type__c, testAcc.Loan_Type__c);
            //System.assertEquals(acc.Remaining_Loan_Amount__c, testAcc.Remaining_Loan_Amount__c);
            System.assertEquals(acc.Total_Loan_Amount__c, testAcc.Total_Loan_Amount__c);
        } catch (Exception e) {
            System.assert(false, e.getMessage());
        }
        Test.stopTest();
    }
    

    @isTest
    public static void testAccount_103() {
        Test.startTest();
        Account acc = new Account();
        acc.Name = 'ToUpdate Account';
        acc.Balance__c = 100;
        acc.RecordTypeId = Schema.SObjectType.Account.getRecordTypeInfosByName().get('Negative').getRecordTypeId();
        acc.Email__c = 'testUpdate@pairwise.test';
        acc.Active__c = 'Yes';
        insert acc;
        
        acc.Name = '';
        acc.Balance__c = 129;
        acc.Calculated_Interest__c = 7;
        acc.Email__c = 'test103@pairwise.test';
        acc.Loan_Interest_Rate__c = 0.1;
        acc.Loan_Type__c = 'Home Loan';
        acc.Remaining_Loan_Amount__c = null;
        acc.Total_Loan_Amount__c = 111602;
        
        
        try {
            update acc;
            Account testAcc = [SELECT name, balance__c, calculated_interest__c, email__c, interest_rate__c, loan_interest_rate__c, loan_type__c, remaining_loan_amount__c, total_loan_amount__c, active__c FROM Account WHERE name='' LIMIT 1];
            System.assertEquals(acc.Name, testAcc.Name);
            System.assertEquals(acc.Balance__c, testAcc.Balance__c);
            System.assertEquals(acc.Balance__c * 0.038, testAcc.Calculated_Interest__c);
            System.assertEquals(acc.Email__c, testAcc.Email__c);
            System.assertEquals(acc.Loan_Interest_Rate__c, testAcc.Loan_Interest_Rate__c);
            System.assertEquals(acc.Loan_Type__c, testAcc.Loan_Type__c);
            //System.assertEquals(acc.Remaining_Loan_Amount__c, testAcc.Remaining_Loan_Amount__c);
            System.assertEquals(acc.Total_Loan_Amount__c, testAcc.Total_Loan_Amount__c);
        } catch (Exception e) {
            System.assert(false, e.getMessage());
        }
        Test.stopTest();
    }
    

    @isTest
    public static void testAccount_104() {
        Test.startTest();
        Account acc = new Account();
        acc.Name = 'ToUpdate Account';
        acc.Balance__c = 100;
        acc.RecordTypeId = Schema.SObjectType.Account.getRecordTypeInfosByName().get('Blank').getRecordTypeId();
        acc.Email__c = 'testUpdate@pairwise.test';
        acc.Active__c = 'Yes';
        insert acc;
        
        acc.Name = '';
        acc.Balance__c = 172;
        acc.Calculated_Interest__c = null;
        acc.Email__c = 'test104@pairwise.test';
        acc.Loan_Interest_Rate__c = 0.14;
        acc.Loan_Type__c = 'Home Loan';
        acc.Remaining_Loan_Amount__c = 15000000;
        acc.Total_Loan_Amount__c = 614577;
        
        
        try {
            update acc;
            Account testAcc = [SELECT name, balance__c, calculated_interest__c, email__c, interest_rate__c, loan_interest_rate__c, loan_type__c, remaining_loan_amount__c, total_loan_amount__c, active__c FROM Account WHERE name='' LIMIT 1];
            System.assertEquals(acc.Name, testAcc.Name);
            System.assertEquals(acc.Balance__c, testAcc.Balance__c);
            System.assertEquals(acc.Balance__c * 0.038, testAcc.Calculated_Interest__c);
            System.assertEquals(acc.Email__c, testAcc.Email__c);
            System.assertEquals(acc.Loan_Interest_Rate__c, testAcc.Loan_Interest_Rate__c);
            System.assertEquals(acc.Loan_Type__c, testAcc.Loan_Type__c);
            //System.assertEquals(acc.Remaining_Loan_Amount__c, testAcc.Remaining_Loan_Amount__c);
            System.assertEquals(acc.Total_Loan_Amount__c, testAcc.Total_Loan_Amount__c);
        } catch (Exception e) {
            System.assert(false, e.getMessage());
        }
        Test.stopTest();
    }
    

    @isTest
    public static void testAccount_105() {
        Test.startTest();
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
        acc.Email__c = 'test105@pairwise.test';
        acc.Loan_Interest_Rate__c = null;
        acc.Loan_Type__c = '';
        acc.Remaining_Loan_Amount__c = null;
        acc.Total_Loan_Amount__c = null;
        
        
        try {
            update acc;
            Account testAcc = [SELECT name, balance__c, calculated_interest__c, email__c, interest_rate__c, loan_interest_rate__c, loan_type__c, remaining_loan_amount__c, total_loan_amount__c, active__c FROM Account WHERE name='' LIMIT 1];
            System.assertEquals(acc.Name, testAcc.Name);
            System.assertEquals(acc.Balance__c, testAcc.Balance__c);
            System.assertEquals(acc.Balance__c * 0.05, testAcc.Calculated_Interest__c);
            System.assertEquals(acc.Email__c, testAcc.Email__c);
            System.assertEquals(acc.Loan_Interest_Rate__c, testAcc.Loan_Interest_Rate__c);
            System.assertEquals(acc.Loan_Type__c, testAcc.Loan_Type__c);
            //System.assertEquals(acc.Remaining_Loan_Amount__c, testAcc.Remaining_Loan_Amount__c);
            System.assertEquals(acc.Total_Loan_Amount__c, testAcc.Total_Loan_Amount__c);
        } catch (Exception e) {
            System.assert(false, e.getMessage());
        }
        Test.stopTest();
    }
    

    @isTest
    public static void testAccount_106() {
        Test.startTest();
        Account acc = new Account();
        acc.Name = '';
        acc.Balance__c = 148;
        acc.RecordTypeId = Schema.SObjectType.Account.getRecordTypeInfosByName().get('>=$100').getRecordTypeId();
        acc.Calculated_Interest__c = 7;
        acc.Email__c = '';
        acc.Loan_Interest_Rate__c = 0.084;
        acc.Loan_Type__c = 'Home Loan';
        //acc.Remaining_Loan_Amount__c = null;
        acc.Total_Loan_Amount__c = 708097;
        acc.Active__c = 'Yes';
        
        
        try {
            insert acc;
            Account testAcc = [SELECT name, balance__c, calculated_interest__c, email__c, interest_rate__c, loan_interest_rate__c, loan_type__c, remaining_loan_amount__c, total_loan_amount__c, active__c FROM Account WHERE name='' LIMIT 1];
            System.assertEquals(acc.Name, testAcc.Name);
            System.assertEquals(acc.Balance__c, testAcc.Balance__c);
            System.assertEquals(acc.Balance__c * 0.05, testAcc.Calculated_Interest__c);
            System.assertEquals(acc.Email__c, testAcc.Email__c);
            System.assertEquals(acc.Loan_Interest_Rate__c, testAcc.Loan_Interest_Rate__c);
            System.assertEquals(acc.Loan_Type__c, testAcc.Loan_Type__c);
            //System.assertEquals(acc.Remaining_Loan_Amount__c, testAcc.Remaining_Loan_Amount__c);
            System.assertEquals(acc.Total_Loan_Amount__c, testAcc.Total_Loan_Amount__c);
        } catch (Exception e) {
            System.assert(false, e.getMessage());
        }
        Test.stopTest();
    }
    

    @isTest
    public static void testAccount_107() {
        Test.startTest();
        Account acc = new Account();
        acc.Name = 'ToUpdate Account';
        acc.Balance__c = 100;
        acc.RecordTypeId = Schema.SObjectType.Account.getRecordTypeInfosByName().get('Blank').getRecordTypeId();
        acc.Email__c = 'testUpdate@pairwise.test';
        acc.Active__c = 'Yes';
        insert acc;
        
        acc.Name = '';
        acc.Balance__c = 177;
        acc.Calculated_Interest__c = 7;
        acc.Email__c = '';
        acc.Loan_Interest_Rate__c = 0.11900000000000001;
        acc.Loan_Type__c = '';
        acc.Remaining_Loan_Amount__c = null;
        acc.Total_Loan_Amount__c = null;
        
        
        try {
            update acc;
            Account testAcc = [SELECT name, balance__c, calculated_interest__c, email__c, interest_rate__c, loan_interest_rate__c, loan_type__c, remaining_loan_amount__c, total_loan_amount__c, active__c FROM Account WHERE name='' LIMIT 1];
            System.assertEquals(acc.Name, testAcc.Name);
            System.assertEquals(acc.Balance__c, testAcc.Balance__c);
            System.assertEquals(acc.Balance__c * 0.05, testAcc.Calculated_Interest__c);
            System.assertEquals(acc.Email__c, testAcc.Email__c);
            System.assertEquals(acc.Loan_Interest_Rate__c, testAcc.Loan_Interest_Rate__c);
            System.assertEquals(acc.Loan_Type__c, testAcc.Loan_Type__c);
            //System.assertEquals(acc.Remaining_Loan_Amount__c, testAcc.Remaining_Loan_Amount__c);
            System.assertEquals(acc.Total_Loan_Amount__c, testAcc.Total_Loan_Amount__c);
        } catch (Exception e) {
            System.assert(false, e.getMessage());
        }
        Test.stopTest();
    }
    

    @isTest
    public static void testAccount_108() {
        Test.startTest();
        Account acc = new Account();
        acc.Name = 'ToUpdate Account';
        acc.Balance__c = 100;
        acc.RecordTypeId = Schema.SObjectType.Account.getRecordTypeInfosByName().get('Negative').getRecordTypeId();
        acc.Email__c = 'testUpdate@pairwise.test';
        acc.Active__c = 'Yes';
        insert acc;
        
        acc.Name = '';
        acc.Balance__c = 143;
        acc.Calculated_Interest__c = 7;
        acc.Email__c = 'test108@pairwise.test';
        acc.Loan_Interest_Rate__c = null;
        acc.Loan_Type__c = 'Car Loan';
        acc.Remaining_Loan_Amount__c = 15000000;
        acc.Total_Loan_Amount__c = 256616;
        
        
        try {
            update acc;
            Account testAcc = [SELECT name, balance__c, calculated_interest__c, email__c, interest_rate__c, loan_interest_rate__c, loan_type__c, remaining_loan_amount__c, total_loan_amount__c, active__c FROM Account WHERE name='' LIMIT 1];
            System.assertEquals(acc.Name, testAcc.Name);
            System.assertEquals(acc.Balance__c, testAcc.Balance__c);
            System.assertEquals(acc.Balance__c * 0.038, testAcc.Calculated_Interest__c);
            System.assertEquals(acc.Email__c, testAcc.Email__c);
            System.assertEquals(acc.Loan_Interest_Rate__c, testAcc.Loan_Interest_Rate__c);
            System.assertEquals(acc.Loan_Type__c, testAcc.Loan_Type__c);
            //System.assertEquals(acc.Remaining_Loan_Amount__c, testAcc.Remaining_Loan_Amount__c);
            System.assertEquals(acc.Total_Loan_Amount__c, testAcc.Total_Loan_Amount__c);
        } catch (Exception e) {
            System.assert(false, e.getMessage());
        }
        Test.stopTest();
    }
    

    @isTest
    public static void testAccount_109() {
        Test.startTest();
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
        acc.Email__c = 'test109@pairwise.test';
        acc.Loan_Interest_Rate__c = 0.11900000000000001;
        acc.Loan_Type__c = 'Home Loan';
        acc.Remaining_Loan_Amount__c = 15000000;
        acc.Total_Loan_Amount__c = 97757;
        
        
        try {
            update acc;
            Account testAcc = [SELECT name, balance__c, calculated_interest__c, email__c, interest_rate__c, loan_interest_rate__c, loan_type__c, remaining_loan_amount__c, total_loan_amount__c, active__c FROM Account WHERE name='' LIMIT 1];
            System.assertEquals(acc.Name, testAcc.Name);
            System.assertEquals(acc.Balance__c, testAcc.Balance__c);
            System.assertEquals(acc.Balance__c * 0.038, testAcc.Calculated_Interest__c);
            System.assertEquals(acc.Email__c, testAcc.Email__c);
            System.assertEquals(acc.Loan_Interest_Rate__c, testAcc.Loan_Interest_Rate__c);
            System.assertEquals(acc.Loan_Type__c, testAcc.Loan_Type__c);
            //System.assertEquals(acc.Remaining_Loan_Amount__c, testAcc.Remaining_Loan_Amount__c);
            System.assertEquals(acc.Total_Loan_Amount__c, testAcc.Total_Loan_Amount__c);
        } catch (Exception e) {
            System.assert(false, e.getMessage());
        }
        Test.stopTest();
    }
    

    @isTest
    public static void testAccount_110() {
        Test.startTest();
        Account acc = new Account();
        acc.Name = 'ToUpdate Account';
        acc.Balance__c = 100;
        acc.RecordTypeId = Schema.SObjectType.Account.getRecordTypeInfosByName().get('>=$0').getRecordTypeId();
        acc.Email__c = 'testUpdate@pairwise.test';
        acc.Active__c = 'Yes';
        insert acc;
        
        acc.Name = '';
        acc.Balance__c = 167;
        acc.Calculated_Interest__c = null;
        acc.Email__c = 'test110@pairwise.test';
        acc.Loan_Interest_Rate__c = 0.146;
        acc.Loan_Type__c = '';
        acc.Remaining_Loan_Amount__c = null;
        acc.Total_Loan_Amount__c = null;
        
        
        try {
            update acc;
            Account testAcc = [SELECT name, balance__c, calculated_interest__c, email__c, interest_rate__c, loan_interest_rate__c, loan_type__c, remaining_loan_amount__c, total_loan_amount__c, active__c FROM Account WHERE name='' LIMIT 1];
            System.assertEquals(acc.Name, testAcc.Name);
            System.assertEquals(acc.Balance__c, testAcc.Balance__c);
            System.assertEquals(acc.Balance__c * 0.05, testAcc.Calculated_Interest__c);
            System.assertEquals(acc.Email__c, testAcc.Email__c);
            System.assertEquals(acc.Loan_Interest_Rate__c, testAcc.Loan_Interest_Rate__c);
            System.assertEquals(acc.Loan_Type__c, testAcc.Loan_Type__c);
            //System.assertEquals(acc.Remaining_Loan_Amount__c, testAcc.Remaining_Loan_Amount__c);
            System.assertEquals(acc.Total_Loan_Amount__c, testAcc.Total_Loan_Amount__c);
        } catch (Exception e) {
            System.assert(false, e.getMessage());
        }
        Test.stopTest();
    }
    

    @isTest
    public static void testAccount_111() {
        Test.startTest();
        Account acc = new Account();
        acc.Name = '';
        acc.Balance__c = 152;
        acc.RecordTypeId = Schema.SObjectType.Account.getRecordTypeInfosByName().get('>=$100').getRecordTypeId();
        acc.Calculated_Interest__c = 7;
        acc.Email__c = '';
        acc.Loan_Interest_Rate__c = 0.109;
        acc.Loan_Type__c = 'Home Loan';
        //acc.Remaining_Loan_Amount__c = null;
        acc.Total_Loan_Amount__c = null;
        acc.Active__c = 'Yes';
        
        
        try {
            insert acc;
            Account testAcc = [SELECT name, balance__c, calculated_interest__c, email__c, interest_rate__c, loan_interest_rate__c, loan_type__c, remaining_loan_amount__c, total_loan_amount__c, active__c FROM Account WHERE name='' LIMIT 1];
            System.assertEquals(acc.Name, testAcc.Name);
            System.assertEquals(acc.Balance__c, testAcc.Balance__c);
            System.assertEquals(acc.Balance__c * 0.05, testAcc.Calculated_Interest__c);
            System.assertEquals(acc.Email__c, testAcc.Email__c);
            System.assertEquals(acc.Loan_Interest_Rate__c, testAcc.Loan_Interest_Rate__c);
            System.assertEquals(acc.Loan_Type__c, testAcc.Loan_Type__c);
            //System.assertEquals(acc.Remaining_Loan_Amount__c, testAcc.Remaining_Loan_Amount__c);
            System.assertEquals(acc.Total_Loan_Amount__c, testAcc.Total_Loan_Amount__c);
        } catch (Exception e) {
            System.assert(false, e.getMessage());
        }
        Test.stopTest();
    }
    

    @isTest
    public static void testAccount_112() {
        Test.startTest();
        Account acc = new Account();
        acc.Name = '';
        acc.Balance__c = 199;
        acc.RecordTypeId = Schema.SObjectType.Account.getRecordTypeInfosByName().get('>=$100').getRecordTypeId();
        acc.Calculated_Interest__c = 7;
        acc.Email__c = 'test112@pairwise.test';
        acc.Loan_Interest_Rate__c = 0.109;
        acc.Loan_Type__c = 'Home Loan';
        //acc.Remaining_Loan_Amount__c = 15000000;
        acc.Total_Loan_Amount__c = 88315;
        acc.Active__c = 'Yes';
        
        
        try {
            insert acc;
            Account testAcc = [SELECT name, balance__c, calculated_interest__c, email__c, interest_rate__c, loan_interest_rate__c, loan_type__c, remaining_loan_amount__c, total_loan_amount__c, active__c FROM Account WHERE name='' LIMIT 1];
            System.assertEquals(acc.Name, testAcc.Name);
            System.assertEquals(acc.Balance__c, testAcc.Balance__c);
            System.assertEquals(acc.Balance__c * 0.038, testAcc.Calculated_Interest__c);
            System.assertEquals(acc.Email__c, testAcc.Email__c);
            System.assertEquals(acc.Loan_Interest_Rate__c, testAcc.Loan_Interest_Rate__c);
            System.assertEquals(acc.Loan_Type__c, testAcc.Loan_Type__c);
            //System.assertEquals(acc.Remaining_Loan_Amount__c, testAcc.Remaining_Loan_Amount__c);
            System.assertEquals(acc.Total_Loan_Amount__c, testAcc.Total_Loan_Amount__c);
        } catch (Exception e) {
            System.assert(false, e.getMessage());
        }
        Test.stopTest();
    }
    

    @isTest
    public static void testAccount_113() {
        Test.startTest();
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
        acc.Email__c = 'test113@pairwise.test';
        acc.Loan_Interest_Rate__c = 0.11;
        acc.Loan_Type__c = 'Home Loan';
        acc.Remaining_Loan_Amount__c = 15000000;
        acc.Total_Loan_Amount__c = 3311449;
        
        
        try {
            update acc;
            Account testAcc = [SELECT name, balance__c, calculated_interest__c, email__c, interest_rate__c, loan_interest_rate__c, loan_type__c, remaining_loan_amount__c, total_loan_amount__c, active__c FROM Account WHERE name='' LIMIT 1];
            System.assertEquals(acc.Name, testAcc.Name);
            System.assertEquals(acc.Balance__c, testAcc.Balance__c);
            System.assertEquals(acc.Balance__c * 0.05, testAcc.Calculated_Interest__c);
            System.assertEquals(acc.Email__c, testAcc.Email__c);
            System.assertEquals(acc.Loan_Interest_Rate__c, testAcc.Loan_Interest_Rate__c);
            System.assertEquals(acc.Loan_Type__c, testAcc.Loan_Type__c);
            //System.assertEquals(acc.Remaining_Loan_Amount__c, testAcc.Remaining_Loan_Amount__c);
            System.assertEquals(acc.Total_Loan_Amount__c, testAcc.Total_Loan_Amount__c);
        } catch (Exception e) {
            System.assert(false, e.getMessage());
        }
        Test.stopTest();
    }
    

    @isTest
    public static void testAccount_114() {
        Test.startTest();
        Account acc = new Account();
        acc.Name = 'ToUpdate Account';
        acc.Balance__c = 100;
        acc.RecordTypeId = Schema.SObjectType.Account.getRecordTypeInfosByName().get('Negative').getRecordTypeId();
        acc.Email__c = 'testUpdate@pairwise.test';
        acc.Active__c = 'Yes';
        insert acc;
        
        acc.Name = '';
        acc.Balance__c = 120;
        acc.Calculated_Interest__c = 7;
        acc.Email__c = '';
        acc.Loan_Interest_Rate__c = 0.084;
        acc.Loan_Type__c = 'Car Loan';
        acc.Remaining_Loan_Amount__c = 15000000;
        acc.Total_Loan_Amount__c = 894673;
        
        
        try {
            update acc;
            Account testAcc = [SELECT name, balance__c, calculated_interest__c, email__c, interest_rate__c, loan_interest_rate__c, loan_type__c, remaining_loan_amount__c, total_loan_amount__c, active__c FROM Account WHERE name='' LIMIT 1];
            System.assertEquals(acc.Name, testAcc.Name);
            System.assertEquals(acc.Balance__c, testAcc.Balance__c);
            System.assertEquals(acc.Balance__c * 0.06, testAcc.Calculated_Interest__c);
            System.assertEquals(acc.Email__c, testAcc.Email__c);
            System.assertEquals(acc.Loan_Interest_Rate__c, testAcc.Loan_Interest_Rate__c);
            System.assertEquals(acc.Loan_Type__c, testAcc.Loan_Type__c);
            //System.assertEquals(acc.Remaining_Loan_Amount__c, testAcc.Remaining_Loan_Amount__c);
            System.assertEquals(acc.Total_Loan_Amount__c, testAcc.Total_Loan_Amount__c);
        } catch (Exception e) {
            System.assert(false, e.getMessage());
        }
        Test.stopTest();
    }
    

    @isTest
    public static void testAccount_115() {
        Test.startTest();
        Account acc = new Account();
        acc.Name = 'ToUpdate Account';
        acc.Balance__c = 100;
        acc.RecordTypeId = Schema.SObjectType.Account.getRecordTypeInfosByName().get('>=$0').getRecordTypeId();
        acc.Email__c = 'testUpdate@pairwise.test';
        acc.Active__c = 'Yes';
        insert acc;
        
        acc.Name = '';
        acc.Balance__c = 153;
        acc.Calculated_Interest__c = 7;
        acc.Email__c = '';
        acc.Loan_Interest_Rate__c = null;
        acc.Loan_Type__c = 'Car Loan';
        acc.Remaining_Loan_Amount__c = 15000000;
        acc.Total_Loan_Amount__c = 17833;
        
        
        try {
            update acc;
            Account testAcc = [SELECT name, balance__c, calculated_interest__c, email__c, interest_rate__c, loan_interest_rate__c, loan_type__c, remaining_loan_amount__c, total_loan_amount__c, active__c FROM Account WHERE name='' LIMIT 1];
            System.assertEquals(acc.Name, testAcc.Name);
            System.assertEquals(acc.Balance__c, testAcc.Balance__c);
            System.assertEquals(acc.Balance__c * 0.05, testAcc.Calculated_Interest__c);
            System.assertEquals(acc.Email__c, testAcc.Email__c);
            System.assertEquals(acc.Loan_Interest_Rate__c, testAcc.Loan_Interest_Rate__c);
            System.assertEquals(acc.Loan_Type__c, testAcc.Loan_Type__c);
            //System.assertEquals(acc.Remaining_Loan_Amount__c, testAcc.Remaining_Loan_Amount__c);
            System.assertEquals(acc.Total_Loan_Amount__c, testAcc.Total_Loan_Amount__c);
        } catch (Exception e) {
            System.assert(false, e.getMessage());
        }
        Test.stopTest();
    }
    

    @isTest
    public static void testAccount_116() {
        Test.startTest();
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
        acc.Email__c = '';
        acc.Loan_Interest_Rate__c = 0.09;
        acc.Loan_Type__c = 'Car Loan';
        acc.Remaining_Loan_Amount__c = 15000000;
        acc.Total_Loan_Amount__c = 3254881;
        
        
        try {
            update acc;
            Account testAcc = [SELECT name, balance__c, calculated_interest__c, email__c, interest_rate__c, loan_interest_rate__c, loan_type__c, remaining_loan_amount__c, total_loan_amount__c, active__c FROM Account WHERE name='' LIMIT 1];
            System.assertEquals(acc.Name, testAcc.Name);
            System.assertEquals(acc.Balance__c, testAcc.Balance__c);
            System.assertEquals(acc.Balance__c * 0.05, testAcc.Calculated_Interest__c);
            System.assertEquals(acc.Email__c, testAcc.Email__c);
            System.assertEquals(acc.Loan_Interest_Rate__c, testAcc.Loan_Interest_Rate__c);
            System.assertEquals(acc.Loan_Type__c, testAcc.Loan_Type__c);
            //System.assertEquals(acc.Remaining_Loan_Amount__c, testAcc.Remaining_Loan_Amount__c);
            System.assertEquals(acc.Total_Loan_Amount__c, testAcc.Total_Loan_Amount__c);
        } catch (Exception e) {
            System.assert(false, e.getMessage());
        }
        Test.stopTest();
    }
    

    @isTest
    public static void testAccount_117() {
        Test.startTest();
        Account acc = new Account();
        acc.Name = 'ToUpdate Account';
        acc.Balance__c = 100;
        acc.RecordTypeId = Schema.SObjectType.Account.getRecordTypeInfosByName().get('>=$100').getRecordTypeId();
        acc.Email__c = 'testUpdate@pairwise.test';
        acc.Active__c = 'Yes';
        insert acc;
        
        acc.Name = '';
        acc.Balance__c = 199;
        acc.Calculated_Interest__c = null;
        acc.Email__c = 'test117@pairwise.test';
        acc.Loan_Interest_Rate__c = null;
        acc.Loan_Type__c = 'Home Loan';
        acc.Remaining_Loan_Amount__c = null;
        acc.Total_Loan_Amount__c = null;
        
        
        try {
            update acc;
            Account testAcc = [SELECT name, balance__c, calculated_interest__c, email__c, interest_rate__c, loan_interest_rate__c, loan_type__c, remaining_loan_amount__c, total_loan_amount__c, active__c FROM Account WHERE name='' LIMIT 1];
            System.assertEquals(acc.Name, testAcc.Name);
            System.assertEquals(acc.Balance__c, testAcc.Balance__c);
            System.assertEquals(acc.Balance__c * 0.06, testAcc.Calculated_Interest__c);
            System.assertEquals(acc.Email__c, testAcc.Email__c);
            System.assertEquals(acc.Loan_Interest_Rate__c, testAcc.Loan_Interest_Rate__c);
            System.assertEquals(acc.Loan_Type__c, testAcc.Loan_Type__c);
            //System.assertEquals(acc.Remaining_Loan_Amount__c, testAcc.Remaining_Loan_Amount__c);
            System.assertEquals(acc.Total_Loan_Amount__c, testAcc.Total_Loan_Amount__c);
        } catch (Exception e) {
            System.assert(false, e.getMessage());
        }
        Test.stopTest();
    }
    

    @isTest
    public static void testAccount_118() {
        Test.startTest();
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
        acc.Loan_Interest_Rate__c = 0.09;
        acc.Loan_Type__c = 'Car Loan';
        acc.Remaining_Loan_Amount__c = null;
        acc.Total_Loan_Amount__c = 442977;
        
        
        try {
            update acc;
            Account testAcc = [SELECT name, balance__c, calculated_interest__c, email__c, interest_rate__c, loan_interest_rate__c, loan_type__c, remaining_loan_amount__c, total_loan_amount__c, active__c FROM Account WHERE name='' LIMIT 1];
            System.assertEquals(acc.Name, testAcc.Name);
            System.assertEquals(acc.Balance__c, testAcc.Balance__c);
            System.assertEquals(acc.Balance__c * 0.038, testAcc.Calculated_Interest__c);
            System.assertEquals(acc.Email__c, testAcc.Email__c);
            System.assertEquals(acc.Loan_Interest_Rate__c, testAcc.Loan_Interest_Rate__c);
            System.assertEquals(acc.Loan_Type__c, testAcc.Loan_Type__c);
            //System.assertEquals(acc.Remaining_Loan_Amount__c, testAcc.Remaining_Loan_Amount__c);
            System.assertEquals(acc.Total_Loan_Amount__c, testAcc.Total_Loan_Amount__c);
        } catch (Exception e) {
            System.assert(false, e.getMessage());
        }
        Test.stopTest();
    }
    

    @isTest
    public static void testAccount_119() {
        Test.startTest();
        Account acc = new Account();
        acc.Name = 'ToUpdate Account';
        acc.Balance__c = 100;
        acc.RecordTypeId = Schema.SObjectType.Account.getRecordTypeInfosByName().get('Negative').getRecordTypeId();
        acc.Email__c = 'testUpdate@pairwise.test';
        acc.Active__c = 'Yes';
        insert acc;
        
        acc.Name = '';
        acc.Balance__c = 143;
        acc.Calculated_Interest__c = null;
        acc.Email__c = 'test119@pairwise.test';
        acc.Loan_Interest_Rate__c = 0.136;
        acc.Loan_Type__c = 'Home Loan';
        acc.Remaining_Loan_Amount__c = 15000000;
        acc.Total_Loan_Amount__c = 451373;
        
        
        try {
            update acc;
            Account testAcc = [SELECT name, balance__c, calculated_interest__c, email__c, interest_rate__c, loan_interest_rate__c, loan_type__c, remaining_loan_amount__c, total_loan_amount__c, active__c FROM Account WHERE name='' LIMIT 1];
            System.assertEquals(acc.Name, testAcc.Name);
            System.assertEquals(acc.Balance__c, testAcc.Balance__c);
            System.assertEquals(acc.Balance__c * 0.038, testAcc.Calculated_Interest__c);
            System.assertEquals(acc.Email__c, testAcc.Email__c);
            System.assertEquals(acc.Loan_Interest_Rate__c, testAcc.Loan_Interest_Rate__c);
            System.assertEquals(acc.Loan_Type__c, testAcc.Loan_Type__c);
            //System.assertEquals(acc.Remaining_Loan_Amount__c, testAcc.Remaining_Loan_Amount__c);
            System.assertEquals(acc.Total_Loan_Amount__c, testAcc.Total_Loan_Amount__c);
        } catch (Exception e) {
            System.assert(false, e.getMessage());
        }
        Test.stopTest();
    }
    

    @isTest
    public static void testAccount_120() {
        Test.startTest();
        Account acc = new Account();
        acc.Name = 'ToUpdate Account';
        acc.Balance__c = 100;
        acc.RecordTypeId = Schema.SObjectType.Account.getRecordTypeInfosByName().get('Negative').getRecordTypeId();
        acc.Email__c = 'testUpdate@pairwise.test';
        acc.Active__c = 'Yes';
        insert acc;
        
        acc.Name = '';
        acc.Balance__c = 150;
        acc.Calculated_Interest__c = 7;
        acc.Email__c = '';
        acc.Loan_Interest_Rate__c = 0.146;
        acc.Loan_Type__c = 'Home Loan';
        acc.Remaining_Loan_Amount__c = 15000000;
        acc.Total_Loan_Amount__c = 742012;
        
        
        try {
            update acc;
            Account testAcc = [SELECT name, balance__c, calculated_interest__c, email__c, interest_rate__c, loan_interest_rate__c, loan_type__c, remaining_loan_amount__c, total_loan_amount__c, active__c FROM Account WHERE name='' LIMIT 1];
            System.assertEquals(acc.Name, testAcc.Name);
            System.assertEquals(acc.Balance__c, testAcc.Balance__c);
            System.assertEquals(acc.Balance__c * 0.038, testAcc.Calculated_Interest__c);
            System.assertEquals(acc.Email__c, testAcc.Email__c);
            System.assertEquals(acc.Loan_Interest_Rate__c, testAcc.Loan_Interest_Rate__c);
            System.assertEquals(acc.Loan_Type__c, testAcc.Loan_Type__c);
            //System.assertEquals(acc.Remaining_Loan_Amount__c, testAcc.Remaining_Loan_Amount__c);
            System.assertEquals(acc.Total_Loan_Amount__c, testAcc.Total_Loan_Amount__c);
        } catch (Exception e) {
            System.assert(false, e.getMessage());
        }
        Test.stopTest();
    }
    

    @isTest
    public static void testAccount_121() {
        Test.startTest();
        Account acc = new Account();
        acc.Name = 'ToUpdate Account';
        acc.Balance__c = 100;
        acc.RecordTypeId = Schema.SObjectType.Account.getRecordTypeInfosByName().get('>=$100').getRecordTypeId();
        acc.Email__c = 'testUpdate@pairwise.test';
        acc.Active__c = 'Yes';
        insert acc;
        
        acc.Name = '';
        acc.Balance__c = 171;
        acc.Calculated_Interest__c = 7;
        acc.Email__c = '';
        acc.Loan_Interest_Rate__c = 0.11900000000000001;
        acc.Loan_Type__c = 'Car Loan';
        acc.Remaining_Loan_Amount__c = 15000000;
        acc.Total_Loan_Amount__c = 744646;
        
        
        try {
            update acc;
            Account testAcc = [SELECT name, balance__c, calculated_interest__c, email__c, interest_rate__c, loan_interest_rate__c, loan_type__c, remaining_loan_amount__c, total_loan_amount__c, active__c FROM Account WHERE name='' LIMIT 1];
            System.assertEquals(acc.Name, testAcc.Name);
            System.assertEquals(acc.Balance__c, testAcc.Balance__c);
            System.assertEquals(acc.Balance__c * 0.038, testAcc.Calculated_Interest__c);
            System.assertEquals(acc.Email__c, testAcc.Email__c);
            System.assertEquals(acc.Loan_Interest_Rate__c, testAcc.Loan_Interest_Rate__c);
            System.assertEquals(acc.Loan_Type__c, testAcc.Loan_Type__c);
            //System.assertEquals(acc.Remaining_Loan_Amount__c, testAcc.Remaining_Loan_Amount__c);
            System.assertEquals(acc.Total_Loan_Amount__c, testAcc.Total_Loan_Amount__c);
        } catch (Exception e) {
            System.assert(false, e.getMessage());
        }
        Test.stopTest();
    }
    

    @isTest
    public static void testAccount_122() {
        Test.startTest();
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
        acc.Email__c = '';
        acc.Loan_Interest_Rate__c = 0.08;
        acc.Loan_Type__c = 'Home Loan';
        acc.Remaining_Loan_Amount__c = null;
        acc.Total_Loan_Amount__c = 993137;
        
        
        try {
            update acc;
            Account testAcc = [SELECT name, balance__c, calculated_interest__c, email__c, interest_rate__c, loan_interest_rate__c, loan_type__c, remaining_loan_amount__c, total_loan_amount__c, active__c FROM Account WHERE name='' LIMIT 1];
            System.assertEquals(acc.Name, testAcc.Name);
            System.assertEquals(acc.Balance__c, testAcc.Balance__c);
            System.assertEquals(acc.Balance__c * 0.06, testAcc.Calculated_Interest__c);
            System.assertEquals(acc.Email__c, testAcc.Email__c);
            System.assertEquals(acc.Loan_Interest_Rate__c, testAcc.Loan_Interest_Rate__c);
            System.assertEquals(acc.Loan_Type__c, testAcc.Loan_Type__c);
            //System.assertEquals(acc.Remaining_Loan_Amount__c, testAcc.Remaining_Loan_Amount__c);
            System.assertEquals(acc.Total_Loan_Amount__c, testAcc.Total_Loan_Amount__c);
        } catch (Exception e) {
            System.assert(false, e.getMessage());
        }
        Test.stopTest();
    }
    

    @isTest
    public static void testAccount_123() {
        Test.startTest();
        Account acc = new Account();
        acc.Name = 'ToUpdate Account';
        acc.Balance__c = 100;
        acc.RecordTypeId = Schema.SObjectType.Account.getRecordTypeInfosByName().get('>=$100').getRecordTypeId();
        acc.Email__c = 'testUpdate@pairwise.test';
        acc.Active__c = 'Yes';
        insert acc;
        
        acc.Name = '';
        acc.Balance__c = 144;
        acc.Calculated_Interest__c = null;
        acc.Email__c = '';
        acc.Loan_Interest_Rate__c = 0.084;
        acc.Loan_Type__c = 'Home Loan';
        acc.Remaining_Loan_Amount__c = null;
        acc.Total_Loan_Amount__c = 7351418;
        
        
        try {
            update acc;
            Account testAcc = [SELECT name, balance__c, calculated_interest__c, email__c, interest_rate__c, loan_interest_rate__c, loan_type__c, remaining_loan_amount__c, total_loan_amount__c, active__c FROM Account WHERE name='' LIMIT 1];
            System.assertEquals(acc.Name, testAcc.Name);
            System.assertEquals(acc.Balance__c, testAcc.Balance__c);
            System.assertEquals(acc.Balance__c * 0.06, testAcc.Calculated_Interest__c);
            System.assertEquals(acc.Email__c, testAcc.Email__c);
            System.assertEquals(acc.Loan_Interest_Rate__c, testAcc.Loan_Interest_Rate__c);
            System.assertEquals(acc.Loan_Type__c, testAcc.Loan_Type__c);
            //System.assertEquals(acc.Remaining_Loan_Amount__c, testAcc.Remaining_Loan_Amount__c);
            System.assertEquals(acc.Total_Loan_Amount__c, testAcc.Total_Loan_Amount__c);
        } catch (Exception e) {
            System.assert(false, e.getMessage());
        }
        Test.stopTest();
    }
    

    @isTest
    public static void testAccount_124() {
        Test.startTest();
        Account acc = new Account();
        acc.Name = 'ToUpdate Account';
        acc.Balance__c = 100;
        acc.RecordTypeId = Schema.SObjectType.Account.getRecordTypeInfosByName().get('Negative').getRecordTypeId();
        acc.Email__c = 'testUpdate@pairwise.test';
        acc.Active__c = 'Yes';
        insert acc;
        
        acc.Name = '';
        acc.Balance__c = 124;
        acc.Calculated_Interest__c = 7;
        acc.Email__c = '';
        acc.Loan_Interest_Rate__c = 0.14;
        acc.Loan_Type__c = 'Car Loan';
        acc.Remaining_Loan_Amount__c = null;
        acc.Total_Loan_Amount__c = 2671593;
        
        
        try {
            update acc;
            Account testAcc = [SELECT name, balance__c, calculated_interest__c, email__c, interest_rate__c, loan_interest_rate__c, loan_type__c, remaining_loan_amount__c, total_loan_amount__c, active__c FROM Account WHERE name='' LIMIT 1];
            System.assertEquals(acc.Name, testAcc.Name);
            System.assertEquals(acc.Balance__c, testAcc.Balance__c);
            System.assertEquals(acc.Balance__c * 0.05, testAcc.Calculated_Interest__c);
            System.assertEquals(acc.Email__c, testAcc.Email__c);
            System.assertEquals(acc.Loan_Interest_Rate__c, testAcc.Loan_Interest_Rate__c);
            System.assertEquals(acc.Loan_Type__c, testAcc.Loan_Type__c);
            //System.assertEquals(acc.Remaining_Loan_Amount__c, testAcc.Remaining_Loan_Amount__c);
            System.assertEquals(acc.Total_Loan_Amount__c, testAcc.Total_Loan_Amount__c);
        } catch (Exception e) {
            System.assert(false, e.getMessage());
        }
        Test.stopTest();
    }
    

    @isTest
    public static void testAccount_125() {
        Test.startTest();
        Account acc = new Account();
        acc.Name = 'ToUpdate Account';
        acc.Balance__c = 100;
        acc.RecordTypeId = Schema.SObjectType.Account.getRecordTypeInfosByName().get('>=$100').getRecordTypeId();
        acc.Email__c = 'testUpdate@pairwise.test';
        acc.Active__c = 'Yes';
        insert acc;
        
        acc.Name = '';
        acc.Balance__c = 141;
        acc.Calculated_Interest__c = null;
        acc.Email__c = 'test125@pairwise.test';
        acc.Loan_Interest_Rate__c = 107;
        acc.Loan_Type__c = 'Car Loan';
        acc.Remaining_Loan_Amount__c = 15000000;
        acc.Total_Loan_Amount__c = 8189043;
        
        
        try {
            update acc;
            Account testAcc = [SELECT name, balance__c, calculated_interest__c, email__c, interest_rate__c, loan_interest_rate__c, loan_type__c, remaining_loan_amount__c, total_loan_amount__c, active__c FROM Account WHERE name='' LIMIT 1];
            System.assertEquals(acc.Name, testAcc.Name);
            System.assertEquals(acc.Balance__c, testAcc.Balance__c);
            System.assertEquals(acc.Balance__c * 0.05, testAcc.Calculated_Interest__c);
            System.assertEquals(acc.Email__c, testAcc.Email__c);
            System.assertEquals(acc.Loan_Interest_Rate__c, testAcc.Loan_Interest_Rate__c);
            System.assertEquals(acc.Loan_Type__c, testAcc.Loan_Type__c);
            //System.assertEquals(acc.Remaining_Loan_Amount__c, testAcc.Remaining_Loan_Amount__c);
            System.assertEquals(acc.Total_Loan_Amount__c, testAcc.Total_Loan_Amount__c);
        } catch (Exception e) {
            System.assert(false, e.getMessage());
        }
        Test.stopTest();
    }
    

    @isTest
    public static void testAccount_126() {
        Test.startTest();
        Account acc = new Account();
        acc.Name = 'ToUpdate Account';
        acc.Balance__c = 100;
        acc.RecordTypeId = Schema.SObjectType.Account.getRecordTypeInfosByName().get('>=$0').getRecordTypeId();
        acc.Email__c = 'testUpdate@pairwise.test';
        acc.Active__c = 'Yes';
        insert acc;
        
        acc.Name = '';
        acc.Balance__c = 178;
        acc.Calculated_Interest__c = 7;
        acc.Email__c = 'test126@pairwise.test';
        acc.Loan_Interest_Rate__c = 0.08;
        acc.Loan_Type__c = 'Home Loan';
        acc.Remaining_Loan_Amount__c = null;
        acc.Total_Loan_Amount__c = 1172362;
        
        
        try {
            update acc;
            Account testAcc = [SELECT name, balance__c, calculated_interest__c, email__c, interest_rate__c, loan_interest_rate__c, loan_type__c, remaining_loan_amount__c, total_loan_amount__c, active__c FROM Account WHERE name='' LIMIT 1];
            System.assertEquals(acc.Name, testAcc.Name);
            System.assertEquals(acc.Balance__c, testAcc.Balance__c);
            System.assertEquals(acc.Balance__c * 0.06, testAcc.Calculated_Interest__c);
            System.assertEquals(acc.Email__c, testAcc.Email__c);
            System.assertEquals(acc.Loan_Interest_Rate__c, testAcc.Loan_Interest_Rate__c);
            System.assertEquals(acc.Loan_Type__c, testAcc.Loan_Type__c);
            //System.assertEquals(acc.Remaining_Loan_Amount__c, testAcc.Remaining_Loan_Amount__c);
            System.assertEquals(acc.Total_Loan_Amount__c, testAcc.Total_Loan_Amount__c);
        } catch (Exception e) {
            System.assert(false, e.getMessage());
        }
        Test.stopTest();
    }
    

    @isTest
    public static void testAccount_127() {
        Test.startTest();
        Account acc = new Account();
        acc.Name = 'ToUpdate Account';
        acc.Balance__c = 100;
        acc.RecordTypeId = Schema.SObjectType.Account.getRecordTypeInfosByName().get('>=$100').getRecordTypeId();
        acc.Email__c = 'testUpdate@pairwise.test';
        acc.Active__c = 'Yes';
        insert acc;
        
        acc.Name = '';
        acc.Balance__c = 196;
        acc.Calculated_Interest__c = null;
        acc.Email__c = '';
        acc.Loan_Interest_Rate__c = 0.136;
        acc.Loan_Type__c = 'Car Loan';
        acc.Remaining_Loan_Amount__c = 15000000;
        acc.Total_Loan_Amount__c = 5047292;
        
        
        try {
            update acc;
            Account testAcc = [SELECT name, balance__c, calculated_interest__c, email__c, interest_rate__c, loan_interest_rate__c, loan_type__c, remaining_loan_amount__c, total_loan_amount__c, active__c FROM Account WHERE name='' LIMIT 1];
            System.assertEquals(acc.Name, testAcc.Name);
            System.assertEquals(acc.Balance__c, testAcc.Balance__c);
            System.assertEquals(acc.Balance__c * 0.06, testAcc.Calculated_Interest__c);
            System.assertEquals(acc.Email__c, testAcc.Email__c);
            System.assertEquals(acc.Loan_Interest_Rate__c, testAcc.Loan_Interest_Rate__c);
            System.assertEquals(acc.Loan_Type__c, testAcc.Loan_Type__c);
            //System.assertEquals(acc.Remaining_Loan_Amount__c, testAcc.Remaining_Loan_Amount__c);
            System.assertEquals(acc.Total_Loan_Amount__c, testAcc.Total_Loan_Amount__c);
        } catch (Exception e) {
            System.assert(false, e.getMessage());
        }
        Test.stopTest();
    }
    

    @isTest
    public static void testAccount_128() {
        Test.startTest();
        Account acc = new Account();
        acc.Name = '';
        acc.Balance__c = 191;
        acc.RecordTypeId = Schema.SObjectType.Account.getRecordTypeInfosByName().get('>=$0').getRecordTypeId();
        acc.Calculated_Interest__c = null;
        acc.Email__c = 'test128@pairwise.test';
        acc.Loan_Interest_Rate__c = 0.09;
        acc.Loan_Type__c = 'Home Loan';
        //acc.Remaining_Loan_Amount__c = 15000000;
        acc.Total_Loan_Amount__c = 863514;
        acc.Active__c = 'Yes';
        
        
        try {
            insert acc;
            Account testAcc = [SELECT name, balance__c, calculated_interest__c, email__c, interest_rate__c, loan_interest_rate__c, loan_type__c, remaining_loan_amount__c, total_loan_amount__c, active__c FROM Account WHERE name='' LIMIT 1];
            System.assertEquals(acc.Name, testAcc.Name);
            System.assertEquals(acc.Balance__c, testAcc.Balance__c);
            System.assertEquals(acc.Balance__c * 0.06, testAcc.Calculated_Interest__c);
            System.assertEquals(acc.Email__c, testAcc.Email__c);
            System.assertEquals(acc.Loan_Interest_Rate__c, testAcc.Loan_Interest_Rate__c);
            System.assertEquals(acc.Loan_Type__c, testAcc.Loan_Type__c);
            //System.assertEquals(acc.Remaining_Loan_Amount__c, testAcc.Remaining_Loan_Amount__c);
            System.assertEquals(acc.Total_Loan_Amount__c, testAcc.Total_Loan_Amount__c);
        } catch (Exception e) {
            System.assert(false, e.getMessage());
        }
        Test.stopTest();
    }
    

    @isTest
    public static void testAccount_129() {
        Test.startTest();
        Account acc = new Account();
        acc.Name = 'ToUpdate Account';
        acc.Balance__c = 100;
        acc.RecordTypeId = Schema.SObjectType.Account.getRecordTypeInfosByName().get('>=$100').getRecordTypeId();
        acc.Email__c = 'testUpdate@pairwise.test';
        acc.Active__c = 'Yes';
        insert acc;
        
        acc.Name = '';
        acc.Balance__c = 186;
        acc.Calculated_Interest__c = 7;
        acc.Email__c = 'test129@pairwise.test';
        acc.Loan_Interest_Rate__c = 0.11;
        acc.Loan_Type__c = 'Home Loan';
        acc.Remaining_Loan_Amount__c = null;
        acc.Total_Loan_Amount__c = 570037;
        
        
        try {
            update acc;
            Account testAcc = [SELECT name, balance__c, calculated_interest__c, email__c, interest_rate__c, loan_interest_rate__c, loan_type__c, remaining_loan_amount__c, total_loan_amount__c, active__c FROM Account WHERE name='' LIMIT 1];
            System.assertEquals(acc.Name, testAcc.Name);
            System.assertEquals(acc.Balance__c, testAcc.Balance__c);
            System.assertEquals(acc.Balance__c * 0.06, testAcc.Calculated_Interest__c);
            System.assertEquals(acc.Email__c, testAcc.Email__c);
            System.assertEquals(acc.Loan_Interest_Rate__c, testAcc.Loan_Interest_Rate__c);
            System.assertEquals(acc.Loan_Type__c, testAcc.Loan_Type__c);
            //System.assertEquals(acc.Remaining_Loan_Amount__c, testAcc.Remaining_Loan_Amount__c);
            System.assertEquals(acc.Total_Loan_Amount__c, testAcc.Total_Loan_Amount__c);
        } catch (Exception e) {
            System.assert(false, e.getMessage());
        }
        Test.stopTest();
    }
    

    @isTest
    public static void testAccount_130() {
        Test.startTest();
        Account acc = new Account();
        acc.Name = 'ToUpdate Account';
        acc.Balance__c = 100;
        acc.RecordTypeId = Schema.SObjectType.Account.getRecordTypeInfosByName().get('>=$0').getRecordTypeId();
        acc.Email__c = 'testUpdate@pairwise.test';
        acc.Active__c = 'Yes';
        insert acc;
        
        acc.Name = '';
        acc.Balance__c = 175;
        acc.Calculated_Interest__c = null;
        acc.Email__c = '';
        acc.Loan_Interest_Rate__c = 0.09;
        acc.Loan_Type__c = '';
        acc.Remaining_Loan_Amount__c = 15000000;
        acc.Total_Loan_Amount__c = null;
        
        
        try {
            update acc;
            Account testAcc = [SELECT name, balance__c, calculated_interest__c, email__c, interest_rate__c, loan_interest_rate__c, loan_type__c, remaining_loan_amount__c, total_loan_amount__c, active__c FROM Account WHERE name='' LIMIT 1];
            System.assertEquals(acc.Name, testAcc.Name);
            System.assertEquals(acc.Balance__c, testAcc.Balance__c);
            System.assertEquals(acc.Balance__c * 0.038, testAcc.Calculated_Interest__c);
            System.assertEquals(acc.Email__c, testAcc.Email__c);
            System.assertEquals(acc.Loan_Interest_Rate__c, testAcc.Loan_Interest_Rate__c);
            System.assertEquals(acc.Loan_Type__c, testAcc.Loan_Type__c);
            //System.assertEquals(acc.Remaining_Loan_Amount__c, testAcc.Remaining_Loan_Amount__c);
            System.assertEquals(acc.Total_Loan_Amount__c, testAcc.Total_Loan_Amount__c);
        } catch (Exception e) {
            System.assert(false, e.getMessage());
        }
        Test.stopTest();
    }
    

    @isTest
    public static void testAccount_131() {
        Test.startTest();
        Account acc = new Account();
        acc.Name = '';
        acc.Balance__c = 198;
        acc.RecordTypeId = Schema.SObjectType.Account.getRecordTypeInfosByName().get('>=$100').getRecordTypeId();
        acc.Calculated_Interest__c = null;
        acc.Email__c = '';
        acc.Loan_Interest_Rate__c = null;
        acc.Loan_Type__c = 'Car Loan';
        //acc.Remaining_Loan_Amount__c = 15000000;
        acc.Total_Loan_Amount__c = 5221855;
        acc.Active__c = 'Yes';
        
        
        try {
            insert acc;
            Account testAcc = [SELECT name, balance__c, calculated_interest__c, email__c, interest_rate__c, loan_interest_rate__c, loan_type__c, remaining_loan_amount__c, total_loan_amount__c, active__c FROM Account WHERE name='' LIMIT 1];
            System.assertEquals(acc.Name, testAcc.Name);
            System.assertEquals(acc.Balance__c, testAcc.Balance__c);
            System.assertEquals(acc.Balance__c * 0.05, testAcc.Calculated_Interest__c);
            System.assertEquals(acc.Email__c, testAcc.Email__c);
            System.assertEquals(acc.Loan_Interest_Rate__c, testAcc.Loan_Interest_Rate__c);
            System.assertEquals(acc.Loan_Type__c, testAcc.Loan_Type__c);
            //System.assertEquals(acc.Remaining_Loan_Amount__c, testAcc.Remaining_Loan_Amount__c);
            System.assertEquals(acc.Total_Loan_Amount__c, testAcc.Total_Loan_Amount__c);
        } catch (Exception e) {
            System.assert(false, e.getMessage());
        }
        Test.stopTest();
    }
    

    @isTest
    public static void testAccount_132() {
        Test.startTest();
        Account acc = new Account();
        acc.Name = 'ToUpdate Account';
        acc.Balance__c = 100;
        acc.RecordTypeId = Schema.SObjectType.Account.getRecordTypeInfosByName().get('Negative').getRecordTypeId();
        acc.Email__c = 'testUpdate@pairwise.test';
        acc.Active__c = 'Yes';
        insert acc;
        
        acc.Name = '';
        acc.Balance__c = 166;
        acc.Calculated_Interest__c = null;
        acc.Email__c = 'test132@pairwise.test';
        acc.Loan_Interest_Rate__c = 0.11800000000000001;
        acc.Loan_Type__c = 'Car Loan';
        acc.Remaining_Loan_Amount__c = 15000000;
        acc.Total_Loan_Amount__c = 963354;
        
        
        try {
            update acc;
            Account testAcc = [SELECT name, balance__c, calculated_interest__c, email__c, interest_rate__c, loan_interest_rate__c, loan_type__c, remaining_loan_amount__c, total_loan_amount__c, active__c FROM Account WHERE name='' LIMIT 1];
            System.assertEquals(acc.Name, testAcc.Name);
            System.assertEquals(acc.Balance__c, testAcc.Balance__c);
            System.assertEquals(acc.Balance__c * 0.05, testAcc.Calculated_Interest__c);
            System.assertEquals(acc.Email__c, testAcc.Email__c);
            System.assertEquals(acc.Loan_Interest_Rate__c, testAcc.Loan_Interest_Rate__c);
            System.assertEquals(acc.Loan_Type__c, testAcc.Loan_Type__c);
            //System.assertEquals(acc.Remaining_Loan_Amount__c, testAcc.Remaining_Loan_Amount__c);
            System.assertEquals(acc.Total_Loan_Amount__c, testAcc.Total_Loan_Amount__c);
        } catch (Exception e) {
            System.assert(false, e.getMessage());
        }
        Test.stopTest();
    }
    

    @isTest
    public static void testAccount_133() {
        Test.startTest();
        Account acc = new Account();
        acc.Name = 'ToUpdate Account';
        acc.Balance__c = 100;
        acc.RecordTypeId = Schema.SObjectType.Account.getRecordTypeInfosByName().get('>=$100').getRecordTypeId();
        acc.Email__c = 'testUpdate@pairwise.test';
        acc.Active__c = 'Yes';
        insert acc;
        
        acc.Name = '';
        acc.Balance__c = 136;
        acc.Calculated_Interest__c = 7;
        acc.Email__c = 'test133@pairwise.test';
        acc.Loan_Interest_Rate__c = 0.11900000000000001;
        acc.Loan_Type__c = 'Home Loan';
        acc.Remaining_Loan_Amount__c = 15000000;
        acc.Total_Loan_Amount__c = null;
        
        
        try {
            update acc;
            Account testAcc = [SELECT name, balance__c, calculated_interest__c, email__c, interest_rate__c, loan_interest_rate__c, loan_type__c, remaining_loan_amount__c, total_loan_amount__c, active__c FROM Account WHERE name='' LIMIT 1];
            System.assertEquals(acc.Name, testAcc.Name);
            System.assertEquals(acc.Balance__c, testAcc.Balance__c);
            System.assertEquals(acc.Balance__c * 0.05, testAcc.Calculated_Interest__c);
            System.assertEquals(acc.Email__c, testAcc.Email__c);
            System.assertEquals(acc.Loan_Interest_Rate__c, testAcc.Loan_Interest_Rate__c);
            System.assertEquals(acc.Loan_Type__c, testAcc.Loan_Type__c);
            //System.assertEquals(acc.Remaining_Loan_Amount__c, testAcc.Remaining_Loan_Amount__c);
            System.assertEquals(acc.Total_Loan_Amount__c, testAcc.Total_Loan_Amount__c);
        } catch (Exception e) {
            System.assert(false, e.getMessage());
        }
        Test.stopTest();
    }
    

    @isTest
    public static void testAccount_134() {
        Test.startTest();
        Account acc = new Account();
        acc.Name = 'ToUpdate Account';
        acc.Balance__c = 100;
        acc.RecordTypeId = Schema.SObjectType.Account.getRecordTypeInfosByName().get('>=$100').getRecordTypeId();
        acc.Email__c = 'testUpdate@pairwise.test';
        acc.Active__c = 'Yes';
        insert acc;
        
        acc.Name = '';
        acc.Balance__c = 118;
        acc.Calculated_Interest__c = null;
        acc.Email__c = '';
        acc.Loan_Interest_Rate__c = null;
        acc.Loan_Type__c = 'Car Loan';
        acc.Remaining_Loan_Amount__c = 15000000;
        acc.Total_Loan_Amount__c = 892978;
        
        
        try {
            update acc;
            Account testAcc = [SELECT name, balance__c, calculated_interest__c, email__c, interest_rate__c, loan_interest_rate__c, loan_type__c, remaining_loan_amount__c, total_loan_amount__c, active__c FROM Account WHERE name='' LIMIT 1];
            System.assertEquals(acc.Name, testAcc.Name);
            System.assertEquals(acc.Balance__c, testAcc.Balance__c);
            System.assertEquals(acc.Balance__c * 0.06, testAcc.Calculated_Interest__c);
            System.assertEquals(acc.Email__c, testAcc.Email__c);
            System.assertEquals(acc.Loan_Interest_Rate__c, testAcc.Loan_Interest_Rate__c);
            System.assertEquals(acc.Loan_Type__c, testAcc.Loan_Type__c);
            //System.assertEquals(acc.Remaining_Loan_Amount__c, testAcc.Remaining_Loan_Amount__c);
            System.assertEquals(acc.Total_Loan_Amount__c, testAcc.Total_Loan_Amount__c);
        } catch (Exception e) {
            System.assert(false, e.getMessage());
        }
        Test.stopTest();
    }
    

    @isTest
    public static void testAccount_135() {
        Test.startTest();
        Account acc = new Account();
        acc.Name = 'ToUpdate Account';
        acc.Balance__c = 100;
        acc.RecordTypeId = Schema.SObjectType.Account.getRecordTypeInfosByName().get('>=$0').getRecordTypeId();
        acc.Email__c = 'testUpdate@pairwise.test';
        acc.Active__c = 'Yes';
        insert acc;
        
        acc.Name = '';
        acc.Balance__c = 188;
        acc.Calculated_Interest__c = 7;
        acc.Email__c = '';
        acc.Loan_Interest_Rate__c = 0.1;
        acc.Loan_Type__c = '';
        acc.Remaining_Loan_Amount__c = 15000000;
        acc.Total_Loan_Amount__c = null;
        
        
        try {
            update acc;
            Account testAcc = [SELECT name, balance__c, calculated_interest__c, email__c, interest_rate__c, loan_interest_rate__c, loan_type__c, remaining_loan_amount__c, total_loan_amount__c, active__c FROM Account WHERE name='' LIMIT 1];
            System.assertEquals(acc.Name, testAcc.Name);
            System.assertEquals(acc.Balance__c, testAcc.Balance__c);
            System.assertEquals(acc.Balance__c * 0.038, testAcc.Calculated_Interest__c);
            System.assertEquals(acc.Email__c, testAcc.Email__c);
            System.assertEquals(acc.Loan_Interest_Rate__c, testAcc.Loan_Interest_Rate__c);
            System.assertEquals(acc.Loan_Type__c, testAcc.Loan_Type__c);
            //System.assertEquals(acc.Remaining_Loan_Amount__c, testAcc.Remaining_Loan_Amount__c);
            System.assertEquals(acc.Total_Loan_Amount__c, testAcc.Total_Loan_Amount__c);
        } catch (Exception e) {
            System.assert(false, e.getMessage());
        }
        Test.stopTest();
    }
    

    @isTest
    public static void testAccount_136() {
        Test.startTest();
        Account acc = new Account();
        acc.Name = '';
        acc.Balance__c = 167;
        acc.RecordTypeId = Schema.SObjectType.Account.getRecordTypeInfosByName().get('>=$0').getRecordTypeId();
        acc.Calculated_Interest__c = null;
        acc.Email__c = '';
        acc.Loan_Interest_Rate__c = 0.125;
        acc.Loan_Type__c = 'Car Loan';
        //acc.Remaining_Loan_Amount__c = 15000000;
        acc.Total_Loan_Amount__c = 623041;
        acc.Active__c = 'Yes';
        
        
        try {
            insert acc;
            Account testAcc = [SELECT name, balance__c, calculated_interest__c, email__c, interest_rate__c, loan_interest_rate__c, loan_type__c, remaining_loan_amount__c, total_loan_amount__c, active__c FROM Account WHERE name='' LIMIT 1];
            System.assertEquals(acc.Name, testAcc.Name);
            System.assertEquals(acc.Balance__c, testAcc.Balance__c);
            System.assertEquals(acc.Balance__c * 0.06, testAcc.Calculated_Interest__c);
            System.assertEquals(acc.Email__c, testAcc.Email__c);
            System.assertEquals(acc.Loan_Interest_Rate__c, testAcc.Loan_Interest_Rate__c);
            System.assertEquals(acc.Loan_Type__c, testAcc.Loan_Type__c);
            //System.assertEquals(acc.Remaining_Loan_Amount__c, testAcc.Remaining_Loan_Amount__c);
            System.assertEquals(acc.Total_Loan_Amount__c, testAcc.Total_Loan_Amount__c);
        } catch (Exception e) {
            System.assert(false, e.getMessage());
        }
        Test.stopTest();
    }
    

    @isTest
    public static void testAccount_137() {
        Test.startTest();
        Account acc = new Account();
        acc.Name = 'ToUpdate Account';
        acc.Balance__c = 100;
        acc.RecordTypeId = Schema.SObjectType.Account.getRecordTypeInfosByName().get('Blank').getRecordTypeId();
        acc.Email__c = 'testUpdate@pairwise.test';
        acc.Active__c = 'Yes';
        insert acc;
        
        acc.Name = '';
        acc.Balance__c = 114;
        acc.Calculated_Interest__c = null;
        acc.Email__c = 'test137@pairwise.test';
        acc.Loan_Interest_Rate__c = 0.159;
        acc.Loan_Type__c = 'Home Loan';
        acc.Remaining_Loan_Amount__c = 15000000;
        acc.Total_Loan_Amount__c = 613746;
        
        
        try {
            update acc;
            Account testAcc = [SELECT name, balance__c, calculated_interest__c, email__c, interest_rate__c, loan_interest_rate__c, loan_type__c, remaining_loan_amount__c, total_loan_amount__c, active__c FROM Account WHERE name='' LIMIT 1];
            System.assertEquals(acc.Name, testAcc.Name);
            System.assertEquals(acc.Balance__c, testAcc.Balance__c);
            System.assertEquals(acc.Balance__c * 0.038, testAcc.Calculated_Interest__c);
            System.assertEquals(acc.Email__c, testAcc.Email__c);
            System.assertEquals(acc.Loan_Interest_Rate__c, testAcc.Loan_Interest_Rate__c);
            System.assertEquals(acc.Loan_Type__c, testAcc.Loan_Type__c);
            //System.assertEquals(acc.Remaining_Loan_Amount__c, testAcc.Remaining_Loan_Amount__c);
            System.assertEquals(acc.Total_Loan_Amount__c, testAcc.Total_Loan_Amount__c);
        } catch (Exception e) {
            System.assert(false, e.getMessage());
        }
        Test.stopTest();
    }
    

    @isTest
    public static void testAccount_138() {
        Test.startTest();
        Account acc = new Account();
        acc.Name = 'ToUpdate Account';
        acc.Balance__c = 100;
        acc.RecordTypeId = Schema.SObjectType.Account.getRecordTypeInfosByName().get('Blank').getRecordTypeId();
        acc.Email__c = 'testUpdate@pairwise.test';
        acc.Active__c = 'Yes';
        insert acc;
        
        acc.Name = '';
        acc.Balance__c = 134;
        acc.Calculated_Interest__c = null;
        acc.Email__c = '';
        acc.Loan_Interest_Rate__c = 0.08;
        acc.Loan_Type__c = 'Home Loan';
        acc.Remaining_Loan_Amount__c = 15000000;
        acc.Total_Loan_Amount__c = 807055;
        
        
        try {
            update acc;
            Account testAcc = [SELECT name, balance__c, calculated_interest__c, email__c, interest_rate__c, loan_interest_rate__c, loan_type__c, remaining_loan_amount__c, total_loan_amount__c, active__c FROM Account WHERE name='' LIMIT 1];
            System.assertEquals(acc.Name, testAcc.Name);
            System.assertEquals(acc.Balance__c, testAcc.Balance__c);
            System.assertEquals(acc.Balance__c * 0.038, testAcc.Calculated_Interest__c);
            System.assertEquals(acc.Email__c, testAcc.Email__c);
            System.assertEquals(acc.Loan_Interest_Rate__c, testAcc.Loan_Interest_Rate__c);
            System.assertEquals(acc.Loan_Type__c, testAcc.Loan_Type__c);
            //System.assertEquals(acc.Remaining_Loan_Amount__c, testAcc.Remaining_Loan_Amount__c);
            System.assertEquals(acc.Total_Loan_Amount__c, testAcc.Total_Loan_Amount__c);
        } catch (Exception e) {
            System.assert(false, e.getMessage());
        }
        Test.stopTest();
    }
    

    @isTest
    public static void testAccount_139() {
        Test.startTest();
        Account acc = new Account();
        acc.Name = 'ToUpdate Account';
        acc.Balance__c = 100;
        acc.RecordTypeId = Schema.SObjectType.Account.getRecordTypeInfosByName().get('>=$100').getRecordTypeId();
        acc.Email__c = 'testUpdate@pairwise.test';
        acc.Active__c = 'Yes';
        insert acc;
        
        acc.Name = '';
        acc.Balance__c = 196;
        acc.Calculated_Interest__c = 7;
        acc.Email__c = 'test139@pairwise.test';
        acc.Loan_Interest_Rate__c = 0.162;
        acc.Loan_Type__c = 'Car Loan';
        acc.Remaining_Loan_Amount__c = 15000000;
        acc.Total_Loan_Amount__c = 979417;
        
        
        try {
            update acc;
            Account testAcc = [SELECT name, balance__c, calculated_interest__c, email__c, interest_rate__c, loan_interest_rate__c, loan_type__c, remaining_loan_amount__c, total_loan_amount__c, active__c FROM Account WHERE name='' LIMIT 1];
            System.assertEquals(acc.Name, testAcc.Name);
            System.assertEquals(acc.Balance__c, testAcc.Balance__c);
            System.assertEquals(acc.Balance__c * 0.06, testAcc.Calculated_Interest__c);
            System.assertEquals(acc.Email__c, testAcc.Email__c);
            System.assertEquals(acc.Loan_Interest_Rate__c, testAcc.Loan_Interest_Rate__c);
            System.assertEquals(acc.Loan_Type__c, testAcc.Loan_Type__c);
            //System.assertEquals(acc.Remaining_Loan_Amount__c, testAcc.Remaining_Loan_Amount__c);
            System.assertEquals(acc.Total_Loan_Amount__c, testAcc.Total_Loan_Amount__c);
        } catch (Exception e) {
            System.assert(false, e.getMessage());
        }
        Test.stopTest();
    }
    

    @isTest
    public static void testAccount_140() {
        Test.startTest();
        Account acc = new Account();
        acc.Name = '';
        acc.Balance__c = 114;
        acc.RecordTypeId = Schema.SObjectType.Account.getRecordTypeInfosByName().get('>=$100').getRecordTypeId();
        acc.Calculated_Interest__c = null;
        acc.Email__c = 'test140@pairwise.test';
        acc.Loan_Interest_Rate__c = 0.162;
        acc.Loan_Type__c = 'Home Loan';
        //acc.Remaining_Loan_Amount__c = null;
        acc.Total_Loan_Amount__c = 311359;
        acc.Active__c = 'Yes';
        
        
        try {
            insert acc;
            Account testAcc = [SELECT name, balance__c, calculated_interest__c, email__c, interest_rate__c, loan_interest_rate__c, loan_type__c, remaining_loan_amount__c, total_loan_amount__c, active__c FROM Account WHERE name='' LIMIT 1];
            System.assertEquals(acc.Name, testAcc.Name);
            System.assertEquals(acc.Balance__c, testAcc.Balance__c);
            System.assertEquals(acc.Balance__c * 0.038, testAcc.Calculated_Interest__c);
            System.assertEquals(acc.Email__c, testAcc.Email__c);
            System.assertEquals(acc.Loan_Interest_Rate__c, testAcc.Loan_Interest_Rate__c);
            System.assertEquals(acc.Loan_Type__c, testAcc.Loan_Type__c);
            //System.assertEquals(acc.Remaining_Loan_Amount__c, testAcc.Remaining_Loan_Amount__c);
            System.assertEquals(acc.Total_Loan_Amount__c, testAcc.Total_Loan_Amount__c);
        } catch (Exception e) {
            System.assert(false, e.getMessage());
        }
        Test.stopTest();
    }
    

    @isTest
    public static void testAccount_141() {
        Test.startTest();
        Account acc = new Account();
        acc.Name = 'ToUpdate Account';
        acc.Balance__c = 100;
        acc.RecordTypeId = Schema.SObjectType.Account.getRecordTypeInfosByName().get('>=$100').getRecordTypeId();
        acc.Email__c = 'testUpdate@pairwise.test';
        acc.Active__c = 'Yes';
        insert acc;
        
        acc.Name = '';
        acc.Balance__c = 190;
        acc.Calculated_Interest__c = null;
        acc.Email__c = '';
        acc.Loan_Interest_Rate__c = 0.159;
        acc.Loan_Type__c = 'Home Loan';
        acc.Remaining_Loan_Amount__c = null;
        acc.Total_Loan_Amount__c = 782923;
        
        
        try {
            update acc;
            Account testAcc = [SELECT name, balance__c, calculated_interest__c, email__c, interest_rate__c, loan_interest_rate__c, loan_type__c, remaining_loan_amount__c, total_loan_amount__c, active__c FROM Account WHERE name='' LIMIT 1];
            System.assertEquals(acc.Name, testAcc.Name);
            System.assertEquals(acc.Balance__c, testAcc.Balance__c);
            System.assertEquals(acc.Balance__c * 0.05, testAcc.Calculated_Interest__c);
            System.assertEquals(acc.Email__c, testAcc.Email__c);
            System.assertEquals(acc.Loan_Interest_Rate__c, testAcc.Loan_Interest_Rate__c);
            System.assertEquals(acc.Loan_Type__c, testAcc.Loan_Type__c);
            //System.assertEquals(acc.Remaining_Loan_Amount__c, testAcc.Remaining_Loan_Amount__c);
            System.assertEquals(acc.Total_Loan_Amount__c, testAcc.Total_Loan_Amount__c);
        } catch (Exception e) {
            System.assert(false, e.getMessage());
        }
        Test.stopTest();
    }
    

    @isTest
    public static void testAccount_142() {
        Test.startTest();
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
        acc.Email__c = 'test142@pairwise.test';
        acc.Loan_Interest_Rate__c = 0.159;
        acc.Loan_Type__c = 'Home Loan';
        acc.Remaining_Loan_Amount__c = null;
        acc.Total_Loan_Amount__c = 442680;
        
        
        try {
            update acc;
            Account testAcc = [SELECT name, balance__c, calculated_interest__c, email__c, interest_rate__c, loan_interest_rate__c, loan_type__c, remaining_loan_amount__c, total_loan_amount__c, active__c FROM Account WHERE name='' LIMIT 1];
            System.assertEquals(acc.Name, testAcc.Name);
            System.assertEquals(acc.Balance__c, testAcc.Balance__c);
            System.assertEquals(acc.Balance__c * 0.038, testAcc.Calculated_Interest__c);
            System.assertEquals(acc.Email__c, testAcc.Email__c);
            System.assertEquals(acc.Loan_Interest_Rate__c, testAcc.Loan_Interest_Rate__c);
            System.assertEquals(acc.Loan_Type__c, testAcc.Loan_Type__c);
            //System.assertEquals(acc.Remaining_Loan_Amount__c, testAcc.Remaining_Loan_Amount__c);
            System.assertEquals(acc.Total_Loan_Amount__c, testAcc.Total_Loan_Amount__c);
        } catch (Exception e) {
            System.assert(false, e.getMessage());
        }
        Test.stopTest();
    }
    

    @isTest
    public static void testAccount_143() {
        Test.startTest();
        Account acc = new Account();
        acc.Name = '';
        acc.Balance__c = 140;
        acc.RecordTypeId = Schema.SObjectType.Account.getRecordTypeInfosByName().get('>=$100').getRecordTypeId();
        acc.Calculated_Interest__c = 7;
        acc.Email__c = '';
        acc.Loan_Interest_Rate__c = null;
        acc.Loan_Type__c = 'Home Loan';
        //acc.Remaining_Loan_Amount__c = 15000000;
        acc.Total_Loan_Amount__c = 568023;
        acc.Active__c = 'Yes';
        
        
        try {
            insert acc;
            Account testAcc = [SELECT name, balance__c, calculated_interest__c, email__c, interest_rate__c, loan_interest_rate__c, loan_type__c, remaining_loan_amount__c, total_loan_amount__c, active__c FROM Account WHERE name='' LIMIT 1];
            System.assertEquals(acc.Name, testAcc.Name);
            System.assertEquals(acc.Balance__c, testAcc.Balance__c);
            System.assertEquals(acc.Balance__c * 0.038, testAcc.Calculated_Interest__c);
            System.assertEquals(acc.Email__c, testAcc.Email__c);
            System.assertEquals(acc.Loan_Interest_Rate__c, testAcc.Loan_Interest_Rate__c);
            System.assertEquals(acc.Loan_Type__c, testAcc.Loan_Type__c);
            //System.assertEquals(acc.Remaining_Loan_Amount__c, testAcc.Remaining_Loan_Amount__c);
            System.assertEquals(acc.Total_Loan_Amount__c, testAcc.Total_Loan_Amount__c);
        } catch (Exception e) {
            System.assert(false, e.getMessage());
        }
        Test.stopTest();
    }
    

    @isTest
    public static void testAccount_144() {
        Test.startTest();
        Account acc = new Account();
        acc.Name = 'ToUpdate Account';
        acc.Balance__c = 100;
        acc.RecordTypeId = Schema.SObjectType.Account.getRecordTypeInfosByName().get('Blank').getRecordTypeId();
        acc.Email__c = 'testUpdate@pairwise.test';
        acc.Active__c = 'Yes';
        insert acc;
        
        acc.Name = '';
        acc.Balance__c = 125;
        acc.Calculated_Interest__c = 7;
        acc.Email__c = '';
        acc.Loan_Interest_Rate__c = 0.10300000000000001;
        acc.Loan_Type__c = 'Home Loan';
        acc.Remaining_Loan_Amount__c = null;
        acc.Total_Loan_Amount__c = null;
        
        
        try {
            update acc;
            Account testAcc = [SELECT name, balance__c, calculated_interest__c, email__c, interest_rate__c, loan_interest_rate__c, loan_type__c, remaining_loan_amount__c, total_loan_amount__c, active__c FROM Account WHERE name='' LIMIT 1];
            System.assertEquals(acc.Name, testAcc.Name);
            System.assertEquals(acc.Balance__c, testAcc.Balance__c);
            System.assertEquals(acc.Balance__c * 0.038, testAcc.Calculated_Interest__c);
            System.assertEquals(acc.Email__c, testAcc.Email__c);
            System.assertEquals(acc.Loan_Interest_Rate__c, testAcc.Loan_Interest_Rate__c);
            System.assertEquals(acc.Loan_Type__c, testAcc.Loan_Type__c);
            //System.assertEquals(acc.Remaining_Loan_Amount__c, testAcc.Remaining_Loan_Amount__c);
            System.assertEquals(acc.Total_Loan_Amount__c, testAcc.Total_Loan_Amount__c);
        } catch (Exception e) {
            System.assert(false, e.getMessage());
        }
        Test.stopTest();
    }
    

    @isTest
    public static void testAccount_145() {
        Test.startTest();
        Account acc = new Account();
        acc.Name = 'ToUpdate Account';
        acc.Balance__c = 100;
        acc.RecordTypeId = Schema.SObjectType.Account.getRecordTypeInfosByName().get('>=$0').getRecordTypeId();
        acc.Email__c = 'testUpdate@pairwise.test';
        acc.Active__c = 'Yes';
        insert acc;
        
        acc.Name = '';
        acc.Balance__c = 100;
        acc.Calculated_Interest__c = null;
        acc.Email__c = 'test145@pairwise.test';
        acc.Loan_Interest_Rate__c = 0.09;
        acc.Loan_Type__c = 'Car Loan';
        acc.Remaining_Loan_Amount__c = 15000000;
        acc.Total_Loan_Amount__c = 6748564;
        
        
        try {
            update acc;
            Account testAcc = [SELECT name, balance__c, calculated_interest__c, email__c, interest_rate__c, loan_interest_rate__c, loan_type__c, remaining_loan_amount__c, total_loan_amount__c, active__c FROM Account WHERE name='' LIMIT 1];
            System.assertEquals(acc.Name, testAcc.Name);
            System.assertEquals(acc.Balance__c, testAcc.Balance__c);
            System.assertEquals(acc.Balance__c * 0.05, testAcc.Calculated_Interest__c);
            System.assertEquals(acc.Email__c, testAcc.Email__c);
            System.assertEquals(acc.Loan_Interest_Rate__c, testAcc.Loan_Interest_Rate__c);
            System.assertEquals(acc.Loan_Type__c, testAcc.Loan_Type__c);
            //System.assertEquals(acc.Remaining_Loan_Amount__c, testAcc.Remaining_Loan_Amount__c);
            System.assertEquals(acc.Total_Loan_Amount__c, testAcc.Total_Loan_Amount__c);
        } catch (Exception e) {
            System.assert(false, e.getMessage());
        }
        Test.stopTest();
    }
    

    @isTest
    public static void testAccount_146() {
        Test.startTest();
        Account acc = new Account();
        acc.Name = 'ToUpdate Account';
        acc.Balance__c = 100;
        acc.RecordTypeId = Schema.SObjectType.Account.getRecordTypeInfosByName().get('>=$100').getRecordTypeId();
        acc.Email__c = 'testUpdate@pairwise.test';
        acc.Active__c = 'Yes';
        insert acc;
        
        acc.Name = '';
        acc.Balance__c = 183;
        acc.Calculated_Interest__c = null;
        acc.Email__c = 'test146@pairwise.test';
        acc.Loan_Interest_Rate__c = 0.084;
        acc.Loan_Type__c = 'Home Loan';
        acc.Remaining_Loan_Amount__c = null;
        acc.Total_Loan_Amount__c = null;
        
        
        try {
            update acc;
            Account testAcc = [SELECT name, balance__c, calculated_interest__c, email__c, interest_rate__c, loan_interest_rate__c, loan_type__c, remaining_loan_amount__c, total_loan_amount__c, active__c FROM Account WHERE name='' LIMIT 1];
            System.assertEquals(acc.Name, testAcc.Name);
            System.assertEquals(acc.Balance__c, testAcc.Balance__c);
            System.assertEquals(acc.Balance__c * 0.05, testAcc.Calculated_Interest__c);
            System.assertEquals(acc.Email__c, testAcc.Email__c);
            System.assertEquals(acc.Loan_Interest_Rate__c, testAcc.Loan_Interest_Rate__c);
            System.assertEquals(acc.Loan_Type__c, testAcc.Loan_Type__c);
            //System.assertEquals(acc.Remaining_Loan_Amount__c, testAcc.Remaining_Loan_Amount__c);
            System.assertEquals(acc.Total_Loan_Amount__c, testAcc.Total_Loan_Amount__c);
        } catch (Exception e) {
            System.assert(false, e.getMessage());
        }
        Test.stopTest();
    }
    

    @isTest
    public static void testAccount_147() {
        Test.startTest();
        Account acc = new Account();
        acc.Name = '';
        acc.Balance__c = 170;
        acc.RecordTypeId = Schema.SObjectType.Account.getRecordTypeInfosByName().get('>=$100').getRecordTypeId();
        acc.Calculated_Interest__c = null;
        acc.Email__c = '';
        acc.Loan_Interest_Rate__c = 0.136;
        acc.Loan_Type__c = 'Home Loan';
        //acc.Remaining_Loan_Amount__c = null;
        acc.Total_Loan_Amount__c = 3468570;
        acc.Active__c = 'Yes';
        
        
        try {
            insert acc;
            Account testAcc = [SELECT name, balance__c, calculated_interest__c, email__c, interest_rate__c, loan_interest_rate__c, loan_type__c, remaining_loan_amount__c, total_loan_amount__c, active__c FROM Account WHERE name='' LIMIT 1];
            System.assertEquals(acc.Name, testAcc.Name);
            System.assertEquals(acc.Balance__c, testAcc.Balance__c);
            System.assertEquals(acc.Balance__c * 0.05, testAcc.Calculated_Interest__c);
            System.assertEquals(acc.Email__c, testAcc.Email__c);
            System.assertEquals(acc.Loan_Interest_Rate__c, testAcc.Loan_Interest_Rate__c);
            System.assertEquals(acc.Loan_Type__c, testAcc.Loan_Type__c);
            //System.assertEquals(acc.Remaining_Loan_Amount__c, testAcc.Remaining_Loan_Amount__c);
            System.assertEquals(acc.Total_Loan_Amount__c, testAcc.Total_Loan_Amount__c);
        } catch (Exception e) {
            System.assert(false, e.getMessage());
        }
        Test.stopTest();
    }
    

    @isTest
    public static void testAccount_148() {
        Test.startTest();
        Account acc = new Account();
        acc.Name = 'ToUpdate Account';
        acc.Balance__c = 100;
        acc.RecordTypeId = Schema.SObjectType.Account.getRecordTypeInfosByName().get('>=$100').getRecordTypeId();
        acc.Email__c = 'testUpdate@pairwise.test';
        acc.Active__c = 'Yes';
        insert acc;
        
        acc.Name = '';
        acc.Balance__c = 133;
        acc.Calculated_Interest__c = 7;
        acc.Email__c = 'test148@pairwise.test';
        acc.Loan_Interest_Rate__c = 0.159;
        acc.Loan_Type__c = 'Home Loan';
        acc.Remaining_Loan_Amount__c = null;
        acc.Total_Loan_Amount__c = 707737;
        
        
        try {
            update acc;
            Account testAcc = [SELECT name, balance__c, calculated_interest__c, email__c, interest_rate__c, loan_interest_rate__c, loan_type__c, remaining_loan_amount__c, total_loan_amount__c, active__c FROM Account WHERE name='' LIMIT 1];
            System.assertEquals(acc.Name, testAcc.Name);
            System.assertEquals(acc.Balance__c, testAcc.Balance__c);
            System.assertEquals(acc.Balance__c * 0.05, testAcc.Calculated_Interest__c);
            System.assertEquals(acc.Email__c, testAcc.Email__c);
            System.assertEquals(acc.Loan_Interest_Rate__c, testAcc.Loan_Interest_Rate__c);
            System.assertEquals(acc.Loan_Type__c, testAcc.Loan_Type__c);
            //System.assertEquals(acc.Remaining_Loan_Amount__c, testAcc.Remaining_Loan_Amount__c);
            System.assertEquals(acc.Total_Loan_Amount__c, testAcc.Total_Loan_Amount__c);
        } catch (Exception e) {
            System.assert(false, e.getMessage());
        }
        Test.stopTest();
    }
    

    @isTest
    public static void testAccount_149() {
        Test.startTest();
        Account acc = new Account();
        acc.Name = 'ToUpdate Account';
        acc.Balance__c = 100;
        acc.RecordTypeId = Schema.SObjectType.Account.getRecordTypeInfosByName().get('>=$100').getRecordTypeId();
        acc.Email__c = 'testUpdate@pairwise.test';
        acc.Active__c = 'Yes';
        insert acc;
        
        acc.Name = '';
        acc.Balance__c = 183;
        acc.Calculated_Interest__c = null;
        acc.Email__c = 'test149@pairwise.test';
        acc.Loan_Interest_Rate__c = 0.11800000000000001;
        acc.Loan_Type__c = 'Home Loan';
        acc.Remaining_Loan_Amount__c = null;
        acc.Total_Loan_Amount__c = 232001;
        
        
        try {
            update acc;
            Account testAcc = [SELECT name, balance__c, calculated_interest__c, email__c, interest_rate__c, loan_interest_rate__c, loan_type__c, remaining_loan_amount__c, total_loan_amount__c, active__c FROM Account WHERE name='' LIMIT 1];
            System.assertEquals(acc.Name, testAcc.Name);
            System.assertEquals(acc.Balance__c, testAcc.Balance__c);
            System.assertEquals(acc.Balance__c * 0.05, testAcc.Calculated_Interest__c);
            System.assertEquals(acc.Email__c, testAcc.Email__c);
            System.assertEquals(acc.Loan_Interest_Rate__c, testAcc.Loan_Interest_Rate__c);
            System.assertEquals(acc.Loan_Type__c, testAcc.Loan_Type__c);
            //System.assertEquals(acc.Remaining_Loan_Amount__c, testAcc.Remaining_Loan_Amount__c);
            System.assertEquals(acc.Total_Loan_Amount__c, testAcc.Total_Loan_Amount__c);
        } catch (Exception e) {
            System.assert(false, e.getMessage());
        }
        Test.stopTest();
    }
    

    @isTest
    public static void testAccount_150() {
        Test.startTest();
        Account acc = new Account();
        acc.Name = 'ToUpdate Account';
        acc.Balance__c = 100;
        acc.RecordTypeId = Schema.SObjectType.Account.getRecordTypeInfosByName().get('Blank').getRecordTypeId();
        acc.Email__c = 'testUpdate@pairwise.test';
        acc.Active__c = 'Yes';
        insert acc;
        
        acc.Name = '';
        acc.Balance__c = 155;
        acc.Calculated_Interest__c = null;
        acc.Email__c = 'test150@pairwise.test';
        acc.Loan_Interest_Rate__c = 0.11;
        acc.Loan_Type__c = 'Car Loan';
        acc.Remaining_Loan_Amount__c = 15000000;
        acc.Total_Loan_Amount__c = 9074391;
        
        
        try {
            update acc;
            Account testAcc = [SELECT name, balance__c, calculated_interest__c, email__c, interest_rate__c, loan_interest_rate__c, loan_type__c, remaining_loan_amount__c, total_loan_amount__c, active__c FROM Account WHERE name='' LIMIT 1];
            System.assertEquals(acc.Name, testAcc.Name);
            System.assertEquals(acc.Balance__c, testAcc.Balance__c);
            System.assertEquals(acc.Balance__c * 0.05, testAcc.Calculated_Interest__c);
            System.assertEquals(acc.Email__c, testAcc.Email__c);
            System.assertEquals(acc.Loan_Interest_Rate__c, testAcc.Loan_Interest_Rate__c);
            System.assertEquals(acc.Loan_Type__c, testAcc.Loan_Type__c);
            //System.assertEquals(acc.Remaining_Loan_Amount__c, testAcc.Remaining_Loan_Amount__c);
            System.assertEquals(acc.Total_Loan_Amount__c, testAcc.Total_Loan_Amount__c);
        } catch (Exception e) {
            System.assert(false, e.getMessage());
        }
        Test.stopTest();
    }
    

    @isTest
    public static void testAccount_151() {
        Test.startTest();
        Account acc = new Account();
        acc.Name = 'ToUpdate Account';
        acc.Balance__c = 100;
        acc.RecordTypeId = Schema.SObjectType.Account.getRecordTypeInfosByName().get('>=$0').getRecordTypeId();
        acc.Email__c = 'testUpdate@pairwise.test';
        acc.Active__c = 'Yes';
        insert acc;
        
        acc.Name = '';
        acc.Balance__c = 166;
        acc.Calculated_Interest__c = 7;
        acc.Email__c = '';
        acc.Loan_Interest_Rate__c = 0.11900000000000001;
        acc.Loan_Type__c = 'Car Loan';
        acc.Remaining_Loan_Amount__c = 15000000;
        acc.Total_Loan_Amount__c = 332568;
        
        
        try {
            update acc;
            Account testAcc = [SELECT name, balance__c, calculated_interest__c, email__c, interest_rate__c, loan_interest_rate__c, loan_type__c, remaining_loan_amount__c, total_loan_amount__c, active__c FROM Account WHERE name='' LIMIT 1];
            System.assertEquals(acc.Name, testAcc.Name);
            System.assertEquals(acc.Balance__c, testAcc.Balance__c);
            System.assertEquals(acc.Balance__c * 0.038, testAcc.Calculated_Interest__c);
            System.assertEquals(acc.Email__c, testAcc.Email__c);
            System.assertEquals(acc.Loan_Interest_Rate__c, testAcc.Loan_Interest_Rate__c);
            System.assertEquals(acc.Loan_Type__c, testAcc.Loan_Type__c);
            //System.assertEquals(acc.Remaining_Loan_Amount__c, testAcc.Remaining_Loan_Amount__c);
            System.assertEquals(acc.Total_Loan_Amount__c, testAcc.Total_Loan_Amount__c);
        } catch (Exception e) {
            System.assert(false, e.getMessage());
        }
        Test.stopTest();
    }
    

    @isTest
    public static void testAccount_152() {
        Test.startTest();
        Account acc = new Account();
        acc.Name = 'ToUpdate Account';
        acc.Balance__c = 100;
        acc.RecordTypeId = Schema.SObjectType.Account.getRecordTypeInfosByName().get('Blank').getRecordTypeId();
        acc.Email__c = 'testUpdate@pairwise.test';
        acc.Active__c = 'Yes';
        insert acc;
        
        acc.Name = '';
        acc.Balance__c = 172;
        acc.Calculated_Interest__c = null;
        acc.Email__c = '';
        acc.Loan_Interest_Rate__c = 0.136;
        acc.Loan_Type__c = 'Car Loan';
        acc.Remaining_Loan_Amount__c = null;
        acc.Total_Loan_Amount__c = 556483;
        
        
        try {
            update acc;
            Account testAcc = [SELECT name, balance__c, calculated_interest__c, email__c, interest_rate__c, loan_interest_rate__c, loan_type__c, remaining_loan_amount__c, total_loan_amount__c, active__c FROM Account WHERE name='' LIMIT 1];
            System.assertEquals(acc.Name, testAcc.Name);
            System.assertEquals(acc.Balance__c, testAcc.Balance__c);
            System.assertEquals(acc.Balance__c * 0.05, testAcc.Calculated_Interest__c);
            System.assertEquals(acc.Email__c, testAcc.Email__c);
            System.assertEquals(acc.Loan_Interest_Rate__c, testAcc.Loan_Interest_Rate__c);
            System.assertEquals(acc.Loan_Type__c, testAcc.Loan_Type__c);
            //System.assertEquals(acc.Remaining_Loan_Amount__c, testAcc.Remaining_Loan_Amount__c);
            System.assertEquals(acc.Total_Loan_Amount__c, testAcc.Total_Loan_Amount__c);
        } catch (Exception e) {
            System.assert(false, e.getMessage());
        }
        Test.stopTest();
    }
    

    @isTest
    public static void testAccount_153() {
        Test.startTest();
        Account acc = new Account();
        acc.Name = 'ToUpdate Account';
        acc.Balance__c = 100;
        acc.RecordTypeId = Schema.SObjectType.Account.getRecordTypeInfosByName().get('>=$100').getRecordTypeId();
        acc.Email__c = 'testUpdate@pairwise.test';
        acc.Active__c = 'Yes';
        insert acc;
        
        acc.Name = '';
        acc.Balance__c = 184;
        acc.Calculated_Interest__c = 7;
        acc.Email__c = 'test153@pairwise.test';
        acc.Loan_Interest_Rate__c = 0.109;
        acc.Loan_Type__c = 'Car Loan';
        acc.Remaining_Loan_Amount__c = 15000000;
        acc.Total_Loan_Amount__c = 222497;
        
        
        try {
            update acc;
            Account testAcc = [SELECT name, balance__c, calculated_interest__c, email__c, interest_rate__c, loan_interest_rate__c, loan_type__c, remaining_loan_amount__c, total_loan_amount__c, active__c FROM Account WHERE name='' LIMIT 1];
            System.assertEquals(acc.Name, testAcc.Name);
            System.assertEquals(acc.Balance__c, testAcc.Balance__c);
            System.assertEquals(acc.Balance__c * 0.06, testAcc.Calculated_Interest__c);
            System.assertEquals(acc.Email__c, testAcc.Email__c);
            System.assertEquals(acc.Loan_Interest_Rate__c, testAcc.Loan_Interest_Rate__c);
            System.assertEquals(acc.Loan_Type__c, testAcc.Loan_Type__c);
            //System.assertEquals(acc.Remaining_Loan_Amount__c, testAcc.Remaining_Loan_Amount__c);
            System.assertEquals(acc.Total_Loan_Amount__c, testAcc.Total_Loan_Amount__c);
        } catch (Exception e) {
            System.assert(false, e.getMessage());
        }
        Test.stopTest();
    }
    

    @isTest
    public static void testAccount_154() {
        Test.startTest();
        Account acc = new Account();
        acc.Name = '';
        acc.Balance__c = 181;
        acc.RecordTypeId = Schema.SObjectType.Account.getRecordTypeInfosByName().get('>=$0').getRecordTypeId();
        acc.Calculated_Interest__c = 7;
        acc.Email__c = '';
        acc.Loan_Interest_Rate__c = 0.11900000000000001;
        acc.Loan_Type__c = 'Home Loan';
        //acc.Remaining_Loan_Amount__c = null;
        acc.Total_Loan_Amount__c = 418890;
        acc.Active__c = 'Yes';
        
        
        try {
            insert acc;
            Account testAcc = [SELECT name, balance__c, calculated_interest__c, email__c, interest_rate__c, loan_interest_rate__c, loan_type__c, remaining_loan_amount__c, total_loan_amount__c, active__c FROM Account WHERE name='' LIMIT 1];
            System.assertEquals(acc.Name, testAcc.Name);
            System.assertEquals(acc.Balance__c, testAcc.Balance__c);
            System.assertEquals(acc.Balance__c * 0.06, testAcc.Calculated_Interest__c);
            System.assertEquals(acc.Email__c, testAcc.Email__c);
            System.assertEquals(acc.Loan_Interest_Rate__c, testAcc.Loan_Interest_Rate__c);
            System.assertEquals(acc.Loan_Type__c, testAcc.Loan_Type__c);
            //System.assertEquals(acc.Remaining_Loan_Amount__c, testAcc.Remaining_Loan_Amount__c);
            System.assertEquals(acc.Total_Loan_Amount__c, testAcc.Total_Loan_Amount__c);
        } catch (Exception e) {
            System.assert(false, e.getMessage());
        }
        Test.stopTest();
    }
    

    @isTest
    public static void testAccount_155() {
        Test.startTest();
        Account acc = new Account();
        acc.Name = 'ToUpdate Account';
        acc.Balance__c = 100;
        acc.RecordTypeId = Schema.SObjectType.Account.getRecordTypeInfosByName().get('>=$100').getRecordTypeId();
        acc.Email__c = 'testUpdate@pairwise.test';
        acc.Active__c = 'Yes';
        insert acc;
        
        acc.Name = '';
        acc.Balance__c = 136;
        acc.Calculated_Interest__c = null;
        acc.Email__c = '';
        acc.Loan_Interest_Rate__c = 0.109;
        acc.Loan_Type__c = 'Car Loan';
        acc.Remaining_Loan_Amount__c = 15000000;
        acc.Total_Loan_Amount__c = 6015189;
        
        
        try {
            update acc;
            Account testAcc = [SELECT name, balance__c, calculated_interest__c, email__c, interest_rate__c, loan_interest_rate__c, loan_type__c, remaining_loan_amount__c, total_loan_amount__c, active__c FROM Account WHERE name='' LIMIT 1];
            System.assertEquals(acc.Name, testAcc.Name);
            System.assertEquals(acc.Balance__c, testAcc.Balance__c);
            System.assertEquals(acc.Balance__c * 0.05, testAcc.Calculated_Interest__c);
            System.assertEquals(acc.Email__c, testAcc.Email__c);
            System.assertEquals(acc.Loan_Interest_Rate__c, testAcc.Loan_Interest_Rate__c);
            System.assertEquals(acc.Loan_Type__c, testAcc.Loan_Type__c);
            //System.assertEquals(acc.Remaining_Loan_Amount__c, testAcc.Remaining_Loan_Amount__c);
            System.assertEquals(acc.Total_Loan_Amount__c, testAcc.Total_Loan_Amount__c);
        } catch (Exception e) {
            System.assert(false, e.getMessage());
        }
        Test.stopTest();
    }
    

    @isTest
    public static void testAccount_156() {
        Test.startTest();
        Account acc = new Account();
        acc.Name = 'ToUpdate Account';
        acc.Balance__c = 100;
        acc.RecordTypeId = Schema.SObjectType.Account.getRecordTypeInfosByName().get('Blank').getRecordTypeId();
        acc.Email__c = 'testUpdate@pairwise.test';
        acc.Active__c = 'Yes';
        insert acc;
        
        acc.Name = '';
        acc.Balance__c = 116;
        acc.Calculated_Interest__c = null;
        acc.Email__c = 'test156@pairwise.test';
        acc.Loan_Interest_Rate__c = 0.07;
        acc.Loan_Type__c = 'Car Loan';
        acc.Remaining_Loan_Amount__c = 15000000;
        acc.Total_Loan_Amount__c = 4857269;
        
        
        try {
            update acc;
            Account testAcc = [SELECT name, balance__c, calculated_interest__c, email__c, interest_rate__c, loan_interest_rate__c, loan_type__c, remaining_loan_amount__c, total_loan_amount__c, active__c FROM Account WHERE name='' LIMIT 1];
            System.assertEquals(acc.Name, testAcc.Name);
            System.assertEquals(acc.Balance__c, testAcc.Balance__c);
            System.assertEquals(acc.Balance__c * 0.06, testAcc.Calculated_Interest__c);
            System.assertEquals(acc.Email__c, testAcc.Email__c);
            System.assertEquals(acc.Loan_Interest_Rate__c, testAcc.Loan_Interest_Rate__c);
            System.assertEquals(acc.Loan_Type__c, testAcc.Loan_Type__c);
            //System.assertEquals(acc.Remaining_Loan_Amount__c, testAcc.Remaining_Loan_Amount__c);
            System.assertEquals(acc.Total_Loan_Amount__c, testAcc.Total_Loan_Amount__c);
        } catch (Exception e) {
            System.assert(false, e.getMessage());
        }
        Test.stopTest();
    }
    

    @isTest
    public static void testAccount_157() {
        Test.startTest();
        Account acc = new Account();
        acc.Name = 'ToUpdate Account';
        acc.Balance__c = 100;
        acc.RecordTypeId = Schema.SObjectType.Account.getRecordTypeInfosByName().get('>=$100').getRecordTypeId();
        acc.Email__c = 'testUpdate@pairwise.test';
        acc.Active__c = 'Yes';
        insert acc;
        
        acc.Name = '';
        acc.Balance__c = 138;
        acc.Calculated_Interest__c = null;
        acc.Email__c = 'test157@pairwise.test';
        acc.Loan_Interest_Rate__c = 0.11800000000000001;
        acc.Loan_Type__c = 'Home Loan';
        acc.Remaining_Loan_Amount__c = 15000000;
        acc.Total_Loan_Amount__c = 1681998;
        
        
        try {
            update acc;
            Account testAcc = [SELECT name, balance__c, calculated_interest__c, email__c, interest_rate__c, loan_interest_rate__c, loan_type__c, remaining_loan_amount__c, total_loan_amount__c, active__c FROM Account WHERE name='' LIMIT 1];
            System.assertEquals(acc.Name, testAcc.Name);
            System.assertEquals(acc.Balance__c, testAcc.Balance__c);
            System.assertEquals(acc.Balance__c * 0.06, testAcc.Calculated_Interest__c);
            System.assertEquals(acc.Email__c, testAcc.Email__c);
            System.assertEquals(acc.Loan_Interest_Rate__c, testAcc.Loan_Interest_Rate__c);
            System.assertEquals(acc.Loan_Type__c, testAcc.Loan_Type__c);
            //System.assertEquals(acc.Remaining_Loan_Amount__c, testAcc.Remaining_Loan_Amount__c);
            System.assertEquals(acc.Total_Loan_Amount__c, testAcc.Total_Loan_Amount__c);
        } catch (Exception e) {
            System.assert(false, e.getMessage());
        }
        Test.stopTest();
    }
    

    @isTest
    public static void testAccount_158() {
        Test.startTest();
        Account acc = new Account();
        acc.Name = '';
        acc.Balance__c = 105;
        acc.RecordTypeId = Schema.SObjectType.Account.getRecordTypeInfosByName().get('>=$100').getRecordTypeId();
        acc.Calculated_Interest__c = null;
        acc.Email__c = '';
        acc.Loan_Interest_Rate__c = 0.162;
        acc.Loan_Type__c = 'Home Loan';
        //acc.Remaining_Loan_Amount__c = null;
        acc.Total_Loan_Amount__c = null;
        acc.Active__c = 'Yes';
        
        
        try {
            insert acc;
            Account testAcc = [SELECT name, balance__c, calculated_interest__c, email__c, interest_rate__c, loan_interest_rate__c, loan_type__c, remaining_loan_amount__c, total_loan_amount__c, active__c FROM Account WHERE name='' LIMIT 1];
            System.assertEquals(acc.Name, testAcc.Name);
            System.assertEquals(acc.Balance__c, testAcc.Balance__c);
            System.assertEquals(acc.Balance__c * 0.05, testAcc.Calculated_Interest__c);
            System.assertEquals(acc.Email__c, testAcc.Email__c);
            System.assertEquals(acc.Loan_Interest_Rate__c, testAcc.Loan_Interest_Rate__c);
            System.assertEquals(acc.Loan_Type__c, testAcc.Loan_Type__c);
            //System.assertEquals(acc.Remaining_Loan_Amount__c, testAcc.Remaining_Loan_Amount__c);
            System.assertEquals(acc.Total_Loan_Amount__c, testAcc.Total_Loan_Amount__c);
        } catch (Exception e) {
            System.assert(false, e.getMessage());
        }
        Test.stopTest();
    }
    

    @isTest
    public static void testAccount_159() {
        Test.startTest();
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
        acc.Email__c = 'test159@pairwise.test';
        acc.Loan_Interest_Rate__c = 0.08;
        acc.Loan_Type__c = 'Car Loan';
        acc.Remaining_Loan_Amount__c = null;
        acc.Total_Loan_Amount__c = 366425;
        
        
        try {
            update acc;
            Account testAcc = [SELECT name, balance__c, calculated_interest__c, email__c, interest_rate__c, loan_interest_rate__c, loan_type__c, remaining_loan_amount__c, total_loan_amount__c, active__c FROM Account WHERE name='' LIMIT 1];
            System.assertEquals(acc.Name, testAcc.Name);
            System.assertEquals(acc.Balance__c, testAcc.Balance__c);
            System.assertEquals(acc.Balance__c * 0.038, testAcc.Calculated_Interest__c);
            System.assertEquals(acc.Email__c, testAcc.Email__c);
            System.assertEquals(acc.Loan_Interest_Rate__c, testAcc.Loan_Interest_Rate__c);
            System.assertEquals(acc.Loan_Type__c, testAcc.Loan_Type__c);
            //System.assertEquals(acc.Remaining_Loan_Amount__c, testAcc.Remaining_Loan_Amount__c);
            System.assertEquals(acc.Total_Loan_Amount__c, testAcc.Total_Loan_Amount__c);
        } catch (Exception e) {
            System.assert(false, e.getMessage());
        }
        Test.stopTest();
    }
    

    @isTest
    public static void testAccount_160() {
        Test.startTest();
        Account acc = new Account();
        acc.Name = '';
        acc.Balance__c = 156;
        acc.RecordTypeId = Schema.SObjectType.Account.getRecordTypeInfosByName().get('>=$0').getRecordTypeId();
        acc.Calculated_Interest__c = 7;
        acc.Email__c = '';
        acc.Loan_Interest_Rate__c = 0.125;
        acc.Loan_Type__c = 'Car Loan';
        //acc.Remaining_Loan_Amount__c = null;
        acc.Total_Loan_Amount__c = 294605;
        acc.Active__c = 'Yes';
        
        
        try {
            insert acc;
            Account testAcc = [SELECT name, balance__c, calculated_interest__c, email__c, interest_rate__c, loan_interest_rate__c, loan_type__c, remaining_loan_amount__c, total_loan_amount__c, active__c FROM Account WHERE name='' LIMIT 1];
            System.assertEquals(acc.Name, testAcc.Name);
            System.assertEquals(acc.Balance__c, testAcc.Balance__c);
            System.assertEquals(acc.Balance__c * 0.06, testAcc.Calculated_Interest__c);
            System.assertEquals(acc.Email__c, testAcc.Email__c);
            System.assertEquals(acc.Loan_Interest_Rate__c, testAcc.Loan_Interest_Rate__c);
            System.assertEquals(acc.Loan_Type__c, testAcc.Loan_Type__c);
            //System.assertEquals(acc.Remaining_Loan_Amount__c, testAcc.Remaining_Loan_Amount__c);
            System.assertEquals(acc.Total_Loan_Amount__c, testAcc.Total_Loan_Amount__c);
        } catch (Exception e) {
            System.assert(false, e.getMessage());
        }
        Test.stopTest();
    }
    

    @isTest
    public static void testAccount_161() {
        Test.startTest();
        Account acc = new Account();
        acc.Name = '';
        acc.Balance__c = 190;
        acc.RecordTypeId = Schema.SObjectType.Account.getRecordTypeInfosByName().get('>=$100').getRecordTypeId();
        acc.Calculated_Interest__c = 7;
        acc.Email__c = 'test161@pairwise.test';
        acc.Loan_Interest_Rate__c = 0.14;
        acc.Loan_Type__c = 'Home Loan';
        //acc.Remaining_Loan_Amount__c = 15000000;
        acc.Total_Loan_Amount__c = 574614;
        acc.Active__c = 'Yes';
        
        
        try {
            insert acc;
            Account testAcc = [SELECT name, balance__c, calculated_interest__c, email__c, interest_rate__c, loan_interest_rate__c, loan_type__c, remaining_loan_amount__c, total_loan_amount__c, active__c FROM Account WHERE name='' LIMIT 1];
            System.assertEquals(acc.Name, testAcc.Name);
            System.assertEquals(acc.Balance__c, testAcc.Balance__c);
            System.assertEquals(acc.Balance__c * 0.05, testAcc.Calculated_Interest__c);
            System.assertEquals(acc.Email__c, testAcc.Email__c);
            System.assertEquals(acc.Loan_Interest_Rate__c, testAcc.Loan_Interest_Rate__c);
            System.assertEquals(acc.Loan_Type__c, testAcc.Loan_Type__c);
            //System.assertEquals(acc.Remaining_Loan_Amount__c, testAcc.Remaining_Loan_Amount__c);
            System.assertEquals(acc.Total_Loan_Amount__c, testAcc.Total_Loan_Amount__c);
        } catch (Exception e) {
            System.assert(false, e.getMessage());
        }
        Test.stopTest();
    }
    

    @isTest
    public static void testAccount_162() {
        Test.startTest();
        Account acc = new Account();
        acc.Name = 'ToUpdate Account';
        acc.Balance__c = 100;
        acc.RecordTypeId = Schema.SObjectType.Account.getRecordTypeInfosByName().get('>=$0').getRecordTypeId();
        acc.Email__c = 'testUpdate@pairwise.test';
        acc.Active__c = 'Yes';
        insert acc;
        
        acc.Name = '';
        acc.Balance__c = 124;
        acc.Calculated_Interest__c = null;
        acc.Email__c = '';
        acc.Loan_Interest_Rate__c = 0.09;
        acc.Loan_Type__c = 'Car Loan';
        acc.Remaining_Loan_Amount__c = 15000000;
        acc.Total_Loan_Amount__c = 637864;
        
        
        try {
            update acc;
            Account testAcc = [SELECT name, balance__c, calculated_interest__c, email__c, interest_rate__c, loan_interest_rate__c, loan_type__c, remaining_loan_amount__c, total_loan_amount__c, active__c FROM Account WHERE name='' LIMIT 1];
            System.assertEquals(acc.Name, testAcc.Name);
            System.assertEquals(acc.Balance__c, testAcc.Balance__c);
            System.assertEquals(acc.Balance__c * 0.06, testAcc.Calculated_Interest__c);
            System.assertEquals(acc.Email__c, testAcc.Email__c);
            System.assertEquals(acc.Loan_Interest_Rate__c, testAcc.Loan_Interest_Rate__c);
            System.assertEquals(acc.Loan_Type__c, testAcc.Loan_Type__c);
            //System.assertEquals(acc.Remaining_Loan_Amount__c, testAcc.Remaining_Loan_Amount__c);
            System.assertEquals(acc.Total_Loan_Amount__c, testAcc.Total_Loan_Amount__c);
        } catch (Exception e) {
            System.assert(false, e.getMessage());
        }
        Test.stopTest();
    }
    

    @isTest
    public static void testAccount_163() {
        Test.startTest();
        Account acc = new Account();
        acc.Name = '';
        acc.Balance__c = 186;
        acc.RecordTypeId = Schema.SObjectType.Account.getRecordTypeInfosByName().get('>=$0').getRecordTypeId();
        acc.Calculated_Interest__c = null;
        acc.Email__c = 'test163@pairwise.test';
        acc.Loan_Interest_Rate__c = 0.07;
        acc.Loan_Type__c = 'Car Loan';
        //acc.Remaining_Loan_Amount__c = 15000000;
        acc.Total_Loan_Amount__c = null;
        acc.Active__c = 'Yes';
        
        
        try {
            insert acc;
            Account testAcc = [SELECT name, balance__c, calculated_interest__c, email__c, interest_rate__c, loan_interest_rate__c, loan_type__c, remaining_loan_amount__c, total_loan_amount__c, active__c FROM Account WHERE name='' LIMIT 1];
            System.assertEquals(acc.Name, testAcc.Name);
            System.assertEquals(acc.Balance__c, testAcc.Balance__c);
            System.assertEquals(acc.Balance__c * 0.06, testAcc.Calculated_Interest__c);
            System.assertEquals(acc.Email__c, testAcc.Email__c);
            System.assertEquals(acc.Loan_Interest_Rate__c, testAcc.Loan_Interest_Rate__c);
            System.assertEquals(acc.Loan_Type__c, testAcc.Loan_Type__c);
            //System.assertEquals(acc.Remaining_Loan_Amount__c, testAcc.Remaining_Loan_Amount__c);
            System.assertEquals(acc.Total_Loan_Amount__c, testAcc.Total_Loan_Amount__c);
        } catch (Exception e) {
            System.assert(false, e.getMessage());
        }
        Test.stopTest();
    }
    

    @isTest
    public static void testAccount_164() {
        Test.startTest();
        Account acc = new Account();
        acc.Name = '';
        acc.Balance__c = 134;
        acc.RecordTypeId = Schema.SObjectType.Account.getRecordTypeInfosByName().get('>=$100').getRecordTypeId();
        acc.Calculated_Interest__c = null;
        acc.Email__c = '';
        acc.Loan_Interest_Rate__c = 0.125;
        acc.Loan_Type__c = 'Home Loan';
        //acc.Remaining_Loan_Amount__c = null;
        acc.Total_Loan_Amount__c = 50292;
        acc.Active__c = 'Yes';
        
        
        try {
            insert acc;
            Account testAcc = [SELECT name, balance__c, calculated_interest__c, email__c, interest_rate__c, loan_interest_rate__c, loan_type__c, remaining_loan_amount__c, total_loan_amount__c, active__c FROM Account WHERE name='' LIMIT 1];
            System.assertEquals(acc.Name, testAcc.Name);
            System.assertEquals(acc.Balance__c, testAcc.Balance__c);
            System.assertEquals(acc.Balance__c * 0.038, testAcc.Calculated_Interest__c);
            System.assertEquals(acc.Email__c, testAcc.Email__c);
            System.assertEquals(acc.Loan_Interest_Rate__c, testAcc.Loan_Interest_Rate__c);
            System.assertEquals(acc.Loan_Type__c, testAcc.Loan_Type__c);
            //System.assertEquals(acc.Remaining_Loan_Amount__c, testAcc.Remaining_Loan_Amount__c);
            System.assertEquals(acc.Total_Loan_Amount__c, testAcc.Total_Loan_Amount__c);
        } catch (Exception e) {
            System.assert(false, e.getMessage());
        }
        Test.stopTest();
    }
    

    @isTest
    public static void testAccount_165() {
        Test.startTest();
        Account acc = new Account();
        acc.Name = 'ToUpdate Account';
        acc.Balance__c = 100;
        acc.RecordTypeId = Schema.SObjectType.Account.getRecordTypeInfosByName().get('>=$0').getRecordTypeId();
        acc.Email__c = 'testUpdate@pairwise.test';
        acc.Active__c = 'Yes';
        insert acc;
        
        acc.Name = '';
        acc.Balance__c = 127;
        acc.Calculated_Interest__c = 7;
        acc.Email__c = '';
        acc.Loan_Interest_Rate__c = null;
        acc.Loan_Type__c = 'Car Loan';
        acc.Remaining_Loan_Amount__c = null;
        acc.Total_Loan_Amount__c = 56500;
        
        
        try {
            update acc;
            Account testAcc = [SELECT name, balance__c, calculated_interest__c, email__c, interest_rate__c, loan_interest_rate__c, loan_type__c, remaining_loan_amount__c, total_loan_amount__c, active__c FROM Account WHERE name='' LIMIT 1];
            System.assertEquals(acc.Name, testAcc.Name);
            System.assertEquals(acc.Balance__c, testAcc.Balance__c);
            System.assertEquals(acc.Balance__c * 0.038, testAcc.Calculated_Interest__c);
            System.assertEquals(acc.Email__c, testAcc.Email__c);
            System.assertEquals(acc.Loan_Interest_Rate__c, testAcc.Loan_Interest_Rate__c);
            System.assertEquals(acc.Loan_Type__c, testAcc.Loan_Type__c);
            //System.assertEquals(acc.Remaining_Loan_Amount__c, testAcc.Remaining_Loan_Amount__c);
            System.assertEquals(acc.Total_Loan_Amount__c, testAcc.Total_Loan_Amount__c);
        } catch (Exception e) {
            System.assert(false, e.getMessage());
        }
        Test.stopTest();
    }
    

    @isTest
    public static void testAccount_166() {
        Test.startTest();
        Account acc = new Account();
        acc.Name = 'ToUpdate Account';
        acc.Balance__c = 100;
        acc.RecordTypeId = Schema.SObjectType.Account.getRecordTypeInfosByName().get('Negative').getRecordTypeId();
        acc.Email__c = 'testUpdate@pairwise.test';
        acc.Active__c = 'Yes';
        insert acc;
        
        acc.Name = '';
        acc.Balance__c = 141;
        acc.Calculated_Interest__c = 7;
        acc.Email__c = 'test166@pairwise.test';
        acc.Loan_Interest_Rate__c = 0.084;
        acc.Loan_Type__c = 'Car Loan';
        acc.Remaining_Loan_Amount__c = null;
        acc.Total_Loan_Amount__c = 1788973;
        
        
        try {
            update acc;
            Account testAcc = [SELECT name, balance__c, calculated_interest__c, email__c, interest_rate__c, loan_interest_rate__c, loan_type__c, remaining_loan_amount__c, total_loan_amount__c, active__c FROM Account WHERE name='' LIMIT 1];
            System.assertEquals(acc.Name, testAcc.Name);
            System.assertEquals(acc.Balance__c, testAcc.Balance__c);
            System.assertEquals(acc.Balance__c * 0.05, testAcc.Calculated_Interest__c);
            System.assertEquals(acc.Email__c, testAcc.Email__c);
            System.assertEquals(acc.Loan_Interest_Rate__c, testAcc.Loan_Interest_Rate__c);
            System.assertEquals(acc.Loan_Type__c, testAcc.Loan_Type__c);
            //System.assertEquals(acc.Remaining_Loan_Amount__c, testAcc.Remaining_Loan_Amount__c);
            System.assertEquals(acc.Total_Loan_Amount__c, testAcc.Total_Loan_Amount__c);
        } catch (Exception e) {
            System.assert(false, e.getMessage());
        }
        Test.stopTest();
    }
    

    @isTest
    public static void testAccount_167() {
        Test.startTest();
        Account acc = new Account();
        acc.Name = 'ToUpdate Account';
        acc.Balance__c = 100;
        acc.RecordTypeId = Schema.SObjectType.Account.getRecordTypeInfosByName().get('Negative').getRecordTypeId();
        acc.Email__c = 'testUpdate@pairwise.test';
        acc.Active__c = 'Yes';
        insert acc;
        
        acc.Name = '';
        acc.Balance__c = 110;
        acc.Calculated_Interest__c = null;
        acc.Email__c = 'test167@pairwise.test';
        acc.Loan_Interest_Rate__c = null;
        acc.Loan_Type__c = 'Car Loan';
        acc.Remaining_Loan_Amount__c = 15000000;
        acc.Total_Loan_Amount__c = 729227;
        
        
        try {
            update acc;
            Account testAcc = [SELECT name, balance__c, calculated_interest__c, email__c, interest_rate__c, loan_interest_rate__c, loan_type__c, remaining_loan_amount__c, total_loan_amount__c, active__c FROM Account WHERE name='' LIMIT 1];
            System.assertEquals(acc.Name, testAcc.Name);
            System.assertEquals(acc.Balance__c, testAcc.Balance__c);
            System.assertEquals(acc.Balance__c * 0.038, testAcc.Calculated_Interest__c);
            System.assertEquals(acc.Email__c, testAcc.Email__c);
            System.assertEquals(acc.Loan_Interest_Rate__c, testAcc.Loan_Interest_Rate__c);
            System.assertEquals(acc.Loan_Type__c, testAcc.Loan_Type__c);
            //System.assertEquals(acc.Remaining_Loan_Amount__c, testAcc.Remaining_Loan_Amount__c);
            System.assertEquals(acc.Total_Loan_Amount__c, testAcc.Total_Loan_Amount__c);
        } catch (Exception e) {
            System.assert(false, e.getMessage());
        }
        Test.stopTest();
    }
    

    @isTest
    public static void testAccount_168() {
        Test.startTest();
        Account acc = new Account();
        acc.Name = 'ToUpdate Account';
        acc.Balance__c = 100;
        acc.RecordTypeId = Schema.SObjectType.Account.getRecordTypeInfosByName().get('>=$0').getRecordTypeId();
        acc.Email__c = 'testUpdate@pairwise.test';
        acc.Active__c = 'Yes';
        insert acc;
        
        acc.Name = '';
        acc.Balance__c = 141;
        acc.Calculated_Interest__c = null;
        acc.Email__c = '';
        acc.Loan_Interest_Rate__c = 0.11;
        acc.Loan_Type__c = 'Home Loan';
        acc.Remaining_Loan_Amount__c = null;
        acc.Total_Loan_Amount__c = null;
        
        
        try {
            update acc;
            Account testAcc = [SELECT name, balance__c, calculated_interest__c, email__c, interest_rate__c, loan_interest_rate__c, loan_type__c, remaining_loan_amount__c, total_loan_amount__c, active__c FROM Account WHERE name='' LIMIT 1];
            System.assertEquals(acc.Name, testAcc.Name);
            System.assertEquals(acc.Balance__c, testAcc.Balance__c);
            System.assertEquals(acc.Balance__c * 0.038, testAcc.Calculated_Interest__c);
            System.assertEquals(acc.Email__c, testAcc.Email__c);
            System.assertEquals(acc.Loan_Interest_Rate__c, testAcc.Loan_Interest_Rate__c);
            System.assertEquals(acc.Loan_Type__c, testAcc.Loan_Type__c);
            //System.assertEquals(acc.Remaining_Loan_Amount__c, testAcc.Remaining_Loan_Amount__c);
            System.assertEquals(acc.Total_Loan_Amount__c, testAcc.Total_Loan_Amount__c);
        } catch (Exception e) {
            System.assert(false, e.getMessage());
        }
        Test.stopTest();
    }
    

    @isTest
    public static void testAccount_169() {
        Test.startTest();
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
        acc.Email__c = '';
        acc.Loan_Interest_Rate__c = 0.11800000000000001;
        acc.Loan_Type__c = 'Car Loan';
        acc.Remaining_Loan_Amount__c = 15000000;
        acc.Total_Loan_Amount__c = 893150;
        
        
        try {
            update acc;
            Account testAcc = [SELECT name, balance__c, calculated_interest__c, email__c, interest_rate__c, loan_interest_rate__c, loan_type__c, remaining_loan_amount__c, total_loan_amount__c, active__c FROM Account WHERE name='' LIMIT 1];
            System.assertEquals(acc.Name, testAcc.Name);
            System.assertEquals(acc.Balance__c, testAcc.Balance__c);
            System.assertEquals(acc.Balance__c * 0.038, testAcc.Calculated_Interest__c);
            System.assertEquals(acc.Email__c, testAcc.Email__c);
            System.assertEquals(acc.Loan_Interest_Rate__c, testAcc.Loan_Interest_Rate__c);
            System.assertEquals(acc.Loan_Type__c, testAcc.Loan_Type__c);
            //System.assertEquals(acc.Remaining_Loan_Amount__c, testAcc.Remaining_Loan_Amount__c);
            System.assertEquals(acc.Total_Loan_Amount__c, testAcc.Total_Loan_Amount__c);
        } catch (Exception e) {
            System.assert(false, e.getMessage());
        }
        Test.stopTest();
    }
    

    @isTest
    public static void testAccount_170() {
        Test.startTest();
        Account acc = new Account();
        acc.Name = 'ToUpdate Account';
        acc.Balance__c = 100;
        acc.RecordTypeId = Schema.SObjectType.Account.getRecordTypeInfosByName().get('Blank').getRecordTypeId();
        acc.Email__c = 'testUpdate@pairwise.test';
        acc.Active__c = 'Yes';
        insert acc;
        
        acc.Name = '';
        acc.Balance__c = 196;
        acc.Calculated_Interest__c = null;
        acc.Email__c = 'test170@pairwise.test';
        acc.Loan_Interest_Rate__c = 0.10300000000000001;
        acc.Loan_Type__c = 'Home Loan';
        acc.Remaining_Loan_Amount__c = null;
        acc.Total_Loan_Amount__c = 3771689;
        
        
        try {
            update acc;
            Account testAcc = [SELECT name, balance__c, calculated_interest__c, email__c, interest_rate__c, loan_interest_rate__c, loan_type__c, remaining_loan_amount__c, total_loan_amount__c, active__c FROM Account WHERE name='' LIMIT 1];
            System.assertEquals(acc.Name, testAcc.Name);
            System.assertEquals(acc.Balance__c, testAcc.Balance__c);
            System.assertEquals(acc.Balance__c * 0.05, testAcc.Calculated_Interest__c);
            System.assertEquals(acc.Email__c, testAcc.Email__c);
            System.assertEquals(acc.Loan_Interest_Rate__c, testAcc.Loan_Interest_Rate__c);
            System.assertEquals(acc.Loan_Type__c, testAcc.Loan_Type__c);
            //System.assertEquals(acc.Remaining_Loan_Amount__c, testAcc.Remaining_Loan_Amount__c);
            System.assertEquals(acc.Total_Loan_Amount__c, testAcc.Total_Loan_Amount__c);
        } catch (Exception e) {
            System.assert(false, e.getMessage());
        }
        Test.stopTest();
    }
    

    @isTest
    public static void testAccount_171() {
        Test.startTest();
        Account acc = new Account();
        acc.Name = '';
        acc.Balance__c = 198;
        acc.RecordTypeId = Schema.SObjectType.Account.getRecordTypeInfosByName().get('>=$100').getRecordTypeId();
        acc.Calculated_Interest__c = null;
        acc.Email__c = '';
        acc.Loan_Interest_Rate__c = 0.109;
        acc.Loan_Type__c = 'Home Loan';
        //acc.Remaining_Loan_Amount__c = null;
        acc.Total_Loan_Amount__c = 590418;
        acc.Active__c = 'Yes';
        
        
        try {
            insert acc;
            Account testAcc = [SELECT name, balance__c, calculated_interest__c, email__c, interest_rate__c, loan_interest_rate__c, loan_type__c, remaining_loan_amount__c, total_loan_amount__c, active__c FROM Account WHERE name='' LIMIT 1];
            System.assertEquals(acc.Name, testAcc.Name);
            System.assertEquals(acc.Balance__c, testAcc.Balance__c);
            System.assertEquals(acc.Balance__c * 0.038, testAcc.Calculated_Interest__c);
            System.assertEquals(acc.Email__c, testAcc.Email__c);
            System.assertEquals(acc.Loan_Interest_Rate__c, testAcc.Loan_Interest_Rate__c);
            System.assertEquals(acc.Loan_Type__c, testAcc.Loan_Type__c);
            //System.assertEquals(acc.Remaining_Loan_Amount__c, testAcc.Remaining_Loan_Amount__c);
            System.assertEquals(acc.Total_Loan_Amount__c, testAcc.Total_Loan_Amount__c);
        } catch (Exception e) {
            System.assert(false, e.getMessage());
        }
        Test.stopTest();
    }
    

    @isTest
    public static void testAccount_172() {
        Test.startTest();
        Account acc = new Account();
        acc.Name = 'ToUpdate Account';
        acc.Balance__c = 100;
        acc.RecordTypeId = Schema.SObjectType.Account.getRecordTypeInfosByName().get('>=$100').getRecordTypeId();
        acc.Email__c = 'testUpdate@pairwise.test';
        acc.Active__c = 'Yes';
        insert acc;
        
        acc.Name = '';
        acc.Balance__c = 200;
        acc.Calculated_Interest__c = null;
        acc.Email__c = 'test172@pairwise.test';
        acc.Loan_Interest_Rate__c = 0.1;
        acc.Loan_Type__c = 'Car Loan';
        acc.Remaining_Loan_Amount__c = null;
        acc.Total_Loan_Amount__c = 6681616;
        
        
        try {
            update acc;
            Account testAcc = [SELECT name, balance__c, calculated_interest__c, email__c, interest_rate__c, loan_interest_rate__c, loan_type__c, remaining_loan_amount__c, total_loan_amount__c, active__c FROM Account WHERE name='' LIMIT 1];
            System.assertEquals(acc.Name, testAcc.Name);
            System.assertEquals(acc.Balance__c, testAcc.Balance__c);
            System.assertEquals(acc.Balance__c * 0.06, testAcc.Calculated_Interest__c);
            System.assertEquals(acc.Email__c, testAcc.Email__c);
            System.assertEquals(acc.Loan_Interest_Rate__c, testAcc.Loan_Interest_Rate__c);
            System.assertEquals(acc.Loan_Type__c, testAcc.Loan_Type__c);
            //System.assertEquals(acc.Remaining_Loan_Amount__c, testAcc.Remaining_Loan_Amount__c);
            System.assertEquals(acc.Total_Loan_Amount__c, testAcc.Total_Loan_Amount__c);
        } catch (Exception e) {
            System.assert(false, e.getMessage());
        }
        Test.stopTest();
    }
    

    @isTest
    public static void testAccount_173() {
        Test.startTest();
        Account acc = new Account();
        acc.Name = 'ToUpdate Account';
        acc.Balance__c = 100;
        acc.RecordTypeId = Schema.SObjectType.Account.getRecordTypeInfosByName().get('Negative').getRecordTypeId();
        acc.Email__c = 'testUpdate@pairwise.test';
        acc.Active__c = 'Yes';
        insert acc;
        
        acc.Name = '';
        acc.Balance__c = 124;
        acc.Calculated_Interest__c = null;
        acc.Email__c = '';
        acc.Loan_Interest_Rate__c = 0.109;
        acc.Loan_Type__c = 'Home Loan';
        acc.Remaining_Loan_Amount__c = null;
        acc.Total_Loan_Amount__c = 3861406;
        
        
        try {
            update acc;
            Account testAcc = [SELECT name, balance__c, calculated_interest__c, email__c, interest_rate__c, loan_interest_rate__c, loan_type__c, remaining_loan_amount__c, total_loan_amount__c, active__c FROM Account WHERE name='' LIMIT 1];
            System.assertEquals(acc.Name, testAcc.Name);
            System.assertEquals(acc.Balance__c, testAcc.Balance__c);
            System.assertEquals(acc.Balance__c * 0.06, testAcc.Calculated_Interest__c);
            System.assertEquals(acc.Email__c, testAcc.Email__c);
            System.assertEquals(acc.Loan_Interest_Rate__c, testAcc.Loan_Interest_Rate__c);
            System.assertEquals(acc.Loan_Type__c, testAcc.Loan_Type__c);
            //System.assertEquals(acc.Remaining_Loan_Amount__c, testAcc.Remaining_Loan_Amount__c);
            System.assertEquals(acc.Total_Loan_Amount__c, testAcc.Total_Loan_Amount__c);
        } catch (Exception e) {
            System.assert(false, e.getMessage());
        }
        Test.stopTest();
    }
            