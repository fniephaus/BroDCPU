tests
testGetFromRegistersOffsettedAddress
	"[ register + next word]"
	self registerBank set: 16r3 to: 16r9.
	"set register 7 to [ register 3 + next word]"
	self ram set: 16r0 to: 2r0100110011100001.
	"set next word to 1"
	self ram set: 16r1 to: 2r0000000000000001.
	"16r9 + 2r1 = 16ra"
	self ram set: 16ra to: 2r0000000000100000.
	self cpu mainLoop.
	self assert: (self registerBank get: 16r7) = 2r100000.