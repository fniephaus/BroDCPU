tests
testIndirectAddresses
	| instruction |
	instruction := (BroParser parse: 'mod [ b ], a') first.
	self assert: instruction == 2r0000000100101000.