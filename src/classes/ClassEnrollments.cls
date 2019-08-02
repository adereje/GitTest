public class ClassEnrollments 
{

    public List<ClassEnrollment__c> enrollments(String name)
    {
		return [SELECT ClassEnrollment__c.Name FROM ClassEnrollment__c WHERE ClassEnrollment__c.Name=:name];
    }
}