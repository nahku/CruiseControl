package myWork;
import resources.CarMessages;
import resources.TargetMessages;
import resources.ControllerMessages;

static class Controller
reads CarMessages.v, TargetMessages.targetVelocity
writes ControllerMessages.gas, ControllerMessages.brake {
	@generated("blockdiagram")
	@thread
	public void calc() {
		if (CarMessages.v < TargetMessages.targetVelocity) {
			ControllerMessages.gas = 100.0; // Main/calc 1/if-then 1
			ControllerMessages.brake = 0.0; // Main/calc 1/if-then 2
		} // Main/calc 1
		if (CarMessages.v > TargetMessages.targetVelocity) {
			ControllerMessages.brake = 100.0; // Main/calc 2/if-then 1
			ControllerMessages.gas = 0.0; // Main/calc 2/if-then 2
		} // Main/calc 2
	}
}