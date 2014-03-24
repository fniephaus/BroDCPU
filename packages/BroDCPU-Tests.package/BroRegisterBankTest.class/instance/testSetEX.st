tests
testSetEX
	| value |
	value:= 16rff.
	self registerBank ex: value.
	self assert: self registerBank ex = value.