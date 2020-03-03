package myWork;
@generated("statemachine")
type StateHandlerStatemachineStates is enum {
	StateA
};

class StateHandler {
	@generated("statemachine")
	public void stateHandlerStatemachineTrigger() triggers StateHandlerStatemachine;

	@generatedStateMachine
	statemachine StateHandlerStatemachine using StateHandlerStatemachineStates {
		start StateA;

		state StateA {
		}
	}
}