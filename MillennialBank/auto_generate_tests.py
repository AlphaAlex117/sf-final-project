import openpyxl
import random

# Load the Excel file
def load_excel(file_path):
    wb = openpyxl.load_workbook(file_path)
    sheet = wb.active
    return sheet

# Function to apply rules and generate the test data
def generate_test_data(sheet):
    test_data = []
    
    for row in sheet.iter_rows(min_row=2, values_only=True):
        # Get Test Number from file
        test_number = row[0]
        # Get Test Type from file
        dml_type = row[1]
        
        # Get Test Name from file. If Normal, then add a valid name. 
        name = ''
        if (row[2] == 'Normal'):
            name = 'Pairwise Test Account ' + test_number
        
        # Get Test Balance from file. If Negative, then add a negative value. Else if add a positive number.
        balance = 'null'
        if (row[3] == 'Negative'):
            balance = -7
        elif (row[3] == '>=$0'):
            balance = random.randint(0, 99)
        elif (row[3 == '>=$100']):
            balance = random.randint(100, 200)
        
        # Get Test Record Type from file.
        record_type = 'None'
        if (row[4] == 'Salary Account'):
            record_type = 'Salary_Account'
        elif (row[4] == 'Transactional Account'):
            record_type = 'Transactional_Account'
        elif (row[4] == 'Current Account'):
            record_type = 'Current_Account'

        # Get Test Calculated Interest from file. If Anything Else, then add an input.
        calculated_interest = 'null'
        if (row[5] == 'Anything Else'):
            calculated_interest = 7

        # Get Test Email from file. If Normal, then add a valid email.
        email = ''
        if (row[6] == 'Normal'):
            email = 'test' + str(test_number) + '@pairwise.test'

        # Get Test Interest Rate from file.
        interest_rate = float(row[7].strip('%')) / 100

        # Get Test Loan Interest Rate from file.
        loan_interest_rate = 'null'
        if (row[8] == 'Anything Else'):
            loan_interest_rate = 107
        elif (row[8] != 'Blank' and row[8] != 'Error'):
            loan_interest_rate = str(float(row[8].strip('%')) / 100)


        loan_type = '' 
        if (row[9] != 'Blank'):
            loan_type = row[9]
        

        remaining_loan_amount = 'null'
        if (row[10] == 'Anything Else'):
            remaining_loan_amount = 15000000


        total_loan_amount = 'null'
        if (row[11] == '$0 to $100,000'):
            total_loan_amount = random.randint(0, 100000)
        elif (row[11] == '$100,001 to $500,000'):
            total_loan_amount = random.randint(100001, 500000)
        elif (row[11] == '>$500,000' or row[11] == '$500,001 to $1,000,000'):
            total_loan_amount = random.randint(500001, 1000000)
        elif (row[11] == '$0 to $1,000,000'):
            total_loan_amount = random.randint(0, 1000000)
        elif (row[11] == '$1,000,001 to $5,000,000'):
            total_loan_amount = random.randint(1000001, 5000000)
        elif (row[11] == '$5,000,001 to $10,000,000'):
            total_loan_amount = random.randint(5000001, 10000000)


        active = row[12]


        test_data.append([test_number, dml_type, name, balance, record_type, calculated_interest, email, interest_rate, loan_interest_rate, loan_type, remaining_loan_amount, total_loan_amount, active])
    return test_data

