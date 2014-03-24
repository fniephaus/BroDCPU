running
setUp
	super setUp.
	self
		cpu: BroCPU new;
		keyboard: (BroKeyboard new: self cpu).