# OSX WM Sanity
# Named-desktops for OSX

A hack-ish attempt to bring named-desktops to OSX.

Relies on TotalSpaces2 (`brew cask install totalspaces`), who luckily provide a ruby API binding (`sudo gem install totalspaces2`).

Other dependencies:
*  choose-gui  `brew install choose-gui`  (for space selection menu)
*  CocoaDialog  `brew cask install cocoadialog`  (for rename input box)

I also use QuickSilver (`brew cask install quicksilver`) triggers in order
to bind the scripts to hotkeys, but there are probably other ways as well.

The scripts are:
* `rename_space.rb`          rename current space
* `switch_to_space.rb`       show space names, switch to selected space
* `move_window_to_space.rb`  show space names, move front window to selected space


Additional helpful utilities for relative WM sanity under OSX are:
*  Contexts  (`brew cask install contexts`)  (cmd-tab replacement)
*  Spectacle  (`brew cask install spectacle`)  (window sizing/moving)

