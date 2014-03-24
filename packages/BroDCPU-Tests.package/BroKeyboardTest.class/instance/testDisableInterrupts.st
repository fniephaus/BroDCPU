tests
testDisableInterrupts
	| keyboardEvent |
	keyboardEvent := KeyboardEvent new
		setType: #keystroke
		buttons: 0
		position: 26 @ 43
		keyValue: 16r32
		hand: nil
		stamp: TimeStamp new.
	self cpu interruptQueue clear.
	"disable interrupts"
	self cpu registerBank
		set: 16r0 to: 16r3;
		set: 16r1 to: 16r0.
	self keyboard handleInterrupt: self cpu registerBank;
		 keyStroke: keyboardEvent.
	self assert: self cpu interruptQueue size isZero.