initialize-release
initialize
	self
		ram: BroRAM new;
		registerBank: BroRegisterBank new;
		interruptQueue: BroInterruptQueue new;
		hardware: OrderedCollection new;
		initializeOperations;
		initializeSpecialOperations;
		justProcessedInterrupt: false;
		skipsNextInstruction: false.