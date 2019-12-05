# scripts

My collections of scripts, mainly bash, that I use on a daily basis. 

### bindings

Prints a minimally formatted list of key bindings found in the i3-config file.

### cleanup.sh

Categorizes most of the files in the current directory as PDFs, Images, Code, etc.

### conky_start

Script that start three different instances of conky.

Requirements: conky (Obviously)

### display.sh

Helper script to manage displays. Can show the currently available display, and switch to duplicate or extend modes. 

Requirements: rofi

### firefoxScript

Gives a choice of websites, and opens the chose site in firefox. The sites are taken from the sites folder in this directory. Also has a search option which brings up an input box.

Requirements: firefox, zenity

### latexCompiler

Compiles the latex file, with some helpful flags.

Requirements: pdflatex in your $PATH

### lock_bar.sh

Example script taken from the i3lock-color repo. Lockscreen, with bar ;)

Requirements: i3lock-color

### lockscreen.sh

The code for this script is taken from multiple sources, with a few edits of my own. It takes a screenshot, pixilates it and sets it as the lockscreen.

Requirements: i3-lock-color

### lock.sh

Yet another lockscreen script. Don't remember what it does. Can't seem to run it either. Just keeping it here incase I ever figure it out.

### mdCompiler

Compiles the markdown file to HTML documents.

Requirements: pandoc

### music

Music player script. Fun times. 

Requirements: mpv as the musicplayer. playerctl if you want the status bar block too.

### new

Script to create a new template file. Try running `new --help`.

### newYear.sh

Fun script.
```bash
newYear.sh "Happy New Year"
```

### pcmanScript

Gives you a choice of directories to choose from, and opens the chosen directory in `pcmanfm`, a lightweight filemanager. 

Requirements: pcmanfm

### prompt

Simple yes/no prompt with dmenu. If yes, run the command. 

Usage: prompt [prompt string] [command to run]

Requirements: dmenu

### rangerScript

Ranger alternative to the pcman script. 

Current status: Broken

Requirements: ranger

### shortcuts

Script that auto generates my folder aliases for zsh and ranger.

### start-server.sh

Scripts starts a local python server. Useful for file sharing and web dev.

### sublime.sh

Sublime text alternative for the pcmanfm script.

### todoScript

Calls the todo app with some extra choices. 

### wallpaperScript.sh

Changes the wallpaper in a loop. 

Status: Don't use this. Use a cron job instead.
