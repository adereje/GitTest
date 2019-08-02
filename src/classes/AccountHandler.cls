public class AccountHandler {
    public static void postToChatterAfterCreation(Account acc)
    {
        ConnectApi.FeedElement feedElement = ConnectApi.ChatterFeeds.postFeedElement(null, acc.Id, ConnectApi.FeedElementType.FeedItem, 'Account has been created');
        
    }
    public static void checkBillingCity(List<Account> acct)
    {
        for(Account a : acct)
        {
            if(a.BillingCity == null)
            {
                a.addError('Sir you have no billing city');
            }
        }
    }
}