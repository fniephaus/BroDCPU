initialize-release
initialize
	self
		generalPurposeRegisters: (IntegerArray new: self class registerAmount);
		sp: 16r0;
		pc: 16r0;
		ex: 16r0;
		ia: 16r0.