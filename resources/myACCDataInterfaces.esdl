package resources;


data interface DriverMessages {
	real powerDriver = 0.0;
	real brakeDriver = 0.0;
	boolean onButtonPressed = false;
	boolean offButtonPressed = false;
	boolean increaseSpeed = false;
	boolean decreaseSpeed = false;
}

data interface StateHandlerMessages {
	integer status = 0; //0-off 1-on 2-passive
}

data interface TargetMessages {
	real targetVelocity = 0.0;
}

data interface PassThroughMessages {
	integer targetVelocity = 0;
	real gas = 0.0;
	real brake = 0.0;
}

data interface ControllerMessages {
	real gas = 0.0;
	real brake = 0.0;
}
