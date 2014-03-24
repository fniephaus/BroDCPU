decode
testDecode1
	| values |
	"#ffff = 111111 11111 11111"
	values := self cpu decode: 16rffff.
	self
		assert: (values at: 3) = 2r111111;
		assert: (values at: 2) = 2r11111;
		assert: (values at: 1) = 2r11111.