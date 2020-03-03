package myWork;
import resources.DriverMessages;
import resources.StateHandlerMessages;
import resources.ControllerMessages;
import resources.PassThroughMessages;

static class PassThrough
	reads resources.DriverMessages.powerDriver, 
		  resources.DriverMessages.brakeDriver, 
		  resources.StateHandlerMessages.status,
		  resources.ControllerMessages.gas,
		  resources.ControllerMessages.brake
	writes PassThroughMessages.gas, PassThroughMessages.brake {
	@generated("blockdiagram")
	@thread
	public void calc() {
		integer status = StateHandlerMessages.status;
		if (status == 0 || status == 2) {
			PassThroughMessages.gas = DriverMessages.powerDriver;
			PassThroughMessages.brake = DriverMessages.brakeDriver;
		}
		else {
			PassThroughMessages.gas = ControllerMessages.gas;
			PassThroughMessages.brake = ControllerMessages.brake;
		}
	}
}