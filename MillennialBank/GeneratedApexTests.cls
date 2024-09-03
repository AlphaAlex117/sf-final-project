
            @isTest
            public static void testAccount_1() {
                Account acc = new Account();
                acc.Name = 'ToUpdate Account';
                acc.Balance__c = 100;
                acc.RecordTypeId = Schema.SObjectType.Account.getRecordTypeInfosByName().get('Negative').getRecordTypeId();
                acc.Email__c = 'testUpdate@pairwise.test';
                acc.Active__c = Yes;
                insert acc;
                
                acc.Name = '';
                acc.Balance__c = 171;
                acc.Calculated_Interest__c = ;
                acc.Email__c = '';
                acc.Loan_Interest_Rate__c = 107;
                acc.Loan_Type__c = Car Loan;
                acc.Remaining_Loan_Amount__c = 15000000;
                acc.Total_Loan_Amount__c = 507897;
                
                Test.startTest();
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
                Account acc = new Account();
                acc.Name = 'ToUpdate Account';
                acc.Balance__c = 100;
                acc.RecordTypeId = Schema.SObjectType.Account.getRecordTypeInfosByName().get('Negative').getRecordTypeId();
                acc.Email__c = 'testUpdate@pairwise.test';
                acc.Active__c = Yes;
                insert acc;
                
                acc.Name = '';
                acc.Balance__c = 150;
                acc.Calculated_Interest__c = 7;
                acc.Email__c = '';
                acc.Loan_Interest_Rate__c = 0.11;
                acc.Loan_Type__c = Home Loan;
                acc.Remaining_Loan_Amount__c = 15000000;
                acc.Total_Loan_Amount__c = 601318;
                
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
                    System.assert(e.getMessage());
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
                acc.Active__c = Yes;
                insert acc;
                
                acc.Name = '';
                acc.Balance__c = 134;
                acc.Calculated_Interest__c = ;
                acc.Email__c = '';
                acc.Loan_Interest_Rate__c = 0.07;
                acc.Loan_Type__c = Car Loan;
                acc.Remaining_Loan_Amount__c = ;
                acc.Total_Loan_Amount__c = 443144;
                
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
                    System.assert(e.getMessage());
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
                acc.Active__c = Yes;
                insert acc;
                
                acc.Name = '';
                acc.Balance__c = 165;
                acc.Calculated_Interest__c = 7;
                acc.Email__c = '';
                acc.Loan_Interest_Rate__c = ;
                acc.Loan_Type__c = Home Loan;
                acc.Remaining_Loan_Amount__c = ;
                acc.Total_Loan_Amount__c = 62273;
                
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
                    System.assert(e.getMessage());
                }
                Test.stopTest();
            }
            

            @isTest
            public static void testAccount_5() {
                Account acc = new Account();
                acc.Name = '';
                acc.Balance__c = 145;
                acc.RecordTypeId = Schema.SObjectType.Account.getRecordTypeInfosByName().get('>=$100').getRecordTypeId();
                acc.Calculated_Interest__c = 7;
                acc.Email__c = 'test5@pairwise.test';
                acc.Loan_Interest_Rate__c = 0.11;
                acc.Loan_Type__c = ;
                //acc.Remaining_Loan_Amount__c = 15000000;
                acc.Total_Loan_Amount__c = ;
                acc.Active__c = Yes;
                
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
                    System.assert(e.getMessage());
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
                acc.Active__c = Yes;
                insert acc;
                
                acc.Name = '';
                acc.Balance__c = 118;
                acc.Calculated_Interest__c = 7;
                acc.Email__c = 'test6@pairwise.test';
                acc.Loan_Interest_Rate__c = 0.08;
                acc.Loan_Type__c = Car Loan;
                acc.Remaining_Loan_Amount__c = ;
                acc.Total_Loan_Amount__c = 274820;
                
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
                    System.assert(e.getMessage());
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
                acc.Active__c = Yes;
                insert acc;
                
                acc.Name = '';
                acc.Balance__c = 115;
                acc.Calculated_Interest__c = ;
                acc.Email__c = 'test7@pairwise.test';
                acc.Loan_Interest_Rate__c = 0.125;
                acc.Loan_Type__c = Car Loan;
                acc.Remaining_Loan_Amount__c = ;
                acc.Total_Loan_Amount__c = 4152385;
                
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
                    System.assert(e.getMessage());
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
                acc.Active__c = Yes;
                insert acc;
                
                acc.Name = '';
                acc.Balance__c = 100;
                acc.Calculated_Interest__c = 7;
                acc.Email__c = 'test8@pairwise.test';
                acc.Loan_Interest_Rate__c = 0.14;
                acc.Loan_Type__c = Car Loan;
                acc.Remaining_Loan_Amount__c = ;
                acc.Total_Loan_Amount__c = ;
                
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
                    System.assert(e.getMessage());
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
                acc.Active__c = Yes;
                insert acc;
                
                acc.Name = '';
                acc.Balance__c = 155;
                acc.Calculated_Interest__c = ;
                acc.Email__c = 'test9@pairwise.test';
                acc.Loan_Interest_Rate__c = 0.11;
                acc.Loan_Type__c = Car Loan;
                acc.Remaining_Loan_Amount__c = ;
                acc.Total_Loan_Amount__c = 31192;
                
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
                    System.assert(e.getMessage());
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
                acc.Active__c = Yes;
                insert acc;
                
                acc.Name = '';
                acc.Balance__c = 178;
                acc.Calculated_Interest__c = 7;
                acc.Email__c = '';
                acc.Loan_Interest_Rate__c = 0.125;
                acc.Loan_Type__c = Car Loan;
                acc.Remaining_Loan_Amount__c = ;
                acc.Total_Loan_Amount__c = ;
                
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
                    System.assert(e.getMessage());
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
                acc.Active__c = Yes;
                insert acc;
                
                acc.Name = '';
                acc.Balance__c = 199;
                acc.Calculated_Interest__c = 7;
                acc.Email__c = 'test11@pairwise.test';
                acc.Loan_Interest_Rate__c = 0.125;
                acc.Loan_Type__c = Car Loan;
                acc.Remaining_Loan_Amount__c = ;
                acc.Total_Loan_Amount__c = ;
                
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
                    System.assert(e.getMessage());
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
                acc.Active__c = Yes;
                insert acc;
                
                acc.Name = '';
                acc.Balance__c = 175;
                acc.Calculated_Interest__c = ;
                acc.Email__c = 'test12@pairwise.test';
                acc.Loan_Interest_Rate__c = 0.10300000000000001;
                acc.Loan_Type__c = Car Loan;
                acc.Remaining_Loan_Amount__c = ;
                acc.Total_Loan_Amount__c = 479479;
                
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
                    System.assert(e.getMessage());
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
                acc.Active__c = Yes;
                insert acc;
                
                acc.Name = '';
                acc.Balance__c = 129;
                acc.Calculated_Interest__c = ;
                acc.Email__c = 'test13@pairwise.test';
                acc.Loan_Interest_Rate__c = ;
                acc.Loan_Type__c = Car Loan;
                acc.Remaining_Loan_Amount__c = ;
                acc.Total_Loan_Amount__c = 574953;
                
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
                    System.assert(e.getMessage());
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
                acc.Active__c = Yes;
                insert acc;
                
                acc.Name = '';
                acc.Balance__c = 158;
                acc.Calculated_Interest__c = ;
                acc.Email__c = '';
                acc.Loan_Interest_Rate__c = 0.08;
                acc.Loan_Type__c = ;
                acc.Remaining_Loan_Amount__c = ;
                acc.Total_Loan_Amount__c = ;
                
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
                    System.assert(e.getMessage());
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
                acc.Active__c = Yes;
                insert acc;
                
                acc.Name = '';
                acc.Balance__c = 113;
                acc.Calculated_Interest__c = 7;
                acc.Email__c = '';
                acc.Loan_Interest_Rate__c = 0.162;
                acc.Loan_Type__c = Home Loan;
                acc.Remaining_Loan_Amount__c = ;
                acc.Total_Loan_Amount__c = 5773532;
                
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
                    System.assert(e.getMessage());
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
                acc.Active__c = Yes;
                insert acc;
                
                acc.Name = '';
                acc.Balance__c = 140;
                acc.Calculated_Interest__c = 7;
                acc.Email__c = '';
                acc.Loan_Interest_Rate__c = 0.07;
                acc.Loan_Type__c = Car Loan;
                acc.Remaining_Loan_Amount__c = ;
                acc.Total_Loan_Amount__c = 368532;
                
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
                    System.assert(e.getMessage());
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
                acc.Active__c = Yes;
                insert acc;
                
                acc.Name = '';
                acc.Balance__c = 135;
                acc.Calculated_Interest__c = ;
                acc.Email__c = 'test17@pairwise.test';
                acc.Loan_Interest_Rate__c = 0.136;
                acc.Loan_Type__c = Car Loan;
                acc.Remaining_Loan_Amount__c = 15000000;
                acc.Total_Loan_Amount__c = 732362;
                
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
                    System.assert(e.getMessage());
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
                acc.Active__c = Yes;
                insert acc;
                
                acc.Name = '';
                acc.Balance__c = 160;
                acc.Calculated_Interest__c = ;
                acc.Email__c = '';
                acc.Loan_Interest_Rate__c = 0.1;
                acc.Loan_Type__c = Home Loan;
                acc.Remaining_Loan_Amount__c = 15000000;
                acc.Total_Loan_Amount__c = 991676;
                
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
                    System.assert(e.getMessage());
                }
                Test.stopTest();
            }
            

            @isTest
            public static void testAccount_19() {
                Account acc = new Account();
                acc.Name = '';
                acc.Balance__c = 112;
                acc.RecordTypeId = Schema.SObjectType.Account.getRecordTypeInfosByName().get('>=$0').getRecordTypeId();
                acc.Calculated_Interest__c = 7;
                acc.Email__c = 'test19@pairwise.test';
                acc.Loan_Interest_Rate__c = 0.10300000000000001;
                acc.Loan_Type__c = Car Loan;
                //acc.Remaining_Loan_Amount__c = ;
                acc.Total_Loan_Amount__c = 6452482;
                acc.Active__c = Yes;
                
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
                    System.assert(e.getMessage());
                }
                Test.stopTest();
            }
            

            @isTest
            public static void testAccount_20() {
                Account acc = new Account();
                acc.Name = '';
                acc.Balance__c = 101;
                acc.RecordTypeId = Schema.SObjectType.Account.getRecordTypeInfosByName().get('>=$0').getRecordTypeId();
                acc.Calculated_Interest__c = ;
                acc.Email__c = '';
                acc.Loan_Interest_Rate__c = 0.07;
                acc.Loan_Type__c = Home Loan;
                //acc.Remaining_Loan_Amount__c = 15000000;
                acc.Total_Loan_Amount__c = 751557;
                acc.Active__c = Yes;
                
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
                    System.assert(e.getMessage());
                }
                Test.stopTest();
            }
            

            @isTest
            public static void testAccount_21() {
                Account acc = new Account();
                acc.Name = '';
                acc.Balance__c = 192;
                acc.RecordTypeId = Schema.SObjectType.Account.getRecordTypeInfosByName().get('>=$100').getRecordTypeId();
                acc.Calculated_Interest__c = 7;
                acc.Email__c = '';
                acc.Loan_Interest_Rate__c = 107;
                acc.Loan_Type__c = Home Loan;
                //acc.Remaining_Loan_Amount__c = 15000000;
                acc.Total_Loan_Amount__c = 2398623;
                acc.Active__c = Yes;
                
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
                    System.assert(e.getMessage());
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
                acc.Active__c = Yes;
                insert acc;
                
                acc.Name = '';
                acc.Balance__c = 164;
                acc.Calculated_Interest__c = 7;
                acc.Email__c = 'test22@pairwise.test';
                acc.Loan_Interest_Rate__c = 107;
                acc.Loan_Type__c = Car Loan;
                acc.Remaining_Loan_Amount__c = ;
                acc.Total_Loan_Amount__c = ;
                
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
                    System.assert(e.getMessage());
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
                acc.Active__c = Yes;
                insert acc;
                
                acc.Name = '';
                acc.Balance__c = 178;
                acc.Calculated_Interest__c = 7;
                acc.Email__c = '';
                acc.Loan_Interest_Rate__c = 0.159;
                acc.Loan_Type__c = Car Loan;
                acc.Remaining_Loan_Amount__c = ;
                acc.Total_Loan_Amount__c = 6320040;
                
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
                    System.assert(e.getMessage());
                }
                Test.stopTest();
            }
            

            @isTest
            public static void testAccount_24() {
                Account acc = new Account();
                acc.Name = '';
                acc.Balance__c = 118;
                acc.RecordTypeId = Schema.SObjectType.Account.getRecordTypeInfosByName().get('>=$100').getRecordTypeId();
                acc.Calculated_Interest__c = 7;
                acc.Email__c = 'test24@pairwise.test';
                acc.Loan_Interest_Rate__c = 0.11900000000000001;
                acc.Loan_Type__c = Car Loan;
                //acc.Remaining_Loan_Amount__c = 15000000;
                acc.Total_Loan_Amount__c = 1751594;
                acc.Active__c = Yes;
                
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
                    System.assert(e.getMessage());
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
                acc.Active__c = Yes;
                insert acc;
                
                acc.Name = '';
                acc.Balance__c = 141;
                acc.Calculated_Interest__c = 7;
                acc.Email__c = '';
                acc.Loan_Interest_Rate__c = 0.125;
                acc.Loan_Type__c = ;
                acc.Remaining_Loan_Amount__c = ;
                acc.Total_Loan_Amount__c = ;
                
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
                    System.assert(e.getMessage());
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
                acc.Active__c = Yes;
                insert acc;
                
                acc.Name = '';
                acc.Balance__c = 139;
                acc.Calculated_Interest__c = 7;
                acc.Email__c = 'test26@pairwise.test';
                acc.Loan_Interest_Rate__c = 0.146;
                acc.Loan_Type__c = Home Loan;
                acc.Remaining_Loan_Amount__c = 15000000;
                acc.Total_Loan_Amount__c = 1431581;
                
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
                    System.assert(e.getMessage());
                }
                Test.stopTest();
            }
            

            @isTest
            public static void testAccount_27() {
                Account acc = new Account();
                acc.Name = '';
                acc.Balance__c = 100;
                acc.RecordTypeId = Schema.SObjectType.Account.getRecordTypeInfosByName().get('>=$100').getRecordTypeId();
                acc.Calculated_Interest__c = ;
                acc.Email__c = 'test27@pairwise.test';
                acc.Loan_Interest_Rate__c = 0.162;
                acc.Loan_Type__c = Car Loan;
                //acc.Remaining_Loan_Amount__c = 15000000;
                acc.Total_Loan_Amount__c = 261865;
                acc.Active__c = Yes;
                
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
                    System.assert(e.getMessage());
                }
                Test.stopTest();
            }
            

            @isTest
            public static void testAccount_28() {
                Account acc = new Account();
                acc.Name = '';
                acc.Balance__c = 111;
                acc.RecordTypeId = Schema.SObjectType.Account.getRecordTypeInfosByName().get('>=$100').getRecordTypeId();
                acc.Calculated_Interest__c = 7;
                acc.Email__c = '';
                acc.Loan_Interest_Rate__c = 0.08;
                acc.Loan_Type__c = Home Loan;
                //acc.Remaining_Loan_Amount__c = ;
                acc.Total_Loan_Amount__c = ;
                acc.Active__c = Yes;
                
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
                    System.assert(e.getMessage());
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
                acc.Active__c = Yes;
                insert acc;
                
                acc.Name = '';
                acc.Balance__c = 154;
                acc.Calculated_Interest__c = 7;
                acc.Email__c = '';
                acc.Loan_Interest_Rate__c = 0.084;
                acc.Loan_Type__c = Home Loan;
                acc.Remaining_Loan_Amount__c = ;
                acc.Total_Loan_Amount__c = 201076;
                
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
                    System.assert(e.getMessage());
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
                acc.Active__c = Yes;
                insert acc;
                
                acc.Name = '';
                acc.Balance__c = 178;
                acc.Calculated_Interest__c = 7;
                acc.Email__c = '';
                acc.Loan_Interest_Rate__c = 107;
                acc.Loan_Type__c = Home Loan;
                acc.Remaining_Loan_Amount__c = 15000000;
                acc.Total_Loan_Amount__c = 961026;
                
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
                    System.assert(e.getMessage());
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
                acc.Active__c = Yes;
                insert acc;
                
                acc.Name = '';
                acc.Balance__c = 167;
                acc.Calculated_Interest__c = ;
                acc.Email__c = '';
                acc.Loan_Interest_Rate__c = 0.08;
                acc.Loan_Type__c = Home Loan;
                acc.Remaining_Loan_Amount__c = ;
                acc.Total_Loan_Amount__c = 49840;
                
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
                    System.assert(e.getMessage());
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
                acc.Active__c = Yes;
                insert acc;
                
                acc.Name = '';
                acc.Balance__c = 138;
                acc.Calculated_Interest__c = ;
                acc.Email__c = 'test32@pairwise.test';
                acc.Loan_Interest_Rate__c = 0.109;
                acc.Loan_Type__c = ;
                acc.Remaining_Loan_Amount__c = ;
                acc.Total_Loan_Amount__c = ;
                
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
                    System.assert(e.getMessage());
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
                acc.Active__c = Yes;
                insert acc;
                
                acc.Name = '';
                acc.Balance__c = 109;
                acc.Calculated_Interest__c = ;
                acc.Email__c = 'test33@pairwise.test';
                acc.Loan_Interest_Rate__c = 0.11900000000000001;
                acc.Loan_Type__c = Home Loan;
                acc.Remaining_Loan_Amount__c = 15000000;
                acc.Total_Loan_Amount__c = 6116031;
                
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
                    System.assert(e.getMessage());
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
                acc.Active__c = Yes;
                insert acc;
                
                acc.Name = '';
                acc.Balance__c = 145;
                acc.Calculated_Interest__c = 7;
                acc.Email__c = '';
                acc.Loan_Interest_Rate__c = ;
                acc.Loan_Type__c = ;
                acc.Remaining_Loan_Amount__c = 15000000;
                acc.Total_Loan_Amount__c = ;
                
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
                    System.assert(e.getMessage());
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
                acc.Active__c = Yes;
                insert acc;
                
                acc.Name = '';
                acc.Balance__c = 160;
                acc.Calculated_Interest__c = ;
                acc.Email__c = 'test35@pairwise.test';
                acc.Loan_Interest_Rate__c = ;
                acc.Loan_Type__c = Home Loan;
                acc.Remaining_Loan_Amount__c = 15000000;
                acc.Total_Loan_Amount__c = 9064567;
                
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
                    System.assert(e.getMessage());
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
                acc.Active__c = Yes;
                insert acc;
                
                acc.Name = '';
                acc.Balance__c = 100;
                acc.Calculated_Interest__c = 7;
                acc.Email__c = 'test36@pairwise.test';
                acc.Loan_Interest_Rate__c = 0.162;
                acc.Loan_Type__c = Car Loan;
                acc.Remaining_Loan_Amount__c = 15000000;
                acc.Total_Loan_Amount__c = 4657887;
                
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
                    System.assert(e.getMessage());
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
                acc.Active__c = Yes;
                insert acc;
                
                acc.Name = '';
                acc.Balance__c = 178;
                acc.Calculated_Interest__c = 7;
                acc.Email__c = '';
                acc.Loan_Interest_Rate__c = 0.11800000000000001;
                acc.Loan_Type__c = Home Loan;
                acc.Remaining_Loan_Amount__c = ;
                acc.Total_Loan_Amount__c = 781745;
                
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
                    System.assert(e.getMessage());
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
                acc.Active__c = Yes;
                insert acc;
                
                acc.Name = '';
                acc.Balance__c = 110;
                acc.Calculated_Interest__c = ;
                acc.Email__c = '';
                acc.Loan_Interest_Rate__c = 0.146;
                acc.Loan_Type__c = Car Loan;
                acc.Remaining_Loan_Amount__c = ;
                acc.Total_Loan_Amount__c = ;
                
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
                    System.assert(e.getMessage());
                }
                Test.stopTest();
            }
            

            @isTest
            public static void testAccount_39() {
                Account acc = new Account();
                acc.Name = '';
                acc.Balance__c = 161;
                acc.RecordTypeId = Schema.SObjectType.Account.getRecordTypeInfosByName().get('>=$100').getRecordTypeId();
                acc.Calculated_Interest__c = 7;
                acc.Email__c = 'test39@pairwise.test';
                acc.Loan_Interest_Rate__c = 0.146;
                acc.Loan_Type__c = Home Loan;
                //acc.Remaining_Loan_Amount__c = 15000000;
                acc.Total_Loan_Amount__c = 846631;
                acc.Active__c = Yes;
                
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
                    System.assert(e.getMessage());
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
                acc.Active__c = Yes;
                insert acc;
                
                acc.Name = '';
                acc.Balance__c = 133;
                acc.Calculated_Interest__c = 7;
                acc.Email__c = 'test40@pairwise.test';
                acc.Loan_Interest_Rate__c = 0.146;
                acc.Loan_Type__c = Home Loan;
                acc.Remaining_Loan_Amount__c = ;
                acc.Total_Loan_Amount__c = 134063;
                
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
                    System.assert(e.getMessage());
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
                acc.Active__c = Yes;
                insert acc;
                
                acc.Name = '';
                acc.Balance__c = 169;
                acc.Calculated_Interest__c = ;
                acc.Email__c = 'test41@pairwise.test';
                acc.Loan_Interest_Rate__c = 0.08;
                acc.Loan_Type__c = Home Loan;
                acc.Remaining_Loan_Amount__c = 15000000;
                acc.Total_Loan_Amount__c = 8523964;
                
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
                    System.assert(e.getMessage());
                }
                Test.stopTest();
            }
            

            @isTest
            public static void testAccount_42() {
                Account acc = new Account();
                acc.Name = '';
                acc.Balance__c = 184;
                acc.RecordTypeId = Schema.SObjectType.Account.getRecordTypeInfosByName().get('>=$100').getRecordTypeId();
                acc.Calculated_Interest__c = ;
                acc.Email__c = 'test42@pairwise.test';
                acc.Loan_Interest_Rate__c = ;
                acc.Loan_Type__c = Car Loan;
                //acc.Remaining_Loan_Amount__c = 15000000;
                acc.Total_Loan_Amount__c = 432604;
                acc.Active__c = Yes;
                
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
                    System.assert(e.getMessage());
                }
                Test.stopTest();
            }
            

            @isTest
            public static void testAccount_43() {
                Account acc = new Account();
                acc.Name = '';
                acc.Balance__c = 124;
                acc.RecordTypeId = Schema.SObjectType.Account.getRecordTypeInfosByName().get('>=$0').getRecordTypeId();
                acc.Calculated_Interest__c = 7;
                acc.Email__c = 'test43@pairwise.test';
                acc.Loan_Interest_Rate__c = 0.11;
                acc.Loan_Type__c = Car Loan;
                //acc.Remaining_Loan_Amount__c = 15000000;
                acc.Total_Loan_Amount__c = 812433;
                acc.Active__c = Yes;
                
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
                    System.assert(e.getMessage());
                }
                Test.stopTest();
            }
            

            @isTest
            public static void testAccount_44() {
                Account acc = new Account();
                acc.Name = '';
                acc.Balance__c = 104;
                acc.RecordTypeId = Schema.SObjectType.Account.getRecordTypeInfosByName().get('>=$0').getRecordTypeId();
                acc.Calculated_Interest__c = ;
                acc.Email__c = 'test44@pairwise.test';
                acc.Loan_Interest_Rate__c = 0.14;
                acc.Loan_Type__c = ;
                //acc.Remaining_Loan_Amount__c = 15000000;
                acc.Total_Loan_Amount__c = ;
                acc.Active__c = Yes;
                
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
                    System.assert(e.getMessage());
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
                acc.Active__c = Yes;
                insert acc;
                
                acc.Name = '';
                acc.Balance__c = 156;
                acc.Calculated_Interest__c = ;
                acc.Email__c = 'test45@pairwise.test';
                acc.Loan_Interest_Rate__c = 0.136;
                acc.Loan_Type__c = Home Loan;
                acc.Remaining_Loan_Amount__c = 15000000;
                acc.Total_Loan_Amount__c = ;
                
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
                    System.assert(e.getMessage());
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
                acc.Active__c = Yes;
                insert acc;
                
                acc.Name = '';
                acc.Balance__c = 192;
                acc.Calculated_Interest__c = 7;
                acc.Email__c = 'test46@pairwise.test';
                acc.Loan_Interest_Rate__c = 0.14;
                acc.Loan_Type__c = Home Loan;
                acc.Remaining_Loan_Amount__c = ;
                acc.Total_Loan_Amount__c = 498226;
                
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
                    System.assert(e.getMessage());
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
                acc.Active__c = Yes;
                insert acc;
                
                acc.Name = '';
                acc.Balance__c = 173;
                acc.Calculated_Interest__c = 7;
                acc.Email__c = 'test47@pairwise.test';
                acc.Loan_Interest_Rate__c = 107;
                acc.Loan_Type__c = ;
                acc.Remaining_Loan_Amount__c = 15000000;
                acc.Total_Loan_Amount__c = ;
                
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
                    System.assert(e.getMessage());
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
                acc.Active__c = Yes;
                insert acc;
                
                acc.Name = '';
                acc.Balance__c = 114;
                acc.Calculated_Interest__c = ;
                acc.Email__c = 'test48@pairwise.test';
                acc.Loan_Interest_Rate__c = 0.09;
                acc.Loan_Type__c = Car Loan;
                acc.Remaining_Loan_Amount__c = ;
                acc.Total_Loan_Amount__c = ;
                
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
                    System.assert(e.getMessage());
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
                acc.Active__c = Yes;
                insert acc;
                
                acc.Name = '';
                acc.Balance__c = 184;
                acc.Calculated_Interest__c = 7;
                acc.Email__c = 'test49@pairwise.test';
                acc.Loan_Interest_Rate__c = 0.136;
                acc.Loan_Type__c = ;
                acc.Remaining_Loan_Amount__c = ;
                acc.Total_Loan_Amount__c = ;
                
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
                    System.assert(e.getMessage());
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
                acc.Active__c = Yes;
                insert acc;
                
                acc.Name = '';
                acc.Balance__c = 191;
                acc.Calculated_Interest__c = 7;
                acc.Email__c = 'test50@pairwise.test';
                acc.Loan_Interest_Rate__c = 107;
                acc.Loan_Type__c = Home Loan;
                acc.Remaining_Loan_Amount__c = 15000000;
                acc.Total_Loan_Amount__c = 275467;
                
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
                    System.assert(e.getMessage());
                }
                Test.stopTest();
            }
            

            @isTest
            public static void testAccount_51() {
                Account acc = new Account();
                acc.Name = '';
                acc.Balance__c = 167;
                acc.RecordTypeId = Schema.SObjectType.Account.getRecordTypeInfosByName().get('>=$100').getRecordTypeId();
                acc.Calculated_Interest__c = ;
                acc.Email__c = 'test51@pairwise.test';
                acc.Loan_Interest_Rate__c = 0.11800000000000001;
                acc.Loan_Type__c = Home Loan;
                //acc.Remaining_Loan_Amount__c = 15000000;
                acc.Total_Loan_Amount__c = 52896;
                acc.Active__c = Yes;
                
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
                    System.assert(e.getMessage());
                }
                Test.stopTest();
            }
            

            @isTest
            public static void testAccount_52() {
                Account acc = new Account();
                acc.Name = '';
                acc.Balance__c = 168;
                acc.RecordTypeId = Schema.SObjectType.Account.getRecordTypeInfosByName().get('>=$100').getRecordTypeId();
                acc.Calculated_Interest__c = ;
                acc.Email__c = 'test52@pairwise.test';
                acc.Loan_Interest_Rate__c = 0.1;
                acc.Loan_Type__c = Home Loan;
                //acc.Remaining_Loan_Amount__c = ;
                acc.Total_Loan_Amount__c = 887333;
                acc.Active__c = Yes;
                
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
                    System.assert(e.getMessage());
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
                acc.Active__c = Yes;
                insert acc;
                
                acc.Name = '';
                acc.Balance__c = 173;
                acc.Calculated_Interest__c = ;
                acc.Email__c = 'test53@pairwise.test';
                acc.Loan_Interest_Rate__c = 0.159;
                acc.Loan_Type__c = ;
                acc.Remaining_Loan_Amount__c = 15000000;
                acc.Total_Loan_Amount__c = ;
                
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
                    System.assert(e.getMessage());
                }
                Test.stopTest();
            }
            

            @isTest
            public static void testAccount_54() {
                Account acc = new Account();
                acc.Name = '';
                acc.Balance__c = 168;
                acc.RecordTypeId = Schema.SObjectType.Account.getRecordTypeInfosByName().get('>=$0').getRecordTypeId();
                acc.Calculated_Interest__c = 7;
                acc.Email__c = 'test54@pairwise.test';
                acc.Loan_Interest_Rate__c = 0.136;
                acc.Loan_Type__c = Home Loan;
                //acc.Remaining_Loan_Amount__c = 15000000;
                acc.Total_Loan_Amount__c = 470913;
                acc.Active__c = Yes;
                
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
                    System.assert(e.getMessage());
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
                acc.Active__c = Yes;
                insert acc;
                
                acc.Name = '';
                acc.Balance__c = 179;
                acc.Calculated_Interest__c = 7;
                acc.Email__c = '';
                acc.Loan_Interest_Rate__c = 0.11;
                acc.Loan_Type__c = Home Loan;
                acc.Remaining_Loan_Amount__c = 15000000;
                acc.Total_Loan_Amount__c = 443862;
                
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
                    System.assert(e.getMessage());
                }
                Test.stopTest();
            }
            

            @isTest
            public static void testAccount_56() {
                Account acc = new Account();
                acc.Name = '';
                acc.Balance__c = 156;
                acc.RecordTypeId = Schema.SObjectType.Account.getRecordTypeInfosByName().get('>=$100').getRecordTypeId();
                acc.Calculated_Interest__c = ;
                acc.Email__c = '';
                acc.Loan_Interest_Rate__c = ;
                acc.Loan_Type__c = Home Loan;
                //acc.Remaining_Loan_Amount__c = 15000000;
                acc.Total_Loan_Amount__c = ;
                acc.Active__c = Yes;
                
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
                    System.assert(e.getMessage());
                }
                Test.stopTest();
            }
            

            @isTest
            public static void testAccount_57() {
                Account acc = new Account();
                acc.Name = '';
                acc.Balance__c = 144;
                acc.RecordTypeId = Schema.SObjectType.Account.getRecordTypeInfosByName().get('>=$100').getRecordTypeId();
                acc.Calculated_Interest__c = 7;
                acc.Email__c = '';
                acc.Loan_Interest_Rate__c = 0.14;
                acc.Loan_Type__c = Home Loan;
                //acc.Remaining_Loan_Amount__c = 15000000;
                acc.Total_Loan_Amount__c = 8465851;
                acc.Active__c = Yes;
                
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
                    System.assert(e.getMessage());
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
                acc.Active__c = Yes;
                insert acc;
                
                acc.Name = '';
                acc.Balance__c = 112;
                acc.Calculated_Interest__c = 7;
                acc.Email__c = '';
                acc.Loan_Interest_Rate__c = 0.14;
                acc.Loan_Type__c = Car Loan;
                acc.Remaining_Loan_Amount__c = 15000000;
                acc.Total_Loan_Amount__c = 80935;
                
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
                    System.assert(e.getMessage());
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
                acc.Active__c = Yes;
                insert acc;
                
                acc.Name = '';
                acc.Balance__c = 157;
                acc.Calculated_Interest__c = 7;
                acc.Email__c = '';
                acc.Loan_Interest_Rate__c = 0.09;
                acc.Loan_Type__c = Home Loan;
                acc.Remaining_Loan_Amount__c = 15000000;
                acc.Total_Loan_Amount__c = 89129;
                
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
                    System.assert(e.getMessage());
                }
                Test.stopTest();
            }
            

            @isTest
            public static void testAccount_60() {
                Account acc = new Account();
                acc.Name = '';
                acc.Balance__c = 102;
                acc.RecordTypeId = Schema.SObjectType.Account.getRecordTypeInfosByName().get('>=$0').getRecordTypeId();
                acc.Calculated_Interest__c = ;
                acc.Email__c = 'test60@pairwise.test';
                acc.Loan_Interest_Rate__c = 0.07;
                acc.Loan_Type__c = ;
                //acc.Remaining_Loan_Amount__c = 15000000;
                acc.Total_Loan_Amount__c = ;
                acc.Active__c = Yes;
                
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
                    System.assert(e.getMessage());
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
                acc.Active__c = Yes;
                insert acc;
                
                acc.Name = '';
                acc.Balance__c = 163;
                acc.Calculated_Interest__c = 7;
                acc.Email__c = '';
                acc.Loan_Interest_Rate__c = 0.109;
                acc.Loan_Type__c = Car Loan;
                acc.Remaining_Loan_Amount__c = 15000000;
                acc.Total_Loan_Amount__c = 567529;
                
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
                    System.assert(e.getMessage());
                }
                Test.stopTest();
            }
            

            @isTest
            public static void testAccount_62() {
                Account acc = new Account();
                acc.Name = '';
                acc.Balance__c = 132;
                acc.RecordTypeId = Schema.SObjectType.Account.getRecordTypeInfosByName().get('>=$100').getRecordTypeId();
                acc.Calculated_Interest__c = ;
                acc.Email__c = '';
                acc.Loan_Interest_Rate__c = 0.10300000000000001;
                acc.Loan_Type__c = Home Loan;
                //acc.Remaining_Loan_Amount__c = 15000000;
                acc.Total_Loan_Amount__c = 609971;
                acc.Active__c = Yes;
                
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
                    System.assert(e.getMessage());
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
                acc.Active__c = Yes;
                insert acc;
                
                acc.Name = '';
                acc.Balance__c = 148;
                acc.Calculated_Interest__c = 7;
                acc.Email__c = '';
                acc.Loan_Interest_Rate__c = 107;
                acc.Loan_Type__c = Home Loan;
                acc.Remaining_Loan_Amount__c = 15000000;
                acc.Total_Loan_Amount__c = 45887;
                
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
                    System.assert(e.getMessage());
                }
                Test.stopTest();
            }
            

            @isTest
            public static void testAccount_64() {
                Account acc = new Account();
                acc.Name = '';
                acc.Balance__c = 184;
                acc.RecordTypeId = Schema.SObjectType.Account.getRecordTypeInfosByName().get('>=$100').getRecordTypeId();
                acc.Calculated_Interest__c = ;
                acc.Email__c = 'test64@pairwise.test';
                acc.Loan_Interest_Rate__c = 0.125;
                acc.Loan_Type__c = Home Loan;
                //acc.Remaining_Loan_Amount__c = 15000000;
                acc.Total_Loan_Amount__c = 425894;
                acc.Active__c = Yes;
                
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
                    System.assert(e.getMessage());
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
                acc.Active__c = Yes;
                insert acc;
                
                acc.Name = '';
                acc.Balance__c = 104;
                acc.Calculated_Interest__c = ;
                acc.Email__c = '';
                acc.Loan_Interest_Rate__c = 0.162;
                acc.Loan_Type__c = ;
                acc.Remaining_Loan_Amount__c = ;
                acc.Total_Loan_Amount__c = ;
                
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
                    System.assert(e.getMessage());
                }
                Test.stopTest();
            }
            

            @isTest
            public static void testAccount_66() {
                Account acc = new Account();
                acc.Name = '';
                acc.Balance__c = 199;
                acc.RecordTypeId = Schema.SObjectType.Account.getRecordTypeInfosByName().get('>=$0').getRecordTypeId();
                acc.Calculated_Interest__c = ;
                acc.Email__c = 'test66@pairwise.test';
                acc.Loan_Interest_Rate__c = 0.1;
                acc.Loan_Type__c = Car Loan;
                //acc.Remaining_Loan_Amount__c = ;
                acc.Total_Loan_Amount__c = 1743277;
                acc.Active__c = Yes;
                
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
                    System.assert(e.getMessage());
                }
                Test.stopTest();
            }
            

            @isTest
            public static void testAccount_67() {
                Account acc = new Account();
                acc.Name = '';
                acc.Balance__c = 173;
                acc.RecordTypeId = Schema.SObjectType.Account.getRecordTypeInfosByName().get('>=$100').getRecordTypeId();
                acc.Calculated_Interest__c = 7;
                acc.Email__c = 'test67@pairwise.test';
                acc.Loan_Interest_Rate__c = 0.09;
                acc.Loan_Type__c = Home Loan;
                //acc.Remaining_Loan_Amount__c = 15000000;
                acc.Total_Loan_Amount__c = 330713;
                acc.Active__c = Yes;
                
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
                    System.assert(e.getMessage());
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
                acc.Active__c = Yes;
                insert acc;
                
                acc.Name = '';
                acc.Balance__c = 111;
                acc.Calculated_Interest__c = ;
                acc.Email__c = 'test68@pairwise.test';
                acc.Loan_Interest_Rate__c = 0.159;
                acc.Loan_Type__c = Home Loan;
                acc.Remaining_Loan_Amount__c = ;
                acc.Total_Loan_Amount__c = ;
                
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
                    System.assert(e.getMessage());
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
                acc.Active__c = Yes;
                insert acc;
                
                acc.Name = '';
                acc.Balance__c = 190;
                acc.Calculated_Interest__c = 7;
                acc.Email__c = '';
                acc.Loan_Interest_Rate__c = 0.162;
                acc.Loan_Type__c = Car Loan;
                acc.Remaining_Loan_Amount__c = ;
                acc.Total_Loan_Amount__c = 89416;
                
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
                    System.assert(e.getMessage());
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
                acc.Active__c = Yes;
                insert acc;
                
                acc.Name = '';
                acc.Balance__c = 164;
                acc.Calculated_Interest__c = 7;
                acc.Email__c = '';
                acc.Loan_Interest_Rate__c = 0.146;
                acc.Loan_Type__c = Car Loan;
                acc.Remaining_Loan_Amount__c = ;
                acc.Total_Loan_Amount__c = 79376;
                
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
                    System.assert(e.getMessage());
                }
                Test.stopTest();
            }
            

            @isTest
            public static void testAccount_71() {
                Account acc = new Account();
                acc.Name = '';
                acc.Balance__c = 140;
                acc.RecordTypeId = Schema.SObjectType.Account.getRecordTypeInfosByName().get('>=$0').getRecordTypeId();
                acc.Calculated_Interest__c = ;
                acc.Email__c = '';
                acc.Loan_Interest_Rate__c = 0.11800000000000001;
                acc.Loan_Type__c = ;
                //acc.Remaining_Loan_Amount__c = ;
                acc.Total_Loan_Amount__c = ;
                acc.Active__c = Yes;
                
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
                    System.assert(e.getMessage());
                }
                Test.stopTest();
            }
            

            @isTest
            public static void testAccount_72() {
                Account acc = new Account();
                acc.Name = '';
                acc.Balance__c = 164;
                acc.RecordTypeId = Schema.SObjectType.Account.getRecordTypeInfosByName().get('>=$100').getRecordTypeId();
                acc.Calculated_Interest__c = ;
                acc.Email__c = '';
                acc.Loan_Interest_Rate__c = 0.07;
                acc.Loan_Type__c = Home Loan;
                //acc.Remaining_Loan_Amount__c = ;
                acc.Total_Loan_Amount__c = 8793633;
                acc.Active__c = Yes;
                
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
                    System.assert(e.getMessage());
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
                acc.Active__c = Yes;
                insert acc;
                
                acc.Name = '';
                acc.Balance__c = 114;
                acc.Calculated_Interest__c = ;
                acc.Email__c = '';
                acc.Loan_Interest_Rate__c = 0.07;
                acc.Loan_Type__c = Car Loan;
                acc.Remaining_Loan_Amount__c = ;
                acc.Total_Loan_Amount__c = 715551;
                
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
                    System.assert(e.getMessage());
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
                acc.Active__c = Yes;
                insert acc;
                
                acc.Name = '';
                acc.Balance__c = 155;
                acc.Calculated_Interest__c = ;
                acc.Email__c = '';
                acc.Loan_Interest_Rate__c = 0.07;
                acc.Loan_Type__c = Car Loan;
                acc.Remaining_Loan_Amount__c = ;
                acc.Total_Loan_Amount__c = 40389;
                
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
                    System.assert(e.getMessage());
                }
                Test.stopTest();
            }
            

            @isTest
            public static void testAccount_75() {
                Account acc = new Account();
                acc.Name = '';
                acc.Balance__c = 118;
                acc.RecordTypeId = Schema.SObjectType.Account.getRecordTypeInfosByName().get('>=$100').getRecordTypeId();
                acc.Calculated_Interest__c = ;
                acc.Email__c = '';
                acc.Loan_Interest_Rate__c = 0.162;
                acc.Loan_Type__c = Home Loan;
                //acc.Remaining_Loan_Amount__c = ;
                acc.Total_Loan_Amount__c = 760028;
                acc.Active__c = Yes;
                
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
                    System.assert(e.getMessage());
                }
                Test.stopTest();
            }
            

            @isTest
            public static void testAccount_76() {
                Account acc = new Account();
                acc.Name = '';
                acc.Balance__c = 100;
                acc.RecordTypeId = Schema.SObjectType.Account.getRecordTypeInfosByName().get('>=$100').getRecordTypeId();
                acc.Calculated_Interest__c = ;
                acc.Email__c = 'test76@pairwise.test';
                acc.Loan_Interest_Rate__c = 0.11800000000000001;
                acc.Loan_Type__c = Car Loan;
                //acc.Remaining_Loan_Amount__c = ;
                acc.Total_Loan_Amount__c = ;
                acc.Active__c = Yes;
                
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
                    System.assert(e.getMessage());
                }
                Test.stopTest();
            }
            

            @isTest
            public static void testAccount_77() {
                Account acc = new Account();
                acc.Name = '';
                acc.Balance__c = 127;
                acc.RecordTypeId = Schema.SObjectType.Account.getRecordTypeInfosByName().get('>=$100').getRecordTypeId();
                acc.Calculated_Interest__c = ;
                acc.Email__c = '';
                acc.Loan_Interest_Rate__c = 0.10300000000000001;
                acc.Loan_Type__c = Car Loan;
                //acc.Remaining_Loan_Amount__c = 15000000;
                acc.Total_Loan_Amount__c = 144995;
                acc.Active__c = Yes;
                
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
                    System.assert(e.getMessage());
                }
                Test.stopTest();
            }
            

            @isTest
            public static void testAccount_78() {
                Account acc = new Account();
                acc.Name = '';
                acc.Balance__c = 142;
                acc.RecordTypeId = Schema.SObjectType.Account.getRecordTypeInfosByName().get('>=$100').getRecordTypeId();
                acc.Calculated_Interest__c = ;
                acc.Email__c = '';
                acc.Loan_Interest_Rate__c = 0.159;
                acc.Loan_Type__c = Home Loan;
                //acc.Remaining_Loan_Amount__c = 15000000;
                acc.Total_Loan_Amount__c = 7682;
                acc.Active__c = Yes;
                
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
                    System.assert(e.getMessage());
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
                acc.Active__c = Yes;
                insert acc;
                
                acc.Name = '';
                acc.Balance__c = 126;
                acc.Calculated_Interest__c = 7;
                acc.Email__c = 'test79@pairwise.test';
                acc.Loan_Interest_Rate__c = 0.1;
                acc.Loan_Type__c = Home Loan;
                acc.Remaining_Loan_Amount__c = ;
                acc.Total_Loan_Amount__c = 75976;
                
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
                    System.assert(e.getMessage());
                }
                Test.stopTest();
            }
            

            @isTest
            public static void testAccount_80() {
                Account acc = new Account();
                acc.Name = '';
                acc.Balance__c = 118;
                acc.RecordTypeId = Schema.SObjectType.Account.getRecordTypeInfosByName().get('>=$0').getRecordTypeId();
                acc.Calculated_Interest__c = ;
                acc.Email__c = '';
                acc.Loan_Interest_Rate__c = 0.084;
                acc.Loan_Type__c = Car Loan;
                //acc.Remaining_Loan_Amount__c = ;
                acc.Total_Loan_Amount__c = 90365;
                acc.Active__c = Yes;
                
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
                    System.assert(e.getMessage());
                }
                Test.stopTest();
            }
            

            @isTest
            public static void testAccount_81() {
                Account acc = new Account();
                acc.Name = '';
                acc.Balance__c = 104;
                acc.RecordTypeId = Schema.SObjectType.Account.getRecordTypeInfosByName().get('>=$100').getRecordTypeId();
                acc.Calculated_Interest__c = 7;
                acc.Email__c = 'test81@pairwise.test';
                acc.Loan_Interest_Rate__c = 0.14;
                acc.Loan_Type__c = Car Loan;
                //acc.Remaining_Loan_Amount__c = ;
                acc.Total_Loan_Amount__c = 415947;
                acc.Active__c = Yes;
                
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
                    System.assert(e.getMessage());
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
                acc.Active__c = Yes;
                insert acc;
                
                acc.Name = '';
                acc.Balance__c = 190;
                acc.Calculated_Interest__c = 7;
                acc.Email__c = '';
                acc.Loan_Interest_Rate__c = 0.109;
                acc.Loan_Type__c = Car Loan;
                acc.Remaining_Loan_Amount__c = ;
                acc.Total_Loan_Amount__c = 317106;
                
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
                    System.assert(e.getMessage());
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
                acc.Active__c = Yes;
                insert acc;
                
                acc.Name = '';
                acc.Balance__c = 108;
                acc.Calculated_Interest__c = ;
                acc.Email__c = '';
                acc.Loan_Interest_Rate__c = 0.146;
                acc.Loan_Type__c = Home Loan;
                acc.Remaining_Loan_Amount__c = 15000000;
                acc.Total_Loan_Amount__c = 7899834;
                
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
                    System.assert(e.getMessage());
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
                acc.Active__c = Yes;
                insert acc;
                
                acc.Name = '';
                acc.Balance__c = 101;
                acc.Calculated_Interest__c = 7;
                acc.Email__c = 'test84@pairwise.test';
                acc.Loan_Interest_Rate__c = ;
                acc.Loan_Type__c = Car Loan;
                acc.Remaining_Loan_Amount__c = ;
                acc.Total_Loan_Amount__c = 272439;
                
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
                    System.assert(e.getMessage());
                }
                Test.stopTest();
            }
            

            @isTest
            public static void testAccount_85() {
                Account acc = new Account();
                acc.Name = '';
                acc.Balance__c = 189;
                acc.RecordTypeId = Schema.SObjectType.Account.getRecordTypeInfosByName().get('>=$100').getRecordTypeId();
                acc.Calculated_Interest__c = ;
                acc.Email__c = 'test85@pairwise.test';
                acc.Loan_Interest_Rate__c = ;
                acc.Loan_Type__c = Home Loan;
                //acc.Remaining_Loan_Amount__c = 15000000;
                acc.Total_Loan_Amount__c = 2584667;
                acc.Active__c = Yes;
                
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
                    System.assert(e.getMessage());
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
                acc.Active__c = Yes;
                insert acc;
                
                acc.Name = '';
                acc.Balance__c = 131;
                acc.Calculated_Interest__c = 7;
                acc.Email__c = 'test86@pairwise.test';
                acc.Loan_Interest_Rate__c = 0.1;
                acc.Loan_Type__c = Home Loan;
                acc.Remaining_Loan_Amount__c = ;
                acc.Total_Loan_Amount__c = 276805;
                
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
                    System.assert(e.getMessage());
                }
                Test.stopTest();
            }
            

            @isTest
            public static void testAccount_87() {
                Account acc = new Account();
                acc.Name = '';
                acc.Balance__c = 174;
                acc.RecordTypeId = Schema.SObjectType.Account.getRecordTypeInfosByName().get('>=$0').getRecordTypeId();
                acc.Calculated_Interest__c = 7;
                acc.Email__c = '';
                acc.Loan_Interest_Rate__c = 0.11900000000000001;
                acc.Loan_Type__c = Car Loan;
                //acc.Remaining_Loan_Amount__c = 15000000;
                acc.Total_Loan_Amount__c = 743261;
                acc.Active__c = Yes;
                
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
                    System.assert(e.getMessage());
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
                acc.Active__c = Yes;
                insert acc;
                
                acc.Name = '';
                acc.Balance__c = 136;
                acc.Calculated_Interest__c = 7;
                acc.Email__c = 'test88@pairwise.test';
                acc.Loan_Interest_Rate__c = 0.10300000000000001;
                acc.Loan_Type__c = Car Loan;
                acc.Remaining_Loan_Amount__c = 15000000;
                acc.Total_Loan_Amount__c = 884816;
                
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
                    System.assert(e.getMessage());
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
                acc.Active__c = Yes;
                insert acc;
                
                acc.Name = '';
                acc.Balance__c = 144;
                acc.Calculated_Interest__c = ;
                acc.Email__c = 'test89@pairwise.test';
                acc.Loan_Interest_Rate__c = 0.10300000000000001;
                acc.Loan_Type__c = Home Loan;
                acc.Remaining_Loan_Amount__c = ;
                acc.Total_Loan_Amount__c = 1024;
                
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
                    System.assert(e.getMessage());
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
                acc.Active__c = Yes;
                insert acc;
                
                acc.Name = '';
                acc.Balance__c = 121;
                acc.Calculated_Interest__c = 7;
                acc.Email__c = '';
                acc.Loan_Interest_Rate__c = 0.11800000000000001;
                acc.Loan_Type__c = Home Loan;
                acc.Remaining_Loan_Amount__c = 15000000;
                acc.Total_Loan_Amount__c = 9621954;
                
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
                    System.assert(e.getMessage());
                }
                Test.stopTest();
            }
            

            @isTest
            public static void testAccount_91() {
                Account acc = new Account();
                acc.Name = '';
                acc.Balance__c = 171;
                acc.RecordTypeId = Schema.SObjectType.Account.getRecordTypeInfosByName().get('>=$0').getRecordTypeId();
                acc.Calculated_Interest__c = ;
                acc.Email__c = '';
                acc.Loan_Interest_Rate__c = 107;
                acc.Loan_Type__c = Home Loan;
                //acc.Remaining_Loan_Amount__c = ;
                acc.Total_Loan_Amount__c = 705303;
                acc.Active__c = Yes;
                
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
                    System.assert(e.getMessage());
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
                acc.Active__c = Yes;
                insert acc;
                
                acc.Name = '';
                acc.Balance__c = 114;
                acc.Calculated_Interest__c = 7;
                acc.Email__c = '';
                acc.Loan_Interest_Rate__c = 0.136;
                acc.Loan_Type__c = Home Loan;
                acc.Remaining_Loan_Amount__c = ;
                acc.Total_Loan_Amount__c = 40398;
                
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
                    System.assert(e.getMessage());
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
                acc.Active__c = Yes;
                insert acc;
                
                acc.Name = '';
                acc.Balance__c = 169;
                acc.Calculated_Interest__c = 7;
                acc.Email__c = '';
                acc.Loan_Interest_Rate__c = 0.125;
                acc.Loan_Type__c = Car Loan;
                acc.Remaining_Loan_Amount__c = ;
                acc.Total_Loan_Amount__c = 808400;
                
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
                    System.assert(e.getMessage());
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
                acc.Active__c = Yes;
                insert acc;
                
                acc.Name = '';
                acc.Balance__c = 160;
                acc.Calculated_Interest__c = ;
                acc.Email__c = 'test94@pairwise.test';
                acc.Loan_Interest_Rate__c = 0.084;
                acc.Loan_Type__c = ;
                acc.Remaining_Loan_Amount__c = 15000000;
                acc.Total_Loan_Amount__c = ;
                
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
                    System.assert(e.getMessage());
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
                acc.Active__c = Yes;
                insert acc;
                
                acc.Name = '';
                acc.Balance__c = 110;
                acc.Calculated_Interest__c = ;
                acc.Email__c = 'test95@pairwise.test';
                acc.Loan_Interest_Rate__c = ;
                acc.Loan_Type__c = Home Loan;
                acc.Remaining_Loan_Amount__c = ;
                acc.Total_Loan_Amount__c = 4879336;
                
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
                    System.assert(e.getMessage());
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
                acc.Active__c = Yes;
                insert acc;
                
                acc.Name = '';
                acc.Balance__c = 164;
                acc.Calculated_Interest__c = ;
                acc.Email__c = '';
                acc.Loan_Interest_Rate__c = 0.09;
                acc.Loan_Type__c = Home Loan;
                acc.Remaining_Loan_Amount__c = ;
                acc.Total_Loan_Amount__c = 752816;
                
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
                    System.assert(e.getMessage());
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
                acc.Active__c = Yes;
                insert acc;
                
                acc.Name = '';
                acc.Balance__c = 135;
                acc.Calculated_Interest__c = 7;
                acc.Email__c = '';
                acc.Loan_Interest_Rate__c = 0.146;
                acc.Loan_Type__c = Home Loan;
                acc.Remaining_Loan_Amount__c = ;
                acc.Total_Loan_Amount__c = 253664;
                
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
                    System.assert(e.getMessage());
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
                acc.Active__c = Yes;
                insert acc;
                
                acc.Name = '';
                acc.Balance__c = 188;
                acc.Calculated_Interest__c = 7;
                acc.Email__c = 'test98@pairwise.test';
                acc.Loan_Interest_Rate__c = 0.159;
                acc.Loan_Type__c = Home Loan;
                acc.Remaining_Loan_Amount__c = ;
                acc.Total_Loan_Amount__c = 3654664;
                
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
                    System.assert(e.getMessage());
                }
                Test.stopTest();
            }
            

            @isTest
            public static void testAccount_99() {
                Account acc = new Account();
                acc.Name = '';
                acc.Balance__c = 161;
                acc.RecordTypeId = Schema.SObjectType.Account.getRecordTypeInfosByName().get('>=$100').getRecordTypeId();
                acc.Calculated_Interest__c = ;
                acc.Email__c = '';
                acc.Loan_Interest_Rate__c = 0.1;
                acc.Loan_Type__c = Home Loan;
                //acc.Remaining_Loan_Amount__c = 15000000;
                acc.Total_Loan_Amount__c = ;
                acc.Active__c = Yes;
                
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
                    System.assert(e.getMessage());
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
                acc.Active__c = Yes;
                insert acc;
                
                acc.Name = '';
                acc.Balance__c = 103;
                acc.Calculated_Interest__c = ;
                acc.Email__c = 'test100@pairwise.test';
                acc.Loan_Interest_Rate__c = 0.125;
                acc.Loan_Type__c = Home Loan;
                acc.Remaining_Loan_Amount__c = ;
                acc.Total_Loan_Amount__c = 6041878;
                
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
                    System.assert(e.getMessage());
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
                acc.Active__c = Yes;
                insert acc;
                
                acc.Name = '';
                acc.Balance__c = 172;
                acc.Calculated_Interest__c = 7;
                acc.Email__c = '';
                acc.Loan_Interest_Rate__c = 0.10300000000000001;
                acc.Loan_Type__c = ;
                acc.Remaining_Loan_Amount__c = ;
                acc.Total_Loan_Amount__c = ;
                
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
                    System.assert(e.getMessage());
                }
                Test.stopTest();
            }
            

            @isTest
            public static void testAccount_102() {
                Account acc = new Account();
                acc.Name = '';
                acc.Balance__c = 131;
                acc.RecordTypeId = Schema.SObjectType.Account.getRecordTypeInfosByName().get('>=$100').getRecordTypeId();
                acc.Calculated_Interest__c = 7;
                acc.Email__c = '';
                acc.Loan_Interest_Rate__c = 0.084;
                acc.Loan_Type__c = Car Loan;
                //acc.Remaining_Loan_Amount__c = 15000000;
                acc.Total_Loan_Amount__c = 797839;
                acc.Active__c = Yes;
                
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
                    System.assert(e.getMessage());
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
                acc.Active__c = Yes;
                insert acc;
                
                acc.Name = '';
                acc.Balance__c = 200;
                acc.Calculated_Interest__c = 7;
                acc.Email__c = 'test103@pairwise.test';
                acc.Loan_Interest_Rate__c = 0.1;
                acc.Loan_Type__c = Home Loan;
                acc.Remaining_Loan_Amount__c = ;
                acc.Total_Loan_Amount__c = 299923;
                
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
                    System.assert(e.getMessage());
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
                acc.Active__c = Yes;
                insert acc;
                
                acc.Name = '';
                acc.Balance__c = 144;
                acc.Calculated_Interest__c = ;
                acc.Email__c = 'test104@pairwise.test';
                acc.Loan_Interest_Rate__c = 0.14;
                acc.Loan_Type__c = Home Loan;
                acc.Remaining_Loan_Amount__c = 15000000;
                acc.Total_Loan_Amount__c = 992594;
                
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
                    System.assert(e.getMessage());
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
                acc.Active__c = Yes;
                insert acc;
                
                acc.Name = '';
                acc.Balance__c = 127;
                acc.Calculated_Interest__c = 7;
                acc.Email__c = 'test105@pairwise.test';
                acc.Loan_Interest_Rate__c = ;
                acc.Loan_Type__c = ;
                acc.Remaining_Loan_Amount__c = ;
                acc.Total_Loan_Amount__c = ;
                
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
                    System.assert(e.getMessage());
                }
                Test.stopTest();
            }
            

            @isTest
            public static void testAccount_106() {
                Account acc = new Account();
                acc.Name = '';
                acc.Balance__c = 114;
                acc.RecordTypeId = Schema.SObjectType.Account.getRecordTypeInfosByName().get('>=$100').getRecordTypeId();
                acc.Calculated_Interest__c = 7;
                acc.Email__c = '';
                acc.Loan_Interest_Rate__c = 0.084;
                acc.Loan_Type__c = Home Loan;
                //acc.Remaining_Loan_Amount__c = ;
                acc.Total_Loan_Amount__c = 445316;
                acc.Active__c = Yes;
                
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
                    System.assert(e.getMessage());
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
                acc.Active__c = Yes;
                insert acc;
                
                acc.Name = '';
                acc.Balance__c = 160;
                acc.Calculated_Interest__c = 7;
                acc.Email__c = '';
                acc.Loan_Interest_Rate__c = 0.11900000000000001;
                acc.Loan_Type__c = ;
                acc.Remaining_Loan_Amount__c = ;
                acc.Total_Loan_Amount__c = ;
                
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
                    System.assert(e.getMessage());
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
                acc.Active__c = Yes;
                insert acc;
                
                acc.Name = '';
                acc.Balance__c = 192;
                acc.Calculated_Interest__c = 7;
                acc.Email__c = 'test108@pairwise.test';
                acc.Loan_Interest_Rate__c = ;
                acc.Loan_Type__c = Car Loan;
                acc.Remaining_Loan_Amount__c = 15000000;
                acc.Total_Loan_Amount__c = 135678;
                
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
                    System.assert(e.getMessage());
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
                acc.Active__c = Yes;
                insert acc;
                
                acc.Name = '';
                acc.Balance__c = 113;
                acc.Calculated_Interest__c = 7;
                acc.Email__c = 'test109@pairwise.test';
                acc.Loan_Interest_Rate__c = 0.11900000000000001;
                acc.Loan_Type__c = Home Loan;
                acc.Remaining_Loan_Amount__c = 15000000;
                acc.Total_Loan_Amount__c = 28331;
                
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
                    System.assert(e.getMessage());
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
                acc.Active__c = Yes;
                insert acc;
                
                acc.Name = '';
                acc.Balance__c = 152;
                acc.Calculated_Interest__c = ;
                acc.Email__c = 'test110@pairwise.test';
                acc.Loan_Interest_Rate__c = 0.146;
                acc.Loan_Type__c = ;
                acc.Remaining_Loan_Amount__c = ;
                acc.Total_Loan_Amount__c = ;
                
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
                    System.assert(e.getMessage());
                }
                Test.stopTest();
            }
            

            @isTest
            public static void testAccount_111() {
                Account acc = new Account();
                acc.Name = '';
                acc.Balance__c = 155;
                acc.RecordTypeId = Schema.SObjectType.Account.getRecordTypeInfosByName().get('>=$100').getRecordTypeId();
                acc.Calculated_Interest__c = 7;
                acc.Email__c = '';
                acc.Loan_Interest_Rate__c = 0.109;
                acc.Loan_Type__c = Home Loan;
                //acc.Remaining_Loan_Amount__c = ;
                acc.Total_Loan_Amount__c = ;
                acc.Active__c = Yes;
                
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
                    System.assert(e.getMessage());
                }
                Test.stopTest();
            }
            

            @isTest
            public static void testAccount_112() {
                Account acc = new Account();
                acc.Name = '';
                acc.Balance__c = 118;
                acc.RecordTypeId = Schema.SObjectType.Account.getRecordTypeInfosByName().get('>=$100').getRecordTypeId();
                acc.Calculated_Interest__c = 7;
                acc.Email__c = 'test112@pairwise.test';
                acc.Loan_Interest_Rate__c = 0.109;
                acc.Loan_Type__c = Home Loan;
                //acc.Remaining_Loan_Amount__c = 15000000;
                acc.Total_Loan_Amount__c = 13698;
                acc.Active__c = Yes;
                
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
                    System.assert(e.getMessage());
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
                acc.Active__c = Yes;
                insert acc;
                
                acc.Name = '';
                acc.Balance__c = 185;
                acc.Calculated_Interest__c = ;
                acc.Email__c = 'test113@pairwise.test';
                acc.Loan_Interest_Rate__c = 0.11;
                acc.Loan_Type__c = Home Loan;
                acc.Remaining_Loan_Amount__c = 15000000;
                acc.Total_Loan_Amount__c = 1200831;
                
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
                    System.assert(e.getMessage());
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
                acc.Active__c = Yes;
                insert acc;
                
                acc.Name = '';
                acc.Balance__c = 153;
                acc.Calculated_Interest__c = 7;
                acc.Email__c = '';
                acc.Loan_Interest_Rate__c = 0.084;
                acc.Loan_Type__c = Car Loan;
                acc.Remaining_Loan_Amount__c = 15000000;
                acc.Total_Loan_Amount__c = 664876;
                
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
                    System.assert(e.getMessage());
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
                acc.Active__c = Yes;
                insert acc;
                
                acc.Name = '';
                acc.Balance__c = 134;
                acc.Calculated_Interest__c = 7;
                acc.Email__c = '';
                acc.Loan_Interest_Rate__c = ;
                acc.Loan_Type__c = Car Loan;
                acc.Remaining_Loan_Amount__c = 15000000;
                acc.Total_Loan_Amount__c = 747915;
                
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
                    System.assert(e.getMessage());
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
                acc.Active__c = Yes;
                insert acc;
                
                acc.Name = '';
                acc.Balance__c = 121;
                acc.Calculated_Interest__c = ;
                acc.Email__c = '';
                acc.Loan_Interest_Rate__c = 0.09;
                acc.Loan_Type__c = Car Loan;
                acc.Remaining_Loan_Amount__c = 15000000;
                acc.Total_Loan_Amount__c = 1705402;
                
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
                    System.assert(e.getMessage());
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
                acc.Active__c = Yes;
                insert acc;
                
                acc.Name = '';
                acc.Balance__c = 123;
                acc.Calculated_Interest__c = ;
                acc.Email__c = 'test117@pairwise.test';
                acc.Loan_Interest_Rate__c = ;
                acc.Loan_Type__c = Home Loan;
                acc.Remaining_Loan_Amount__c = ;
                acc.Total_Loan_Amount__c = ;
                
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
                    System.assert(e.getMessage());
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
                acc.Active__c = Yes;
                insert acc;
                
                acc.Name = '';
                acc.Balance__c = 129;
                acc.Calculated_Interest__c = 7;
                acc.Email__c = '';
                acc.Loan_Interest_Rate__c = 0.09;
                acc.Loan_Type__c = Car Loan;
                acc.Remaining_Loan_Amount__c = ;
                acc.Total_Loan_Amount__c = 52306;
                
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
                    System.assert(e.getMessage());
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
                acc.Active__c = Yes;
                insert acc;
                
                acc.Name = '';
                acc.Balance__c = 184;
                acc.Calculated_Interest__c = ;
                acc.Email__c = 'test119@pairwise.test';
                acc.Loan_Interest_Rate__c = 0.136;
                acc.Loan_Type__c = Home Loan;
                acc.Remaining_Loan_Amount__c = 15000000;
                acc.Total_Loan_Amount__c = 233574;
                
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
                    System.assert(e.getMessage());
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
                acc.Active__c = Yes;
                insert acc;
                
                acc.Name = '';
                acc.Balance__c = 193;
                acc.Calculated_Interest__c = 7;
                acc.Email__c = '';
                acc.Loan_Interest_Rate__c = 0.146;
                acc.Loan_Type__c = Home Loan;
                acc.Remaining_Loan_Amount__c = 15000000;
                acc.Total_Loan_Amount__c = 748689;
                
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
                    System.assert(e.getMessage());
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
                acc.Active__c = Yes;
                insert acc;
                
                acc.Name = '';
                acc.Balance__c = 162;
                acc.Calculated_Interest__c = 7;
                acc.Email__c = '';
                acc.Loan_Interest_Rate__c = 0.11900000000000001;
                acc.Loan_Type__c = Car Loan;
                acc.Remaining_Loan_Amount__c = 15000000;
                acc.Total_Loan_Amount__c = 757006;
                
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
                    System.assert(e.getMessage());
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
                acc.Active__c = Yes;
                insert acc;
                
                acc.Name = '';
                acc.Balance__c = 111;
                acc.Calculated_Interest__c = 7;
                acc.Email__c = '';
                acc.Loan_Interest_Rate__c = 0.08;
                acc.Loan_Type__c = Home Loan;
                acc.Remaining_Loan_Amount__c = ;
                acc.Total_Loan_Amount__c = 707893;
                
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
                    System.assert(e.getMessage());
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
                acc.Active__c = Yes;
                insert acc;
                
                acc.Name = '';
                acc.Balance__c = 101;
                acc.Calculated_Interest__c = ;
                acc.Email__c = '';
                acc.Loan_Interest_Rate__c = 0.084;
                acc.Loan_Type__c = Home Loan;
                acc.Remaining_Loan_Amount__c = ;
                acc.Total_Loan_Amount__c = 6508024;
                
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
                    System.assert(e.getMessage());
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
                acc.Active__c = Yes;
                insert acc;
                
                acc.Name = '';
                acc.Balance__c = 155;
                acc.Calculated_Interest__c = 7;
                acc.Email__c = '';
                acc.Loan_Interest_Rate__c = 0.14;
                acc.Loan_Type__c = Car Loan;
                acc.Remaining_Loan_Amount__c = ;
                acc.Total_Loan_Amount__c = 3157141;
                
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
                    System.assert(e.getMessage());
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
                acc.Active__c = Yes;
                insert acc;
                
                acc.Name = '';
                acc.Balance__c = 137;
                acc.Calculated_Interest__c = ;
                acc.Email__c = 'test125@pairwise.test';
                acc.Loan_Interest_Rate__c = 107;
                acc.Loan_Type__c = Car Loan;
                acc.Remaining_Loan_Amount__c = 15000000;
                acc.Total_Loan_Amount__c = 7084460;
                
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
                    System.assert(e.getMessage());
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
                acc.Active__c = Yes;
                insert acc;
                
                acc.Name = '';
                acc.Balance__c = 128;
                acc.Calculated_Interest__c = 7;
                acc.Email__c = 'test126@pairwise.test';
                acc.Loan_Interest_Rate__c = 0.08;
                acc.Loan_Type__c = Home Loan;
                acc.Remaining_Loan_Amount__c = ;
                acc.Total_Loan_Amount__c = 1822746;
                
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
                    System.assert(e.getMessage());
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
                acc.Active__c = Yes;
                insert acc;
                
                acc.Name = '';
                acc.Balance__c = 165;
                acc.Calculated_Interest__c = ;
                acc.Email__c = '';
                acc.Loan_Interest_Rate__c = 0.136;
                acc.Loan_Type__c = Car Loan;
                acc.Remaining_Loan_Amount__c = 15000000;
                acc.Total_Loan_Amount__c = 7727160;
                
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
                    System.assert(e.getMessage());
                }
                Test.stopTest();
            }
            

            @isTest
            public static void testAccount_128() {
                Account acc = new Account();
                acc.Name = '';
                acc.Balance__c = 131;
                acc.RecordTypeId = Schema.SObjectType.Account.getRecordTypeInfosByName().get('>=$0').getRecordTypeId();
                acc.Calculated_Interest__c = ;
                acc.Email__c = 'test128@pairwise.test';
                acc.Loan_Interest_Rate__c = 0.09;
                acc.Loan_Type__c = Home Loan;
                //acc.Remaining_Loan_Amount__c = 15000000;
                acc.Total_Loan_Amount__c = 568893;
                acc.Active__c = Yes;
                
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
                    System.assert(e.getMessage());
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
                acc.Active__c = Yes;
                insert acc;
                
                acc.Name = '';
                acc.Balance__c = 172;
                acc.Calculated_Interest__c = 7;
                acc.Email__c = 'test129@pairwise.test';
                acc.Loan_Interest_Rate__c = 0.11;
                acc.Loan_Type__c = Home Loan;
                acc.Remaining_Loan_Amount__c = ;
                acc.Total_Loan_Amount__c = 885088;
                
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
                    System.assert(e.getMessage());
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
                acc.Active__c = Yes;
                insert acc;
                
                acc.Name = '';
                acc.Balance__c = 109;
                acc.Calculated_Interest__c = ;
                acc.Email__c = '';
                acc.Loan_Interest_Rate__c = 0.09;
                acc.Loan_Type__c = ;
                acc.Remaining_Loan_Amount__c = 15000000;
                acc.Total_Loan_Amount__c = ;
                
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
                    System.assert(e.getMessage());
                }
                Test.stopTest();
            }
            

            @isTest
            public static void testAccount_131() {
                Account acc = new Account();
                acc.Name = '';
                acc.Balance__c = 107;
                acc.RecordTypeId = Schema.SObjectType.Account.getRecordTypeInfosByName().get('>=$100').getRecordTypeId();
                acc.Calculated_Interest__c = ;
                acc.Email__c = '';
                acc.Loan_Interest_Rate__c = ;
                acc.Loan_Type__c = Car Loan;
                //acc.Remaining_Loan_Amount__c = 15000000;
                acc.Total_Loan_Amount__c = 5850602;
                acc.Active__c = Yes;
                
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
                    System.assert(e.getMessage());
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
                acc.Active__c = Yes;
                insert acc;
                
                acc.Name = '';
                acc.Balance__c = 163;
                acc.Calculated_Interest__c = ;
                acc.Email__c = 'test132@pairwise.test';
                acc.Loan_Interest_Rate__c = 0.11800000000000001;
                acc.Loan_Type__c = Car Loan;
                acc.Remaining_Loan_Amount__c = 15000000;
                acc.Total_Loan_Amount__c = 783268;
                
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
                    System.assert(e.getMessage());
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
                acc.Active__c = Yes;
                insert acc;
                
                acc.Name = '';
                acc.Balance__c = 147;
                acc.Calculated_Interest__c = 7;
                acc.Email__c = 'test133@pairwise.test';
                acc.Loan_Interest_Rate__c = 0.11900000000000001;
                acc.Loan_Type__c = Home Loan;
                acc.Remaining_Loan_Amount__c = 15000000;
                acc.Total_Loan_Amount__c = ;
                
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
                    System.assert(e.getMessage());
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
                acc.Active__c = Yes;
                insert acc;
                
                acc.Name = '';
                acc.Balance__c = 135;
                acc.Calculated_Interest__c = ;
                acc.Email__c = '';
                acc.Loan_Interest_Rate__c = ;
                acc.Loan_Type__c = Car Loan;
                acc.Remaining_Loan_Amount__c = 15000000;
                acc.Total_Loan_Amount__c = 562623;
                
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
                    System.assert(e.getMessage());
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
                acc.Active__c = Yes;
                insert acc;
                
                acc.Name = '';
                acc.Balance__c = 105;
                acc.Calculated_Interest__c = 7;
                acc.Email__c = '';
                acc.Loan_Interest_Rate__c = 0.1;
                acc.Loan_Type__c = ;
                acc.Remaining_Loan_Amount__c = 15000000;
                acc.Total_Loan_Amount__c = ;
                
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
                    System.assert(e.getMessage());
                }
                Test.stopTest();
            }
            

            @isTest
            public static void testAccount_136() {
                Account acc = new Account();
                acc.Name = '';
                acc.Balance__c = 157;
                acc.RecordTypeId = Schema.SObjectType.Account.getRecordTypeInfosByName().get('>=$0').getRecordTypeId();
                acc.Calculated_Interest__c = ;
                acc.Email__c = '';
                acc.Loan_Interest_Rate__c = 0.125;
                acc.Loan_Type__c = Car Loan;
                //acc.Remaining_Loan_Amount__c = 15000000;
                acc.Total_Loan_Amount__c = 691961;
                acc.Active__c = Yes;
                
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
                    System.assert(e.getMessage());
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
                acc.Active__c = Yes;
                insert acc;
                
                acc.Name = '';
                acc.Balance__c = 180;
                acc.Calculated_Interest__c = ;
                acc.Email__c = 'test137@pairwise.test';
                acc.Loan_Interest_Rate__c = 0.159;
                acc.Loan_Type__c = Home Loan;
                acc.Remaining_Loan_Amount__c = 15000000;
                acc.Total_Loan_Amount__c = 947036;
                
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
                    System.assert(e.getMessage());
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
                acc.Active__c = Yes;
                insert acc;
                
                acc.Name = '';
                acc.Balance__c = 123;
                acc.Calculated_Interest__c = ;
                acc.Email__c = '';
                acc.Loan_Interest_Rate__c = 0.08;
                acc.Loan_Type__c = Home Loan;
                acc.Remaining_Loan_Amount__c = 15000000;
                acc.Total_Loan_Amount__c = 719959;
                
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
                    System.assert(e.getMessage());
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
                acc.Active__c = Yes;
                insert acc;
                
                acc.Name = '';
                acc.Balance__c = 181;
                acc.Calculated_Interest__c = 7;
                acc.Email__c = 'test139@pairwise.test';
                acc.Loan_Interest_Rate__c = 0.162;
                acc.Loan_Type__c = Car Loan;
                acc.Remaining_Loan_Amount__c = 15000000;
                acc.Total_Loan_Amount__c = 976658;
                
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
                    System.assert(e.getMessage());
                }
                Test.stopTest();
            }
            

            @isTest
            public static void testAccount_140() {
                Account acc = new Account();
                acc.Name = '';
                acc.Balance__c = 106;
                acc.RecordTypeId = Schema.SObjectType.Account.getRecordTypeInfosByName().get('>=$100').getRecordTypeId();
                acc.Calculated_Interest__c = ;
                acc.Email__c = 'test140@pairwise.test';
                acc.Loan_Interest_Rate__c = 0.162;
                acc.Loan_Type__c = Home Loan;
                //acc.Remaining_Loan_Amount__c = ;
                acc.Total_Loan_Amount__c = 427377;
                acc.Active__c = Yes;
                
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
                    System.assert(e.getMessage());
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
                acc.Active__c = Yes;
                insert acc;
                
                acc.Name = '';
                acc.Balance__c = 167;
                acc.Calculated_Interest__c = ;
                acc.Email__c = '';
                acc.Loan_Interest_Rate__c = 0.159;
                acc.Loan_Type__c = Home Loan;
                acc.Remaining_Loan_Amount__c = ;
                acc.Total_Loan_Amount__c = 674986;
                
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
                    System.assert(e.getMessage());
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
                acc.Active__c = Yes;
                insert acc;
                
                acc.Name = '';
                acc.Balance__c = 104;
                acc.Calculated_Interest__c = 7;
                acc.Email__c = 'test142@pairwise.test';
                acc.Loan_Interest_Rate__c = 0.159;
                acc.Loan_Type__c = Home Loan;
                acc.Remaining_Loan_Amount__c = ;
                acc.Total_Loan_Amount__c = 451395;
                
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
                    System.assert(e.getMessage());
                }
                Test.stopTest();
            }
            

            @isTest
            public static void testAccount_143() {
                Account acc = new Account();
                acc.Name = '';
                acc.Balance__c = 138;
                acc.RecordTypeId = Schema.SObjectType.Account.getRecordTypeInfosByName().get('>=$100').getRecordTypeId();
                acc.Calculated_Interest__c = 7;
                acc.Email__c = '';
                acc.Loan_Interest_Rate__c = ;
                acc.Loan_Type__c = Home Loan;
                //acc.Remaining_Loan_Amount__c = 15000000;
                acc.Total_Loan_Amount__c = 843614;
                acc.Active__c = Yes;
                
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
                    System.assert(e.getMessage());
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
                acc.Active__c = Yes;
                insert acc;
                
                acc.Name = '';
                acc.Balance__c = 108;
                acc.Calculated_Interest__c = 7;
                acc.Email__c = '';
                acc.Loan_Interest_Rate__c = 0.10300000000000001;
                acc.Loan_Type__c = Home Loan;
                acc.Remaining_Loan_Amount__c = ;
                acc.Total_Loan_Amount__c = ;
                
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
                    System.assert(e.getMessage());
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
                acc.Active__c = Yes;
                insert acc;
                
                acc.Name = '';
                acc.Balance__c = 118;
                acc.Calculated_Interest__c = ;
                acc.Email__c = 'test145@pairwise.test';
                acc.Loan_Interest_Rate__c = 0.09;
                acc.Loan_Type__c = Car Loan;
                acc.Remaining_Loan_Amount__c = 15000000;
                acc.Total_Loan_Amount__c = 6205613;
                
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
                    System.assert(e.getMessage());
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
                acc.Active__c = Yes;
                insert acc;
                
                acc.Name = '';
                acc.Balance__c = 142;
                acc.Calculated_Interest__c = ;
                acc.Email__c = 'test146@pairwise.test';
                acc.Loan_Interest_Rate__c = 0.084;
                acc.Loan_Type__c = Home Loan;
                acc.Remaining_Loan_Amount__c = ;
                acc.Total_Loan_Amount__c = ;
                
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
                    System.assert(e.getMessage());
                }
                Test.stopTest();
            }
            

            @isTest
            public static void testAccount_147() {
                Account acc = new Account();
                acc.Name = '';
                acc.Balance__c = 197;
                acc.RecordTypeId = Schema.SObjectType.Account.getRecordTypeInfosByName().get('>=$100').getRecordTypeId();
                acc.Calculated_Interest__c = ;
                acc.Email__c = '';
                acc.Loan_Interest_Rate__c = 0.136;
                acc.Loan_Type__c = Home Loan;
                //acc.Remaining_Loan_Amount__c = ;
                acc.Total_Loan_Amount__c = 4909367;
                acc.Active__c = Yes;
                
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
                    System.assert(e.getMessage());
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
                acc.Active__c = Yes;
                insert acc;
                
                acc.Name = '';
                acc.Balance__c = 158;
                acc.Calculated_Interest__c = 7;
                acc.Email__c = 'test148@pairwise.test';
                acc.Loan_Interest_Rate__c = 0.159;
                acc.Loan_Type__c = Home Loan;
                acc.Remaining_Loan_Amount__c = ;
                acc.Total_Loan_Amount__c = 696177;
                
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
                    System.assert(e.getMessage());
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
                acc.Active__c = Yes;
                insert acc;
                
                acc.Name = '';
                acc.Balance__c = 148;
                acc.Calculated_Interest__c = ;
                acc.Email__c = 'test149@pairwise.test';
                acc.Loan_Interest_Rate__c = 0.11800000000000001;
                acc.Loan_Type__c = Home Loan;
                acc.Remaining_Loan_Amount__c = ;
                acc.Total_Loan_Amount__c = 271853;
                
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
                    System.assert(e.getMessage());
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
                acc.Active__c = Yes;
                insert acc;
                
                acc.Name = '';
                acc.Balance__c = 130;
                acc.Calculated_Interest__c = ;
                acc.Email__c = 'test150@pairwise.test';
                acc.Loan_Interest_Rate__c = 0.11;
                acc.Loan_Type__c = Car Loan;
                acc.Remaining_Loan_Amount__c = 15000000;
                acc.Total_Loan_Amount__c = 8583385;
                
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
                    System.assert(e.getMessage());
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
                acc.Active__c = Yes;
                insert acc;
                
                acc.Name = '';
                acc.Balance__c = 199;
                acc.Calculated_Interest__c = 7;
                acc.Email__c = '';
                acc.Loan_Interest_Rate__c = 0.11900000000000001;
                acc.Loan_Type__c = Car Loan;
                acc.Remaining_Loan_Amount__c = 15000000;
                acc.Total_Loan_Amount__c = 469137;
                
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
                    System.assert(e.getMessage());
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
                acc.Active__c = Yes;
                insert acc;
                
                acc.Name = '';
                acc.Balance__c = 122;
                acc.Calculated_Interest__c = ;
                acc.Email__c = '';
                acc.Loan_Interest_Rate__c = 0.136;
                acc.Loan_Type__c = Car Loan;
                acc.Remaining_Loan_Amount__c = ;
                acc.Total_Loan_Amount__c = 503050;
                
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
                    System.assert(e.getMessage());
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
                acc.Active__c = Yes;
                insert acc;
                
                acc.Name = '';
                acc.Balance__c = 181;
                acc.Calculated_Interest__c = 7;
                acc.Email__c = 'test153@pairwise.test';
                acc.Loan_Interest_Rate__c = 0.109;
                acc.Loan_Type__c = Car Loan;
                acc.Remaining_Loan_Amount__c = 15000000;
                acc.Total_Loan_Amount__c = 538510;
                
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
                    System.assert(e.getMessage());
                }
                Test.stopTest();
            }
            

            @isTest
            public static void testAccount_154() {
                Account acc = new Account();
                acc.Name = '';
                acc.Balance__c = 104;
                acc.RecordTypeId = Schema.SObjectType.Account.getRecordTypeInfosByName().get('>=$0').getRecordTypeId();
                acc.Calculated_Interest__c = 7;
                acc.Email__c = '';
                acc.Loan_Interest_Rate__c = 0.11900000000000001;
                acc.Loan_Type__c = Home Loan;
                //acc.Remaining_Loan_Amount__c = ;
                acc.Total_Loan_Amount__c = 470115;
                acc.Active__c = Yes;
                
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
                    System.assert(e.getMessage());
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
                acc.Active__c = Yes;
                insert acc;
                
                acc.Name = '';
                acc.Balance__c = 116;
                acc.Calculated_Interest__c = ;
                acc.Email__c = '';
                acc.Loan_Interest_Rate__c = 0.109;
                acc.Loan_Type__c = Car Loan;
                acc.Remaining_Loan_Amount__c = 15000000;
                acc.Total_Loan_Amount__c = 9106281;
                
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
                    System.assert(e.getMessage());
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
                acc.Active__c = Yes;
                insert acc;
                
                acc.Name = '';
                acc.Balance__c = 111;
                acc.Calculated_Interest__c = ;
                acc.Email__c = 'test156@pairwise.test';
                acc.Loan_Interest_Rate__c = 0.07;
                acc.Loan_Type__c = Car Loan;
                acc.Remaining_Loan_Amount__c = 15000000;
                acc.Total_Loan_Amount__c = 1099334;
                
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
                    System.assert(e.getMessage());
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
                acc.Active__c = Yes;
                insert acc;
                
                acc.Name = '';
                acc.Balance__c = 200;
                acc.Calculated_Interest__c = ;
                acc.Email__c = 'test157@pairwise.test';
                acc.Loan_Interest_Rate__c = 0.11800000000000001;
                acc.Loan_Type__c = Home Loan;
                acc.Remaining_Loan_Amount__c = 15000000;
                acc.Total_Loan_Amount__c = 4267856;
                
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
                    System.assert(e.getMessage());
                }
                Test.stopTest();
            }
            

            @isTest
            public static void testAccount_158() {
                Account acc = new Account();
                acc.Name = '';
                acc.Balance__c = 167;
                acc.RecordTypeId = Schema.SObjectType.Account.getRecordTypeInfosByName().get('>=$100').getRecordTypeId();
                acc.Calculated_Interest__c = ;
                acc.Email__c = '';
                acc.Loan_Interest_Rate__c = 0.162;
                acc.Loan_Type__c = Home Loan;
                //acc.Remaining_Loan_Amount__c = ;
                acc.Total_Loan_Amount__c = ;
                acc.Active__c = Yes;
                
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
                    System.assert(e.getMessage());
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
                acc.Active__c = Yes;
                insert acc;
                
                acc.Name = '';
                acc.Balance__c = 123;
                acc.Calculated_Interest__c = 7;
                acc.Email__c = 'test159@pairwise.test';
                acc.Loan_Interest_Rate__c = 0.08;
                acc.Loan_Type__c = Car Loan;
                acc.Remaining_Loan_Amount__c = ;
                acc.Total_Loan_Amount__c = 233075;
                
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
                    System.assert(e.getMessage());
                }
                Test.stopTest();
            }
            

            @isTest
            public static void testAccount_160() {
                Account acc = new Account();
                acc.Name = '';
                acc.Balance__c = 195;
                acc.RecordTypeId = Schema.SObjectType.Account.getRecordTypeInfosByName().get('>=$0').getRecordTypeId();
                acc.Calculated_Interest__c = 7;
                acc.Email__c = '';
                acc.Loan_Interest_Rate__c = 0.125;
                acc.Loan_Type__c = Car Loan;
                //acc.Remaining_Loan_Amount__c = ;
                acc.Total_Loan_Amount__c = 774309;
                acc.Active__c = Yes;
                
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
                    System.assert(e.getMessage());
                }
                Test.stopTest();
            }
            

            @isTest
            public static void testAccount_161() {
                Account acc = new Account();
                acc.Name = '';
                acc.Balance__c = 145;
                acc.RecordTypeId = Schema.SObjectType.Account.getRecordTypeInfosByName().get('>=$100').getRecordTypeId();
                acc.Calculated_Interest__c = 7;
                acc.Email__c = 'test161@pairwise.test';
                acc.Loan_Interest_Rate__c = 0.14;
                acc.Loan_Type__c = Home Loan;
                //acc.Remaining_Loan_Amount__c = 15000000;
                acc.Total_Loan_Amount__c = 599595;
                acc.Active__c = Yes;
                
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
                    System.assert(e.getMessage());
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
                acc.Active__c = Yes;
                insert acc;
                
                acc.Name = '';
                acc.Balance__c = 167;
                acc.Calculated_Interest__c = ;
                acc.Email__c = '';
                acc.Loan_Interest_Rate__c = 0.09;
                acc.Loan_Type__c = Car Loan;
                acc.Remaining_Loan_Amount__c = 15000000;
                acc.Total_Loan_Amount__c = 888431;
                
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
                    System.assert(e.getMessage());
                }
                Test.stopTest();
            }
            

            @isTest
            public static void testAccount_163() {
                Account acc = new Account();
                acc.Name = '';
                acc.Balance__c = 107;
                acc.RecordTypeId = Schema.SObjectType.Account.getRecordTypeInfosByName().get('>=$0').getRecordTypeId();
                acc.Calculated_Interest__c = ;
                acc.Email__c = 'test163@pairwise.test';
                acc.Loan_Interest_Rate__c = 0.07;
                acc.Loan_Type__c = Car Loan;
                //acc.Remaining_Loan_Amount__c = 15000000;
                acc.Total_Loan_Amount__c = ;
                acc.Active__c = Yes;
                
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
                    System.assert(e.getMessage());
                }
                Test.stopTest();
            }
            

            @isTest
            public static void testAccount_164() {
                Account acc = new Account();
                acc.Name = '';
                acc.Balance__c = 139;
                acc.RecordTypeId = Schema.SObjectType.Account.getRecordTypeInfosByName().get('>=$100').getRecordTypeId();
                acc.Calculated_Interest__c = ;
                acc.Email__c = '';
                acc.Loan_Interest_Rate__c = 0.125;
                acc.Loan_Type__c = Home Loan;
                //acc.Remaining_Loan_Amount__c = ;
                acc.Total_Loan_Amount__c = 96119;
                acc.Active__c = Yes;
                
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
                    System.assert(e.getMessage());
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
                acc.Active__c = Yes;
                insert acc;
                
                acc.Name = '';
                acc.Balance__c = 195;
                acc.Calculated_Interest__c = 7;
                acc.Email__c = '';
                acc.Loan_Interest_Rate__c = ;
                acc.Loan_Type__c = Car Loan;
                acc.Remaining_Loan_Amount__c = ;
                acc.Total_Loan_Amount__c = 73817;
                
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
                    System.assert(e.getMessage());
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
                acc.Active__c = Yes;
                insert acc;
                
                acc.Name = '';
                acc.Balance__c = 200;
                acc.Calculated_Interest__c = 7;
                acc.Email__c = 'test166@pairwise.test';
                acc.Loan_Interest_Rate__c = 0.084;
                acc.Loan_Type__c = Car Loan;
                acc.Remaining_Loan_Amount__c = ;
                acc.Total_Loan_Amount__c = 3806913;
                
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
                    System.assert(e.getMessage());
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
                acc.Active__c = Yes;
                insert acc;
                
                acc.Name = '';
                acc.Balance__c = 132;
                acc.Calculated_Interest__c = ;
                acc.Email__c = 'test167@pairwise.test';
                acc.Loan_Interest_Rate__c = ;
                acc.Loan_Type__c = Car Loan;
                acc.Remaining_Loan_Amount__c = 15000000;
                acc.Total_Loan_Amount__c = 883502;
                
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
                    System.assert(e.getMessage());
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
                acc.Active__c = Yes;
                insert acc;
                
                acc.Name = '';
                acc.Balance__c = 117;
                acc.Calculated_Interest__c = ;
                acc.Email__c = '';
                acc.Loan_Interest_Rate__c = 0.11;
                acc.Loan_Type__c = Home Loan;
                acc.Remaining_Loan_Amount__c = ;
                acc.Total_Loan_Amount__c = ;
                
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
                    System.assert(e.getMessage());
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
                acc.Active__c = Yes;
                insert acc;
                
                acc.Name = '';
                acc.Balance__c = 123;
                acc.Calculated_Interest__c = 7;
                acc.Email__c = '';
                acc.Loan_Interest_Rate__c = 0.11800000000000001;
                acc.Loan_Type__c = Car Loan;
                acc.Remaining_Loan_Amount__c = 15000000;
                acc.Total_Loan_Amount__c = 694186;
                
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
                    System.assert(e.getMessage());
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
                acc.Active__c = Yes;
                insert acc;
                
                acc.Name = '';
                acc.Balance__c = 120;
                acc.Calculated_Interest__c = ;
                acc.Email__c = 'test170@pairwise.test';
                acc.Loan_Interest_Rate__c = 0.10300000000000001;
                acc.Loan_Type__c = Home Loan;
                acc.Remaining_Loan_Amount__c = ;
                acc.Total_Loan_Amount__c = 1876847;
                
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
                    System.assert(e.getMessage());
                }
                Test.stopTest();
            }
            

            @isTest
            public static void testAccount_171() {
                Account acc = new Account();
                acc.Name = '';
                acc.Balance__c = 143;
                acc.RecordTypeId = Schema.SObjectType.Account.getRecordTypeInfosByName().get('>=$100').getRecordTypeId();
                acc.Calculated_Interest__c = ;
                acc.Email__c = '';
                acc.Loan_Interest_Rate__c = 0.109;
                acc.Loan_Type__c = Home Loan;
                //acc.Remaining_Loan_Amount__c = ;
                acc.Total_Loan_Amount__c = 501387;
                acc.Active__c = Yes;
                
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
                    System.assert(e.getMessage());
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
                acc.Active__c = Yes;
                insert acc;
                
                acc.Name = '';
                acc.Balance__c = 148;
                acc.Calculated_Interest__c = ;
                acc.Email__c = 'test172@pairwise.test';
                acc.Loan_Interest_Rate__c = 0.1;
                acc.Loan_Type__c = Car Loan;
                acc.Remaining_Loan_Amount__c = ;
                acc.Total_Loan_Amount__c = 5051960;
                
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
                    System.assert(e.getMessage());
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
                acc.Active__c = Yes;
                insert acc;
                
                acc.Name = '';
                acc.Balance__c = 129;
                acc.Calculated_Interest__c = ;
                acc.Email__c = '';
                acc.Loan_Interest_Rate__c = 0.109;
                acc.Loan_Type__c = Home Loan;
                acc.Remaining_Loan_Amount__c = ;
                acc.Total_Loan_Amount__c = 1848209;
                
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
                    System.assert(e.getMessage());
                }
                Test.stopTest();
            }
            