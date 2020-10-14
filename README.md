# olc-networking

This repository is a project made with files coming from [OneLoneCoder](https://github.com/OneLoneCoder/olcPixelGameEngine/tree/master/Videos/Networking/Parts1%262)'s repo.
Its purpose is to provide a basic Makefile to build the files and edit them in a simple IDE like VS Code, and not necessarily in a full Visual Studio solution.  
This "wrapper project" was written and tested on macOS only, but I suppose it should easily work on Linux as well.

## Usage

Just run `make` to build the project. The output files by default are `bin/server` and `bin/client`.

#### Targets

`all` : Make the Server and Client files.  
`run` : Make and run the Server.  
`run-client` : Make and run the Client.  
`clean` : Empty the `bin/` directory.  

---

## [Javidx9's Networking README](https://github.com/OneLoneCoder/olcPixelGameEngine/blob/master/Videos/Networking/Parts1%262/readme.txt)  
Networking Code

This version is incomplete! It's fine for experimenting, but it will consume whole processor cores, and it has a memory leak.
These will be identified and resolved in Part#3 when we look at making it robust.
