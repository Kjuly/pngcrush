Pngcrush
========

Pngcrush is an optimizer for PNG (Portable Network Graphics) files. It can be run from a commandline in an MSDOS window, or from a UNIX or LINUX commandline.

Its main purpose is to reduce the size of the PNG IDAT datastream by trying various compression levels and PNG filter methods. It also can be used to remove unwanted ancillary chunks, or to add certain chunks including gAMA, tRNS, iCCP, and textual chunks.

[__Source on Sourceforge__][URL:Source on Sourceforge]

[URL:Source on Sourceforge]: http://pmt.sourceforge.net/pngcrush/


# Usage

1. Put your all png files into "workspace_in" folder;  
2. Run `batch_script.sh` to recompress png files:

        $ ./batch_script.sh
        
3. All recompressed png files will be outputed into "workspace_out" folder;  
4. Copy the files in "workspace_out" folder to your desired place;  
5. Rm all files in "workspace_in" & "workspace_out" folders.

__Note__: The binary files under `./pngcrush/` were built by "GNU Make" (v3.81), you can build by yourself if want.

        $ cd ./pngcrush  
        $ make clean  
        $ make  
        $ cd -  

# License

Pngcrush is open source and may be used, modified, and redistributed by anyone without paying a fee. The license, embedded in the file `pngcrush.c`, is equivalent but not identical to the libpng license found in the libpng file png.h.

The source except for pngcrush lib is also here granted for anyone by Kjuly.

# Declare

The author of pngcrush is Glenn Randers-Pehrson ( glennrp@users.sf.net )

This repo is maintained by Kjuly ( dev@kjuly.com ). Based on pngcrush project, added `.batch_script.sh` to do batch job easier.

