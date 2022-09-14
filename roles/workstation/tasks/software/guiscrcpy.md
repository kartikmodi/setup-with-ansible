# installed pyenv with pyenv-installer because guiscrcpy doesn't run 3.10

# dep problems 
~/.pyenv/versions/3.9.13/bin/pip3 install PyQt6 #this will probably not work properly. Setting menu will throw error PyQt5 not found so need to install that
~/.pyenv/versions/3.9.13/bin/pip3 install qt6-tools # dont know how well this is helping
~/.pyenv/versions/3.9.13/bin/pip3 install PySide6 
~/.pyenv/versions/3.9.13/bin/pip3 install PySide2 # dont install this 

130 workstation@nuc:~$  ~/.pyenv/versions/3.9.13/bin/pip3 list
Package            Version
------------------ ---------
black              22.3.0
cairocffi          1.3.0
CairoSVG           2.5.2
cffi               1.15.1
click              8.1.3
colorama           0.4.5
coloredlogs        15.0.1
cssselect2         0.6.0
defusedxml         0.7.1
guiscrcpy          2022.7.1
humanfriendly      10.0
mypy-extensions    0.4.3
pathspec           0.10.1
Pillow             9.2.0
pip                22.0.4
platformdirs       2.5.2
psutil             5.9.2
pycparser          2.21
pynput             1.6.8
PyQt5              5.15.7
PyQt5-Qt5          5.15.2
PyQt5-sip          12.11.0
PyQt6              6.3.1
PyQt6-Qt6          6.3.1
PyQt6-sip          13.4.0
PySide6            6.3.1
PySide6-Addons     6.3.1
PySide6-Essentials 6.3.1
python-dotenv      0.21.0
python-xlib        0.31
qt6-applications   6.1.0.2.2
qt6-tools          6.1.0.1.2
QtPy               1.11.3
setuptools         58.1.0
shiboken2          5.15.2.1
shiboken6          6.3.1
six                1.16.0
tinycss2           1.1.1
tomli              2.0.1
typing_extensions  4.3.0
webencodings       0.5.1
WARNING: You are using pip version 22.0.4; however, version 22.2.2 is available.
You should consider upgrading via the '/home/workstation/.pyenv/versions/3.9.13/bin/python3.9 -m pip install --upgrade pip' command.
