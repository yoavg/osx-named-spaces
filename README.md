# OSX WM Sanity
## Named-desktops for OSX

A hack-ish attempt to bring named-desktops to OSX.

Relies on TotalSpaces2 (paid app) (`brew cask install totalspaces`), who thankfully provide both the option to name the spaces, as well as a ruby API binding (`sudo gem install totalspaces2`).  However, interacting with the named spaces via TotalSpaces2 isn't concenient enough, hence the need for these scripts.

The scripts are:

* `rename_space.rb`          rename current space
* `switch_to_space.rb`       show space names, switch to selected space
* `move_window_to_space.rb`  show space names, move front window to selected space


I use QuickSilver (`brew cask install quicksilver`) triggers
to bind the scripts to hotkeys.


Other dependencies:

* choose-gui  `brew install choose-gui`  (for space selection menu) 
* CocoaDialog  `brew cask install cocoadialog`  (for rename input box)




Additional helpful utilities for relative WM sanity under OSX are:

*  Contexts (paid app) (`brew cask install contexts`)  (cmd-tab replacement)
*  Spectacle  (`brew cask install spectacle`)  (window sizing/moving)

