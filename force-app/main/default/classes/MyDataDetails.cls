@RestResource(urlMapping='/MYDetails/*')
Global with sharing class MyDataDetails{
    @HTTPGET
    Global Static String getData(){
        
        return 'Satya';
    }
}