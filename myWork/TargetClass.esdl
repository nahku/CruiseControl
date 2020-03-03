package myWork;
class TargetClass{
	real targetVelocity = 0.0;
	
	public real computeTarget(integer in status, boolean in increaseSpeed, boolean in decreaseSpeed, real in v) {
			if(status == 1 || status == 2){
				if(increaseSpeed && !decreaseSpeed){
					if(targetVelocity == 0.0){
						targetVelocity = v;
					}
					else{
						targetVelocity += 1.0;
					}
				}
				else if (!increaseSpeed && decreaseSpeed){
					if(targetVelocity == 0.0){
						targetVelocity = v;
					}
					else{
						targetVelocity -= 1.0;
					}
				}
			}
			else if (status == 0){
				targetVelocity = 0.0;
			}
			return targetVelocity;
			}
	}
}