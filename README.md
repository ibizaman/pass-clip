# pass clip 0.3 [![build status][build-img]][build-url]

A [pass](https://www.passwordstore.org/) extension that lets you quickly copy
to clipboard passwords using [fzf](https://github.com/junegunn/fzf),
[rofi](https://davedavenport.github.io/rofi/) or [choose](https://github.com/chipsenkbeil/choose).


## Usage

```
Usage:
    pass clip [options]
        Provide an interactive solution to copy passwords to the
        clipboard. It will show all pass-names in either fzf or rofi,
        waits for the user to select one then copy it to the clipboard.
        The user can select fzf or rofi by giving either --fzf or
        --rofi.  By default, rofi will be selected and pass-clip will
        fallback to fzf. If the selected password does not exist, a new
        one will be generated automatically then copied to the
        clipboard. Specific password length can be given using --length
        and no symbols can be activated with --no-symbols. Note the
        latter two options must be given on the command line, one cannot
        specify them through fzf or rofi.

    Options:
        -f, --fzf        Use fzf to select pass-name.
        -r, --rofi       Use rofi to select pass-name.
        -n, --no-symbols Do not use any non-alphanumeric characters.
        -l, --length     Provide a password length.
```


## Examples

Clip `Social/facebook.com` with rofi
```
$ pass clip --rofi
# rofi pops up, user selects Social/facebook.com
Copied Social/facebook.com to clipboard. Will clear in 45 seconds.
```

Clip `Social/facebook.com` with fzf
```
$ pass clip --fzf
# fzf pops up, user selects Social/facebook.com
Copied Social/facebook.com to clipboard. Will clear in 45 seconds.
```

Clip `Social/facebook.com` with rofi as default, fzf as fallback
```
$ pass clip
# rofi pops up if possible, otherwise fzf, user selects Social/facebook.com
Copied Social/facebook.com to clipboard. Will clear in 45 seconds.
```

Clip new `New/website.com` passfile with rofi as default, fzf as fallback
```
$ pass clip
# rofi pops up if possible, otherwise fzf, user writes New/website.com
Add generated password for New/website.com.
Copied New/website.com to clipboard. Will clear in 45 seconds.
```


## Installation


### ArchLinux

```sh
pacaur -S pass-clip
```


### Other linuxes

```sh
git clone https://github.com/ibizaman/pass-clip/
cd pass-clip
sudo make install
```


### Requirements

* `pass 1.7.0` or greater.
* If you do not want to install this extension as system extension, you need to
enable user extension with `PASSWORD_STORE_ENABLE_EXTENSIONS=true pass`. You can
create an alias in `.bashrc`: `alias pass='PASSWORD_STORE_ENABLE_EXTENSIONS=true pass'`


## Contribution

Feedback, contributors, pull requests are all very welcome.


## Acknowledgments

Thanks to [roddhjav](https://github.com/roddhjav) for creating
[pass-update](https://github.com/roddhjav/pass-update) from which this
script is heavily inspired.


## License

```
Copyright (C) 2017  Pierre PENNINCKX

This program is free software: you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation, either version 3 of the License, or
(at your option) any later version.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with this program.  If not, see <http://www.gnu.org/licenses/>.
```

[build-img]: https://travis-ci.org/ibizaman/pass-clip.svg?branch=master
[build-url]: https://travis-ci.org/ibizaman/pass-clip
