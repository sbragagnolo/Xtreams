
# Xtreams
Xtream project fork of the Flexible and scalable streaming for Smalltalk, ported for Pharo >=6.0 . 


# Synopsis

Xtreams is a generalized stream/iterator framework providing simple, unified API for reading from different kinds of sources and writing into different kinds of destinations (Collections, Sockets, Files, Pipes, etc). Streams themselves can be sources or destinations as well. This allows to stack streams on top of each other. At the bottom of such stack is some kind of non-stream (e.g. a collection), we will call it a terminal. Directly above that is a specialized stream providing a streaming facade over the terminal. The rest of the streams in the stack we'll call transforms. Their primary purpose is to perform some kind of transformation on the elements that are passing through. Application code interacts with the top stream of the stack the same way it would with any other stream (or stream stack) producing/consuming the same elements. The goal of the framework is to provide consistent behavior between different stacks so that the application can treat them the same way regardless of what exactly is the ultimate source or destination. For example if the application code analyzes binary data, it should be able to treat the source stream the same way if it is a simple stream over a ByteArray or if it is a stack that provides contents of a specific binary part of a mulitpart, gziped, chunked HTTP response from a socket. Xtreams is an attempt to achieve this goal in a scalable and efficient manner.

Xtreams are currently maintained in Cincom Smalltalk Public Repository.

Primary development is done in VisualWorks but there are several ports in varying state of completeness available. There is a port to Squeak/Pharo underway (thanks to Nicolas Cellier) available on squeaksource.com. The same port with some tweaks (available in the same repository) was successfully imported into Gemstone/S (courtesy of Dale Henrichs). A port to Smalltalk/X is underway as well (thanks to Jan Vrany). See also https://github.com/mkobetic/Xtreams.

The project consists of several packages: | Package Xtreams- | Notes | |:---------------------|:----------| | Core | Defines the API and core classes | | Terminals | Streams for all supported terminals (Collections, Blocks, Files, Sockets, Pipes, etc) | | Transforms | Core transform streams (collection style, encodings, marshaling, etc) | | Substreams | Streams embedded in other streams, slicing and stitching streams | | Multiplexing | A substreaming protocol for sharing a paired read/write stream | | Crypto | Cryptographic transforms (hashing, encryption, etc) | | Compression | Compression streams (e.g. deflate) | | Xtras | Additional non-core transforms (e.g. streaming over external heap) | | Parsing | PEG parsing for Xtreams with a collection of parsers/generators (PEG, Smalltalk, Javascript, Wiki, etc) |

The packages are bundled together with associated Test packages in a bundle called Xtreams. This bundle also includes some example applications, e.g. IRC client. Other applications include Polycephaly2, a flexible SSH2 client/server, or the new SSL/TLS implementation for VisualWorks.

There is not (yet another) project specific forum for people to subscribe to. Unless the xtreams traffic picks up to the point that having a dedicated forum would be useful, let's make use of the existing smalltalk ones. c.l.s and vwnc are the ones where you're most likely to reach Martin or Michael.



# Installing Xtream

Download a Pharo 

```
Metacello new
  baseline: 'Xtreams';
  repository: 'github://sbragagnolo/Xtreams';
  load.
```











