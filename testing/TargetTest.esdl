package testing;

import myWork.TargetClass;
import resources.DriverMessages;
import resources.TargetMessages;
import resources.StateHandlerMessages;
import assertLib.Assert;

static class TargetTest{
	TargetClass target;
	
	@Test
	public void setInitialTarget(){
		
		integer status = 1;
		boolean inc = true;
		boolean dec = false;
		real v = 50.0;
		
		real res;
		res = target.computeTarget(status, inc, dec, v);
		Assert.assertEqual(res, 50.0);
	}	
	
	@Test
	public void increaseTarget(){
		
		integer status = 1;
		boolean inc = true;
		boolean dec = false;
		real v = 50.0;
		
		real res;
		res = target.computeTarget(status, inc, dec, v);
		res = target.computeTarget(status, inc, dec, v);
		Assert.assertEqual(res, 51.0);
	}
	
	@Test
	public void decreaseTarget(){
		
		integer status = 1;
		boolean inc = false;
		boolean dec = true;
		real v = 50.0;
		
		real res;
		res = target.computeTarget(status, inc, dec, v);
		res = target.computeTarget(status, inc, dec, v);
		Assert.assertEqual(res, 49.0);
	}	
	
	@Test
	public void resetTarget(){
		
		integer status = 0;
		boolean inc = false;
		boolean dec = true;
		real v = 50.0;
		
		real res;
		res = target.computeTarget(status, inc, dec, v);
		Assert.assertEqual(res, 0.0);
	}	

}