

To install the parallella-template onto your system, copy the entire directory to your KiCad template directory, keeping the name the same.  KiCad will pick this up the next time it is started.  On my Linux system it's under _~/kicad/template/_.  Or for the more adventurous, drop it into the the system templates: Windows PC directory _C:\Program Files\KiCad\share\template_, or on Linux under _/usr/local/share/kicad/template_, although the application seemed to be looking for it under _/usr/local/share/template_ and I haven't found where to change that path.  In the meantime I added a link from where it's looking to where it is.

If you don't want to do that, you can simply open the project where it sits, and save it to
another project as you like.  In any case you may have to re-set the library paths for your system.

