#Linux.sh
Linux.sh checks to make sure it is a Linux OS and presents an error message if not. It also creates a TRASH directory for deleted files, and backs up old .nanorc files by renaming them to .bup_nanorc. The linux.sh file also attaches a command to souces the bashrc_custom configuration.
##Cleanup.sh
cleanup.sh reveres the changes made by linux.sh by removing .nanorc files, deleting the TRASH directory and removing the command line from bashrc_custom
##bashrc_custom
The bashrc_custom file is full of shell configuations. Aliases such as cdd which goes up one directory, Lsa that list all files in a directory, targz that creates tar.gz files, untar which extracts the tar.gz files. It also has the trash alias that moves files to the TRASH directory.
##Nanorc 
nanorc customizes the nano text editor 
##Makefile
The Makefile executes the setup and cleanup script. It either executes linux.sh to set up configuration, or runs cleanup.sh to reverse all changes made.
##Gitignore
gitignore prevents files from being tracked by Github
