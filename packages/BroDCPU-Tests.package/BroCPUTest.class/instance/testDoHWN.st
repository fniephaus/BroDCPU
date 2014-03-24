execute
testDoHWN
	"HWN i"
	| instructions |
	instructions := BroParser parse: 'hwn i'.
	self registerBank set: 16r6 to: 16rff.
	self cpu execute: (self cpu decode: instructions first).
	self assert: (self registerBank get: 16r6) = self cpu hardware size.