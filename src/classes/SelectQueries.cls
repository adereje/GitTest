public class SelectQueries {
	public static List<Account> getAllAccounts()
    {
        List<Account> accountList = new List<account>();
        accountList = [SELECT id FROM Account ];
        
        return accountList;
    }
    //quicker way of returning the list you can just return the query since the object contact already has the list
    public static List<Contact> getAllContacts()
    {
        
        
        return [SELECT id FROM Contact ];
    }
    public static List<Account> getGenePointAccounts()
    {
        return [SELECT Id,Name FROM Account WHERE Name = 'GenePoint'];
        
       
    }
    public static List<Account> getAccountsWithName(string name)
    {
        return [SELECT Id,Name FROM Account WHERE Name=:name];
        
       
    }
    public static List<Student__c> getEnrolledStudents()
    {
        return [SELECT Name FROM Student__c WHERE status__c='Enrolled'];
        
    }
}