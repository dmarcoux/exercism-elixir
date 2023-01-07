# <a href="https://github.com/dmarcoux/exercism-elixir">dmarcoux/exercism-elixir</a>

Solutions for the exercises from the Exercism Elixir track.

## Development Environment

Start with `nix-shell --pure`.

## Continuous Integration

The exercises are organized under an umbrella project to easily run `mix format`
and other tools accross all exercises at once. It's an excuse to use what I've
learned about continuous integration for Elixir projects.

For umbrella projects, directory and application names have to match. Exercism
exercises don't follow this, since directory names use hyphen to as a word
separator while application names use underscores. This must be changed for the
continuous integration to run. Replace hyphens with underscores in directory
names with this [rename](https://github.com/pstray/rename) command (it's
available in the development environment):

```bash
rename 's/-/_/g' apps/*
```