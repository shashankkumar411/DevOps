import { LightningElement ,track, wire} from 'lwc';
//import  mapDemo from '@salesforce/apex/UtilityClass.mapDemo';
import  testName from '@salesforce/apex/UtilityClass.testName';
export default class Demo extends LightningElement {
    @track greeting ="welcome" ;
    @track message="LWC";
    @track records;
    @track contacts = [
        {
            Id : '0051t0000024SGjAAM',
            Name : 'Shashank'
        },
        {
            Id : '0051t0000024SGjAAM',
            Name : 'Rahul'
        },
        {
            Id : '0051t0000024SGjAAM',
            Name : 'SS'
        }
    ];
    @wire(testName)  records;
    
}