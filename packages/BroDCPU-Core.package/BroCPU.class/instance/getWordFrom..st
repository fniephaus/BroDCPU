word-lookup
getWordFrom: aLocationCode
	"this is to prevent side effects when an word lookup is only made to increase PC correctly (e.g. popping)"
	^ self getWordFrom: aLocationCode preserveSP: false