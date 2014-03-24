tests
testDATs
	| code binaryInstructions |
	code := 'set [ 1337 ], 0x1333 '.
	binaryInstructions := BroParser parse: code.
	code := 'dat 1337'.
	binaryInstructions := BroParser parse: code.
	self assert: binaryInstructions = #(1337) asOrderedCollection.
	code := 'dat 1337, 1338'.
	binaryInstructions := BroParser parse: code.
	self assert: binaryInstructions = #(1337 1338) asOrderedCollection.
	code := 'dat 1337, 1338, 1339'.
	binaryInstructions := BroParser parse: code.
	self assert: binaryInstructions = #(1337 1338 1339) asOrderedCollection.