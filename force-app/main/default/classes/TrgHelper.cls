public class TrgHelper  extends TrgFrwk{

public override void Binsert(List<Sobject> newvalue , List<Sobject> oldvalue) {} 

public override void Ainsert() {} 

public override void Bupdate() {
TrgHelperUtility tg = new TrgHelperUtility();

List<Sobject> datalist = new List<Sobject>() ;
tg.dataUpdate((List<Sobject>) datalist);
} 
 
public override void Aupdate() {} 

public override void Bdelete() {} 

public override void Adelete() {} 

public override void Aundelelte() {} 









}