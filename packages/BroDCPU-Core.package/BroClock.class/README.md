BroClock implements the specification of the "Generic Clock". Can throw interrupts depending on chosen frequency.

Instance Variables:
	isClockRunning	<Boolean>
	interruptQueue	<BroInterruptQueue>
	internalClock	<Integer>
	areInterruptsEnabled	<Boolean>
	interruptMessage	<Integer>
	clockProcess	<Process>