package myWork;
import resources.DriverMessages;
import resources.CarMessages;
import resources.TargetMessages;

static class myDriver
reads TargetMessages.targetVelocity
writes DriverMessages.powerDriver, DriverMessages.brakeDriver, DriverMessages.increaseSpeed, DriverMessages.decreaseSpeed, DriverMessages.onButtonPressed {
	characteristic real p = 0.0;

	@generated("blockdiagram")
	@thread
	public void drive() {
		DriverMessages.powerDriver = p; // Main/drive 1
		DriverMessages.brakeDriver = 0.0; // Main/drive 2
	}
	
	@thread
	public void increaseTarget() {
		DriverMessages.powerDriver = 50.0;
		//wait5s
		DriverMessages.powerDriver = 50.0;
		//wait5s
		DriverMessages.onButtonPressed = true;
		DriverMessages.increaseSpeed = true;
		//wait0,01s
		DriverMessages.increaseSpeed = false;
		//wait0,01s
		DriverMessages.increaseSpeed = true;
		//wait0,01s
		DriverMessages.increaseSpeed = false;
	}
}