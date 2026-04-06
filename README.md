# P6's POSIX.2: p6python

## Table of Contents

- [Badges](#badges)
- [Summary](#summary)
- [Contributing](#contributing)
- [Code of Conduct](#code-of-conduct)
- [Usage](#usage)
  - [Hooks](#hooks)
  - [Functions](#functions)
- [Hierarchy](#hierarchy)
- [Author](#author)

## Badges

[![License](https://img.shields.io/badge/License-Apache%202.0-yellowgreen.svg)](https://opensource.org/licenses/Apache-2.0)

## Summary

TODO: Add a short summary of this module.

## Contributing

- [How to Contribute](<https://github.com/p6m7g8-dotfiles/.github/blob/main/CONTRIBUTING.md>)

## Code of Conduct

- [Code of Conduct](<https://github.com/p6m7g8-dotfiles/.github/blob/main/CODE_OF_CONDUCT.md>)

## Usage

### Hooks

- `deps` -> `p6df::modules::p6python::deps()`
- `init` -> `p6df::modules::p6python::init(_module, dir)`

### Functions

#### p6python

##### p6python/init.zsh

- `p6_python_init(dir)`
  - Args:
    - dir
- `p6_python_path_if(dir)`
  - Args:
    - dir
- `p6df::modules::p6python::deps()`
- `p6df::modules::p6python::init(_module, dir)`
  - Args:
    - _module
    - dir

## Hierarchy

```text
.
├── init.zsh
├── lib
│   └── msre.py
└── README.md

2 directories, 3 files
```

## Author

Philip M. Gollucci <pgollucci@p6m7g8.com>
