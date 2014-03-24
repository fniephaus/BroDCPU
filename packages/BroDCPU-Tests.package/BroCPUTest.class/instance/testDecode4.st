decode
testDecode4
	| values |
	"#fc15 = 111111 00000 10101"
	values := self cpu decode: 16rfc15.
	self 
		assert: (values at: 3) = 2r111111;
		assert: (values at: 2) = 0;
		assert: (values at: 1) = 2r10101.