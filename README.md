# bash-scripts-for-gulp-commands
Bash scripts for gulp commands.

## Set-up
Run the set up bash script. <br />
``./setup.sh``

If not working manually execute this command. <br />
``sed $'s/\r$//' ./gulp_bash.sh > ./gulp_bash.unix.sh && source ./gulp_bash.unix.sh``

## List of commands
For copying needed js files. <br />
``copy-js-files``

For compressing and copying of image files. <br />
``compress-image-files``

For compressing js files. <br />
``compress-js-files``

For compressing css files. <br />
``compress-css-files``

For compressing html files. <br />
``compress-html-files``