tests
testSetPC
	| value |
	value := 16r1234dddd.
	self registerBank pc: value.
	self assert: self registerBank pc = (value bitAnd: 16rffff).