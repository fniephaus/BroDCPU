execute
testDoHWQ
	"HWQ a"
	| instruction hardwareId vendor |
	self registerBank set: 16r2 to: 16r0.
	instruction := self cpu decode: 2r0000101000100000.
	self cpu execute: instruction.
	hardwareId := self registerBank get: 16r0.
	hardwareId := hardwareId + ((self registerBank get: 16r1) * 16rffff).
	"check for LEM1802 display"
	hardwareId = 16r7349f615 ifTrue: [
		self assert: (self registerBank get: 16r2) = 16r1802.
		vendor := self registerBank get: 16r3.
		vendor := vendor + ((self registerBank get: 16r4) * 16rffff).
		self assert: vendor = 16r1c6c8b36 ].