# dotfiles

My dotfiles for Fedora Linux and Windows.

## Dependencies

First, we need install [git](https://git-scm.com/install "page for install git") and [chezmoi](https://www.chezmoi.io/install/ "page for install chezmoi").

### Fedora

For install git and chezmoi in Fedora, run in the shell:

```bash
sudo dnf install git chezmoi
```

### Windows

For install git and chezmoi in Windows, first install scoop:

```powershell
Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope CurrentUser
Invoke-RestMethod -Uri https://get.scoop.sh | Invoke-Expression
```

And now, install git and chezmoi:

```powershell
scoop install git chezmoi
```

## Installation

For install dotfiles, run:

```bash
chezmoi init --apply gauloish
```