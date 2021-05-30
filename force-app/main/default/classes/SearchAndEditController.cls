public class SearchAndEditController {

public string name{get;set;}

public boolean searched{get;set;}
public list<Account> accounts{get;set;}
public SearchAndEditController(){

searched =false;
} 
public PageReference executeSearch(){

searched =true;
String searchstr='%'+name+'%';
accounts=[Select id ,Name , Type, Rating From Account Where Name Like:searchstr];
  return null;
}

}