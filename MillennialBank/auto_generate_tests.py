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
        balance = ''
        if (row[3] == 'Negative'):
            balance = -7
        elif (row[3] == '>=$0'):
            balance = random.randint(0, 99)
        elif (row[3 == '>=$100']):
            balance = random.randint(100, 200)
        
        # Get Test Record Type from file.
        record_type = row[4]

        # Get Test Calculated Interest from file. If Anything Else, then add an input.
        calculated_interest = ''
        if (row[5] == 'Anything Else'):
            calculated_interest = 7

        # Get Test Email from file. If Normal, then add a valid email.
        email = ''
        if (row[6] == 'Normal'):
            email = 'test' + str(test_number) + '@pairwise.test'

        # Get Test Interest Rate from file.
        interest_rate = float(row[7].strip('%')) / 100

        # Get Test Loan Interest Rate from file.
        loan_interest_rate = ''
        if (row[8] == 'Anything Else'):
            loan_interest_rate = 107
        elif (row[8] != 'Blank' and row[8] != 'Error'):
            loan_interest_rate = str(float(row[8].strip('%')) / 100)


        loan_type = ''
        if (row[9] != 'Blank'):
            loan_type = row[9]
        

        remaining_loan_amount = ''
        if (row[10] == 'Anything Else'):
            remaining_loan_amount = 15000000


        total_loan_amount = ''
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

    for data in enumerate(test_data):
        # Add a Create Test
        if (data[1][1] == 'Create'):
            apex_test = f"""
            @isTest
            public static void testAccount_{data[1][0]}() {{
                Account acc = new Account();
                acc.Name = '{data[1][2]}';
                acc.Balance__c = {data[1][3]};
                acc.RecordTypeId = Schema.SObjectType.Account.getRecordTypeInfosByName().get('{data[1][4]}').getRecordTypeId();
                acc.Calculated_Interest__c = {data[1][5]};
                acc.Email__c = '{data[1][6]}';
                acc.Loan_Interest_Rate__c = {data[1][8]};
                acc.Loan_Type__c = {data[1][9]};
                acc.Remaining_Loan_Amount__c = {data[1][10]};
                acc.Total_Loan_Amount__c = {data[1][11]};
                acc.Active__c = {data[1][12]};
                
                Test.startTest();
                try {{
                    insert acc;
                    Account testAcc = [SELECT name, balance__c, calculated_interest__c, email__c, interest_rate__c, loan_interest_rate__c, loan_type__c, remaining_loan_amount__c, total_loan_amount__c, active__c FROM Account WHERE name='{data[1][2]}' LIMIT 1];
                    System.assert();
                }} catch (Exception e) {{
                    System.assert(e.getMessage());
                }}
                Test.stopTest();
            }}
            """
            apex_tests.append(apex_test)
        
        # Add an Update Test
        elif (data[1][1] == 'Update'):
            apex_test = f"""
            @isTest
            public static void testAccount_{data[1][0]}() {{
                Account acc = new Account();
                acc.Name = 'ToUpdate Account';
                acc.Balance__c = 100;
                acc.RecordTypeId = Schema.SObjectType.Account.getRecordTypeInfosByName().get('{data[1][4]}').getRecordTypeId();
                acc.Email__c = 'testUpdate@pairwise.test';
                acc.Active__c = {data[1][12]};
                insert acc;
                
                acc.Name = '{data[1][2]}';
                acc.Balance__c = {data[1][3]};
                acc.Calculated_Interest__c = {data[1][5]};
                acc.Email__c = '{data[1][6]}';
                acc.Loan_Interest_Rate__c = {data[1][8]};
                acc.Loan_Type__c = {data[1][9]};
                acc.Remaining_Loan_Amount__c = {data[1][10]};
                acc.Total_Loan_Amount__c = {data[1][11]};
                
                Test.startTest();
                try {{
                    update acc;
                    System.assert(false, 'Expected an error, but insert succeeded.');
                }} catch (Exception e) {{
                    System.assert(e.getMessage());
                }}
                Test.stopTest();
            }}
            """
            apex_tests.append(apex_test)
        
    return "\n".join(apex_tests)

# Main function to run the script
def main():
    excel_path = "C:/Users/alexa/Downloads/Ironhack Project 3 Account(2).xlsx"
    sheet = load_excel(excel_path)
    test_data = generate_test_data(sheet)
    #print(test_data)
    apex_test_cases = generate_apex_test_cases(test_data)
    #print(apex_test_cases)
    
    with open("GeneratedApexTests.cls", "w") as file:
        file.write(apex_test_cases)

if __name__ == "__main__":
    main()