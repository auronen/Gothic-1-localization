#!/bin/bash

# Check if the correct number of arguments is provided
if [ "$#" -ne 2 ]; then
    echo "Usage: $0 <replacement_L> <replacement_E>"
    exit 1
fi

# Variables
new_file_base="GothicLocalized"  # Base name for the new file
replacement_L="$1"  # First input parameter
replacement_E="$2"  # Second input parameter

# Create the new file name
new_file_name="${new_file_base}_${replacement_L}.ini"

# Create the new file with the template text, replacing placeholders
cat <<EOF | sed "s/\$L/${replacement_L}/g; s/\$E/${replacement_E}/g" > release/release/System/"$new_file_name"
[INFO]
Title=Gothic Localized (\$L)
Version=1.08k_mod
Authors=Various authors
WebPage=https://weblate.cokoliv.eu/languages/\$L/gothic-1/
Description=!<symlink>GothicLocalized.rtf
Icon=0

[FILES]
vdf=G1_base.mod  G1_fonts_\$E.mod  G1_\$L.mod
game=Content\Gothic
fightai=Content\Fight
menu=System\Menu
camera=System\Camera
music=System\Music
soundeffects=System\SFX
particleseffects=System\ParticleFX
visualeffects=System\VisualFX
outputunits=Content\Cutscene\OU

[SETTINGS]
player=PC_HERO
world=World.zen

[OPTIONS]
show_info=0
force_subtitles=0
force_parameters=

[OVERRIDES]
INTERNAL.extendedMenu=1


[ZPARSE_EXTENDER]
LoadScript = 
MergeMode = true
CompileDat = false
CompileOU = false
NativeWhile = false
MessagesLevel = 1
StringsIndexingMode = -1
TestStack = 0
EarlyParsing = true

EOF



