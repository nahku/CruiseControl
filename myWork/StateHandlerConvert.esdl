package myWork;
import resources.DriverMessages;
import resources.StateHandlerMessages;

static class StateHandlerConvert
writes DriverMessages.onButtonPressed, DriverMessages.offButtonPressed, DriverMessages.powerDriver, DriverMessages.brakeDriver
reads StateHandlerMessages.status {
	StateHandler StateHandler_instance;
	StateHandler StateHandler_instance_2;

	public void calcParam(boolean onButtonPressed, boolean offButtonPressed, real powerDriver, real brakeDriver) {
		DriverMessages.onButtonPressed = onButtonPressed;
		DriverMessages.offButtonPressed = offButtonPressed;
		DriverMessages.powerDriver = powerDriver;
		DriverMessages.brakeDriver = brakeDriver;
	}
	
	public integer returnStatus() {
		integer status = StateHandlerMessages.status;
		return status;
	}
}


