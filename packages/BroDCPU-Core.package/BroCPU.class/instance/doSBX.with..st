operations
doSBX: b with: a
	"sets b to b-a+EX, sets EX to 0xFFFF if there is an underflow, 0x0001 if there's an overflow, 0x0 otherwise"
	| sum |
	sum := -1 * (self getWordFrom: a) + (self getWordFrom: b) + self registerBank ex.
	self setWordAt: b to: sum.
	sum > BroDCPU bitMask
		ifTrue: [
			self registerBank ex: 16r0001 ]
		ifFalse: [
			sum < 16r0
				ifTrue: [ self registerBank ex: 16rFFFF ]
				ifFalse: [ self registerBank ex: 16r0 ]].