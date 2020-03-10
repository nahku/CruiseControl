package myWork;
import resources.CarMessages;
import resources.TargetMessages;
import resources.ControllerMessages;

static class Controller
reads CarMessages.v, TargetMessages.targetVelocity, CarMessages.acceleration
writes ControllerMessages.gas, ControllerMessages.brake {
	@generated("blockdiagram")
	@thread
	public void calc() {
		if (CarMessages.v < TargetMessages.targetVelocity) {
			ControllerMessages.brake = 0.0; // Main/calc 1/if-then 1
			ControllerMessages.gas = max((((4.0 - min(4.0, abs(CarMessages.acceleration))) * 50.0) * (1.1 - (min(CarMessages.v, TargetMessages.targetVelocity) / max(CarMessages.v, TargetMessages.targetVelocity)))), 0.0); // Main/calc 1/if-then 2
		} // Main/calc 1
		if (CarMessages.v > TargetMessages.targetVelocity) {
			ControllerMessages.brake = max((((4.0 - min(4.0, abs(CarMessages.acceleration))) * 50.0) * (1.1 - (min(CarMessages.v, TargetMessages.targetVelocity) / max(CarMessages.v, TargetMessages.targetVelocity)))), 0.0); // Main/calc 2/if-then 1
			ControllerMessages.gas = 0.0; // Main/calc 2/if-then 2
		} // Main/calc 2
	}
}