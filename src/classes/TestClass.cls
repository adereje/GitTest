@isTest
public class TestClass 
{
    @testSetup
    static void setup()
    {
         List <Account> accList = new LIst<Account>();
        
        accList.add(new Account(Name = 'test1', NumberOfEmployees = 1));
                accList.add(new Account(Name = 'test2', NumberOfEmployees = 1008));

                accList.add(new Account(Name = 'test3', NumberOfEmployees = 10002));

        insert accList;
    }
    @isTest
    static void testAddTwoNumbers()
    {
		Integer expected = 11;
        Integer actual = MethodsToTest.addTwoNumbers(5,6);
        System.assertEquals(expected,actual,'Math is a lie');
    }
	@isTest
    static void testUpdateAccountSizeFromNumberOfEmployees()
    {
        List <Account> accList = new LIst<Account>();
        /*
        accList.add(new Account(Name = 'test1', NumberOfEmployees = 1));
                accList.add(new Account(Name = 'test2', NumberOfEmployees = 1008));

                accList.add(new Account(Name = 'test3', NumberOfEmployees = 10002));

        insert accList;
        AccountMethods.updateAccountSizeFromNumberOfEmployees();
        
        Account a1 = [SELECT Size__c FROM Account WHERE Name = 'test1' LIMIT 1];
        System.assertEquals('Small', a1.Size__c,'This account should have small size');
        Account a2 = [SELECT Size__c FROM Account WHERE Name = 'test2' LIMIT 1];
        System.assertEquals('Medium', a2.Size__c,'This account should have medium size');
        Account a3 = [SELECT Size__c FROM Account WHERE Name = 'test3' LIMIT 1];
        System.assertEquals('Large', a3.Size__c,'This account should have large size');
        */
                List <Account> accs = [SELEct NumberOfEmployees, Size__c FROM Account WHERE Name Like 'Test%'];
        for(Account a : accs)
        {
			if(a.NumberOfEmployees < 1000)
            {
                System.assertEquals('Small',a.Size__c,'Account should be small');
                
			}
            else if(a.NumberOfEmployees>1000 && a.NumberOfEMployees <10000)
            {
                                System.assertEquals('Medium',a.Size__c,'Account should be medium');

            }
            else
            {
                System.assertEquals('Large',a.Size__c,'Account should be large');
                
			}
        }
    }
    static void testUpdateAccountSizeFromNumberOfLocations()
    {
        
    }
}