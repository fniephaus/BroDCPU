tests
testIncrementDecrement
	self assert: (self registerBank get: 16r0) = 16r0.
	"increment 10 times"
	1 to: 10 do: [ :value | self registerBank increment: 16r0.
			self assert: (self registerBank get: 16r0) = value ].
	"decrement 10 times"
	1 to: 10 do: [ :value | self registerBank decrement: 16r0.
			self assert: (self registerBank get: 16r0) = (10 - value) ].
	self assert: (self registerBank get: 16r0) = 0.