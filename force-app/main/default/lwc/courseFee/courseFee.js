import { LightningElement, track } from 'lwc';

export default class CourseFee extends LightningElement {
    courseName ='Salesforce';
    courseFee = '2000';
    students ='10';
 @track   totalfee ='200';
   changecoursefee(event){
    this.courseFee=event.target.value; 
 }
 changestudent(event){
    this.students=event.target.value;
 }
    calculateTotal(){
      this.totalfee= parsefloat(this.courseFee) * parsefloat(this.students);
    }
}