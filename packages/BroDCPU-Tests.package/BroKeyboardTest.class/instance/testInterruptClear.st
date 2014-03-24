tests
testInterruptClear
	| keyboardEvent |
	keyboardEvent := KeyboardEvent new
		setType: #keystroke
		buttons: 0
		position: 26 @ 43
		keyValue: 16r32
		hand: nil
		stamp: TimeStamp new.
	self keyboard keyStroke: keyboardEvent.
	self cpu registerBank set: 16r0 to: 16r0.
	self keyboard handleInterrupt: self cpu registerBank.
	"interrupt should clear characterBuffer"
	self assert: self keyboard characterBuffer = 0.