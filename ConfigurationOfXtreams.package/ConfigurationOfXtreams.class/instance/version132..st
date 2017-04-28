versions
version132: spec
	<version: '1.3.2' imports: #('1.3.2-baseline')>

	spec for: #common do: [
		spec blessing: #release.
		spec author: 'Sean DeNigris'.
		spec description: 'A stable release' ].
	
	spec for: #squeakCommon do: [
		spec project: 'FFI' with: '1.5'.
		spec project: 'XMLParser' with: '2.2.5'.
		spec
			package: 'Xtreams-Support' with: 'Xtreams-Support-nice.11';
			package: 'Xtreams-Core' with: 'Xtreams-Core-nice.20';
			package: 'Xtreams-Terminals' with: 'Xtreams-Terminals-nice.31';
			package: 'Xtreams-Transforms' with: 'Xtreams-Transforms-nice.23';
			package: 'Xtreams-Substreams' with: 'Xtreams-Substreams-nice.19';
			package: 'Xtreams-Parsing' with: 'Xtreams-Parsing-SeanDeNigris.8'.
		spec
			package: 'Xtreams-CoreTests' with: 'Xtreams-CoreTests-nice.20';
			package: 'Xtreams-TerminalsTests' with: 'Xtreams-TerminalsTests-nice.17';
			package: 'Xtreams-TransformsTests' with: 'Xtreams-TransformsTests-nice.14';
			package: 'Xtreams-SubstreamsTests' with: 'Xtreams-SubstreamsTests-nice.13';
			package: 'Xtreams-ParsingTests' with: 'Xtreams-ParsingTests-nice.1'.
		spec
			package: 'Xtreams-Xtras' with: 'Xtreams-Xtras-MartinKobetic.23';
			package: 'Xtreams-XtrasTests' with: 'Xtreams-XtrasTests-MartinKobetic.3' ].
	
	spec for: #'pharo4.x' do: [	
		"The following FileSystem spec works because, per Dale (http://forum.world.st/Xtreams-Pharo-4-0-Other-FileSystem-Images-tp4816537p4816756.html): The spec:for:do: blocks are evaluated in attribute order (ConfigurationOfX project attributes) with top-level blocks evaluated before nested blocks ... second level blocks are evaluated in top-level block order after the first level block evaluation ... so having #FileSystem nested inside of #pharo4.x and given that #FileSystem follows #pharo4.x in attribute order means that the nested #FileSystem block inside of #pharo4.x is evaluated after to top-level #FileSystem block allowing you to do #pharo4.x specific overrides"
		spec for: #'FileSystem' do: [
			spec
				package: 'Xtreams-TerminalsFileSystem' with: 'Xtreams-TerminalsFileSystem.pharo40-SeanDeNigris.4' ]. 
		spec
			package: 'Xtreams-Terminals' with: 'Xtreams-Terminals.pharo40-SeanDeNigris.32' ].
	
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