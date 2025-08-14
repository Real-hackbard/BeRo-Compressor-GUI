# BeRo-Compressor-GUI:


```ruby
Compiler    : Delphi10 Seattle, 10.1 Berlin, 10.2 Tokyo, 10.3 Rio, 10.4 Sydney, 11 Alexandria, 12 Athens
Components  : None
Discription : Compressor for Executables
Last Update : 08/2025
License     : Freeware
```

BeRoEXEPacker, or short BEP, is a executable packer for 32-bit windows executables with these features:

* It can compress win32 EXEs and DLLs
* It offers LZBRS, LZBRR, LZBRA, LZMA, LZBRCM and CTX1 compression. The compression method is selectable per command line parameter (default is LZMA)
  * LZBRS is a simple LZSS+RLE hybrid based algorithm
  * LZBRR is a simple LZSS+RLE hybrid based algorithm, just with better enhanded encoding
  * LZBRA is a simple LZSS+RLE hybrid based algorithm, just with a arithmetic coder
  * LZMA is LZMA :)
  * LZBRCM is a context modelling based algorithm together with LZP (as speedup)
  * CTX1 is the slight modified bugfixed algorithm from kkrunchy
* It can strip unused data (debug stuff, relocations, resources, TLS)
* It has support for TLS including TLS callbacks through a TLS proxy in the stub
* It has support for resources
* It has optional opt-in support for import-by-hash and import-by-ordinal
* It has optional opt-in support for a smaller special PE EXE header only with two directory table entries, export and import, where the null bytes will replaced/filled with useful compressed data from the end of the file, so that the file will be smaller then.
* It has two filters: a simple relative-to-absolute jmp/call address filter and a better x86-disassembler/reassembler-based filter. (default is the x86-disasm/reasm based)
* It's originally developed for the usage in the demoscene, but it's also usable for general purpose now, since it offers a very wide range of options and work modes.



![BeRo Compressor GUI](https://github.com/user-attachments/assets/0e46b851-0766-4037-a383-0b21fc74e0fc)



Download latest Version : [32-bit x86 windows binary (ZIP-password: beroexepacker)](https://www.rosseaux.net/downloads/bep.zip)


### Usage tips

* For 64ks without TLS, relocations, resources etc.: bep input.exe output.exe +ca=ctx1 +x +sphe -fuls or better with the new +64k option parameter: bep input.exe output.exe +64k
* For 64ks with TLS and/or relocations and/or resources etc.: bep input.exe output.exe +ca=ctx1 +x -fuls (for more finetuning options, see "bep" without any parameter)
* For simple 4ks without TLS, relocations, resources etc.: bep input.exe output.exe +ca=lzbrs (or lzbrr or lzbra) -x +sphe -fuls (+ibh optional)
* For quick&dirty usage and for all other cases, just: bep input.exe output.exe


### Parameters:

```
BeRoEXEPacker - Version 1.00.2017.01.27 - (C) 2006-2017, Benjamin 'BeRo' Rosseaux
  Usage: d:\BeRoProjects\BeRoEXEPacker\bep.exe inputfile [outputfile] [options]
Options:   +B    = Bruteforce search for best compression    (SLOW!)
           +CA=x = Compression algorithm
                    LZBRS = Simple LZSS-based algorithm
                    LZBRR = LZSS-based algorithm with ext. codes (def. <=32k)
                    LZBRA = LZSS-based algorithm with arithmetic coder
                    LZMAF = LZMA level fast
                    LZMAN = LZMA level normal
                    LZMAM = LZMA level max
                    LZMAU = LZMA level ultra                 (default >32k)
                    LZBRCMx = LZP together with context modelling
                              x = Level 0..9 with (1<<(22+n))*0.75 mem usage
                    CTX1  = The slight modified & bugfixed kkrunchy algorithm
         -/+CR=x = Compress resource integer type            (default all +)
         -/+CRS  = Compress all resources                    (DANGEROUS!)
         -/+F    = Force                                     (default -)
         -/+FULS = Full up last section with zero-bytes      (default +)
         -/+IBH  = Convert import table to import by hash
         -/+IBO  = Convert import table to import by ordinal
         -/+SD   = Strip debug                               (default +)
         -/+SET  = Strip export table
         -/+SO   = Strip overlay
         -/+SPH  = Special PE header                         (default -)
         -/+SPHE = Special PE header and strip stuff         (default -)
         -/+SRS  = Strip resources
         -/+SRT  = Strip relocation table
         -/+STLS = Strip TLS
         -/+T    = Test only
         -/+64K  = Special mode for 64kb intros (overrides all another options)
           +WS=x = Window size (in bytes)                    (default=16384)
           +X=x  = Use x86 filter variant from 0 to 2        (default=1)
                   (should be +X=0 for very tiny input files)
```
