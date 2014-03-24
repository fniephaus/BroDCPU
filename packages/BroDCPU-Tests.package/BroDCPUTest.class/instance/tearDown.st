running
tearDown
	self cpu hardware do: [ :device | device delete ].
	self dcpu dismissMorph.