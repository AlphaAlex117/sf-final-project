@isTest public class AccountTriggerHandlerTest {    
    @isTest static void testBeforeInsert(){
        List<Account> salaryAccounts = new List<Account>{
            new Account(Name = 'TestAcc1', 
                        RecordTypeId = '012aj000002sfWTAAY',
                        Active__c = 'Yes',
                        Balance__c = 100000, 
                        Email__c = 'nathan.diaz062@gmail.com',
                        Loan_Type__c = 'Home Loan',
                        Total_Loan_Amount__c = 100000),
                
            new Account(Name = 'TestAcc2', 
                        RecordTypeId = '012aj000002sfWTAAY',
                        Active__c = 'Yes',
                        Balance__c = 100000, 
                        Email__c = 'nathan.diaz062@gmail.com',
                        Loan_Type__c = 'Home Loan',
                        Total_Loan_Amount__c = 500000),
                
            new Account(Name = 'TestAcc3', 
                        RecordTypeId = '012aj000002sfWTAAY',
                        Active__c = 'Yes',
                        Balance__c = 100000, 
                        Email__c = 'nathan.diaz062@gmail.com',
                        Loan_Type__c = 'Home Loan',
                        Total_Loan_Amount__c = 1000000),
                
            new Account(Name = 'TestAcc4', 
                        RecordTypeId = '012aj000002sfWTAAY',
                        Active__c = 'Yes',
                        Balance__c = 100000, 
                        Email__c = 'nathan.diaz062@gmail.com',
                        Loan_Type__c = 'Car Loan',
                        Total_Loan_Amount__c = 100000),
                
            new Account(Name = 'TestAcc5', 
                        RecordTypeId = '012aj000002sfWTAAY',
                        Active__c = 'Yes',
                        Balance__c = 100000, 
                        Email__c = 'nathan.diaz062@gmail.com',
                        Loan_Type__c = 'Car Loan',
                        Total_Loan_Amount__c = 500000),
                
            new Account(Name = 'TestAcc6', 
                        RecordTypeId = '012aj000002sfWTAAY',
                        Active__c = 'Yes',
                        Balance__c = 100000, 
                        Email__c = 'nathan.diaz062@gmail.com',
                        Loan_Type__c = 'Car Loan',
                        Total_Loan_Amount__c = 600000)
        };
        
        List<Account> transactionalAccounts = new List<Account>{
            new Account(Name = 'TestAcc1', 
                        RecordTypeId = '012aj000002sbClAAI',
                        Active__c = 'Yes',
                        Balance__c = 100000, 
                        Email__c = 'nathan.diaz062@gmail.com',
                        Loan_Type__c = 'Home Loan',
                        Total_Loan_Amount__c = 100000),
                
            new Account(Name = 'TestAcc2', 
                        RecordTypeId = '012aj000002sbClAAI',
                        Active__c = 'Yes',
                        Balance__c = 100000, 
                        Email__c = 'nathan.diaz062@gmail.com',
                        Loan_Type__c = 'Home Loan',
                        Total_Loan_Amount__c = 500000),
                
             new Account(Name = 'TestAcc3', 
                        RecordTypeId = '012aj000002sbClAAI',
                        Active__c = 'Yes',
                        Balance__c = 100000, 
                        Email__c = 'nathan.diaz062@gmail.com',
                        Loan_Type__c = 'Home Loan',
                        Total_Loan_Amount__c = 1000000),
                
             new Account(Name = 'TestAcc4', 
                        RecordTypeId = '012aj000002sbClAAI',
                        Active__c = 'Yes',
                        Balance__c = 100000, 
                        Email__c = 'nathan.diaz062@gmail.com',
                        Loan_Type__c = 'Car Loan',
                        Total_Loan_Amount__c = 100000),
                
             new Account(Name = 'TestAcc5', 
                        RecordTypeId = '012aj000002sbClAAI',
                        Active__c = 'Yes',
                        Balance__c = 100000, 
                        Email__c = 'nathan.diaz062@gmail.com',
                        Loan_Type__c = 'Car Loan',
                        Total_Loan_Amount__c = 500000),
                
             new Account(Name = 'TestAcc6', 
                        RecordTypeId = '012aj000002sbClAAI',
                        Active__c = 'Yes',
                        Balance__c = 100000, 
                        Email__c = 'nathan.diaz062@gmail.com',
                        Loan_Type__c = 'Car Loan',
                        Total_Loan_Amount__c = 1000000)
        };
            
        List<Account> currentAccounts = new List<Account>{
            new Account(Name = 'TestAcc1', 
                        RecordTypeId = '012aj000002sfbJAAQ',
                        Active__c = 'Yes',
                        Balance__c = 100000, 
                        Email__c = 'nathan.diaz062@gmail.com',
                        Loan_Type__c = 'Home Loan',
                        Total_Loan_Amount__c = 1000000),
                
            new Account(Name = 'TestAcc2', 
                        RecordTypeId = '012aj000002sfbJAAQ',
                        Active__c = 'Yes',
                        Balance__c = 100000, 
                        Email__c = 'nathan.diaz062@gmail.com',
                        Loan_Type__c = 'Home Loan',
                        Total_Loan_Amount__c = 5000000),
                
            new Account(Name = 'TestAcc3', 
                        RecordTypeId = '012aj000002sfbJAAQ',
                        Active__c = 'Yes',
                        Balance__c = 100000, 
                        Email__c = 'nathan.diaz062@gmail.com',
                        Loan_Type__c = 'Home Loan',
                        Total_Loan_Amount__c = 10000000),
                
            new Account(Name = 'TestAcc4', 
                        RecordTypeId = '012aj000002sfbJAAQ',
                        Active__c = 'Yes',
                        Balance__c = 100000, 
                        Email__c = 'nathan.diaz062@gmail.com',
                        Loan_Type__c = 'Car Loan',
                        Total_Loan_Amount__c = 1000000),
                
            new Account(Name = 'TestAcc5', 
                        RecordTypeId = '012aj000002sfbJAAQ',
                        Active__c = 'Yes',
                        Balance__c = 100000, 
                        Email__c = 'nathan.diaz062@gmail.com',
                        Loan_Type__c = 'Car Loan',
                        Total_Loan_Amount__c = 5000000),
                
            new Account(Name = 'TestAcc6', 
                        RecordTypeId = '012aj000002sfbJAAQ',
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
        
        System.debug(allAccounts);

        Test.startTest();
        Database.SaveResult[] results = Database.insert(allAccounts, false);
        System.debug(results);

        List<Account> insertedAccounts = [SELECT id, name, recordtypeid, total_loan_amount__c, loan_type__c, loan_interest_rate__c FROM Account];
        System.debug(insertedAccounts);

        for(Account acc : insertedAccounts){
            
            if (acc.RecordTypeId == '012aj000002sfWTAAY') {
        		// Salary Account logic
        		if (acc.Loan_Type__c == 'Home Loan') {
            		if (acc.Total_Loan_Amount__c <= 100000) {
                		System.assertEquals(8.0, acc.Loan_Interest_Rate__c, 'Incorrect Loan Interest Rate for Salary Account with Home Loan and amount <= 100,000');
            		} else if (acc.Total_Loan_Amount__c <= 500000) {
                		System.assertEquals(11.0, acc.Loan_Interest_Rate__c, 'Incorrect Loan Interest Rate for Salary Account with Home Loan and amount <= 500,000');
            		} else if (acc.Total_Loan_Amount__c <= 1000000) {
                		System.assertEquals(14.0, acc.Loan_Interest_Rate__c, 'Incorrect Loan Interest Rate for Salary Account with Home Loan and amount <= 1,000,000');
            		}
        		}
                else if (acc.Loan_Type__c == 'Car Loan') {
            		if (acc.Total_Loan_Amount__c <= 100000) {
                		System.assertEquals(8.4, acc.Loan_Interest_Rate__c, 'Incorrect Loan Interest Rate for Salary Account with Car Loan and amount <= 100,000');
            		} else if (acc.Total_Loan_Amount__c <= 500000) {
                		System.assertEquals(10.3, acc.Loan_Interest_Rate__c, 'Incorrect Loan Interest Rate for Salary Account with Car Loan and amount <= 500,000');
            		} else if (acc.Total_Loan_Amount__c > 500000) {
                		System.assertEquals(null, acc.Loan_Interest_Rate__c, 'Account should not have been inserted due to exceeding loan limit for Car Loan');
            		}
        		}
    		}
            else if (acc.RecordTypeId == '012aj000002sbClAAI') {
        		// Transactional Account logic
        		if (acc.Loan_Type__c == 'Home Loan') {
            		if (acc.Total_Loan_Amount__c <= 100000) {
                		System.assertEquals(9.0, acc.Loan_Interest_Rate__c, 'Incorrect Loan Interest Rate for Transactional Account with Home Loan and amount <= 100,000');
            		} else if (acc.Total_Loan_Amount__c <= 500000) {
                		System.assertEquals(11.8, acc.Loan_Interest_Rate__c, 'Incorrect Loan Interest Rate for Transactional Account with Home Loan and amount <= 500,000');
            		} else if (acc.Total_Loan_Amount__c <= 1000000) {
                		System.assertEquals(15.9, acc.Loan_Interest_Rate__c, 'Incorrect Loan Interest Rate for Transactional Account with Home Loan and amount <= 1,000,000');
            		}
        		}
                else if (acc.Loan_Type__c == 'Car Loan') {
            		if (acc.Total_Loan_Amount__c <= 100000) {
                		System.assertEquals(7.0, acc.Loan_Interest_Rate__c, 'Incorrect Loan Interest Rate for Transactional Account with Car Loan and amount <= 100,000');
            		} else if (acc.Total_Loan_Amount__c <= 500000) {
                		System.assertEquals(10.9, acc.Loan_Interest_Rate__c, 'Incorrect Loan Interest Rate for Transactional Account with Car Loan and amount <= 500,000');
            		} else if (acc.Total_Loan_Amount__c <= 1000000) {
                		System.assertEquals(13.6, acc.Loan_Interest_Rate__c, 'Incorrect Loan Interest Rate for Transactional Account with Car Loan and amount <= 1,000,000');
            		}
        		}
    		}
            else if (acc.RecordTypeId == '012aj000002sfbJAAQ') {
        		// Current Account logic
        		if (acc.Loan_Type__c == 'Home Loan') {
            		if (acc.Total_Loan_Amount__c <= 1000000) {
                		System.assertEquals(10.0, acc.Loan_Interest_Rate__c, 'Incorrect Loan Interest Rate for Current Account with Home Loan and amount <= 1,000,000');
            		} else if (acc.Total_Loan_Amount__c <= 5000000) {
                		System.assertEquals(12.5, acc.Loan_Interest_Rate__c, 'Incorrect Loan Interest Rate for Current Account with Home Loan and amount <= 5,000,000');
            		} else if (acc.Total_Loan_Amount__c <= 10000000) {
                		System.assertEquals(16.2, acc.Loan_Interest_Rate__c, 'Incorrect Loan Interest Rate for Current Account with Home Loan and amount <= 10,000,000');
            		}
        		}
                else if (acc.Loan_Type__c == 'Car Loan') {
            		if (acc.Total_Loan_Amount__c <= 1000000) {
                		System.assertEquals(9.0, acc.Loan_Interest_Rate__c, 'Incorrect Loan Interest Rate for Current Account with Car Loan and amount <= 1,000,000');
            		} else if (acc.Total_Loan_Amount__c <= 5000000) {
                        System.assertEquals(11.9, acc.Loan_Interest_Rate__c, 'Incorrect Loan Interest Rate for Current Account with Car Loan and amount <= 5,000,000');
            		} else if (acc.Total_Loan_Amount__c <= 10000000) {
                		System.assertEquals(14.6, acc.Loan_Interest_Rate__c, 'Incorrect Loan Interest Rate for Current Account with Car Loan and amount <= 10,000,000');
            		}
        		}
    		}
        }
        Test.stopTest();
    }
    
    @isTest static void testBeforeUpdate(){
        //Insert Accounts
        List<Account> salaryAccounts = new List<Account>{
            new Account(Name = 'TestAcc1', 
                        RecordTypeId = '012aj000002sfWTAAY',
                        Active__c = 'Yes',
                        Balance__c = 100000, 
                        Email__c = 'nathan.diaz062@gmail.com',
                        Loan_Type__c = 'Home Loan',
                        Total_Loan_Amount__c = 100000),
                
            new Account(Name = 'TestAcc2', 
                        RecordTypeId = '012aj000002sfWTAAY',
                        Active__c = 'Yes',
                        Balance__c = 100000, 
                        Email__c = 'nathan.diaz062@gmail.com',
                        Loan_Type__c = 'Home Loan',
                        Total_Loan_Amount__c = 500000),
                
            new Account(Name = 'TestAcc3', 
                        RecordTypeId = '012aj000002sfWTAAY',
                        Active__c = 'Yes',
                        Balance__c = 100000, 
                        Email__c = 'nathan.diaz062@gmail.com',
                        Loan_Type__c = 'Home Loan',
                        Total_Loan_Amount__c = 1000000),
                
            new Account(Name = 'TestAcc4', 
                        RecordTypeId = '012aj000002sfWTAAY',
                        Active__c = 'Yes',
                        Balance__c = 100000, 
                        Email__c = 'nathan.diaz062@gmail.com',
                        Loan_Type__c = 'Car Loan',
                        Total_Loan_Amount__c = 100000),
                
            new Account(Name = 'TestAcc5', 
                        RecordTypeId = '012aj000002sfWTAAY',
                        Active__c = 'Yes',
                        Balance__c = 100000, 
                        Email__c = 'nathan.diaz062@gmail.com',
                        Loan_Type__c = 'Car Loan',
                        Total_Loan_Amount__c = 500000),
                
            new Account(Name = 'TestAcc6', 
                        RecordTypeId = '012aj000002sfWTAAY',
                        Active__c = 'Yes',
                        Balance__c = 100000, 
                        Email__c = 'nathan.diaz062@gmail.com',
                        Loan_Type__c = 'Car Loan',
                        Total_Loan_Amount__c = 600000)
        };
        
        List<Account> transactionalAccounts = new List<Account>{
            new Account(Name = 'TestAcc1', 
                        RecordTypeId = '012aj000002sbClAAI',
                        Active__c = 'Yes',
                        Balance__c = 100000, 
                        Email__c = 'nathan.diaz062@gmail.com',
                        Loan_Type__c = 'Home Loan',
                        Total_Loan_Amount__c = 100000),
                
            new Account(Name = 'TestAcc2', 
                        RecordTypeId = '012aj000002sbClAAI',
                        Active__c = 'Yes',
                        Balance__c = 100000, 
                        Email__c = 'nathan.diaz062@gmail.com',
                        Loan_Type__c = 'Home Loan',
                        Total_Loan_Amount__c = 500000),
                
             new Account(Name = 'TestAcc3', 
                        RecordTypeId = '012aj000002sbClAAI',
                        Active__c = 'Yes',
                        Balance__c = 100000, 
                        Email__c = 'nathan.diaz062@gmail.com',
                        Loan_Type__c = 'Home Loan',
                        Total_Loan_Amount__c = 1000000),
                
             new Account(Name = 'TestAcc4', 
                        RecordTypeId = '012aj000002sbClAAI',
                        Active__c = 'Yes',
                        Balance__c = 100000, 
                        Email__c = 'nathan.diaz062@gmail.com',
                        Loan_Type__c = 'Car Loan',
                        Total_Loan_Amount__c = 100000),
                
             new Account(Name = 'TestAcc5', 
                        RecordTypeId = '012aj000002sbClAAI',
                        Active__c = 'Yes',
                        Balance__c = 100000, 
                        Email__c = 'nathan.diaz062@gmail.com',
                        Loan_Type__c = 'Car Loan',
                        Total_Loan_Amount__c = 500000),
                
             new Account(Name = 'TestAcc6', 
                        RecordTypeId = '012aj000002sbClAAI',
                        Active__c = 'Yes',
                        Balance__c = 100000, 
                        Email__c = 'nathan.diaz062@gmail.com',
                        Loan_Type__c = 'Car Loan',
                        Total_Loan_Amount__c = 1000000)
        };
            
        List<Account> currentAccounts = new List<Account>{
            new Account(Name = 'TestAcc1', 
                        RecordTypeId = '012aj000002sfbJAAQ',
                        Active__c = 'Yes',
                        Balance__c = 100000, 
                        Email__c = 'nathan.diaz062@gmail.com',
                        Loan_Type__c = 'Home Loan',
                        Total_Loan_Amount__c = 1000000),
                
            new Account(Name = 'TestAcc2', 
                        RecordTypeId = '012aj000002sfbJAAQ',
                        Active__c = 'Yes',
                        Balance__c = 100000, 
                        Email__c = 'nathan.diaz062@gmail.com',
                        Loan_Type__c = 'Home Loan',
                        Total_Loan_Amount__c = 5000000),
                
            new Account(Name = 'TestAcc3', 
                        RecordTypeId = '012aj000002sfbJAAQ',
                        Active__c = 'Yes',
                        Balance__c = 100000, 
                        Email__c = 'nathan.diaz062@gmail.com',
                        Loan_Type__c = 'Home Loan',
                        Total_Loan_Amount__c = 10000000),
                
            new Account(Name = 'TestAcc4', 
                        RecordTypeId = '012aj000002sfbJAAQ',
                        Active__c = 'Yes',
                        Balance__c = 100000, 
                        Email__c = 'nathan.diaz062@gmail.com',
                        Loan_Type__c = 'Car Loan',
                        Total_Loan_Amount__c = 1000000),
                
            new Account(Name = 'TestAcc5', 
                        RecordTypeId = '012aj000002sfbJAAQ',
                        Active__c = 'Yes',
                        Balance__c = 100000, 
                        Email__c = 'nathan.diaz062@gmail.com',
                        Loan_Type__c = 'Car Loan',
                        Total_Loan_Amount__c = 5000000),
                
            new Account(Name = 'TestAcc6', 
                        RecordTypeId = '012aj000002sfbJAAQ',
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
        
        
        
        Database.SaveResult[] results = Database.insert(allAccounts, false);
        
        //Get Inserted Accounts
        List<Account> insertedAccounts = [SELECT id, name, recordtypeid, total_loan_amount__c, loan_type__c, loan_interest_rate__c FROM Account];
        
        System.debug(insertedAccounts);

        //Randomize Total Loan Amount
        Integer rand;
        Integer max = 1000000;
        Integer min = 1;
        for(Account acc : insertedAccounts){
            rand = min + (Integer)Math.floor(Math.random() * (max - min + 1));
            acc.Total_Loan_Amount__c = rand;  
        }

        Test.startTest();

        //Update Accounts
        Database.SaveResult[] results2 = Database.update(insertedAccounts, false);

        //Get Updated Accounts
        List<Account> updatedAccounts = [SELECT id, name, recordtypeid, total_loan_amount__c, loan_type__c, loan_interest_rate__c FROM Account];
        
        System.debug(updatedAccounts);

        //Assertions
        for(Account acc : updatedAccounts){
            
            if (acc.RecordTypeId == '012aj000002sfWTAAY') {
        		// Salary Account logic
        		if (acc.Loan_Type__c == 'Home Loan') {
            		if (acc.Total_Loan_Amount__c <= 100000) {
                		System.assertEquals(8.0, acc.Loan_Interest_Rate__c, 'Incorrect Loan Interest Rate for Salary Account with Home Loan and amount <= 100,000');
            		} else if (acc.Total_Loan_Amount__c <= 500000) {
                		System.assertEquals(11.0, acc.Loan_Interest_Rate__c, 'Incorrect Loan Interest Rate for Salary Account with Home Loan and amount <= 500,000');
            		} else if (acc.Total_Loan_Amount__c <= 1000000) {
                		System.assertEquals(14.0, acc.Loan_Interest_Rate__c, 'Incorrect Loan Interest Rate for Salary Account with Home Loan and amount <= 1,000,000');
            		}
        		}
                else if (acc.Loan_Type__c == 'Car Loan') {
            		if (acc.Total_Loan_Amount__c <= 100000) {
                		System.assertEquals(8.4, acc.Loan_Interest_Rate__c, 'Incorrect Loan Interest Rate for Salary Account with Car Loan and amount <= 100,000');
            		} else if (acc.Total_Loan_Amount__c <= 500000) {
                		System.assertEquals(10.3, acc.Loan_Interest_Rate__c, 'Incorrect Loan Interest Rate for Salary Account with Car Loan and amount <= 500,000');
            		} else if (acc.Total_Loan_Amount__c > 500000) {
                		System.assertEquals(null, acc.Loan_Interest_Rate__c, 'Account should not have been inserted due to exceeding loan limit for Car Loan');
            		}
        		}
    		}
            else if (acc.RecordTypeId == '012aj000002sbClAAI') {
        		// Transactional Account logic
        		if (acc.Loan_Type__c == 'Home Loan') {
            		if (acc.Total_Loan_Amount__c <= 100000) {
                		System.assertEquals(9.0, acc.Loan_Interest_Rate__c, 'Incorrect Loan Interest Rate for Transactional Account with Home Loan and amount <= 100,000');
            		} else if (acc.Total_Loan_Amount__c <= 500000) {
                		System.assertEquals(11.8, acc.Loan_Interest_Rate__c, 'Incorrect Loan Interest Rate for Transactional Account with Home Loan and amount <= 500,000');
            		} else if (acc.Total_Loan_Amount__c <= 1000000) {
                		System.assertEquals(15.9, acc.Loan_Interest_Rate__c, 'Incorrect Loan Interest Rate for Transactional Account with Home Loan and amount <= 1,000,000');
            		}
        		}
                else if (acc.Loan_Type__c == 'Car Loan') {
            		if (acc.Total_Loan_Amount__c <= 100000) {
                		System.assertEquals(7.0, acc.Loan_Interest_Rate__c, 'Incorrect Loan Interest Rate for Transactional Account with Car Loan and amount <= 100,000');
            		} else if (acc.Total_Loan_Amount__c <= 500000) {
                		System.assertEquals(10.9, acc.Loan_Interest_Rate__c, 'Incorrect Loan Interest Rate for Transactional Account with Car Loan and amount <= 500,000');
            		} else if (acc.Total_Loan_Amount__c <= 1000000) {
                		System.assertEquals(13.6, acc.Loan_Interest_Rate__c, 'Incorrect Loan Interest Rate for Transactional Account with Car Loan and amount <= 1,000,000');
            		}
        		}
    		}
            else if (acc.RecordTypeId == '012aj000002sfbJAAQ') {
        		// Current Account logic
        		if (acc.Loan_Type__c == 'Home Loan') {
            		if (acc.Total_Loan_Amount__c <= 1000000) {
                		System.assertEquals(10.0, acc.Loan_Interest_Rate__c, 'Incorrect Loan Interest Rate for Current Account with Home Loan and amount <= 1,000,000');
            		} else if (acc.Total_Loan_Amount__c <= 5000000) {
                		System.assertEquals(12.5, acc.Loan_Interest_Rate__c, 'Incorrect Loan Interest Rate for Current Account with Home Loan and amount <= 5,000,000');
            		} else if (acc.Total_Loan_Amount__c <= 10000000) {
                		System.assertEquals(16.2, acc.Loan_Interest_Rate__c, 'Incorrect Loan Interest Rate for Current Account with Home Loan and amount <= 10,000,000');
            		}
        		}
                else if (acc.Loan_Type__c == 'Car Loan') {
            		if (acc.Total_Loan_Amount__c <= 1000000) {
                		System.assertEquals(9.0, acc.Loan_Interest_Rate__c, 'Incorrect Loan Interest Rate for Current Account with Car Loan and amount <= 1,000,000');
            		} else if (acc.Total_Loan_Amount__c <= 5000000) {
                        System.assertEquals(11.9, acc.Loan_Interest_Rate__c, 'Incorrect Loan Interest Rate for Current Account with Car Loan and amount <= 5,000,000');
            		} else if (acc.Total_Loan_Amount__c <= 10000000) {
                		System.assertEquals(14.6, acc.Loan_Interest_Rate__c, 'Incorrect Loan Interest Rate for Current Account with Car Loan and amount <= 10,000,000');
            		}
        		}
    		}
        }
        Test.stopTest(); 
    }
}