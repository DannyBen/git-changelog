# git-changelog

![Version](https://img.shields.io/badge/version-0.3.3-blue.svg)
[![Build Status](https://github.com/DannyBen/git-changelog/workflows/Test/badge.svg)](https://github.com/DannyBen/git-changelog/actions?query=workflow%3ATest)

Create a markdown changelog from your git repository (without GitHub).

---

## Install

### Installing with the setup script

The simplest way to install, is to run the [installation script][setup]:

```shell
$ curl -Ls get.dannyb.co/git-changelog/setup | bash
```

It will:

- Download the executable to `/usr/local/bin/git-changelog`
- Download the manpage to `/usr/local/share/man/man1/git-changelog.1`

### Installing manually

If you prefer to install manually:

1. Download the [git-changelog](/git-changelog) file, place it somewhere in
   your path (for example `/usr/local/bin`), and make it executable.
2. Optionally, download the [manpage](/doc/git-changelog.1) and place it in
   `/usr/local/share/man/man1`.


## Example

The [changelog][changelog] in this repository was generated with
`git changelog`.


## Usage

Run `git changelog` in any compatible git repository. It will print a
markdown changelog using these rules:

1. Group `git log` events by tag
2. Only include tags that either:
   - Start with the letter `v` followed by a digit (`v1.2.3`)
   - Start with a digit (`1.2.3`)
3. Only include log events that start with a hyphen followed by a space
   (`"- Fixed something"`)

## Merging with manual content

When using `--save`, you can include manually edited content in the
`CHANGELOG.md` file. To do so, add a marker in the following format to your
`CHANGELOG.md` file:

```html
<!-- break v1.2.3 -->
```

This will make `git changelog --save` perform the following actions:

1. Extract changelog commits until it reaches the tag `v1.2.3`. Since tags are
   listed in reverse order, it means it will extract only newer tags.
2. Append the content of the `CHANGELOG.md` file starting from the marker
   onward.
3. Save the result back to `CHANGELOG.md`.

See [this CHANGELOG.md file](https://raw.githubusercontent.com/DannyBen/git-changelog/master/test/fixtures/CHANGELOG.md) as an example.

*Note that this only makes sense when using `--save` or
`--reverse --out FILE.md`.*

## Adding commit links and tag comparison links

`git-changelog` can add two types of links to your change log:

1. Link for each change (commit links).
2. Link for comparing the entire tag with the previous tag (compare links).

### Commit links

Set the environment variable `CHANGELOG_COMMIT_URL` to a URL. `%h` will be
replaced with the short commit hash, and `%H` with the long commit hash:

```bash
export CHANGELOG_COMMIT_URL=https://github.com/DannyBen/git-changelog/commit/%h
```

### Compare links

Set the environment variable `CHANGELOG_COMPARE_URL` to a URL. `%s` will be
replaced with the git ref range (e.g. `v1.0..v1.1`):

```bash
export CHANGELOG_COMPARE_URL=https://github.com/dannyben/git-changelog/compare/%s
```

## Uninstalling

```shell
$ curl -Ls get.dannyb.co/git-changelog/uninstall | bash
```


## Contributing / Support

If you experience any issue, have a question or a suggestion, or if you wish
to contribute, feel free to [open an issue][issues].

---

[issues]: https://github.com/DannyBen/git-changelog/issues
[setup]: setup
[changelog]: CHANGELOG.md
