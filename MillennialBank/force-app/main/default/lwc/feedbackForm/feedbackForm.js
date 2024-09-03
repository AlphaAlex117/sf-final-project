import { LightningElement, wire } from 'lwc';
import { CurrentPageReference } from 'lightning/navigation';
import { ShowToastEvent } from 'lightning/platformShowToastEvent';
import getMonth from '@salesforce/apex/AccountController.getMonth';

export default class FeedbackForm extends LightningElement {
    isQuarter;
    name;
    content;

    @wire(CurrentPageReference)
    getStateParameters(currentPageReference){
        if(currentPageReference){
            this.recordId = (currentPageReference.state.recordId == undefined) ? currentPageReference.attributes.recordId : currentPageReference.state.recordId;
            getMonth()
            .then((month) => {
                this.isQuarter = [1, 4, 9, 10].includes(month);
                console.log("Hey", this.recordId, this.isQuarter);
            })
            .catch((error) => {
                console.log("Failed", error);
            })
        }
    }

    renderedCallback(){
        const recordEditForm = this.template.querySelector("lightning-record-edit-form");
        if (recordEditForm) {
            this.recordEditForm = recordEditForm;
        } else {
            console.error('The Form Was Not Found');
        }
    }

    showToast(title, variant){
        const event = new ShowToastEvent({
            title: title,
            variant: variant,
            mode: 'pester'
        });
        this.dispatchEvent(event);
    }

    handleClick(){
        if(this.recordEditForm){
            this.recordEditForm.submit();
        }
        else{
            console.log("Submit Failed");
        }
    }

    handleChangeName(event){
        this.name = event.target.value;
    }

    handleChangeContent(event){
        this.content = event.target.value;
    }

    handleError(){
        this.showToast("Failed To Create Feedback", "error");
        this.name = "";
        this.accountName = "";
        this.content = "";
    }

    handleSuccess(){
        this.showToast("Feedback Created", "success");
        this.name = "";
        this.accountName = "";
        this.content = "";
    }
}