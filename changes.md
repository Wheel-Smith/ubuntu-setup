# Changes done, issues and to-do
## Packages installed (additionally):
- brave-browser
- xclip
- curl

## issues
- for some reason zellij cannot reattach to previous sessions, or i just dont know how
+ fix -> don't try to use kill-all-sessions, instead use delete-all-sessions
- how are files in ~/.local/share/omakub/ -> they are cloned there...

## To-do:
- make changes to omakub application (after satisfied with the setup)
- find out where /.local/share/ files and directories comes from
- add breaking_bad theme to themes
-

### Trying to map the process
1. install.sh  -> cloning project to ~/.local/share/omakub/
              |-> asks for first run choices
              |-> installs terminal tools
              |-> installs desktop apps
