public class SlackExamples 
{
    public void getMax(List<Integer> nums)
    {
        integer counter = 0;
        integer max = nums[0];
        for(integer i : nums)
        {
            if(i > max)
            {
                max = i;
			}
         
        }
        system.debug('The max number is ' + max);
}
  public List<User> logins ()
  {
      List<User> loginTime = [SELECT Name,LastLoginDate FROM User ORDER BY LastLoginDate DESC];
      return loginTime;
  }
    

}