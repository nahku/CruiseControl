application {
	class myCar.myCar
	class myWork.myACC
	class myWork.myDriver
	class myWork.StateHandlerBD
	class myWork.Target
	class myWork.PassThrough
	class myWork.Controller
}
schedule {
	startup {
	}
	shutdown {
	}
	task Task0 priority 0 period 10ms delay 0ms {
		process myCar.myCar.calc
		process myWork.myACC.control
		process myWork.myDriver.drive
		process myWork.myDriver.increaseTarget
		process myWork.StateHandlerBD.calc
		process myWork.Target.computeTarget
		process myWork.Controller.calc
		process myWork.PassThrough.calc
	}
}