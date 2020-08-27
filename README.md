# Script to automatically update KiCAD libraries
This is a WSL script to automatically update KiCAD symbol, 3D package, footprint, and template libraries.

The script uses the following repositories to update libraries:
* Symbols   : https://github.com/KiCad/kicad-symbols
* Packages3d: https://github.com/kicad/kicad-packages3d
* Footprints: https://github.com/KiCad/kicad-footprints
* Templates : https://github.com/kicad/kicad-templates

# Running the script
To run the script open a **Windows command prompt** instance as **administrator**. With the cmd terminal open, `cd` to the script diractory and run `bash` to start the WSL Linux terminal.

On the WSL Linux terminal run the following command:
```
./kicad-updater.sh
```
