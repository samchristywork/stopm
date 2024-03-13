## Overview

This is a very simple package manager for Vim/NeoVim plugins. The provided Bash
script allows you to easily clone Vim plugins from GitHub directly into the
correct location in your Vim configuration.

## How it works

The script first checks if you have a `pack` directory in the current folder.
If not, it asks you to create one (hint: it should be in the root of your Vim
configuration). Afterwards, the script lists all installed packages. Finally,
it clones the GitHub repository specified by the command line arguments into
the `pack` directory.

## Setup

To use the script, you clone this repository and move `stopm.sh` into the root
of your Vim/NeoVim configuration:

```bash
git clone https://github.com/samchristywork/stopm
mv stopm/stopm.sh ~/path/to/config
```

You can then run the script with `./stopm.sh` from inside your Vim/NeoVim
configuration directory.

## Usage

To add a new package (Vim plugin), you must provide the GitHub username and
repository name as arguments when running the script.

For example:

```bash
./STOMP.sh tpope vim-surround
```

This will add `vim-surround` from user `tpope` to your Vim plugins.

## Limitations

Only GitHub repositories are supported. If you need a repository from some
other domain, you could edit stopm.sh, or fork the repository to GitHub, or
(GASP!) manually clone the repository.

## License

This work is licensed under the GNU General Public License version 3 (GPLv3).

[<img src="https://s-christy.com/status-banner-service/GPLv3_Logo.svg" width="150" />](https://www.gnu.org/licenses/gpl-3.0.en.html)
