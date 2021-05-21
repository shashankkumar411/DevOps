import { api, LightningElement, track } from 'lwc';

export default class MyFirstLWC extends LightningElement {
    @api name='Shashank';
    @track title='CRM consulatnt';
    phone ='87654321';
    email ="abc@gmail.com";
    handleclick(){
        console.log('i am inside js');
        this.name="abc test";
    }
}