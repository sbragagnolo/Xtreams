seeking
-= anInteger

	anInteger isZero ifFalse: [^super -= anInteger].
	[outputBuffer hasDataToRead or: [substreamAtEnd not]] whileTrue:
		[outputBuffer hasDataToRead ifFalse: [self gobble].
		outputBuffer readSkip: outputBuffer readSize].
	^0