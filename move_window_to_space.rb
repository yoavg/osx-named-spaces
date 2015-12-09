#!/usr/bin/env ruby
# Pick a space name in TotalSpaces2 and move current window to it. 
# requires totalspaces2, and the totalspaces2 ruby gem.
# requires "choose" (brew install choose-gui)
require 'totalspaces2'

space_names = (1..TotalSpaces2.number_of_spaces).map { |i| TotalSpaces2.name_for_space(i) }
list = space_names.join("\n")
choice = `echo "#{list}" |/usr/local/bin/choose -w 20 -s 20 -n #{space_names.size}`

windows = TotalSpaces2.window_list
current_space = TotalSpaces2.current_space
main_display_id = TotalSpaces2.main_display[:display_id]
if !windows.empty?
  current_space_windows = windows.select {
        |window| window[:display_id] == main_display_id && window[:space_number] == current_space
  }
  front_window = current_space_windows[0]
  TotalSpaces2.move_window_to_space(front_window[:window_id], space_names.index(choice) + 1)
end

