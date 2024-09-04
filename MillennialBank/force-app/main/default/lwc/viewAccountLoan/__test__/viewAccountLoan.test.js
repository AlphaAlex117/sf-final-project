import { createElement } from 'lwc';
import ViewAccountLoan from 'c/viewAccountLoan';
import getAccount from '@salesforce/apex/AccountController.getAccount';
import { CurrentPageReference } from 'lightning/navigation';

// Mock the Apex method
jest.mock('@salesforce/apex/AccountController.getAccount', () => ({
    default: jest.fn()
}), { virtual: true });

function flushPromises() {
    return new Promise(resolve => setTimeout(resolve, 0));
}

describe('c-view-account-loan', () => {
    let element;

    beforeEach(() => {
        element = createElement('c-view-account-loan', { is: ViewAccountLoan });
        document.body.appendChild(element);
    });

    afterEach(() => {
        document.body.innerHTML = '';
    });

    it('renders account and loan information when data is returned', async () => {
        const mockAccountData = {
            Name: 'Test Account',
            Active__c: true,
            Balance__c: 5000.00,
            Interest_Rate__c: 5.5,
            Loan_Type__c: 'Personal',
            Loan_Interest_Rate__c: 7.0,
            Total_Loan_Amount__c: 10000.00,
            Remaining_Loan_Amount__c: 5000.00
        };
        getAccount.mockResolvedValue(mockAccountData);

        const mockPageReference = {
            state: { recordId: '001xxxxxxxxxxxx' }
        };
        CurrentPageReference.emit(mockPageReference);

        await flushPromises();

        const paragraphs = element.shadowRoot.querySelectorAll('p');

        expect(paragraphs[0]?.textContent).toBe('Account Name: Test Account');
        expect(paragraphs[1]?.textContent).toBe('Active?: true');
        expect(paragraphs[2]?.textContent).toBe('Account Balance: $5000.00');
        expect(paragraphs[3]?.textContent).toBe('Interest Rate: 5.5%');
        expect(paragraphs[4]?.textContent).toBe('Loan Type: Personal');
        expect(paragraphs[5]?.textContent).toBe('Loan Interest Rate: 7.0%');
        expect(paragraphs[6]?.textContent).toBe('Total Loan Amount: $10000.00');
        expect(paragraphs[7]?.textContent).toBe('Remaining Loan Amount: $5000.00');
    });

    it('displays N/A for undefined fields', async () => {
        const mockAccountData = {
            Name: undefined,
            Active__c: undefined,
            Balance__c: undefined,
            Interest_Rate__c: undefined,
            Loan_Type__c: undefined,
            Loan_Interest_Rate__c: undefined,
            Total_Loan_Amount__c: undefined,
            Remaining_Loan_Amount__c: undefined
        };
        getAccount.mockResolvedValue(mockAccountData);

        const mockPageReference = {
            state: { recordId: '001xxxxxxxxxxxx' }
        };
        CurrentPageReference.emit(mockPageReference);

        await flushPromises();

        const elements = element.shadowRoot.querySelectorAll('p');
        
        elements.forEach((elem, index) => {
            console.log(`Element ${index}: ${elem.textContent}`);
        });

        expect(elements[0]?.textContent).toBe('Account Name: N/A');
        expect(elements[1]?.textContent).toBe('Active?: N/A');
        expect(elements[2]?.textContent).toBe('Account Balance: N/A');
        expect(elements[3]?.textContent).toBe('Interest Rate: N/A');
        expect(elements[4]?.textContent).toBe('Loan Type: N/A');
        expect(elements[5]?.textContent).toBe('Loan Interest Rate: N/A');
        expect(elements[6]?.textContent).toBe('Total Loan Amount: N/A');
        expect(elements[7]?.textContent).toBe('Remaining Loan Amount: N/A');
    });
});
