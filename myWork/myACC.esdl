package myWork;
import resources.DriverMessages;
import resources.PassThroughMessages;

static class myACC
reads resources.DriverMessages.powerDriver, resources.DriverMessages.brakeDriver
writes resources.PassThroughMessages.gas, resources.PassThroughMessages.brake {
	@generated("blockdiagram")
	@thread
	public void control() {
		if ((DriverMessages.powerDriver > 0.0) || (0.0 < DriverMessages.brakeDriver)) {
			PassThroughMessages.gas = DriverMessages.powerDriver; // Main/control 1/if-then 1
			PassThroughMessages.brake = DriverMessages.brakeDriver; // Main/control 1/if-then 2
		} else {
			PassThroughMessages.gas = 0.0; // Main/control 1/if-else 1
			PassThroughMessages.brake = 0.0; // Main/control 1/if-else 2
		} // Main/control 1
	}
}