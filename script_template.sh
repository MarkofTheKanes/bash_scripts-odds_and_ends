#!/bin/bash 

##check command line options, if any
while getopts "vhd" OPTION ; do
    case $OPTION in
        v) SHOW_VERSION
        ;;
        h) SHOW_HELP
        ;;
        d) DEBUG=1
        ;;
    esac
done

do_things() {

{

check_instance  # or lock and unlock at the end

initialize

do_things

clean_tmp


