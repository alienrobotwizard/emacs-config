* Make sure that cask is installed (this is a package management tool for Emacs)
  Follow instructions here: https://github.com/cask/cask

  ** With homebrew on Mac you'll need to create a symlink from
     `/usr/local/share/emacs/site-lisp/cask` to `$HOME/.cask`

  ```
  ln -sf /usr/local/share/emacs/site-lisp/cask $HOME/.cask
  ```
  
* For web mode to work you'll want nvm installed.
  Follow instructions here https://github.com/creationix/nvm _and_ ensure
  a version of node is installed (`nvm install node`)
  
* Install yaml-mode (https://github.com/yoshiki/yaml-mode)

  ** For ubuntu you can simple follow the instructions
  ** For Mac, if you're using AquaMacs or "Emacs for OSX" that installs
     as Emacs.app, you'll need to follow the instructions in the repo
     _then_ place the `*.el` and `*.elc` files under
     `/Applications/Emacs.app/Contents/Resources/site-lisp/`
     
* Install the bitstream vera font 

  ** Ubuntu:
  `sudo apt-get install ttf-bitstream-vera`
  
  ** Mac
  ```
  brew tap caskroom/fonts
  brew cask install font-bitstream-vera
  ```
