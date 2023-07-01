public class SameNameHandl{
    public static void Demomethod(List<Account>newList)
    {
        Set<Id>AccountIds = new Set<Id>();
        Map<String, Account>MapData = new Map<String, Account>();
        if(!newList.isEmpty())
        {
            for(Account acc : newList)
            {
                AccountIds.add(acc.Id);
            }
        }
        List<Account> QueryList = new List<Account>([SELECT Id, Name FROM Account WHERE Id =: AccountIds]);
        
        if(!QueryList.isEmpty())
        {
            for(Account Ql : QueryList)
            {
                MapData.put(Ql.Name, Ql);
            }
        }
        if(!newList.isEmpty())
        {
            for(Account Acc : newList)
            {
                if(MapData.containsKey(Acc.name))
                {
                    Acc.addError('Invalid Name');                        }
            }
        }
    }
}