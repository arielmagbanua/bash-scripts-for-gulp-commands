#!/usr/bin/env bash
alias copy-js-files='copyJSFiles'

# directories
declare -a dirs=(
        'dynamic_live/src/js/',
        'dynamic_live_cd3432/src/js',
        'dynamic_live_cd18463/src/js',
        'dynamic_live_cdall/src/js',
        'dynamic_live_cdflnt/src/js',
        'dynamic_live_election/src/js',
        'dynamic_live_material/src/js',
        'dynamic_live_red/src/js',
        'dynamic_live_sm/src/js',
        'dynamic_live_zeetocat/src/js')

function copyJSFiles(){
    ## now loop through the above array
    for i in "${dirs[@]}"
    do
        echo "Copying js files to $i"
        # or do whatever with individual element of the array
        cd $i && gulp copy-js-files && cd ../../../
    done

    echo 'JS Files copied!'
}
