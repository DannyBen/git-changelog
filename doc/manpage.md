% git-changelog(1) Version 0.1.1 | Change Log Generator
% Danny Ben Shitrit <https://github.com/dannyben>
% September 2020

<!-- Reference: https://linux.die.net/man/5/pandoc_markdown -->


NAME
==================================================

**git-changelog** - Change Log Generator


SYNOPSIS
==================================================

**git-changelog** [options | --help]


DESCRIPTION
==================================================

**git-changelog** is a bash script that generates a human readable changelog
log from your git repository. It requires that you create git tags for 
the different versions of your code, and that you prefix the git commits
messages you want to appear in the changelog with "- " (hyphen followed
by a space).


OPTIONS
==================================================

`-h, --help`
~    Show available options.

`-v, --version`
~    Show version number.

`--tail, -t N`
~    Show only the last N tags.

`--out, -o PATH`
~    Save output to a file.

`--color, -c OPTION`
~    Enable or disable color.
     Supported options: *yes*, *on*, *always*, *no*, *off*, *never*, *auto*.


SOURCE CODE
==================================================

https://github.com/dannyben/git-changelog


ISSUE TRACKER
==================================================

https://github.com/dannyben/git-changelog/issues