Public Abstract Class TriggerFrame{
    Public Abstract void AfterInsert(List<Sobject> newValue,List<Sobject> oldValue);
    Public Abstract void AfterUpdate();
    Public Abstract void BeforeInsert();
    Public Abstract void BeforeUpdate();
    Public Abstract void AfterDelete();
    Public Abstract void BeforeDelete();
    Public Abstract void AfterUnDelete();
    

}