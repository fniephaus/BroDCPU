drawing
isBlinking: aVideoCell
	| shouldBlink |
	shouldBlink := (aVideoCell at: self class blinkingIndex) = 1.
	^ shouldBlink and: [ self isInvisibleCycle ]