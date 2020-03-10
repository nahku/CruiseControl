package myCar;
import resources.PassThroughMessages;
import resources.CarMessages;

static class myCar
writes CarMessages.v, CarMessages.acceleration
reads PassThroughMessages.gas, PassThroughMessages.brake {
	myDrive_2 myVehicle;

	@generated("blockdiagram")
	@thread
	public void calc() {
		real v = myVehicle.vCar(PassThroughMessages.gas, PassThroughMessages.brake); // Main/calc 1
		if (v == 0.0){
			CarMessages.acceleration = 0.0;
		}
		else{
			CarMessages.acceleration = myVehicle.accel; // Main/calc 2
		}
		CarMessages.v = v;
	}
}