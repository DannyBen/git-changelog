
# git-changelog

![Version](https://img.shields.io/badge/version-0.1.12-blue.svg)
[![Build Status](https://github.com/DannyBen/git-changelog/workflows/Test/badge.svg)](https://github.com/DannyBen/git-changelog/actions?query=workflow%3ATest)

Create a markdown change log from your git repository (without GitHub).

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
markdown change log using these rules:

1. Group `git log` events by tag
2. Only include tags that either:
   - Start with the letter `v` followed by a digit (`v1.2.3`)
   - Start with a digit (`1.2.3`)
3. Only include log events that start with a hyphen followed by a space
   (`"- Fixed something"`)


## Contributing / Support

If you experience any issue, have a question or a suggestion, or if you wish
to contribute, feel free to [open an issue][issues].

---

[issues]: https://github.com/DannyBen/git-changelog/issues
[setup]: setup
[changelog]: CHANGELOG.md
