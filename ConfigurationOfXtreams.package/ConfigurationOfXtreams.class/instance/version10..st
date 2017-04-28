versions
version10: spec
	<version: '1.0' imports: #('1.0-baseline')>

	spec for: #common do: [
		spec blessing: #developement.
		spec author: 'Levente Uzonyi'.
		spec description: 'A stable, but not release version' ].
	
	spec for: #squeakCommon do: [
		spec project: 'FFI' with: '1.4'.
		
		spec
			package: 'Xtreams-Support' with: 'Xtreams-Support-MartinKobetic.7';
			package: 'Xtreams-Core' with: 'Xtreams-Core-MartinKobetic.13';
			package: 'Xtreams-Terminals' with: 'Xtreams-Terminals-MartinKobetic.22';
			package: 'Xtreams-Transforms' with: 'Xtreams-Transforms-MartinKobetic.16';
			package: 'Xtreams-Substreams' with: 'Xtreams-Substreams-MartinKobetic.13';
			package: 'Xtreams-Parsing' with: 'Xtreams-Parsing-Martin Kobetic.2'.

		spec
			package: 'Xtreams-CoreTests' with: 'Xtreams-CoreTests-MartinKobetic.14';
			package: 'Xtreams-TerminalsTests' with: 'Xtreams-TerminalsTests-MartinKobetic.11';
			package: 'Xtreams-TransformsTests' with: 'Xtreams-TransformsTests-MartinKobetic.8';
			package: 'Xtreams-SubstreamsTests' with: 'Xtreams-SubstreamsTests-MartinKobetic.8';
			package: 'Xtreams-ParsingTests' with: 'Xtreams-ParsingTests-nice.1'.

		spec
			package: 'Xtreams-Xtras' with: 'Xtreams-Xtras-ul.21';
			package: 'Xtreams-XtrasTests' with: 'Xtreams-XtrasTests-MartinKobetic.3' ]