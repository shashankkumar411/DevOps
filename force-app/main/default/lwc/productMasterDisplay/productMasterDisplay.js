import { LightningElement, wire } from 'lwc';
import FindAllProduct from '@salesforce/apex/productManager.FindAllProduct';
export default class ProductMasterDisplay extends LightningElement {
    allProducts;
    errorDetails;
    @wire(FindAllProduct)
    processAllProduct({error,data}){
        if(data){
             this.allProducts=data;
        }
        else if(error){
              this.errorDetails=error;
        }
    }
}