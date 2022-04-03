# get-git-branch-name

Utility to get current git branch name if the current working directory is a git repository.

## Usage

```bash
branch=`get_git_branch_name`
# will print the current branch name or empty string if not in a git folder
echo $branch
```

## Install

Run `installer-for-bash.sh` or `installer-for-zsh.sh` script. The changes will be loaded from the next terminal session you will open.

## Update

Just pull the git repository to have the latest project version.

## Uninstall

For bash install remove the following lines from your `.bashrc`:

```bash
# get git branch name
if [ -f "/path/to/get-git-branch-name.sh" ]; then
    source "/path/to/get-git-branch-name.sh"
fi
```

For zsh install remove the following lines from your `.zshrc`:

```bash
# get git branch name
if [ -f "/path/to/get-git-branch-name.sh" ]; then
    autoload bashcompinit && bashcompinit
    emulate sh -c "/path/to/get-git-branch-name.sh"
fi
```

## License

[GPL-3.0](LICENSE)
