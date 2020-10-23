# Windows Terminal

# Reference : https://dev.to/anupa/beautify-your-windows-terminal-1la8

# Paramètres dans settings.json

# Terminal powershell
 {
       // Make changes here to the powershell.exe profile.
       "guid": "{61c54bbd-c2c6-5271-96e7-009a87ff44bf}",
       "name": "Linnea",
       "commandline": "powershell.exe -NoLogo -NoExit",
       "hidden": false,
       "colorScheme": "Blue Matrix",
       "fontFace": "Cascadia Code PL",
       "fontSize": 10,
       //"icon": "IconPath",
       "backgroundImageOpacity": 0.2,
       "acrylicOpacity": 0.8,
       "useAcrylic": true,
       "startingDirectory": "%HOME%"
 },

# Schemes

"schemes": [
    {
        "name": "Blue Matrix",
        "black": "#101116",
        "red": "#ff5680",
        "green": "#00ff9c",
        "yellow": "#fffc58",
        "blue": "#00b0ff",
        "purple": "#d57bff",
        "cyan": "#76c1ff",
        "white": "#c7c7c7",
        "brightBlack": "#686868",
        "brightRed": "#ff6e67",
        "brightGreen": "#5ffa68",
        "brightYellow": "#fffc67",
        "brightBlue": "#6871ff",
        "brightPurple": "#d682ec",
        "brightCyan": "#60fdff",
        "brightWhite": "#ffffff",
        "background": "#1d2342",
        "foreground": "#b8ffe1"
    }
],

# Install Policy Cascadia Code PL

# Install Posh-git and Oh-my-posh
Install-Module posh-git -Scope CurrentUser
Install-Module oh-my-posh -Scope CurrentUser

# Create your $PROFILE file 
Import-Module posh-git
Import-Module oh-my-posh
Set-Theme Paradox