# Arduino - Node blinking light sample project 


This project uses [node-serialport](https://github.com/voodootikigod/node-serialport) to control some lights (project circ-02) on an Arduino uno board. Brandon Tilley's [blog post](http://brandontilley.com/2012/03/02/controlling-an-arduino-from-nodejs.html) was *highly* influential.  

Project makes use of CoffeeScript and Ruby's Watchr -- all source is in src/ directory and watchr will compile into JS into a js/ dir. Run either program via the `node` command (i.e. `node js/web.js`)

Helpful resources:
  * [Node.js for Java developers](http://www.ibm.com/developerworks/java/library/j-nodejs/)
  * [Functional JavaScript with CoffeeScript and Node](http://www.ibm.com/developerworks/java/library/j-coffeescript/index.html?ca=drs-)


# License

The MIT License

Copyright (c) 2011 Andrew Glover

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE