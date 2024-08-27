import { LightningElement, api, track, wire } from 'lwc';
import getMonthlyInterestRatePayment from '@salesforce/apex/PaymentController.getMonthlyInterestRatePayment';
import makePayment from '@salesforce/apex/PaymentController.makePayment';
import { ShowToastEvent } from 'lightning/platformShowToastEvent';

export default class MakePayment extends LightningElement {
    @api recordId; // This assumes that the component is used in a record context
    @track monthlyInterestRatePayments;
    @track showPaymentForm = true;

    connectedCallback() {
        this.fetchMonthlyInterestRatePayment();
    }

    fetchMonthlyInterestRatePayment() {
        getMonthlyInterestRatePayment({ accountId: this.recordId })
            .then(result => {
                this.monthlyInterestRatePayments = result;
            })
            .catch(error => {
                this.showErrorToast('Error fetching payment amount', error);
            });
    }

    handlePaymentSubmit() {
        makePayment({ accountId: this.recordId })
            .then(() => {
                this.showSuccessToast('Payment made successfully');
                this.showPaymentForm = false; // Hides the payment form and shows the "Make a Payment" button
            })
            .catch(error => {
                this.showErrorToast('Error making payment', error);
                console.error('Payment Error: ', error); // Add this line to log the error details
            });
    }
    

    handleShowPaymentForm() {
        this.showPaymentForm = true;
        this.fetchMonthlyInterestRatePayment(); // Fetch the latest payment amount
    }

    showSuccessToast(message) {
        this.dispatchEvent(
            new ShowToastEvent({
                title: 'Success',
                message: message,
                variant: 'success',
            })
        );
    }

    showErrorToast(message, error) {
        this.dispatchEvent(
            new ShowToastEvent({
                title: 'Error',
                message: message,
                variant: 'error',
            })
        );
        console.error('Error: ', error);
    }
}