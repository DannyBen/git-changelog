% git-changelog(1) Version 0.1.14 | Generate a human-readable change log from git.
% 
% August 2023

NAME
==================================================

**git-changelog** - Generate a human-readable change log from git.

SYNOPSIS
==================================================

**git-changelog** [OPTIONS]

DESCRIPTION
==================================================

Generate a human-readable change log from git.



This bash script lets you generate a human readable change log from your git repository.



It requires that you:

- Create git tags for the different versions of your code.

- Format the commit messages for commits you wish to include in the change log, in the same way you format a markdown bullet, by prefixing it with a hyphen and a space ("- ").


OPTIONS
==================================================

**--tail, -t N**
:    Show only the last N tags.


**--reverse, -r**
:    Show tags in reverse order (newest first).


**--out, -o PATH**
:    Save output to a file.


**--color, -c MODE**
:    Enable or disable color. Supported modes:
    
    - **yes**, **on**, **always**
    
    - **no**, **off**, **never**
    
    - **auto**

     - Default Value: **auto**

**--save, -s**
:    Shortcut for **--reverse --out CHANGELOG.md**.


**-1**
:    Shortcut for **--tail 1**.


**-2**
:    Shortcut for **--tail 2**.


DEPENDENCIES
==================================================

**git**

EXAMPLES
==================================================

~~~
git changelog --tail 3

git changelog --out CHANGELOG.md

git changelog -r -o CHANGELOG.md

~~~


SOURCE CODE
==================================================

https://github.com/dannyben/git-changelog


ISSUE TRACKER
==================================================

https://github.com/dannyben/git-changelog/issues
