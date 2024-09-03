import random

# Generate a random email
def generate_email(index):
    return f'test{index}@example.com'

# Generate a random loan interest rate
def generate_loan_interest_rate():
    return random.choice([1, 3, 5, 7, 9, None])

# Generate a random balance value
def generate_balance():
    return random.choice([random.uniform(0.01, 100), -random.uniform(1, 100), None])

# Generate the record type ID placeholder (replace with actual Apex code)
def generate_record_type(is_salary_account):
    if is_salary_account:
        return "Schema.SObjectType.Account.getRecordTypeInfosByName().get('Salary Account').getRecordTypeId()"
    else:
        return "Schema.SObjectType.Account.getRecordTypeInfosByName().get('Non-Salary Account').getRecordTypeId()"

# Create a single test case
def create_test_case(index):
    name = f'Test Account {index}' if index % 10 != 0 else ''
    balance = generate_balance()
    is_salary_account = random.choice([True, False])
    record_type_id = generate_record_type(is_salary_account)
    email = generate_email(index) if index % 15 != 0 else ''
    loan_interest_rate = generate_loan_interest_rate()
    total_loan_amount = random.uniform(100, 500) if random.choice([True, False]) else None
    active = random.choice([True, False])
    calculated_interest = None if random.choice([True, False]) else random.uniform(1, 50)
    remaining_loan_amount = None if random.choice([True, False]) else random.uniform(1, 50)
    
    return [
        f"'{name}'",
        f"{balance}" if balance is not None else "null",
        record_type_id,
        f"'{email}'" if email else "null",
        f"{loan_interest_rate}" if loan_interest_rate is not None else "null",
        f"{total_loan_amount}" if total_loan_amount is not None else "null",
        f"{active}",
        f"{calculated_interest}" if calculated_interest is not None else "null",
        f"{remaining_loan_amount}" if remaining_loan_amount is not None else "null"
    ]

# Generate all test cases
def generate_test_cases(num_cases):
    test_cases = []
    for i in range(1, num_cases + 1):
        test_case = create_test_case(i)
        test_cases.append(f"new List<Object>{{{', '.join(test_case)}}}")
    return test_cases

# Generate Apex test case code
def generate_apex_test_code(num_cases):
    test_cases = generate_test_cases(num_cases)
    test_cases_str = ",\n        ".join(test_cases)
    
    apex_code = f"""
@isTest
public class AccountPairwiseTest {{
    // 2D array where each sub-array contains the input for one test case
    List<List<Object>> testCaseData = new List<List<Object>>{{
        {test_cases_str}
    }};
    
    // Create Account from what is stored in the testCaseData
    private static Account createAccountFromIndex(List<List<Object>> inputData, Integer index) {{
        List<Object> data = inputData[index];
        
        Account acc = new Account();
        acc.Name = (String)data[0];
        acc.Balance__c = (Decimal)data[1];
        acc.RecordTypeId = (Id)data[2];
        acc.Email__c = (String)data[3];
        acc.Loan_Interest_Rate__c = (Decimal)data[4];
        acc.Total_Loan_Amount__c = (Decimal)data[5];
        acc.Active__c = (Boolean)data[6];
        acc.Calculated_Interest__c = (Decimal)data[7];
        acc.Remaining_Loan_Amount__c = (Decimal)data[8];
        
        return acc;
    }}
    
    @isTest
    static void runTests() {{
        AccountPairwiseTest testClass = new AccountPairwiseTest();
        for (Integer i = 0; i < testClass.testCaseData.size(); i++) {{
            Test.startTest();
            Account acc = createAccountFromIndex(testClass.testCaseData, i);
            try {{
                insert acc;
                // Additional assertions can go here
            }} catch (DmlException e) {{
                // Handle expected failures based on the rules
            }}
            Test.stopTest();
        }}
    }}
}}
    """
    return apex_code

# Generate the Apex code for 173 test cases
apex_test_code = generate_apex_test_code(173)
print(apex_test_code)
