initialize-release
setupClock 
	self cpu addDevice: (BroClock new: self cpu interruptQueue).