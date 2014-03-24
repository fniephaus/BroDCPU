interrupts
handleInterrupt: anInterrupt
	(anInterrupt = 0 or: [ self registerBank ia isZero ]) ifFalse: [
		self interruptQueue enableQueuing.
		self
			push: self registerBank pc;
			push: (self registerBank get: 0).
		self registerBank
			pc: self registerBank ia;
			set: 0 to: anInterrupt.
		 ^ true ].
	^ false