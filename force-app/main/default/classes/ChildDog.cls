Public Class ChildDog extends ParentDog{
   public Integer leg;
   public void childbarking(){
        system.debug('Child barking');
    }
      public override void Parentbarking(){
        system.debug('Child Parent barking');
    }
}