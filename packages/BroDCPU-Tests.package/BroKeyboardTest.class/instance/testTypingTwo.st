tests
testTypingTwo
	"generate some keyboard event, typing 2"
	| keyboardEvent |
	keyboardEvent := KeyboardEvent new
		setType: #keystroke
		buttons: 0
		position: 26 @ 43
		keyValue: 16r32
		hand: nil
		stamp: TimeStamp new.
	self keyboard keyStroke: keyboardEvent.
	self assert: self keyboard characterBuffer = 16r32.