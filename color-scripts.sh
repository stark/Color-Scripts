#!/bin/sh

DIR=$(dirname "$PROGRAM")
ARTS_DIR="$DIR/color-scripts"

_help(){
    echo "Description: CLI utility to print out ASCII arts in your shell"
    echo ""
    echo "Usage: colorscripts [OPTION]"
    printf "  %-20s\t%-54s\n" \
        "-h, --help, help" "Print this help." \
        "-l, --list, list" "Print list of ASCII arts"\
        "-r, --random, random" "Show a random ASCII art"\
        "-n, --name, name" "Show ASCII art by name"\
    echo ""
    echo "Example: \"colorscripts -r\""
}

_random(){
    local ART=$(ls -1 "$ARTS_DIR" | shuf -n 1)
    echo "$ART"
    $SHELL -c "$ARTS_DIR/$ART"
}

_list(){
    ls -1 $ARTS_DIR | sed "s/\.*$//g"
}

_show_by_name(){
    local NAME=$1
    echo $NAME
    # Error handling. Can't think of a better way to do it
    $SHELL -c "$ARTS_DIR/$NAME 2>/dev/null" || echo "Invalid name" && exit 1
}

case "$#" in
    0)
        _help
        ;;
    1)
        case $1 in
            -h | --help | help)
                _help
                ;;
            -r | --random | random)
               _random
                ;;
            -l | --list | list)
                _list
                ;;
            *)
                echo "Input error."
                exit 1
                ;;
        esac
        ;;
    2)
        if [[ "$1" == '-n' || '--name' || 'name' ]]; then
            _show_by_name "$2"
        else
            echo "Input error"
            exit 1
        fi
        ;;

    *)
        echo "Input error, too many arguments."
        exit 1
        ;;
esac
