#!/bin/bash
# ---------------------------------------------------------
# Dev: Ramana R (github@Rr42)
# Script version: v0.2.1
# Description:
#   This is a WSL/Linux script to automatically update 
#  KiCAD libraries from their repositories.
# ---------------------------------------------------------
# KiCAD libraty links
# Symbols   : https://github.com/KiCad/kicad-symbols
# Packages3d: https://github.com/kicad/kicad-packages3d
# Footprints: https://github.com/KiCad/kicad-footprints
# Templates : https://github.com/kicad/kicad-templates
# Unstall command: sudo xargs rm < $source/install_manifest.txt
# Prep before running updates
# Save initial dir location
TOP_DIR=`pwd`
# Updating symbols
printf "[KiCAD-updater] Updating symbols"
source=./kicad-symbols/build
dest=../output
if [ ! -d $source ]
then
    error=`git clone https://github.com/KiCad/kicad-symbols 2>&1`
    error=`mkdir $source 2>&1`
fi
printf "."
cd $source
error=`cmake .. 2>&1`
printf "."
error=`cmake -DCMAKE_INSTALL_PREFIX=$dest -P cmake_install.cmake 2>&1`
printf "."
error=`cp -r $dest/share "/mnt/c/Program Files/KiCad" 2>&1`
printf "."
error=`rm -r $dest 2>&1`
printf "."
cd $TOP_DIR
printf "done\n"
# Updating packages3d
printf "[KiCAD-updater] Updating packages3d"
source=./kicad-packages3d/build
dest=../output
if [ ! -d $source ]
then
    error=`git clone https://github.com/kicad/kicad-packages3d 2>&1`
    error=`mkdir $source 2>&1`
fi
printf "."
cd $source
error=`cmake .. 2>&1`
printf "."
error=`cmake -DCMAKE_INSTALL_PREFIX=$dest -P cmake_install.cmake 2>&1`
printf "."
error=`cp -r $dest/share "/mnt/c/Program Files/KiCad" 2>&1`
printf "."
error=`rm -r $dest 2>&1`
printf "."
cd $TOP_DIR
printf "done\n"
# Updating footprints
printf "[KiCAD-updater] Updating footprints"
source=./kicad-footprints/build
dest=../output
if [ ! -d $source ]
then
    error=`git clone https://github.com/KiCad/kicad-footprints 2>&1`
    error=`mkdir $source 2>&1`
fi
printf "."
cd $source
error=`cmake .. 2>&1`
printf "."
error=`cmake -DCMAKE_INSTALL_PREFIX=$dest -P cmake_install.cmake 2>&1`
printf "."
error=`cp -r $dest/share "/mnt/c/Program Files/KiCad" 2>&1`
printf "."
error=`rm -r $dest 2>&1`
printf "."
cd $TOP_DIR
printf "done\n"
# Updating templates
printf "[KiCAD-updater] Updating templates"
source=./kicad-templates/build
dest=../output
if [ ! -d $source ]
then
    error=`git clone https://github.com/kicad/kicad-templates 2>&1`
    error=`mkdir $source 2>&1`
fi
printf "."
cd $source
error=`cmake .. 2>&1`
printf "."
error=`cmake -DCMAKE_INSTALL_PREFIX=$dest -P cmake_install.cmake 2>&1`
printf "."
error=`cp -r $dest/share "/mnt/c/Program Files/KiCad"  2>&1`
printf "."
error=`rm -r $dest 2>&1`
printf "."
cd $TOP_DIR
printf "done\n"
