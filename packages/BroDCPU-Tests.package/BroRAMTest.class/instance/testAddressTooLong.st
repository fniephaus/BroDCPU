tests
testAddressTooLong
	| value address |
	"address too long"
	value := 16rffff.
	address := 16rfffff.
	self should: [ self ram set: address to: value ] raise: Error.