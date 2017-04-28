initialize-release
close
	inputBuffer == nil ifTrue: [^self].
	super close.
	inputBuffer := nil.
	outputBuffer := nil