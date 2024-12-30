# Apps

Main apps:
* Firefox/Chrome
* IntelliJ
* VSCode
* Postman
* DBeaver
* Slack
* Iterm2

Side apps:
* Alt+Tab
* Karbiner Elements
* Rectangle
* Finder

# MAC General Settings

Desktop & Dock:
* Displays have separate spaces: On
* `defaults write com.apple.dock autohide-time-modifier -int 0; killall Dock` (for faster dock opening)

Accessibility -> Zoom:
* Use scroll gesture with modifier keys to zoom: On
* Modifier key for scroll gesture: Option

Misc:
* `sudo defaults write /Library/Preferences/FeatureFlags/Domain/UIKit.plist redesigned_text_cursor -dict-add Enabled -bool NO` (for no capslock animation, must reboot)

# MAC Keyboard Settings

Overall settings:
* Key repeat rate: Fastest
* Delay until repeat: Second Shortest
* Press "globe" key to "Do Nothing"

Launchpad & Dock:
* Show Launchpad: opt+d

Mission control:
* Mission control: opt+tab
* Application window: Off
* Show desktop: Off
* Mission Control:
    * Move left a space: ctrl+cmd+left
    * Move right a space: ctrl+cmd+right
    * Switch to Desktop X: Off

Keyboard:
* Turn off everything

Screenshots:
* Save picture of screen as a file: ctrl+shift+F1
* Copy picture of screen to the clipboard: Off
* Save picture of selected area as a file: F1
* Copy picture of selected area to the clipboard: shift+F1
* Screenshot and recording options: ctrl+shift+cmd+F1

Spotlight:
* Show Spotlight search: opt+r
* Show Finder search window: opt+e

Function Keys:
* Use F1, F2 keys as standard function keys: On

App shortcuts:
* All applications:
    * Show help menu: Off
    * Close Window: cmd+F4
    * Close: cmd+F4
    * Zoom In: ctrl+(plus)
    * Zoom Out: ctrl+(minus)
    * New Tab: ctrl+t
* Visual Studio Code.app
    * Quit Visual Studio Code: cmd+F4
    * Close Window: ctrl+cmd+w
* iTerm.app
    * Close: cmd+k
    * Close Terminal Window: cmd+F4
    * Close All Panes in Tab: ctrl+w
    * Maximize Active Pane: cmd+z
* Firefox.app
    * Bookmark Current Tab...: ctrl+d
    * New Window: ctrl+n
    * New Private Window: ctrl+shift+p
    * Bookmark All Tabs...: ctrl+shift+d
    * Manage Bookmarks: ctrl+shift+o
* Intellij.app:
    * Hide IntelliJ IDEA: Any random unused shortcut

# Alt+Tab

Controls (remember to disable other shortcuts except for shortcuts 1):
* Trigger shortcut: cmd+tab
* Show windows from spaces: Visible spaces

Appearances:
* Thumnails
* Size: Small
* Theme: Dark
* Visibility: Highest
* Show on: Screen including menu bar

Blacklists:
* com. --> Hide in AltTab (when no open window)

# Rectangle

Shortcuts (no shortcuts on the rest):
* Left Half: ctrl+opt+left
* Right Half: ctrl+opt+right
* Maximize: ctrl+opt+up
* Almost Maximize: ctrl+opt+down
* Next Display: ctrl+opt+shift+right
* Previous Display: ctrl+opt+shift+left

Settings:
* Double-click window title bar to maximize/restore: On

# Iterm2

General:
* Startup:
    * window restoration policy: Only Restore Hotkey Window (Open profiles window)

Appearance:
* Windows:
    * Hide scrollbars: On
* Panes:
    * Show per-pane title bar with split panes: Off
* Dimming:
    * Dimming amount: 20
    * Dim inactive split panes: On
    * Dim background windows: Off
    * Dimming affects only text, not background: On

Keys -> Hotkey (for hotkey window):
* Hotkey: opt+t
* Pin hotkey window: Off
* Automatically reopen on app reactivation: Off
* Animate showing and hiding: Off
* Floating window: Off
