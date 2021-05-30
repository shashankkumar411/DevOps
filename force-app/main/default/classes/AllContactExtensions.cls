public class AllContactExtensions {
    private ApexPages.StandardSetController mySetController ;
    public AllContactExtensions(ApexPages.StandardSetController controller) {
    
    mySetController=controller;
    List<Contact> acclist=  [Select Id , Name  From Contact Where Name Like '%abc%'];
    mySetController.setSelected(acclist);

    }

}