tests
testMainLoop
	self registerBank
		set: 16r3 to: 16r9;
		set: 16r4 to: 16r8.
	"Register 3 nach Register 5"
	self ram set: 16r0 to: 2r0000110010100001.
	"Register 4 nach Register 7"
	self ram set: 16r1 to: 2r0001000011100001.
	"Addiere Register 5 und Register 7"
	self ram set: 16r2 to: 2r0001010011100010.
	self cpu mainLoop.
	"let cpu process run some time"
	(Delay forMilliseconds: 100) wait.
	self
		assert: (self registerBank get: 16r5) = 16r9;
		assert: (self registerBank get: 16r7) = 16r11.