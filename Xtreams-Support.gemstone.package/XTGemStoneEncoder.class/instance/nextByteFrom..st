private
nextByteFrom: aStream 

	| byte |
	byte := aStream get.
	byte isNil ifTrue: [ self badlyFormedUTF8Stream ].
	^byte asInteger
