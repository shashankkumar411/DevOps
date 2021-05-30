import { LightningElement } from 'lwc';
import CASE_OBJECT from '@salesforce/schema/Case';
import SUBJECT_FIELD from '@salesforce/schema/Case.Subject';
import DESCRIPTION_FIELD from '@salesforce/schema/Case.Description';
export default class CaseViewRecordViewForm extends LightningElement {
 
 

    caseObject = CASE_OBJECT;
    caseRecordId ='5001t00000ZeTdX';
    caseNumberField = CASENUMBER_FIELD;
    subjectField = SUBJECT_FIELD;
    caseDescField = DESCRIPTION_FIELD;
 
}