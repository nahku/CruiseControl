package testing;

import myWork.PassThroughClass;
import assertLib.Assert;

static class PassThroughTest{
	PassThroughClass ps;
	
	@Test
	public void status0positive(){
		integer status = 0;
		real gasdriver = 420.0;
		real brakedriver = 69.0;
		real gascontroller = 31.0;
		real brakecontroller = 42.0;
		real resultgas = 0.0;
		real resultbrake = 0.0;
		ps.calculateControl(status, gasdriver, brakedriver, gascontroller, brakecontroller);
		resultgas = ps.getGas();
		resultbrake = ps.getBrake();
		Assert.assertEqual(resultgas, gasdriver);
		Assert.assertEqual(resultbrake, brakedriver);
	}
	
	@Test
	public void status1positive(){
		integer status = 1;
		real gasdriver = 420.0;
		real brakedriver = 69.0;
		real gascontroller = 31.0;
		real brakecontroller = 42.0;
		real resultgas = 0.0;
		real resultbrake = 0.0;
		ps.calculateControl(status, gasdriver, brakedriver, gascontroller, brakecontroller);
		resultgas = ps.getGas();
		resultbrake = ps.getBrake();
		Assert.assertEqual(resultgas, gascontroller);
		Assert.assertEqual(resultbrake, brakecontroller);
	}
	
	@Test
	public void status2positive(){
		integer status = 2;
		real gasdriver = 420.0;
		real brakedriver = 69.0;
		real gascontroller = 31.0;
		real brakecontroller = 42.0;
		real resultgas = 0.0;
		real resultbrake = 0.0;
		ps.calculateControl(status, gasdriver, brakedriver, gascontroller, brakecontroller);
		resultgas = ps.getGas();
		resultbrake = ps.getBrake();
		Assert.assertEqual(resultgas, gasdriver);
		Assert.assertEqual(resultbrake, brakedriver);
	}

}