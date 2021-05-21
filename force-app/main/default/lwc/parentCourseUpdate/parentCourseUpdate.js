import { api, LightningElement } from 'lwc';

export default class ParentCourseUpdate extends LightningElement {
  @api  pCourseName='vf';
   @api  pCourseFee ='15000';
   updateCourseFee(){
       this.template.querySelector('c-course-detail-update').updateFee();


   }
}