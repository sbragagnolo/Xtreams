instance creation
for: anEncoding

	anEncoding == #utf8 ifFalse:  [ self error: 'Unknown encoding!' ].
	^self new