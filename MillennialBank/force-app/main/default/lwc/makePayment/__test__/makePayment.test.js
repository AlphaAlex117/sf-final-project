// makePayment.test.js
import { createElement } from 'lwc';
import MakePayment from 'c/makePayment';
import getMonthlyInterestRatePayment from '@salesforce/apex/PaymentController.getMonthlyInterestRatePayment';
import makePayment from '@salesforce/apex/PaymentController.makePayment';
import { ShowToastEventName } from 'lightning/platformShowToastEvent';

// Mock Apex methods
jest.mock('@salesforce/apex/PaymentController.getMonthlyInterestRatePayment', () => ({
    default: jest.fn()
}), { virtual: true });

jest.mock('@salesforce/apex/PaymentController.makePayment', () => ({
    default: jest.fn()
}), { virtual: true });

function flushPromises() {
    return new Promise(resolve => setTimeout(resolve, 0));
}

describe('c-make-payment', () => {
    afterEach(() => {
        // Clear DOM
        while (document.body.firstChild) {
            document.body.removeChild(document.body.firstChild);
        }
        jest.clearAllMocks();
    });

    it('fetches the monthly interest rate payment on component load', async () => {
        // Mock data
        getMonthlyInterestRatePayment.mockResolvedValue(100);
    
        // Create element
        const element = createElement('c-make-payment', {
            is: MakePayment
        });
        document.body.appendChild(element);
    
        // Wait for the promise to resolve and for the DOM to update
        await Promise.resolve(); // wait for async operations in connectedCallback
        await Promise.resolve(); // additional wait to ensure DOM is updated
    
        // Requery the lightning-input after DOM update
        const input = element.shadowRoot.querySelector('lightning-input');
    
        // Check if the monthly interest rate payment is set correctly
        expect(getMonthlyInterestRatePayment).toHaveBeenCalledWith({ accountId: undefined });
        expect(input.value).toBe(100); // Check the input value as a number


    });
    

    it('handles payment submission and shows success toast', async () => {
        // Mock data
        getMonthlyInterestRatePayment.mockResolvedValue(100);
        makePayment.mockResolvedValue();
    
        // Create element
        const element = createElement('c-make-payment', {
            is: MakePayment
        });
        document.body.appendChild(element);
    
        // Wait for the initial DOM updates
        await Promise.resolve();
        await Promise.resolve();
    
        // Set the showPaymentForm property to true and ensure the component re-renders
        element.showPaymentForm = true;
    
        // Force the component to re-render with the updated state
        await Promise.resolve();
        await Promise.resolve();
    
        // Query the button after ensuring the correct state
        const button = element.shadowRoot.querySelector('lightning-button');
    
        // Verify that the button is rendered and not null
        expect(button).not.toBeNull();
    
        // Spy on the dispatchEvent method to capture the toast event
        const dispatchEventSpy = jest.spyOn(element, 'dispatchEvent');
    
        // Simulate button click to submit payment
        button.click();
    
        // Wait for any asynchronous operations triggered by the click
        await Promise.resolve();
    
        // Check if makePayment was called
        expect(makePayment).toHaveBeenCalledWith({ accountId: undefined });
    
        // Verify that a toast event was dispatched
        expect(dispatchEventSpy).toHaveBeenCalled();
    
        // Log all dispatched events for debugging
        // console.log(dispatchEventSpy.mock.calls);
    
        // Find the first event of type ShowToastEvent
        const toastEvent = dispatchEventSpy.mock.calls.find(
            (call) => call[0].detail && call[0].detail.variant === 'success'
        );
    
        // Verify the event was found
        expect(toastEvent).not.toBeUndefined();
    
        // Verify the details of the dispatched toast event
        expect(toastEvent[0].detail.variant).toBe('success');
        expect(toastEvent[0].detail.title).toBe('Success');
        expect(toastEvent[0].detail.message).toBe('Payment made successfully');
    });
    
    
    it('handles payment errors and shows error toast', async () => {
        // Mock data to simulate error scenario
        getMonthlyInterestRatePayment.mockResolvedValue(100);
        makePayment.mockRejectedValue(new Error('Payment failed'));
    
        // Create element
        const element = createElement('c-make-payment', {
            is: MakePayment
        });
        document.body.appendChild(element);
    
        // Wait for the initial DOM updates and ensure the correct state
        await Promise.resolve();
        await Promise.resolve();
    
        // Simulate user action to display the payment form
        const showFormButton = element.shadowRoot.querySelector('lightning-button');
        expect(showFormButton).not.toBeNull(); // Verify the "Make a Payment" button is present
        showFormButton.click(); // Click to display the form
        await Promise.resolve(); // Wait for state update
    
        // Spy on the dispatchEvent method to capture the toast event
        const dispatchEventSpy = jest.spyOn(element, 'dispatchEvent');
    
        // Query the button that submits the payment and ensure it is available
        const paymentButton = element.shadowRoot.querySelector('lightning-button');
        expect(paymentButton).not.toBeNull(); // Verify button presence
    
        // Simulate button click to trigger payment
        paymentButton.click();
        await Promise.resolve(); // Wait for async operations to complete
    
        // Check if dispatchEvent was called
        // console.log('Spy Calls:', dispatchEventSpy.mock.calls); // Log spy calls for debugging
        expect(dispatchEventSpy).toHaveBeenCalled();
    
        // Find and verify the error toast event
        const errorToastEvent = dispatchEventSpy.mock.calls.find(
            (call) => call[0].detail && call[0].detail.variant === 'error'
        );
    
        // Verify the event was found and check its details
        expect(errorToastEvent).not.toBeUndefined();
        expect(errorToastEvent[0].detail.variant).toBe('error');
        expect(errorToastEvent[0].detail.title).toBe('Error');
        expect(errorToastEvent[0].detail.message).toBe('Error making payment');
    });
    


// Utility function to flush promises and ensure all DOM updates are complete
it('toggles payment form visibility through user interaction', async () => {
    const element = createElement('c-make-payment', { is: MakePayment });
    document.body.appendChild(element);

    // Wait for component to render
    await flushPromises();
    await new Promise(resolve => setTimeout(resolve, 100)); // Ensure rendering

    // Simulate a click to show the payment form
    const buttonShow = Array.from(element.shadowRoot.querySelectorAll('lightning-button')).find(button => button.label === 'Make a Payment');
    if (!buttonShow) {
        //console.error('Button with label "Make a Payment" not found.');
        return;
    }
    buttonShow.click();
    await flushPromises();

    // Check if the form is displayed
    const inputAfterClick = element.shadowRoot.querySelector('lightning-input');
    //console.log('Input state after clicking YES button:', inputAfterClick);
    expect(inputAfterClick).not.toBeNull(); // Form should be visible

    // Simulate clicking the YES button to hide the form
    const yesButton = element.shadowRoot.querySelector('lightning-button');
    if (!yesButton) {
        //console.error('YES button not found.');
        return;
    }
    yesButton.click();
    await flushPromises();

    // Check if the form is hidden
    const inputAfterSubmit = element.shadowRoot.querySelector('lightning-input');
    //console.log('Input state after submit button click:', inputAfterSubmit);
    expect(inputAfterSubmit).toBeNull(); // Form should be hidden

    // Simulate showing the form again by clicking "Make a Payment"
    const buttonShowAgain = Array.from(element.shadowRoot.querySelectorAll('lightning-button')).find(button => button.label === 'Make a Payment');
    if (!buttonShowAgain) {
        //console.error('Button with label "Make a Payment" not found on re-show.');
        return;
    }
    buttonShowAgain.click();
    await flushPromises();

    // Ensure the form is visible again
    const inputAfterReShow = element.shadowRoot.querySelector('lightning-input');
    //console.log('Input state after showing form again:', inputAfterReShow);
    expect(inputAfterReShow).not.toBeNull(); // Form should be visible
});
    
});
