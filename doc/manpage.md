% git-changelog(1) Version 0.1.12 | Change Log Generator
% Danny Ben Shitrit <https://github.com/dannyben>
% October 2022

<!-- Reference: https://linux.die.net/man/5/pandoc_markdown -->


NAME
==================================================

**git-changelog** - Change Log Generator


SYNOPSIS
==================================================

**git changelog** [--tail N] [--reverse] [--out PATH] [--color MODE]  
**git changelog** [--save]


DESCRIPTION
==================================================

**git-changelog** is a bash script that generates a human readable change
log from your git repository. It requires that you create git tags for 
the different versions of your code, and that you prefix the git commit
messages you want to appear in the change log with "- " (hyphen followed
by a space).


OPTIONS
==================================================

-h, --help
:    Show available options.

-v, --version
:    Show version number.

-t, --tail N
:    Show only the last N tags.

-r, --reverse
:    Show tags in reverse order (newest first).

-o, --out PATH
:    Save output to a file.

-c, --color MODE
:    Enable or disable color.
     Supported modes: *yes*, *on*, *always*, *no*, *off*, *never*, *auto*.

-s, --save
:    Shortcut for **--reverse --out CHANGELOG.md**.

-1
:    Shortcut for **--tail 1**.

-2
:    Shortcut for **--tail 2**.



SOURCE CODE
==================================================

https://github.com/dannyben/git-changelog


ISSUE TRACKER
==================================================

https://github.com/dannyben/git-changelog/issues
