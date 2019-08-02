public class StudentHelper 
{
    //checks if the phone number field is empty if so print the error message
    public static void validatePhoneNumber(List<Student__c> students)
    {
        for(Student__c student : students)
        {
        if(student.PhoneNumber__c == null)
        {
            student.addError('Please provide phone number for: ' + student.Name);
		}
        }
    }
}