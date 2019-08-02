public class ContactHandler 
{
    public static void handleContacts(Contact c)
    {
        if(c.AccountId == null)
        {
            c.addError('Please add an associated account');
        }
    }
    public static void handleContactsStates(List<Contact> contacts)
    {
        List<Account> accts = new List<Account>();
        
    	// list of account Ids
    	
        // retrieve all accounts using those Ids

        // loop through contacts and the above list of account
        		// if contact accountId matches account ID, then update contact mailing address
        
        for(Contact c : contacts)
        {
            accts = [SELECT ShippingState FROM Account WHERE id=:c.AccountId];
            for(Account a : accts)
            {              
                if(c.AccountId != null)
                {
                    c.MailingState = a.ShippingState;
                }
            }
        }
    }
}