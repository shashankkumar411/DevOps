import { LightningElement, wire } from 'lwc';
import fetchAllContactsRecords from '@salesforce/apex/ContactManager.fetchAllContactsRecords';
import getAllAccount from '@salesforce/apex/ContactManager.getAllAccount';
import { NavigationMixin } from 'lightning/navigation';
export default class ContactMasterDisplay extends NavigationMixin(LightningElement)  {
    @wire(fetchAllContactsRecords)
    contacts; 
    contactId; 
    NavigateToDetails(event){
        this.contactId = event.target.value;
        this[NavigationMixin.Navigate]({
            type:'standard__recordPage',
            attributes:{
                recordId:this.contactId,
                objectApiName:'Contact',
                actionName:'view'
            }           
 
        });
    }      
}