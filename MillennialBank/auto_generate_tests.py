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
    
    for row in sheet.iter_rows(values_only=True):
        # Get Test Number from file
        test_number = row[0]
        # Get Test Type from file
        dml_type = row[1]
        
        # Get Test Name from file. If not Blank, then add it. 
        name = ''
        if (row[2] != 'Blank'):
            name = row[2]
        
        balance = ''
        if (row[3] == 'Negative'):
            balance = -7
        
        balance = row[1] if row[1] else '' # if no value, then blank
        record_type = row[2]
        email = row[3] if row[3] else 'FAIL'  # If Email is Blank, it should fail
        loan_interest_rate = row[4] if row[4] in [5, 10, 15, 20] else 'FAIL'  # Replace with valid percentages
        total_loan_amount = row[5] if row[5] else random.randint(0, 100)  # Random value if range not specified
        active = row[6]
        calculated_interest = None  # Should fail if it is not blank
        remaining_loan_amount = None  # Should fail if it is not blank

        if record_type != 'Salary Account' and balance > 0:
            balance = 'FAIL'  # If Record Type is not Salary Account, balance should be 0

        test_data.append([dml_type, name, balance, record_type, email, loan_interest_rate, total_loan_amount, active, calculated_interest, remaining_loan_amount])

    return test_data

# Function to generate Apex test cases
def generate_apex_test_cases(test_data):
    apex_tests = []

    for i, data in enumerate(test_data):
        apex_test = f"""
        @isTest
        public static void testAccount_{i + 1}() {{
            Account acc = new Account();
            acc.Name = '{data[0]}';
            acc.Balance__c = {data[1]};
            acc.RecordTypeId = Schema.SObjectType.Account.getRecordTypeInfosByName().get('{data[2]}').getRecordTypeId();
            acc.Email__c = '{data[3]}';
            acc.Loan_Interest_Rate__c = {data[4]};
            acc.Total_Loan_Amount__c = {data[5]};
            acc.Active__c = {data[6]};
            acc.Calculated_Interest__c = {data[7]};
            acc.Remaining_Loan_Amount__c = {data[8]};
            
            Test.startTest();
            try {{
                insert acc;
                System.assert(false, 'Expected an error, but insert succeeded.');
            }} catch (DmlException e) {{
                System.assert(e.getMessage().contains(''), 'Unexpected error message: ' + e.getMessage());
            }}
            Test.stopTest();
        }}
        """
        apex_tests.append(apex_test)

    return "\n".join(apex_tests)

# Main function to run the script
def main():
    excel_path = "C:\Users\\alexa\Downloads\Ironhack Project 3 Account(2).xlsx"  # TEST INPUT PATH
    sheet = load_excel(excel_path)
    test_data = generate_test_data(sheet)
    apex_test_cases = generate_apex_test_cases(test_data)
    
    with open("GeneratedApexTests.cls", "w") as file:
        file.write(apex_test_cases)

if __name__ == "__main__":
    main()