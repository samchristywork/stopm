![Banner](https://s-christy.com/sbs/status-banner.svg?icon=package_2.svg&hue=250&title=STOPM&description=What%20if%20managing%20packages%20for%20your%20text%20editor%20was%20simple%3F)

## Overview

<b>STOPM - Sam's Totally Obvious Package Manager</b>

This is a very simple package manager for Vim/NeoVim plugins. The provided Bash
script allows you to easily clone Vim plugins from GitHub directly into the
correct location in your Vim configuration.

## How it works

The script first checks if you have a `pack` directory in the current folder.
If not, it asks you to create one (hint: it should be in the root of your Vim
configuration). Afterwards, the script lists all installed packages. Finally,
it clones the GitHub repository specified by the command line arguments into
the `pack` directory.

## Features

- Works for both Vim and NeoVim.
- Extremely easy to understand.
- Creates a list of all installed repositories.
- Has built-in error handling.
- Easy to install/set up.
- Installs Vim/NeoVim packages in just one command.
- Can install most, if not all Vim/NeoVim packages on GitHub.
- Only 28 lines of code for maximum simplicity.

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

## Requirements

```
bash
git
vim or neovim
```

## Important Tips

- Make sure you create a `pack` directory in the root of your Vim configuration
  before running this script.

- Always run the script within the root of your Vim configuration directory.

- The bash script automatically clones the repository from GitHub into the
  correct location in your `pack` directory - it will create a new
  `user/start/package` directory structure.

## Limitations

Only GitHub repositories are supported. If you need a repository from some
other domain, you could edit stopm.sh, or fork the repository to GitHub, or
(GASP!) manually clone the repository.

## License

This work is licensed under the GNU General Public License version 3 (GPLv3).

[<img src="https://s-christy.com/status-banner-service/GPLv3_Logo.svg" width="150" />](https://www.gnu.org/licenses/gpl-3.0.en.html)
