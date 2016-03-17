## Julia interface to the `IUP` GUI library

GUI building, using the [IUP library](http://www.tecgraf.puc-rio.br/iup/)

## Installation

Prior to using this library, you must install `IUP` on your computer. You will need both the `IUP` and the two subsidiary libs `IM`  and `CD`.

  http://sourceforge.net/projects/iup/files/3.14/
<br>
  http://sourceforge.net/projects/imtoolkit/files/
<br>
  http://sourceforge.net/projects/canvasdraw/files/
  
To install `IUP.jl`, do

    Pkg.clone("IUP")
  
## Usage

I have only tested it on Windows and recreated several of the `IUP` examples by porting directly from the `C` version.

Those examples were created as modules so if you add the `src` and `examples` installation directory to `LOAD_PATH`, one can run them by typing (for example for the `mathglsamples` example):

    using mathglsamples_
    mathglsamples()
