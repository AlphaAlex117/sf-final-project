import { createElement } from 'lwc';
import FeedbackForm from 'c/feedbackForm';
describe('c-feedback-form', () => {
    const flushPromises = () => new Promise(setTimeout);
    it('renders the feedback form when isQuarter is true', async () => {
        const element = createElement('c-feedback-form', { is: FeedbackForm });
        document.body.appendChild(element);
        // Set isQuarter property
        element.isQuarter = true;
        // Wait for the DOM to update
        await flushPromises();
        // Verify that the form is rendered
        const form = element.shadowRoot.querySelector('lightning-record-edit-form');
        expect(form).not.toBeNull();
    });
    it('does not render the feedback form when isQuarter is false', async () => {
        const element = createElement('c-feedback-form', { is: FeedbackForm });
        document.body.appendChild(element);
        // Set isQuarter property
        element.isQuarter = false;
        // Wait for the DOM to update
        await flushPromises();
        // Verify that the form is not rendered
        const form = element.shadowRoot.querySelector('lightning-record-edit-form');
        expect(form).toBeNull();
    });
});