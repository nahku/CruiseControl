package testing;

import myWork.Target;
import resources.DriverMessages;
import resources.TargetMessages;
import resources.StateHandlerMessages;
import assertLib.Assert;

static class TargetTest
reads resources.TargetMessages.targetVelocity
writes resources.DriverMessages.decreaseSpeed, resources.CarMessages.v, resources.StateHandlerMessages.status {
	
	@Test
	public void setInitialTarget(){
		resources.DriverMessages.decreaseSpeed = true;
		resources.StateHandlerMessages.status = 1;
		resources.CarMessages.v = 100.0;
		
		myWork.Target.computeTarget();
		Assert.assertEqual(resources.TargetMessages.targetVelocity, 100.0);
	}	

}