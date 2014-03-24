execute
testDoIAQ
	"IAQ a"
	| binaryInstructions |
	self assert: (self cpu interruptQueue isQueuingEnabled not).
	binaryInstructions := BroParser parse: 'set a, 1
											IAQ a '.
	self ram setBulk: 16r0 to: binaryInstructions.
	self cpu mainLoop.
	self assert: (self cpu interruptQueue isQueuingEnabled).