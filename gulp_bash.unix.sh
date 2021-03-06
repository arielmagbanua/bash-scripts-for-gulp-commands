#!/usr/bin/env bash
alias copy-js-files='copyJSFiles'
alias compress-js-files='compress js'
alias compress-css-files='compress css'
alias compress-image-files='compress images'
alias compress-html-files='compress html'

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

function compress(){
    case $1 in
        js)
            echo 'js'
            ;;
        css)
            echo 'css'
            ;;
        images)
            echo 'images'
            ;;
        html)
            echo 'html'
            ;;
    esac

    # echo "$1 files compressed!"
}