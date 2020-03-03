package myWork;
import resources.StateHandlerMessages;
import resources.DriverMessages;
import resources.CarMessages;
import resources.TargetMessages;

static class Target
writes TargetMessages.targetVelocity
reads StateHandlerMessages.status, DriverMessages.increaseSpeed, DriverMessages.decreaseSpeed, CarMessages.v {
	TargetClass targetInstance;
	@generated("blockdiagram")
	@thread
	public void computeTarget() {
		TargetMessages.targetVelocity = targetInstance.computeTarget(StateHandlerMessages.status, DriverMessages.increaseSpeed, DriverMessages.decreaseSpeed, CarMessages.v);
	}
}