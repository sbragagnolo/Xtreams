system shutdown
shutDown: quitting 
	"Clean up and unregister all active instances. Do not close the system changes file,
	since this may still be written after calling this method."

	quitting
		ifTrue: [ | changesFile |
				changesFile := FileLocator changes resolve.
				self registry asArray do: [:e |
					self error: 'Ensure that this makes sense please!'.
					changesFile isNil
						ifTrue: [e finalize; unregister]
						ifFalse: [(changesFile ioHandle ~= e) ifTrue: [e finalize; unregister]]]]
