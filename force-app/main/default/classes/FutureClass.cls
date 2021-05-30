public class FutureClass{


 public FutureClass(){
        TakeShower();
        HaveBreakfast();
        CarServicing();
        MoviewithGF();

}

  public static void TakeShower(){
  System.debug('I am taking shower') ;
}

  public static void HaveBreakfast(){

  System.debug('I am taking breakfast');


}
  @Future
  public static void CarServicing(){
  System.debug('Car is being serviced' );
}
  Public static void MoviewithGf() {
  System.debug('I am on date');
}
}