// import { LightningElement, api, wire } from 'lwc';
// import { CurrentPageReference } from 'lightning/navigation';
// import getAccount from '@salesforce/apex/AccountController.getAccount';

// export default class ViewAccountLoan extends LightningElement {
//     @api account;
    
//     @wire(CurrentPageReference)
//     getStateParameters(currentPageReference){
//         if(currentPageReference){
//             this.recordId = currentPageReference.state.recordId;
//             getAccount({accId: this.recordId})
//             .then((result) => {
//                 // result.Loan_Type__c = (result.Loan_Type__c == undefined) ? "N/A" : result.Loan_Type__c;
//                 // result.Balance__c = (result.Balance__c == undefined) ? "N/A" : "$" + result.Balance__c.toFixed(2);
//                 // result.Total_Loan_Amount__c = (result.Total_Loan_Amount__c == undefined) ? "N/A" : "$" + result.Total_Loan_Amount__c.toFixed(2);
//                 // result.Remaining_Loan_Amount__c = (result.Remaining_Loan_Amount__c == undefined) ? "N/A" : "$" + result.Remaining_Loan_Amount__c.toFixed(2);
//                 // result.Interest_Rate__c = (result.Interest_Rate__c == undefined) ? "N/A" : result.Interest_Rate__c.toFixed(1) + "%";
//                 // result.Loan_Interest_Rate__c = (result.Loan_Interest_Rate__c == undefined) ? "N/A" : result.Loan_Interest_Rate__c.toFixed(1) + "%";
//                 // this.account = result;
//             })
//             .catch((error) => {
//                 console.log("Failed", error);
//             })          
//         }
//     }
// }

import { LightningElement, api, wire } from 'lwc';
import { CurrentPageReference } from 'lightning/navigation';
import getAccount from '@salesforce/apex/AccountController.getAccount';

export default class ViewAccountLoan extends LightningElement {
    @api account;

    @wire(CurrentPageReference)
    getStateParameters(currentPageReference) {
        if (currentPageReference) {
            this.recordId = currentPageReference.state.recordId;
            getAccount({ accId: this.recordId })
                .then((result) => {
                    // Ensure result is properly handled
                    this.account = {
                        Name: result.Name || "N/A",
                        Active__c: result.Active__c !== undefined ? result.Active__c : "N/A",
                        Balance__c: typeof result.Balance__c === 'number' ? `$${result.Balance__c.toFixed(2)}` : "N/A",
                        Total_Loan_Amount__c: typeof result.Total_Loan_Amount__c === 'number' ? `$${result.Total_Loan_Amount__c.toFixed(2)}` : "N/A",
                        Remaining_Loan_Amount__c: typeof result.Remaining_Loan_Amount__c === 'number' ? `$${result.Remaining_Loan_Amount__c.toFixed(2)}` : "N/A",
                        Interest_Rate__c: typeof result.Interest_Rate__c === 'number' ? `${result.Interest_Rate__c.toFixed(1)}%` : "N/A",
                        Loan_Type__c: result.Loan_Type__c || "N/A",
                        Loan_Interest_Rate__c: typeof result.Loan_Interest_Rate__c === 'number' ? `${result.Loan_Interest_Rate__c.toFixed(1)}%` : "N/A"
                    };
                })
                .catch((error) => {
                    console.error("Failed", error);
                });
        }
    }
}





