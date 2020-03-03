package myCar;
import resources.PassThroughMessages;
import resources.CarMessages;

static class myCar writes CarMessages.v
reads PassThroughMessages.gas, PassThroughMessages.brake {
	myDrive_2 myVehicle;

	@generated("blockdiagram")
	@thread
	public void calc() {
		CarMessages.v = myVehicle.vCar(PassThroughMessages.gas, PassThroughMessages.brake); // Main/calc 1
	}
}