*Xtreams-TerminalsFileSystem-converting
appending
	| aStream |
	(aStream := self writing)
		position: aStream length;
		isPositionable: false;
		yourself