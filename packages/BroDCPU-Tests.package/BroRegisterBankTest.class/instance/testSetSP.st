tests
testSetSP
	| value |
	value := 16rabcdef12.
	self registerBank sp: value.
	self assert: self registerBank sp = (value bitAnd: 16rffff).