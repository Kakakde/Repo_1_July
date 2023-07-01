public class istriggercheck {
	public static void checkrunning()
    {
        
      DateTime dt = DateTime.newInstance(2022, 12, 31, 12, 14, 16);
        System.debug('Date & Time is=:'+Dt);
        if(Trigger.isExecuting)
        {
            System.debug('Code is running through Trigger');
        }
        else
        {
            System.debug('Code is running through Anonymous window');
        }  
    }
}