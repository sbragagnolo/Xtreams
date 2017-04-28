versions
version13: spec
	<version: '1.3' imports: #('1.3-baseline')>

	spec for: #common do: [
		spec blessing: #release.
		spec author: 'Nicolas Cellier'.
		spec description: 'A stable release' ].
	
	spec for: #squeakCommon do: [
		spec project: 'FFI' with: '1.5'.
		spec
			package: 'Xtreams-Support' with: 'Xtreams-Support-nice.11';
			package: 'Xtreams-Core' with: 'Xtreams-Core-nice.20';
			package: 'Xtreams-Terminals' with: 'Xtreams-Terminals-nice.31';
			package: 'Xtreams-Transforms' with: 'Xtreams-Transforms-nice.23';
			package: 'Xtreams-Substreams' with: 'Xtreams-Substreams-nice.19';
			package: 'Xtreams-Parsing' with: 'Xtreams-Parsing-Martin Kobetic.2'.
		spec
			package: 'Xtreams-CoreTests' with: 'Xtreams-CoreTests-nice.20';
			package: 'Xtreams-TerminalsTests' with: 'Xtreams-TerminalsTests-nice.17';
			package: 'Xtreams-TransformsTests' with: 'Xtreams-TransformsTests-nice.14';
			package: 'Xtreams-SubstreamsTests' with: 'Xtreams-SubstreamsTests-nice.13';
			package: 'Xtreams-ParsingTests' with: 'Xtreams-ParsingTests-nice.1'.
		spec
			package: 'Xtreams-Xtras' with: 'Xtreams-Xtras-MartinKobetic.23';
			package: 'Xtreams-XtrasTests' with: 'Xtreams-XtrasTests-MartinKobetic.3' ].
		
	spec for: #FileDirectory do: [
		spec
			package: 'Xtreams-TerminalsFileDirectory' with: 'Xtreams-TerminalsFileDirectory-nice.2'.
		spec
			package: 'Xtreams-TerminalsFileDirectoryTests' with: 'Xtreams-TerminalsFileDirectoryTests-nice.1' ].
		
	spec for: #FileSystem do: [
		spec
			package: 'Xtreams-TerminalsFileSystem' with: 'Xtreams-TerminalsFileSystem-nice.1'.
		spec
			package: 'Xtreams-TerminalsFileSystemTests' with: 'Xtreams-TerminalsFileSystemTests-nice.1' ]