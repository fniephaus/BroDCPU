initialize-release
initializeOperations
	self operations: Dictionary new.
	self operations
		at: #SET put: 16r01;
		at: #ADD put: 16r02;
		at: #SUB put: 16r03;
		at: #MUL put: 16r04;
		at: #MLI put: 16r05;
		at: #DIV put: 16r06;
		at: #DVI put: 16r07;
		at: #MOD put: 16r08;
		at: #MDI put: 16r09;
		at: #AND put: 16r0a;
		at: #BOR put: 16r0b;
		at: #XOR put: 16r0c;
		at: #SHR put: 16r0d;
		at: #ASR put: 16r0e;
		at: #SHL put: 16r0f;
		at: #IFB put: 16r10;
		at: #IFC put: 16r11;
		at: #IFE put: 16r12;
		at: #IFN put: 16r13;
		at: #IFG put: 16r14;
		at: #IFA put: 16r15;
		at: #IFL put: 16r16;
		at: #IFU put: 16r17;
		at: #ADX put: 16r1a;
		at: #SBX put: 16r1b;
		at: #STI put: 16r1e;
		at: #STD put: 16r1f.