//this trigger is fired when a student tries to enter a phone number 
trigger StudentTrigger on Student__c (before insert) 
{
    /*
	if(Trigger.isBefore)
    {
        if(Trigger.isInsert)
        {	
            //call the helper method and pass the record that is trying to be saved
            StudentHelper.validatePhoneNumber(Trigger.new[0]);
            
}
    }
*/
}