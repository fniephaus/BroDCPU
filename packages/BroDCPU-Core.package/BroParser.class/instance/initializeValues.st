initialize-release
initializeValues
	self values: Dictionary new.
	self values
		at: #A put: 16r0;
		at: #B put: 16r1;
		at: #C put: 16r2;
		at: #X put: 16r3;
		at: #Y put: 16r4;
		at: #Z put: 16r5;
		at: #I put: 16r6;
		at: #J put: 16r7;
		at: #POP put: 16r18;
		at: #PUSH put: 16r18;
		at: #PC put: 16r1c;
		at: #SP put: 16r1b;
		at: #EX put: 16r1d.