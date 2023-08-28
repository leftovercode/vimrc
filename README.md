# vimrc
My very own vimrc

# Directories
In your home folder, there should be a .vim folder. In Windows that could be your user path, i.e. C:\Users\user. In linux, it should be your home folder. If the folder does not exist, create the folder.

Within the .vim folder, create the following folders:

- autoload
- backup
- colors
- plugged

# vim-plug
[Download the plug.vim file](https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim) and place it inside the newly created autoload folder.

Run `vim` in a terminal. An error might pop up. Simply press ENTER to go to the editor. 

Next, within vim, type `:PlugInstall` and press ENTER.

Once everything is installed, exit vim by entering `:q` twice. 

Next time you enter vim it should be fully setup.

# NOTE
Filenames differ between Linux and Windows:

Linux    .vimrc

Windows  \_vimrc
