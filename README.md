
# git-changelog

![Version](https://img.shields.io/badge/version-0.1.1-blue.svg)
[![Build Status](https://github.com/DannyBen/git-changelog/workflows/Test/badge.svg)](https://github.com/DannyBen/git-changelog/actions?query=workflow%3ATest)

Create a markdown change log from your git repository (without GitHub).

---

## Install

The simplest way to install, is to run the installation script:

```shell
$ bash <(curl -Ls get.dannyb.co/git-changelog/setup)
```

If you prefer to install manually, simply download the
[git-changelog](/git-changelog) file, place it somewhere in your path
(for example `/usr/local/bin`), and make it executable.


## Usage

Use either `git-changelog` or `git changelog` to generate a change log in any
compatible git repository. Note that in order to see the help screen, you
must use `git-changelog --help` (and not `git changelog --help`).

The `git changelog` command will print a markdown change log using these
rules:

1. Group git log events by tags
2. Only include tags that either:
   - Start with the letter `v` followed by a digit (`v1.2.3`)
   - Start with a digit (`1.2.3`)
3. Only include log events that start with a hyphen followed by a space (`"- Fixed something"`)


## Contributing / Support

If you experience any issue, have a question or a suggestion, or if you wish
to contribute, feel free to [open an issue][issues].

---

[issues]: https://github.com/DannyBen/github-changelog/issues

