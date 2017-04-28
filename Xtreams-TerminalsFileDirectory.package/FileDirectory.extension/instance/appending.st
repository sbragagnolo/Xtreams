*Xtreams-TerminalsFileDirectory-converting
appending
	| handle |
	handle := XTIOHandle forFiles open: pathName asSqueakPathName forWrite: true.
	^handle writing
		position: handle fileSize;
		isPositionable: false;
		yourself