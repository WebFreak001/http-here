# HTTP here

## How to use

Navigate to the folder of your choice

![Image showing a folder containing an example website](http://i.webfreak.org/88A1E3)

Right-click the folder and select "Simple HTTP Server here"

![Image showing right-click options](http://i.webfreak.org/532AE7)

Your browser will open and a tiny webserver will wait for requests on localhost

![Image showing an example website](http://i.webfreak.org/1D1F3F)

You now have a HTML file without the limitations and restrictions of the file:/// protocol.

## Installation

Use the installer for easy installation.

## Manual Installation

Copy http_here.exe, libeay32.dll, libevent.dll and ssleay32.dll into a folder of your choice. Go into the registry using regedit and navigate into `HKEY_CLASSES_ROOT\Folder\shell`

Add a folder at the left called `http_here` (or whatever you want) and set its default value to `Simple HTTP Server here`.

Add another folder into the http_here folder and call it exactly `command` and set its default value to `path\to\exe %1`

To uninstall, simply delete the http_here folder in `HKEY_CLASSES_ROOT\Folder\shell` and delete the application folder.

## From the command line

Just call `http_here.exe path\to\website` to run a HTTP Server in an external folder or run `http_here.exe .` to run it in the current working directory.
