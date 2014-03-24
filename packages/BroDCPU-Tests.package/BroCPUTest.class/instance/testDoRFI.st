execute
testDoRFI
	"IAQ a"
	| binaryInstructions |
	self cpu interruptQueue enableQueuing.
	self assert: (self cpu interruptQueue isQueuingEnabled).
	binaryInstructions := BroParser parse: 'set a, 1
											RFI a '.
	self ram setBulk: 16r0 to: binaryInstructions .
	self cpu mainLoop.
	self assert: (self cpu interruptQueue isQueuingEnabled not).