# jlenv-each: Execute a command for each Julia version

## Installation

To install jlenv-each, clone this repository into your jlenv plugins directory.

```bash
git clone https://github.com/jlenv/jlenv-each.git "$(jlenv root)"/plugins/jlenv-each
```

## Usage

```bash
jlenv help each
```

[![Build Status](https://travis-ci.com/jlenv/jlenv-each.svg?branch=master)](https://travis-ci.com/jlenv/jlenv-each) [![CodeFactor](https://www.codefactor.io/repository/github/jlenv/jlenv-each/badge)](https://www.codefactor.io/repository/github/jlenv/jlenv-each) 

Verbose mode will print a header for each Julia so you can distinguish the
output.

**Note**: [Version aliases](https://github.com/jlenv/jlenv-aliases)
(versions that are just symlinks pointing to another jlenv version) are skipped
when iterating through the list of jlenv versions.

### Examples:

```bash
jlenv each julia -e 'using Pkg; Pkg.status()'
```

## Version History

**1.0.0** (October 13, 2019)

* Initial public release for Julia.

## License

Released under the MIT license. See `LICENSE` for details.
