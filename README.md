# pyenv-chooser
> Allow pyenv to select the python version from the program name.

## Install

Installing **pyenv-chooser** as a pyenv plugin will give you access to the provided behavior.

```sh
$ git clone git://github.com/oscarmcm/pyenv-chooser.git ~/.pyenv/plugins/pyenv-chooser
```

## Usage

```sh
$ pyenv install 2.7.5
$ pyenv install 3.6.1
$ pyenv install 3.6.2

$ pyenv version
system (set by ...)

$ python3.6
pyenv-chooser: Found multiple Python python3.6 in pyenv, choose a version.
1) 3.6.1
2) 3.6.2
3) cancel
#? <option>
Selected Python <option> version

```

## License
Unless otherwise noted, all files contained within this project are liensed under the MIT opensource license. See the included file LICENSE or visit [opensource.org][] for more information.

[opensource.org]: http://opensource.org/licenses/MIT
