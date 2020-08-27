#!/bin/bash
# ---------------------------------------------------------
# Dev: Ramana R (github@Rr42)
# Script version: v0.1
# ---------------------------------------------------------
# KiCAD libraty links
# Symbols   : https://github.com/KiCad/kicad-symbols
# Packages3d: https://github.com/kicad/kicad-packages3d
# Footprints: https://github.com/KiCad/kicad-footprints
# Templates : https://github.com/kicad/kicad-templates
# Unstall command: sudo xargs rm < $source/install_manifest.txt
# Updating symbols
printf "[KiCADupdater] Updating symbols"
source=./kicad-symbols
dest=./build
if [ ! -d $source ]
then
    error=`git clone https://github.com/KiCad/kicad-symbols 2>&1`
fi
printf "."
cd $source
error=`cmake . 2>&1`
printf "."
error=`cmake -DCMAKE_INSTALL_PREFIX=$dest -P cmake_install.cmake 2>&1`
printf "."
error=`cp -r $dest/share "/mnt/c/Program Files/KiCad" 2>&1`
printf "."
cd ../
printf "done\n"
# Updating packages3d
printf "[KiCADupdater] Updating packages3d"
source=./kicad-packages3d
dest=./build
if [ ! -d $source ]
then
    error=`git clone https://github.com/kicad/kicad-packages3d 2>&1`
fi
printf "."
cd $source
error=`cmake . 2>&1`
printf "."
error=`cmake -DCMAKE_INSTALL_PREFIX=$dest -P cmake_install.cmake 2>&1`
printf "."
error=`cp -r $dest/share "/mnt/c/Program Files/KiCad" 2>&1`
printf "."
cd ../
printf "done\n"
# Updating footprints
printf "[KiCADupdater] Updating footprints"
source=./kicad-footprints
dest=./build
if [ ! -d $source ]
then
    error=`git clone https://github.com/KiCad/kicad-footprints 2>&1`
fi
printf "."
cd $source
error=`cmake . 2>&1`
printf "."
error=`cmake -DCMAKE_INSTALL_PREFIX=$dest -P cmake_install.cmake 2>&1`
printf "."
error=`cp -r $dest/share "/mnt/c/Program Files/KiCad" 2>&1`
printf "."
cd ../
printf "done\n"
# Updating templates
printf "[KiCADupdater] Updating templates"
source=./kicad-templates
dest=./build
if [ ! -d $source ]
then
    error=`git clone https://github.com/kicad/kicad-templates 2>&1`
fi
printf "."
cd $source
error=`cmake . 2>&1`
printf "."
error=`cmake -DCMAKE_INSTALL_PREFIX=$dest -P cmake_install.cmake 2>&1`
printf "."
error=`cp -r $dest/share "/mnt/c/Program Files/KiCad"  2>&1`
printf "."
cd ../
printf "done\n"
