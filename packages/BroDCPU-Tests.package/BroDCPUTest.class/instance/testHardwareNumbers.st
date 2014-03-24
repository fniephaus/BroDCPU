tests
testHardwareNumbers
	self cpu execute: (self cpu decode: (BroParser parse: 'hwn i') first).
	self assert: (self cpu registerBank get: 16r6) = self cpu hardware size.