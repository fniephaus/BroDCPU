tests
testDecodeVideoCell
	| videoCell |
	videoCell := self display decodeVideoCell: 2r0000111111010101.
	self
		assert: (videoCell at: BroDisplay characterIndex) = 2r1010101;
		assert: (videoCell at: BroDisplay blinkingIndex) = 1;
		assert: (videoCell at: BroDisplay backgroundIndex) = Color white;
		assert: (videoCell at: BroDisplay foregroundIndex) = Color black.