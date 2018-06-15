#!/usr/bin/env ruby

# You can generate json by executing the following command on Terminal.
#
# $ ruby ./personal_christopherdwhite.json.rb > output/assets/complex_modifications/launch_modes.json
#



# # Parameters

PARAMETERS = {
  :simultaneous_threshold_milliseconds => 500,
}.freeze



# # Imports

require 'json'
require_relative 'lib/karabiner.rb'



# # Functions

# ## main Function
#
# Defines the Karabiner complex modifications
#
def main
  data = {
    'title' => 'Launch Modes',

    # ### Rules
    'rules' => [

			# #### Ⓩ Action Mode
			{
				'description' => 'Action Mode',
				'manipulators' => [

					# ##### Bartender
					# Bartender: Toggle Bartender Bar Ⓑ [ Simulate Key ]
					generate_launch_mode_rule('action_mode', 'z', 'b', %w[], false, [{ 'key_code' => 'f1', 'modifiers' => %w[control option] }]),

					# Bartender: Maximize Menu Bar Items ⇧ Ⓑ [ Simulate Key ]
					generate_launch_mode_rule('action_mode', 'z', 'b', %w[shift], false, [{ 'key_code' => 'f2', 'modifiers' => %w[control option] }]),

					# Bartender: Show All Menu Bar Items ⌘ Ⓑ [ Simulate Key ]
					generate_launch_mode_rule('action_mode', 'z', 'b', %w[command], false, [{ 'key_code' => 'f3', 'modifiers' => %w[control option] }]),

					# Bartender: Search Menu Bar Items ⌥ Ⓑ [ Simulate Key ]
					generate_launch_mode_rule('action_mode', 'z', 'b', %w[option], false, [{ 'key_code' => 'f4', 'modifiers' => %w[control option] }]),

					# Bartender: Keyboard Select Menu Bar Items ^ Ⓑ [ Simulate Key ]
					generate_launch_mode_rule('action_mode', 'z', 'b', %w[control], false, [{ 'key_code' => 'f5', 'modifiers' => %w[control option] }]),


					# ##### Moom
					# Moom: Center Window ⓪ [ Simulate Key ]
					generate_launch_mode_rule('launch_mode', 'z', '0', %w[], [{ 'shell_command' => "osascript -e 'tell application\"Moom\"' -e 'center frontmost window geometrically' -e 'end tell'" }]),

					# Moom: Zoom Window (-) [ Simulate Key ]
					generate_launch_mode_rule('launch_mode', 'z', 'hyphen', %w[], [{ 'key_code' => 'f6', 'modifiers' => %w[control option] }]),

					# Moom: Zoom Window with Margin (=) [ Simulate Key ]
					generate_launch_mode_rule('launch_mode', 'z', 'equal_sign', %w[], [{ 'key_code' => 'f7', 'modifiers' => %w[control option] }]),

					# Moom: Window to Left Half ([) [ Simulate Key ]
					generate_launch_mode_rule('launch_mode', 'z', 'open_bracket', %w[], false, [{ 'key_code' => 'f8', 'modifiers' => %w[control option] }]),

					# Moom: Window to Right Half (]) [ Simulate Key ]
					generate_launch_mode_rule('launch_mode', 'z', 'close_bracket', %w[], false, [{ 'key_code' => 'f9', 'modifiers' => %w[control option] }]),

					# Moom: Window to Left Third ⇧ ({) [ Simulate Key ]
					generate_launch_mode_rule('launch_mode', 'z', 'open_bracket', %w[shift], false, [{ 'key_code' => 'f10', 'modifiers' => %w[control option] }]),

					# Moom: Window to Center Third ⇧ (|) [ Simulate Key ]
					generate_launch_mode_rule('launch_mode', 'z', 'backslash', %w[shift], [{ 'key_code' => 'f11', 'modifiers' => %w[control option] }]),

					# Moom: Window to Right Third ⇧ (}) [ Simulate Key ]
					generate_launch_mode_rule('launch_mode', 'z', 'close_bracket', %w[shift], false, [{ 'key_code' => 'f12', 'modifiers' => %w[control option] }]),

					# Moom: Window to Left Two Thirds ⇧ (<) [ Simulate Key ]
					generate_launch_mode_rule('launch_mode', 'z', 'comma', %w[shift], false, [{ 'key_code' => 'f13', 'modifiers' => %w[control option] }]),

					# Moom: Window to Right Two Thirds ⇧ (>) [ Simulate Key ]
					generate_launch_mode_rule('launch_mode', 'z', 'period', %w[shift], false, [{ 'key_code' => 'f14', 'modifiers' => %w[control option] }]),

					# Moom: Keyboard Control (;) [ Simulate Key ]
					generate_launch_mode_rule('launch_mode', 'z', 'semicolon', %w[], [{ 'key_code' => 'f15', 'modifiers' => %w[control option] }]),


					# Open URLs Ⓤ [ Keyboard Maestro Macro ]
					generate_launch_mode_rule('action_mode', 'z', 'u', %w[], [{ 'shell_command' => "osascript -e 'tell application \"Keyboard Maestro Engine\" to do script \"4B75D6B9-61F0-4F93-AB7F-7CC998E81E51\"'" }]),

					# Toggle Global Shortcuts with ShortStop Ⓧ [ Simulate Key ]
					generate_launch_mode_rule('action_mode', 'z', 'x', %w[], [{ 'key_code' => 'f16', 'modifiers' => %w[control option shift] }]),


					# ##### Typetto
					# Typetto → ciPhone ① [ Simulate Key ]
					generate_launch_mode_rule('action_mode', 'z', '1', %w[], [{ 'key_code' => 'f17', 'modifiers' => %w[control option shift] }]),

					# Typetto → ciPad ② [ Simulate Key ]
					generate_launch_mode_rule('action_mode', 'z', '2', %w[], [{ 'key_code' => 'f18', 'modifiers' => %w[control option shift] }]),

					# Typetto → ciPhoneDev ③ [ Simulate Key ]
					generate_launch_mode_rule('action_mode', 'z', '3', %w[], [{ 'key_code' => 'f19', 'modifiers' => %w[control option shift] }]),

					# Typetto → ciPadDev ④ [ Simulate Key ]
					generate_launch_mode_rule('action_mode', 'z', '4', %w[], [{ 'key_code' => 'f20', 'modifiers' => %w[control option shift] }]),

				].flatten,
			},


      # #### Ⓐ Alfred Mode
      {
        'description' => 'Alfred Mode',
        'manipulators' => [

          # Alfred Maestro Ⓚ [ Workflow ]
          generate_launch_mode_rule('alfred_mode', 'a', 'k', %w[], [{ 'shell_command' => "osascript -e 'tell application \"Alfred 3\" to run trigger \"doMacro\" in workflow \"iansinnott.keyboardmaestro\"'" }]),

          # AppScripts Ⓢ [ Workflow ]
          generate_launch_mode_rule('alfred_mode', 'a', 's', %w[], [{ 'shell_command' => "osascript -e 'tell application \"Alfred 3\" to run trigger \"scripts\" in workflow \"net.deanishe.alfred-appscripts\"'" }]),

          # Fantastical Ⓕ [ Workflow ]
          generate_launch_mode_rule('alfred_mode', 'a', 'f', %w[], [{ 'shell_command' => "osascript -e 'tell application \"Alfred 3\" to run trigger \"fantastical\" in workflow \"com.robertboehnke.alfred.fantastical\"'" }]),

          # Menu Bar Search Ⓜ [ Workflow ]
          generate_launch_mode_rule('alfred_mode', 'a', 'm', %w[], [{ 'shell_command' => "osascript -e 'tell application \"Alfred 3\" to run trigger \"searchMenuBar\" in workflow \"com.tedwise.menubarsearch\"'" }]),

          # Search Safari and Chrome Tabs Ⓦ [ Workflow ]
          generate_launch_mode_rule('alfred_mode', 'a', 'w', %w[], [{ 'shell_command' => "osascript -e 'tell application \"Alfred 3\" to run trigger \"searchTabs\" in workflow \"com.clintonstrong.SearchTabs\"'" }]),

          # Searchio! → Bing Ⓑ [ Workflow ]
          generate_launch_mode_rule('alfred_mode', 'a', 'b', %w[], [{ 'shell_command' => "osascript -e 'tell application \"Alfred 3\" to run trigger \"bing\" in workflow \"net.deanishe.alfred-searchio\"'" }]),

          # SnippetsLab Ⓛ [ Workflow ]
					generate_launch_mode_rule('alfred_mode', 'a', 'l', %w[], [{ 'shell_command' => "osascript -e 'tell application \"Alfred 3\" to run trigger \"searchSnippetsLab\" in workflow \"com.renfei.SnippetsLab.AlfredWorkflow\"'" }]),

        ].flatten,
      },


      # #### Ⓑ Bear Mode
      {
        'description' => 'Bear Mode',
        'manipulators' => [

          # Alfred `bear` ( Space ) `bear` [ Alfred Argument ]
          generate_launch_mode_rule('bear_mode', 'b', 'spacebar', %w[], [{ 'shell_command' => "osascript -e 'tell application \"Alfred 3\" to search \"Bear \"'" }]),

					# Bear → Create New Bear Note Ⓒ [ Workflow ]
					generate_launch_mode_rule('bear_mode', 'b', 'c', %w[], false, [{ 'shell_command' => "osascript -e 'tell application \"Alfred 3\" to run trigger \"newBearNote\" in workflow \"com.chrisbro.bear\"'" }]),

					# Bear → Search Bear Notes Ⓢ [ Workflow ]
					generate_launch_mode_rule('bear_mode', 'b', 's', %w[], [{ 'shell_command' => "osascript -e 'tell application \"Alfred 3\" to run trigger \"searchBear\" in workflow \"com.chrisbro.bear\"'" }]),

					# Bear → Search Bear Notes by Tag Ⓣ [ Workflow ]
					generate_launch_mode_rule('bear_mode', 'b', 't', %w[], [{ 'shell_command' => "osascript -e 'tell application \"Alfred 3\" to run trigger \"searchBearTag\" in workflow \"com.chrisbro.bear\"'" }]),

          # New Bear Note ⌥ Ⓒ [ Keyboard Maestro Macro ]
          generate_launch_mode_rule('bear_mode', 'b', 'c', %w[option], false, [{ 'shell_command' => "osascript -e 'tell application \"Keyboard Maestro Engine\" to do script \"2E864E28-4288-4FB4-927D-61546A2E8805\"'" }]),

					# New Bear Note in External Window ⌘ Ⓒ [ Keyboard Maestro Macro ]
					generate_launch_mode_rule('bear_mode', 'b', 'c', %w[command], false, [{ 'shell_command' => "osascript -e 'tell application \"Keyboard Maestro Engine\" to do script \"BF7F09AC-36B9-4A04-A594-79383A25FC0D\"'" }]),

          # New Untagged Bear Note ^ Ⓒ [ Keyboard Maestro Macro ]
          generate_launch_mode_rule('bear_mode', 'b', 'c', %w[control], false, [{ 'shell_command' => "osascript -e 'tell application \"Keyboard Maestro Engine\" to do script \"CA6F631E-5440-4DCF-8228-76523FD9E966\"'" }]),

        ].flatten,
      },


      # #### Capture Mode
      # #### Code Mode

      # KM: Paste as Comments

      # TextExpander: Swift from Clipboard

      # TextExpander: Swift Code Fence

      # #### Connect Mode
      # #### DEVONthink Mode
      # #### Markdown Code Mode


      # #### Ⓟ Palettes Mode
      {
        'description' => 'Palettes Mode',
        'manipulators' => [

					# Toggle 1Password Mini ① [ Keyboard Maestro Macro ]
					generate_launch_mode_rule('palettes_mode', 'p', '1', %w[], [{ 'shell_command' => "osascript -e 'tell application \"Keyboard Maestro Engine\" to do script \"A849F0C3-2743-4023-A1D3-12CC4FCD106B\"'" }]),

					# Toggle Copied Window Ⓒ [ Keyboard Maestro Macro ]
					generate_launch_mode_rule('palettes_mode', 'p', 'c', %w[], [{ 'shell_command' => "osascript -e 'tell application \"Keyboard Maestro Engine\" to do script \"185780B3-6875-453F-8D0F-D925E2E03FF0\"'" }]),

					# Toggle Dropzone Ⓓ [ Simulate Key ]
					generate_launch_mode_rule('palettes_mode', 'p', 'd', %w[], [{ 'key_code' => 'f3', 'modifiers' => %w[control option shift] }]),

					# Toggle Fantastical Mini Window Ⓕ [ URL ]
					generate_launch_mode_rule('palettes_mode', 'p', 'f', %w[], [{ 'shell_command' => "open x-fantastical2://show/mini" }]),

					# Toggle HoudahSpot Search Bar Ⓗ [ Simulate Key ]
					generate_launch_mode_rule('palettes_mode', 'p', 'h', %w[], [{ 'key_code' => 'f5', 'modifiers' => %w[control option shift] }]),

					# Toggle Keyboard Maestro Global Macro Palette Ⓚ [ Keyboard Maestro Macro ]
					generate_launch_mode_rule('palette_mode', 'p', 'k', %w[], [{ 'shell_command' => "osascript -e 'tell application \"Keyboard Maestro Engine\" to do script \"C11F2723-618F-4CA6-B829-1D2C86207C65\"'" }]),

					# Toggle SnippetsLab Assistant Ⓛ [ Simulate Key ]
					generate_launch_mode_rule('palettes_mode', 'p', 'l', %w[], [{ 'key_code' => 'f4', 'modifiers' => %w[control option shift] }]),

					# Toggle TeaCode Quick Browser Ⓠ [ Simulate Key ]
					generate_launch_mode_rule('palettes_mode', 'p', 'q', %w[], [{ 'key_code' => 'f1', 'modifiers' => %w[control option shift] }]),

					# Toggle TextExpander Inline Search [ Simulate Key ]
					generate_launch_mode_rule('palettes_mode', 'p', 'x', %w[], [{ 'key_code' => 'f2', 'modifiers' => %w[control option shift] }]),

          # Toggle Things Quick Entry ⌥ Ⓣ [ AppleScript ]
          generate_launch_mode_rule('palettes_mode', 'p', 't', %w[option], false, [{ 'shell_command' => "osascript -e 'tell application \"Things3\"' -e 'show quick entry panel' -e 'end tell'" }]),

          # Toggle Things Quick Entry with Autofill Ⓣ [ AppleScript ]
          generate_launch_mode_rule('palettes_mode', 'p', 't', %w[], false, [{ 'shell_command' => "osascript -e 'tell application \"Things3\"' -e 'show quick entry panel with autofill yes' -e 'end tell'" }]),

          # Toggle Workspaces Browser Ⓦ [ Simulate Key ]
          generate_launch_mode_rule('palettes_mode', 'p', 'w', %w[], [{ 'key_code' => 'f8', 'modifiers' => %w[control option shift] }]),

					# Toggle Yoink Ⓨ [ Simulate Key ]
					generate_launch_mode_rule('palette_mode', 'p', 'y', %w[], [{ 'key_code' => 'f10', 'modifiers' => %w[control option shift] }]),

        ].flatten,
			},


			# #### Productivity Mode
			# #### Reference Mode (KeyCue)


      # #### 🆆 Window Mode
      {
        'description' => 'Window Mode Mode',
        'manipulators' => [

        # Toggle Hyper Overlay Ⓣ [ Simulate Key ]
				generate_launch_mode_rule('window_mode', 'w', 't', %w[], [{ 'key_code' => 'f6', 'modifiers' => %w[control option shift] }]),

        # Toggle Finder Visor Ⓕ [ Keyboard Maestro Macro ]
        generate_launch_mode_rule('window_mode', 'w', 'f', %w[], [{ 'shell_command' => "osascript -e 'tell application \"Keyboard Maestro Engine\" to do script \"AB8CC6A1-E0D0-4D23-B36E-36823030FDDE\"'" }]),

        # Open Code Window Ⓒ [ Simulate Key ]
				generate_launch_mode_rule('window_mode', 'w', 'c', %w[], [{ 'key_code' => 'f7', 'modifiers' => %w[control option shift] }]),

				# Toggle Numi Ⓝ [ Simulate Key ]
				generate_launch_mode_rule('window_mode', 'w', 'n', %w[], [{ 'key_code' => 'f9', 'modifiers' => %w[control option shift] }]),

        ].flatten,
      },

    ],
  }

