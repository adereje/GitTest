public class ExceptionMethods 
{
	public static void accountErrors(String name)
    {
        try
        {
        List<Account> accs = [SELECT Id From Account Where Name =: name Limit 1];
        String accCity = accs[0].ShippingCity;
        }
        catch(ListException e)
        {
            System.debug('Message : ' + e.getMessage());
                        System.debug('Cause : ' + e.getCause());
            System.debug('Line Number  : ' + e.getLineNumber());

        }
    }
}