tests
testAdditiveAddresses
	"test [ register + next word]"
	| code binaryInstructions referenceBinaryInstructions |
	code := '
		set a, 7
		set [ 0x8 ], 1337
		set a, [ a+1 ]'.
	binaryInstructions := BroParser parse: code.
	referenceBinaryInstructions := OrderedCollection with: 40961 with: 32705 with: 1337 with: 8 with: 16385 with: 1.
	self assert: binaryInstructions = referenceBinaryInstructions.