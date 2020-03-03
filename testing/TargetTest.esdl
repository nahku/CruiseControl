package testing;

import myWork.TargetClass;
import resources.DriverMessages;
import resources.TargetMessages;
import resources.StateHandlerMessages;
import assertLib.Assert;

static class TargetTest{
	TargetClass target;
	integer status = 1;
	boolean inc = true;
	boolean dec = false;
	real v = 50.0;
	@Test
	public void setInitialTarget(){
		
		real res;
		res = target.computeTarget(status, inc, dec, v);
		Assert.assertEqual(res, 50.0);
	}

}