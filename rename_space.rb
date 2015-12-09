#!/usr/bin/env ruby
# Change the name of the current space in the TotalSpaces2 desktop manager.
# requires totalspaces2, and the totalspaces2 ruby gem.
# requires CocoaDialog (brew cask install cocoadialog)
require 'totalspaces2'

spaceno = TotalSpaces2.current_space
current_name = TotalSpaces2.name_for_space(spaceno)
new_name = `~/Applications/CocoaDialog.app/Contents/MacOS/CocoaDialog standard-inputbox --text "#{current_name}" --informative-text "rename space to:" --title ""`
if new_name.split("\n")[0] == "1"
    new_name = new_name.split("\n")[-1]
    TotalSpaces2.set_name_for_space(spaceno, new_name)
end

