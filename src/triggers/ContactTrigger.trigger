trigger ContactTrigger on Contact (before insert) 
{
	if(Trigger.isBefore)
    {
        if(Trigger.isInsert)
        {
            ContactHandler.handleContactsStates(Trigger.new);
        }
    }
}