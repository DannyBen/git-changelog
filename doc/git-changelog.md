% git-changelog(1) Version 0.2.0 | Generate a human-readable change log from git.
% Danny Ben Shitrit \<https://github.com/dannyben\>
% February 2024

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

--tail, -t N
--------------------------------------------------

Show only the last N tags.


--reverse, -r
--------------------------------------------------

Show tags in reverse order (newest first).


--out, -o PATH
--------------------------------------------------

Save output to a file.


--color, -c MODE
--------------------------------------------------

Enable or disable color. Supported modes:

- **yes**, **on**, **always**
- **no**, **off**, **never**
- **auto**

- Default Value: **auto**

--save, -s
--------------------------------------------------

Shortcut for **--reverse --out CHANGELOG.md**.


-1
--------------------------------------------------

Shortcut for **--tail 1**.


-2
--------------------------------------------------

Shortcut for **--tail 2**.


DEPENDENCIES
==================================================

git
--------------------------------------------------


EXAMPLES
==================================================

~~~
git changelog --tail 3

git changelog --out CHANGELOG.md

git changelog -r -o CHANGELOG.md

~~~

# BREAK MARKER

When using **--save**, you can include manually edited content in the
**CHANGELOG.md** file. To do so, add a marker in the following format to your
**CHANGELOG.md** file:

  \<!-- break v1.2.3 --\>

This will make **git changelog --save** perform the following actions:

1. Extract changelog commits until it reaches the tag **v1.2.3**. Since tags are
   listed in reverse order, it means it will extract only newer tags.
2. Append the content of the **CHANGELOG.md** file starting from the marker
   onward.
3. Save the result back to **CHANGELOG.md**.

Note that this only makes sense when using **--save** or **--reverse --out FILE.md**.

# SOURCE CODE

https://github.com/dannyben/git-changelog

# ISSUE TRACKER

https://github.com/dannyben/git-changelog/issues
