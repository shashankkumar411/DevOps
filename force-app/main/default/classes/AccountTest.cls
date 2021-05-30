public  virtual class AccountTest {
protected    Integer balance =5000;
   public virtual void withdraw(integer amt) {
      try{
      if(amt>balance)
       throw new AccountException('Insufficient funds .');
      balance-=amt; 
      }
      catch (AccountException ae)
       {
       System.debug('Exception is :' +ae.getMessage());
       }
   }
   public void deposit(integer amt) {
    balance+=amt;
   }
   public void showResult() {
   system.debug('Show result : ' +balance);
  } 
}