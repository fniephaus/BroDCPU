special-operations
doRFI: a
	self registerBank
		set: 16r0 to: self pop;
		pc: self pop.
	self interruptQueue disableQueuing.
	self justProcessedInterrupt: true.
