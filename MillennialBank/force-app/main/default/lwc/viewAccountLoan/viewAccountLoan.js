import { LightningElement, api, wire } from 'lwc';
import { CurrentPageReference } from 'lightning/navigation';
import getAccount from '@salesforce/apex/AccountController.getAccount';

export default class ViewAccountLoan extends LightningElement {
    account;
    
    @wire(CurrentPageReference)
    getStateParameters(currentPageReference){
        if(currentPageReference){
            this.recordId = currentPageReference.state.recordId;
            getAccount({accId: this.recordId})
            .then((result) => {
                result.Loan_Type__c = (result.Loan_Type__c == undefined) ? "N/A" : result.Loan_Type__c;
                result.Balance__c = (result.Balance__c == undefined) ? "N/A" : "$" + result.Balance__c.toFixed(2);
                result.Total_Loan_Amount__c = (result.Total_Loan_Amount__c == undefined) ? "N/A" : "$" + result.Total_Loan_Amount__c.toFixed(2);
                result.Remaining_Loan_Amount__c = (result.Remaining_Loan_Amount__c == undefined) ? "N/A" : "$" + result.Remaining_Loan_Amount__c.toFixed(2);
                result.Interest_Rate__c = (result.Interest_Rate__c == undefined) ? "N/A" : result.Interest_Rate__c.toFixed(1) + "%";
                result.Loan_Interest_Rate__c = (result.Loan_Interest_Rate__c == undefined) ? "N/A" : result.Loan_Interest_Rate__c.toFixed(1) + "%";
                this.account = result;
                console.log("Passed", this.account);
            })
            .catch((error) => {
                console.log("Failed", error);
            })
        }
    }
}