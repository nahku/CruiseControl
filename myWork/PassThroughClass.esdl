package myWork;

class PassThroughClass{
	real gas = 0.0;
	real brake = 0.0;
	
	public void calculateControl(integer in status, real in gasdriver, real in brakedriver, 
								real in gascontroller, real in brakecontroller) {
		if (status == 0 || status == 2) {
			gas = gasdriver;
			brake = brakedriver;
		}
		else {
			gas = gascontroller;
			brake = brakecontroller;
		}
	}
	
	@no_side_effect public real getGas()
	{
		return gas;
	}
	
	@no_side_effect public real getBrake()
	{
		return brake;
	}
}