# Function to generate Apex test cases
def generate_apex_test_cases(test_data):
    apex_tests = []

    for data in test_data:
        # Add a Create Test
        if (data[1] == 'Create'):
            apex_test = f"""
            @isTest
            public static void testAccount_{data[0]}() {{
                Test.startTest();
                Account acc = createAccountFromIndex(testCaseData, {data[0]});
                
                try {{
                    insert acc;
                    Account testAcc = [SELECT name, balance__c, calculated_interest__c, email__c, interest_rate__c, loan_interest_rate__c, loan_type__c, remaining_loan_amount__c, total_loan_amount__c, active__c FROM Account WHERE name='{data[1][2]}' LIMIT 1];
                    System.assertEquals(acc.Name, testAcc.Name);
                    System.assertEquals(acc.Balance__c, testAcc.Balance__c);
                    System.assertEquals(acc.Balance__c * {data[7]}, testAcc.Calculated_Interest__c);
                    System.assertEquals(acc.Email__c, testAcc.Email__c);
                    System.assertEquals(acc.Loan_Interest_Rate__c, testAcc.Loan_Interest_Rate__c);
                    System.assertEquals(acc.Loan_Type__c, testAcc.Loan_Type__c);
                    //System.assertEquals(acc.Total_Loan_Amount__c, testAcc.Remaining_Loan_Amount__c);
                    System.assertEquals(acc.Total_Loan_Amount__c, testAcc.Total_Loan_Amount__c);
                }} catch (Exception e) {{
                    System.assert(false, e.getMessage());
                }}
                Test.stopTest();
            }}
            """
            apex_tests.append(apex_test)
        
        # Add an Update Test
        elif (data[1] == 'Update'):
            apex_test = f"""
            @isTest
            public static void testAccount_{data[0]}() {{
                Account acc = createAccountFromIndex(testCaseData, {data[0]});
                insert acc;
                
                updateAccountFromIndex(testCaseData, {data[0]}, acc);
                
                try {{
                    update acc;
                    Account testAcc = [SELECT name, balance__c, calculated_interest__c, email__c, interest_rate__c, loan_interest_rate__c, loan_type__c, remaining_loan_amount__c, total_loan_amount__c, active__c FROM Account WHERE name='{data[1][2]}' LIMIT 1];
                    System.assertEquals(acc.Name, testAcc.Name);
                    System.assertEquals(acc.Balance__c, testAcc.Balance__c);
                    System.assertEquals(acc.Balance__c * {data[7]}, testAcc.Calculated_Interest__c);
                    System.assertEquals(acc.Email__c, testAcc.Email__c);
                    System.assertEquals(acc.Loan_Interest_Rate__c, testAcc.Loan_Interest_Rate__c);
                    System.assertEquals(acc.Loan_Type__c, testAcc.Loan_Type__c);
                    //System.assertEquals(acc.Total_Loan_Amount__c, testAcc.Remaining_Loan_Amount__c);
                    System.assertEquals(acc.Total_Loan_Amount__c, testAcc.Total_Loan_Amount__c);
                }} catch (Exception e) {{
                    System.assert(false, e.getMessage());
                }}
                Test.stopTest();
            }}
            """
            apex_tests.append(apex_test)
        
    return "\n".join(apex_tests)

# Generate Apex test inputs
def generate_apex_test_input(test_data):
    apex_test_inputs = []
    
    update_sample = f"""
    new List<Object>{{'ToUpdate Account', 100, 'Salary Account', null, 'testUpdate@pairwise.test', null, null, null, 'Yes'}},
    """
    apex_test_inputs.append(update_sample)
    for data in test_data:
        test_input = f"""new List<Object>{{'{data[2]}', {data[3]}, '{data[4]}', {data[5]}, '{data[6]}', {data[8]}, '{data[9]}', {data[11]}, '{data[12]}'}},
        """
        apex_test_inputs.append(test_input)

    return "".join(apex_test_inputs)

# Main function to run the script
def main():
    excel_path = "C:/Users/alexa/Downloads/Ironhack Project 3 Account(2).xlsx"
    sheet = load_excel(excel_path)
    test_data = generate_test_data(sheet)
    #print(test_data)
    apex_test_input = generate_apex_test_input(test_data)

    with open("GeneratedApexTestInputs.cls", "w") as file:
        file.write(apex_test_input)

    apex_test_cases = generate_apex_test_cases(test_data)
    #print(apex_test_cases)
    
    with open("GeneratedApexTests.cls", "w") as file:
        file.write(apex_test_cases)

if __name__ == "__main__":
    main()