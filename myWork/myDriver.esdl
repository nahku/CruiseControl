package myWork;
import resources.DriverMessages;
import resources.CarMessages;
import resources.TimeTick;

static class myDriver
writes DriverMessages.powerDriver, DriverMessages.brakeDriver
reads CarMessages.v {
	characteristic real p = 0.0;
	characteristic real c = 0.0;
	StopWatch StopWatch_instance;
	real time;

	@generated("blockdiagram")
	@thread
	public void drive() {
		DriverMessages.powerDriver = p; // Main/drive 1
		DriverMessages.brakeDriver = 0.0; // Main/drive 2
		StopWatch_instance.calc(TimeTick.dTs); // Main/drive 3
		time = StopWatch_instance.time; // Main/drive 4
	}
}