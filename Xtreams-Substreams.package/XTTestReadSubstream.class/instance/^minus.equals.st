seeking
-= anInteger

	| object |
	anInteger isZero ifFalse: [^super -= anInteger].
	substreamAtEnd ifTrue: [^self].
	[[substreamAtEnd] whileFalse:
		[object := source get.
		substreamAtEnd := test value: object]]
			on: Incomplete do: [sourceAtEnd := substreamAtEnd := true].
	^0