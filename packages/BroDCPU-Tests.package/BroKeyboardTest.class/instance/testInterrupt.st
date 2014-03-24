tests
testInterrupt
	| keyboardEvent |
	keyboardEvent := KeyboardEvent new
		setType: #keystroke
		buttons: 0
		position: 26 @ 43
		keyValue: 16r32
		hand: nil
		stamp: TimeStamp new.
	self keyboard keyStroke: keyboardEvent.
	self cpu registerBank
		set: 16r0 to: 16r2;
		set: 16r1 to: 16r32.
	self keyboard handleInterrupt: self cpu registerBank.
	"characters match, so c should show 1"
	self assert: (self cpu registerBank get: 2) = 1.