puts JSON.pretty_generate(data)
end


# ## generate_launch_mode
#
# Generates the necessary JSON required to define an action triggered in a launch mode.
# The first three paremeters specify the conditions required for the action to be launched, a trigger key that should be the same for all actions within a particular mode, a secondary key used to specify the action and optional modifiers that set required modifiers for an action.
# The optional_modifiers boolean designates whether 'any' optional modifiers are allowed for an action or whether none are. Generally speaking you want to allow for any optionals except for when you're defining multiple actions with with the same trigger key and from key but different modifiers. 'Any' optional modifiers is greedy so other actions with required modifiers will never be executed.
# The key code and and modifier combinations should be unique for each mode and its respective trigger key.
#
# Parameters:
# - `mode`:                 string   Required  ID string for the mode.
# - `trigger_key`:          string   Required  Key used to enter launch mode.
# - `from_key_code`:        string   Required  Key used to execute action when pressed
# - `mandatory_modifiers`:  array    Requred   One or more modifier keys. Leave empty for none
# - `any_optional`          boolean  Optional  Allow 'any' optional modifiers when true, none when false. Defaults true.
# - `to`:                   string   Required  Action to be performed
#
# Return: `data`            array   Generated JSON object
def generate_launch_mode_rule(mode, trigger_key, from_key_code, mandatory_modifiers, any_optional = true, to)
  data = []


	# Specify `'any'` optional monifiers unless explicitly set to false.
	if any_optional == true
		optional_modifiers = ['any']
	else
		optional_modifiers = []
	end


