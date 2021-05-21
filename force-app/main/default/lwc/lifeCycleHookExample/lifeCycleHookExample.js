import { LightningElement, api } from 'lwc';

export default class LifeCycleHookExample extends LightningElement {
    @api message='Welcome';
    constructor(){
    
        super();
        this.message=this.message + 'Welcome to SFDC';
         console.log('Executing Constructor');
    }
    connectedCallback(){
        console.log('Executing Connected callback');
    }
    disconnectedCallback(){
        console.log('Executing Dis-Connected callback'); 
    }
    renderedCallback(){
        console.log('Executing my rendered callback'); 
    }
    errorCallback(error , stack){
        console.log('Executing my error callback' +error); 
    }
}