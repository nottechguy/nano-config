#!/bin/bash
USR_HOME=$(bash -c "cd ~$(printf $USER) && pwd")
NANORC_FILE="${USR_HOME}/.nanorc"
NANORC_BACKUP_FILE="${USR_HOME}/.nanorc.bak"
NANO_DIR="${USR_HOME}/.nano/"

copy_rc_file () {
    cp "./.nanorc" $NANORC_FILE
    cp ./syntax/*.nanorc $NANO_DIR/syntax/
}

if [ -e $NANORC_FILE ]; then
    # Creating a backup file of the current nanorc
    cp $NANORC_FILE $NANORC_BACKUP_FILE
    copy_rc_file
else
    copy_rc_file
fi

echo "Done."
