private
streamingWriteInto: aWriteStream
	| amount count |
	count := 0.
	[outputBuffer hasDataToRead or: [substreamAtEnd not]] whileTrue:
		[outputBuffer hasDataToRead ifFalse: [self gobble].
		amount := outputBuffer readSize.
		aWriteStream write: amount from: outputBuffer.
		count := count + amount].
	^count