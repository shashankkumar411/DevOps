import { LightningElement } from 'lwc';

export default class BasicCalculatorComponent extends LightningElement {
    firstInput;
    secondInput;
    totalValue;
    showResult=false;
    firstInputChange(event){
                this.firstInput =event.target.value;
    }
    secondInputChange(event){
        this.secondInput=event.target.value;
    }
    add(event){
        this.totalValue=Number(this.firstInput)+Number(this.secondInput);
        this.showResult=true;
    }
    subtract(event){
        this.totalValue=Number(this.firstInput) - Number(this.secondInput);
        this.showResult=true;
    }
    multiply(event){
        this.totalValue=Number(this.firstInput) * Number(this.secondInput);
        this.showResult=true;
    }
    divide(event){
        this.totalValue=Number(this.firstInput) / Number(this.secondInput);
        this.showResult=true;
    }
}