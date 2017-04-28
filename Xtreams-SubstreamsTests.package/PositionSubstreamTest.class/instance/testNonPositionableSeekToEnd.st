tests
testNonPositionableSeekToEnd

	| source i |
	i := 0.
	source := [ i < 100 ifTrue: [ i := i + 1 ] ifFalse: [ Incomplete zero raise ] ] reading.
	(source closing: []) -= 0.
	self assert: i = 100