tests
testSetIA
	| value |
	value:= 16rfaf.
	self registerBank ia: value.
	self assert: self registerBank ia = value.