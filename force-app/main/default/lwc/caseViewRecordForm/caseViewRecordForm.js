import { LightningElement } from 'lwc';
import CASE_OBJECT from '@salesforce/schema/Case';
export default class CaseViewRecordForm extends LightningElement {
    caseObject=CASE_OBJECT;
    caseRecordId='5001t000004KGME';
}