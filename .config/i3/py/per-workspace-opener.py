import i3
import os

cur_workspace = 0

workspaces = i3.get_workspaces()
for ws in workspaces:
    if ws['focused'] == True:
        cur_workspace = ws['num']

match cur_workspace:
    case 1:
        program_to_run = "firefox"
    case 2 | 3:
        program_to_run = "kitty"
    case 4:
        program_to_run = "nautilus"
    case 6:
        program_to_run = "betterbird"
    case 7:
        program_to_run = "obs"
    case 8:
        program_to_run = "spotify"
    case 9:
        program_to_run = "vesktop"
    case 10:
        program_to_run = "flatpak run com.valvesoftware.Steam"
    case 11:
        program_to_run = "qbittorrent"
    case 12:
        program_to_run = "virtualbox"
    case _:
        program_to_run = "~/.config/i3/rofi-opener.sh"

os.system(f"i3-msg exec {program_to_run}")
