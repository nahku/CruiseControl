package myWork;
import resources.StateHandlerMessages;
import resources.DriverMessages;
import resources.CarMessages;
import resources.TargetMessages;

static class Target
writes TargetMessages.targetVelocity
reads StateHandlerMessages.status, DriverMessages.increaseSpeed, DriverMessages.decreaseSpeed, CarMessages.v {
	real targetVelocity = 0.0;
	@generated("blockdiagram")
	public void computeTarget() {
		if(StateHandlerMessages.status == 1 || StateHandlerMessages.status == 2){
			if(DriverMessages.increaseSpeed && !DriverMessages.decreaseSpeed){
				if(targetVelocity == 0.0){
					targetVelocity = CarMessages.v;
				}
				else{
					targetVelocity += 1.0;
				}
			}
			else if (!DriverMessages.increaseSpeed && DriverMessages.decreaseSpeed){
				if(targetVelocity == 0.0){
					targetVelocity = CarMessages.v;
				}
				else{
					targetVelocity -= 1.0;
				}
			}
		}
		else if (StateHandlerMessages.status == 0){
			targetVelocity = 0.0;
		}
		TargetMessages.targetVelocity = targetVelocity;
		//return targetVelocity;
	}
}