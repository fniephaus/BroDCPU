decode
testDecode3
	| values |
	"#abcd = 101010 11110 01101"
	values := self cpu decode: 16rabcd.
	self
		assert: (values at: 3) = 2r101010;
		assert: (values at: 2) = 2r11110;
		assert: (values at: 1) = 2r01101.