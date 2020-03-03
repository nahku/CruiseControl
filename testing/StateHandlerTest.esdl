package testing;

import assertLib.Assert;
import myWork.StateHandlerBD;
import myWork.StateHandlerConvert;

static class StateHandlerTest {
	
	real powerDriver = 0.0;
	real brakeDriver = 0.0;
	boolean onButtonPressed = false;
	boolean offButtonPressed = false;
	boolean increaseSpeed = false;
	boolean decreaseSpeed = false;
	integer status = 0;
	
	@Test
	public void testOn () {
		onButtonPressed = true;
		StateHandlerConvert.calcParam(onButtonPressed, offButtonPressed, powerDriver, brakeDriver);
		
		StateHandlerBD.calc();
		status = StateHandlerConvert.returnStatus();
		
		Assert.assertIntEqual(status, 1);
	}
}