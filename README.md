# <a href="https://github.com/dmarcoux/exercism-elixir">dmarcoux/exercism-elixir</a>

Solutions for the exercises from the Exercism Elixir track.

## Development Environment

Start with `nix-shell --pure`.

## Download Exercises Directly Under apps Directory

Create a symlink from Exercism Elixir track workspace to the `apps` directory:

```bash
mkdir -p apps
ln -s "$(pwd)/apps" "$(exercism workspace)/elixir"
```

Then proceed to download exercises as usual with `exercism download
--exercise=(...) --track=elixir` and they will be under the `apps` directory.

## Continuous Integration

The exercises are organized under an umbrella project to easily run `mix format`
and other tools across all exercises at once. It's an excuse to use what I've
learned about continuous integration for Elixir projects.

For umbrella projects, directory and application names have to match. Exercism
exercises don't follow this, since directory names use hyphen to as a word
separator while application names use underscores. This must be changed for the
continuous integration to run. Replace underscores by hyphens in application
names and surround those application names with double quotes in `mix.exs`.
