legacy API
nextDelimited: terminator
	| out |
	out := self contentsSpecies new writing.
	[out write: (source ending: [:element | element = terminator] inclusive: false).
	self peekFor: terminator]
		whileTrue: [out put: terminator].
	^out conclusion