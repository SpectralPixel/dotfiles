import i3
import os

cur_workspace = 0

workspaces = i3.get_workspaces()
for ws in workspaces:
    if ws['focused'] == True:
        cur_workspace = ws['num']
        break

app_to_launch = match cur_workspace:
    case 1:
        "firefox"
    case _:
        "kitty"

os.system(f"i3-msg exec {app_to_launch}")
