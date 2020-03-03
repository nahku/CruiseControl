package myWork;
@generated("statemachine")
type StateHandlerStatemachineStates is enum {
	on,
	off,
	passive
};

class StateHandler {
	@get
	private integer status;
	@set
	private boolean onButtonPressed;
	@set
	private boolean offButtonPressed;
	@set
	private real powerDriver;
	@set
	private real brakeDriver;

	@generated("statemachine")
	public void stateHandlerStatemachineTrigger() triggers StateHandlerStatemachine;

	@generatedStateMachine
	statemachine StateHandlerStatemachine using StateHandlerStatemachineStates {
		start off;

		state on {
			entry {
				status = 1;
			}
			transition powerDriver > 0.0 to passive;
			transition brakeDriver > 0.0 to off;
			transition offButtonPressed == true to off;
		}

		state off {
			entry {
				status = 0;
			}
			static {
				status = 0;
			}
			transition onButtonPressed == true to on;
		}

		state passive {
			entry {
				status = 2;
			}
			transition offButtonPressed == true to off;
			transition powerDriver == 0.0 to on;
		}
	}
}