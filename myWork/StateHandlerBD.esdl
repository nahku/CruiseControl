package myWork;
import resources.DriverMessages;
import resources.StateHandlerMessages;

static class StateHandlerBD
reads DriverMessages.onButtonPressed, DriverMessages.offButtonPressed, DriverMessages.powerDriver, DriverMessages.brakeDriver
writes StateHandlerMessages.status {
	StateHandler StateHandler_instance;
	StateHandler StateHandler_instance_2;

	@generated("blockdiagram")
	@thread
	public void calc() {
		StateHandler_instance_2.stateHandlerStatemachineTrigger(); // Main/calc 1
		StateHandler_instance_2.onButtonPressed = DriverMessages.onButtonPressed; // Main/calc 2
		StateHandler_instance_2.offButtonPressed = DriverMessages.offButtonPressed; // Main/calc 3
		StateHandler_instance_2.powerDriver = DriverMessages.powerDriver; // Main/calc 4
		StateHandler_instance_2.brakeDriver = DriverMessages.brakeDriver; // Main/calc 5
		StateHandlerMessages.status = StateHandler_instance_2.status; // Main/calc 6
	}
}