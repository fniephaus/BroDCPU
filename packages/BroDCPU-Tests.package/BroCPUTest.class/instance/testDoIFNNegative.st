conditional-instructions
testDoIFNNegative
	"instruction should not be executed"
	self registerBank
		set: 16r3 to: 16r6;
		set: 16r4 to: 16r8;
		set: 16r5 to: 16r6;
		set: 16r7 to: 16r7.
	"ifn. performs next instruction only if Register 3 != Register 5"
	self ram setBulk: 16r0 to: (BroParser parse: 'ifn Z, X').
	"register 4 to register 7"
	self ram set: 16r1 to: 2r0001000011100001.
	self cpu mainLoop.
	self
		assert: (self registerBank get: 16r5) = 16r6;
		assert: (self registerBank get: 16r7) = 16r7.