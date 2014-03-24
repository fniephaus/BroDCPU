conditional-instructions
testDoIFUPositive
	"instruction should be executed"
	self registerBank
		set: 16r3 to: 2r10;
		set: 16r4 to: 16r8;
		set: 16r5 to: 2r1111111111111001; "-7"
		set: 16r7 to: 16r7.
	"ifu. performs next instruction only if Register 5 < Register 3"
	self ram setBulk: 16r0 to: (BroParser parse: 'ifu Z, X').
	"register 4 to register 7"
	self ram set: 16r1 to: 2r0001000011100001.
	self cpu mainLoop.
	self
		assert: (self cpu unsign16Bit: (self registerBank get: 16r5)) = -7;
		assert: (self registerBank get: 16r7) = 16r8.