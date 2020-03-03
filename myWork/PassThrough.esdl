package myWork;
import resources.DriverMessages;
import resources.StateHandlerMessages;
import resources.ControllerMessages;
import resources.PassThroughMessages;

static class PassThrough
	reads resources.DriverMessages.powerDriver, 
		  resources.DriverMessages.brakeDriver, 
		  resources.StateHandlerMessages.status,
		  resources.ControllerMessages.gas,
		  resources.ControllerMessages.brake
	writes PassThroughMessages.gas, PassThroughMessages.brake {
		PassThroughClass psinstance;
		@generated("blockdiagram")
		@thread
		public void calc() {
			psinstance.calculateControl(StateHandlerMessages.status, 
										resources.DriverMessages.powerDriver, 
		  								resources.DriverMessages.brakeDriver, 
										resources.ControllerMessages.gas,
		  								resources.ControllerMessages.brake);
		  	PassThroughMessages.gas = psinstance.getGas();
		  	PassThroughMessages.brake = psinstance.getBrake();
		}
}