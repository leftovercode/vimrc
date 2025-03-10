# vimrc
My very own vimrc

# Setup

## Create Required Directories
1. Navigate to your home directory
   - On Windows that should be your user path, i.e. `C:\Users\user`
   - On linux, it should be the default directory when opening a terminal or launching a file manager
2. Navigate to the `.vim` directory
   - If the directory does not exist, create the directory
3. Within the `.vim` directory, create the following directories:
   - autoload
   - backup
   - colors
   - plugged

## Installing `vim-plug` and Plugins
[Download the plug.vim file](https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim) and place it inside the newly created `autoload` directory.

Run `vim` in a terminal. An error might pop up. Simply press ENTER to go to the editor. 

Next, within vim, type `:PlugInstall` and press ENTER.

Once everything is installed, exit vim by entering `:q` twice. 

Next time you enter vim it should be fully set up.

# NOTE
Filenames differ between Linux and Windows:

Linux    .vimrc

Windows  \_vimrc
