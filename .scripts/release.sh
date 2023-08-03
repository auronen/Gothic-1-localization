#!/usr/bin/env bash

# function for correct encodings
get_encoding() {
    case "$1" in
        # cp1250
        "cs") echo "cp1250" ;;
        "hu") echo "cp1250" ;;
        "pl") echo "cp1250" ;;
        "ro") echo "cp1250" ;;

        # cp1251
        "uk") echo "cp1251" ;;
        "ru" | "ru_russobit" | "ru_snowball") echo "cp1251" ;;

        # cp1252
        "de") echo "cp1252" ;;
        "en") echo "cp1252" ;;
        "es") echo "cp1252" ;;
        "fr") echo "cp1252" ;;
        "it") echo "cp1252" ;;

        # cp1254
        "tr") echo "cp1254" ;;

        # utf8
        "zh_hant" | "zh_Hant") echo "utf8" ;;
        "zh_hans" | "zh_Hans") echo "utf8" ;;
        "cy") echo "utf8" ;;

        # Default case if no match is found
        *) echo "Unknown encoding" ;;
    esac
}

echo "Substituting Gothic 1 Localizations..."

mkdir -p release/{langs,release}
cp -R .release/* release/release

.scripts/dacode subs -i cp1252 -c "Scripts" -t ".translations" -p -e -o "release/langs"

echo "Compiling Gothic 1 Localizations..."

# Loop over the directories in the specified directory
# and compile the language specific DAT files
for dir in release/langs/*; do
    if [ -d "$dir" ]; then
        LANG=$(basename "$dir")
        ENC=$(get_encoding "$LANG")
        echo "Compiling Gothic 1: Language $LANG with $ENC"

        mkdir "$dir"/_compiled # the repo does not have this directory, because it is empty...

        .scripts/dacode compile -c "$dir" -i $ENC -g g1 -p gothic,menu
    fi
done

for dir in release/langs/*; do
    if [ -d "$dir" ]; then

        mkdir -p "$dir/_work/Data/Scripts"
        mv "$dir"/_compiled "$dir"/_work/Data/Scripts/_compiled
        mv "$dir"/content   "$dir"/_work/Data/Scripts/content
        mv "$dir"/system    "$dir"/_work/Data/Scripts/system

        LANG=$(basename "$dir")
        echo "Packing mod files for language $LANG"

        .scripts/vdfs -b "$dir" -c "Gothic 1 localization project ($LANG)" -o release/release/Data/modvdf/G1_$LANG.mod .scripts/g1.yml
    fi
done

cd release/release

zip -r "Gothic 1 Localized.zip" Data System
