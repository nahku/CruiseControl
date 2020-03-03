package myWork;
import resources.DriverMessages;
import resources.CarMessages;
import resources.TargetMessages;
import resources.TimeTick;

static class myDriver
reads TargetMessages.targetVelocity, CarMessages.v
writes DriverMessages.powerDriver, DriverMessages.brakeDriver, DriverMessages.increaseSpeed, DriverMessages.decreaseSpeed, DriverMessages.onButtonPressed {
	characteristic real p = 0.0;
	characteristic real c = 0.0;
	boolean flag = true;
	integer increaseCounter = 2;
	StopWatch StopWatch_instance;
	real time;

	@generated("blockdiagram")
	@thread
	public void drive() {
		//DriverMessages.powerDriver = p; // Main/drive 1
		//DriverMessages.brakeDriver = 0.0; // Main/drive 2
		StopWatch_instance.calc(TimeTick.dTs); // Main/drive 3
		time = StopWatch_instance.time; // Main/drive 4
	}
	
	@thread
	public void increaseTarget() {
		//DriverMessages.powerDriver = 50.0;
		if(flag){
			DriverMessages.onButtonPressed = true;
			flag = false;
		}else{
			DriverMessages.onButtonPressed = false;
		}
		
		if(time<5.0){
			DriverMessages.powerDriver = 50.0;
		}
		
		else if(time<10.0 && time>5.0){
			DriverMessages.powerDriver = 0.0;
			
			if(increaseCounter > 1){
				DriverMessages.increaseSpeed = true;
				increaseCounter -= 1;
			} else if(increaseCounter == 1){
				DriverMessages.increaseSpeed = false;
			}
			
		}
		else if(time<15.0 && time>10.0){
			if(increaseCounter > 0){
				DriverMessages.increaseSpeed = true;
				increaseCounter -= 1;
			}else if(increaseCounter == 0){
				DriverMessages.increaseSpeed = false;
			}
		}
		else
		{
			DriverMessages.increaseSpeed = false;
			DriverMessages.brakeDriver = 10.0;
		}
		
		//DriverMessages.increaseSpeed = true;
		//wait0,01s
		//DriverMessages.increaseSpeed = false;
		//wait0,01s
		//DriverMessages.increaseSpeed = true;
		//wait0,01s
		//DriverMessages.increaseSpeed = false;
		
		
	}
}