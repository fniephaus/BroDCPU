tests
testTypingUpArrow
	"generate some keyboard event, typing up-arrow (16r1E)--> should
	give back 16r80"
	| keyboardEvent |
	keyboardEvent := KeyboardEvent new
		setType: #keystroke
		buttons: 0
		position: 26 @ 43
		keyValue: 16r1e
		hand: nil
		stamp: TimeStamp new.
	self keyboard keyStroke: keyboardEvent.
	self assert: self keyboard characterBuffer = 16r80.