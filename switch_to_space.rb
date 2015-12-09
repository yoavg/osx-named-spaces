#!/usr/bin/env ruby
# Pick a space name in TotalSpaces2 and switch to it. 
# requires totalspaces2, and the totalspaces2 ruby gem.
# requires "choose" (brew install choose-gui)
require 'totalspaces2'

spaceno = TotalSpaces2.current_space
space_names = (1..TotalSpaces2.number_of_spaces).map { |i| TotalSpaces2.name_for_space(i) }
list = space_names.join("\n")
choice = `echo "#{list}" |/usr/local/bin/choose -w 20 -s 20 -n #{space_names.size}`
TotalSpaces2.move_to_space(space_names.index(choice) + 1)
