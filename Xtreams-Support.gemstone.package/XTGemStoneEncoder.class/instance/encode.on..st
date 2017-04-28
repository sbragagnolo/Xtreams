accessing
encode: aCharacter on: aWriteStream

	^aWriteStream write: (String with: aCharacter) encodeAsUTF8 asByteArray.