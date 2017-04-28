compiler
compiler
	"This is support for OpalCompiler in Pharo 3.x"
	^ super compiler
		options: #(- optionInlineTimesRepeat);
		yourself