import { LightningElement } from 'lwc';
import 	WelcomeMessage from '@salesforce/label/c.WelcomeMessage' ;
import 	Disclaimer from '@salesforce/label/c.Disclaimer' ;
import 	Dec from '@salesforce/label/c.Dec' ;
export default class AccessCustomLabel extends LightningElement {
    label={
        WelcomeMessage,
        Disclaimer,
        Dec
    }
}