# My .emacs.d

## Contains:
* init.el - the init file
* firstinstall.el - installs the packages I use
* .mc-lists.el - multiple cursor auto-generated preferences
* .gitignore - a nice .gitignore for ignoring stuff in .emacs.d

## Getting started
Simply run this from the command line:

`git clone https://github.com/mariuszskon/.emacs.d.git ~/.emacs.d`

Launch emacs, and then:
`M-x load-file RET ~/.emacs.d/firstinstall.el`

That is, hold alt and press x, type `load-file`, press enter and type `~/.emacs.d/firstinstall.el`

## Features
* Attempts to use 4 spaces as indentation in as many places as possible
* Enables wombat theme (built-in nice theme)
* Enables [MELPA](http://melpa.org/)
* Sets up [web-mode](https://github.com/fxbois/web-mode) and [emmet-mode](https://github.com/smihica/emmet-mode) for good web development
* `C-=` keybinding for [expand-region](https://github.com/magnars/expand-region.el)
* Some "default" keybindings for [multiple-cursors](https://github.com/magnars/multiple-cursors.el)
* Sets up `js2-mode` and keybindings for its bounce-indent
* Enables `ido-mode` and its flex matching
* Enables `show-paren-mode`
* More!

