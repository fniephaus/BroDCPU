running
setUp
	super setUp.
	self
		registerBank: BroRegisterBank new;
		interruptQueue: BroInterruptQueue new;
		clock: (BroClock new: self interruptQueue).