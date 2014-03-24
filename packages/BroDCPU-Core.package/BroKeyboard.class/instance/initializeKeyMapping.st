initialize-release
initializeKeyMapping
	self keyMapping: Dictionary new.
	self keyMapping
		at: #'<backspace>' put: 16r10;
		at: #'<cr>' put: 16r11;
		at: #'<insert>' put: 16r12;
		at: #'<delete>' put: 16r13;
		at: #'<up>' put: 16r80;
		at: #'<down>' put: 16r81;
		at: #'<left>' put: 16r82;
		at: #'<right>' put: 16r83;
		at: #'<Shift-tab>' put: 16r90; "shift+tab for Shift"
		at: #'<Opt-tab>' put: 16r91. "opt-tab for Control"