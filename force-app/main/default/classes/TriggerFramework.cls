Public Interface TriggerFramework{
    void AfterInsert(List<Sobject> newValue,List<Sobject> oldValue);
    void AfterUpdate();
    void BeforeInsert();
    void BeforeUpdate();
    void AfterDelete();
    void BeforeDelete();
    void AfterUnDelete();
}