# ### Generate Actionoptional_modifiers
  h = {
    'type' => 'basic',
    'from' => {
      'key_code' => from_key_code,
      'modifiers' => Karabiner.from_modifiers(mandatory_modifiers, optional_modifiers),
    },
    'to' => to,
    'conditions' => [Karabiner.variable_if(mode, 1)],
  }

  data << h


# ### Generate Condition
  h = {
    'type' => 'basic',
    'from' => {
      'simultaneous' => [
        { 'key_code' => trigger_key },
        { 'key_code' => from_key_code },
      ],
      'simultaneous_options' => {
        'key_down_order' => 'strict',
        'key_up_order' => 'strict_inverse',
        'to_after_key_up' => [
          Karabiner.set_variable(mode, 0),
        ],
      },
      'modifiers' => Karabiner.from_modifiers(mandatory_modifiers, optional_modifiers),
    },
    'to' => [
      Karabiner.set_variable(mode, 1),
    ].concat(to),
    'parameters' => {
      'basic.simultaneous_threshold_milliseconds' => PARAMETERS[:simultaneous_threshold_milliseconds],
    },
  }

  data << h


  data
end



# # Execute

main



# # Consumed Function Keys
#
# This is the primary place I'm defining global funtion keys shotcuts like ^⌥⌘ F1 so it's easy to make sure you don't have two actions assigned to the same hotkey. However, there are rare events where I define them elsewhere and I've listed them here for reference.
#
# - ^⌥⇧⌘ F12: Expand with TeaCode.
