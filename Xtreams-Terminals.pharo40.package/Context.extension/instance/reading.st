*Xtreams-Terminals-converting
reading
	| context |
	(context := self class new) swapSender: self.
	^[	context := context sender.
		context == nil ifTrue: [Incomplete raise].
		context
	] reading