import { LightningElement ,api} from 'lwc';

export default class CourseDetailUpdate extends LightningElement {
    @api courseName= 'LWC';
    @api courseFee= '500';
    updateFee(){
        this.courseFee = parseFloat(this.courseFee) * 2;
        }
        changeCourseFee(event){

    
            this.courseFee= event.target.value;
        }
}  