BroCPU implements the logic of the DCPU including the main loop (fetch, decode, execute) all operational codes, word lookups etc.

Instance Variables:
	ram	: <BroRAM>
	registerBank	<BroRegisterBank>
	operations	<Array>
	specialOperations	<Array>
	hardware	<OrderedCollection of: BroDevice>
	skipsNextInstruction	<Boolean>
	interruptQueue	<BroInterruptQueue>
	mainloopProcess	<Process>
	justProcessedInterrupt	<Boolean>