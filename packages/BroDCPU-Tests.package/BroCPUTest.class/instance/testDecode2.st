decode
testDecode2
	| values |
	"#0000 = 000000 00000 00000"
	values := self cpu decode: 16r0000.
	self
		assert: (values at: 3) = 0;
		assert: (values at: 2) = 0;
		assert: (values at: 1) = 0.