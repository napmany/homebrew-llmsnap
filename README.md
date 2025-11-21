# llmsnap's Homebrew tap

## Setup

`brew install napmany/llmsnap/llmsnap`

Or

```bash
brew tap napmany/llmsnap
brew install llmsnap
```
Or

In a [`brew bundle`](https://github.com/Homebrew/homebrew-bundle) `Brewfile`:

```ruby
tap "napmany/llmsnap"
brew "llmsnap"
```

## Running llmsnap


1. Create a configuration file, see the [configuration documentation](https://github.com/napmany/llmsnap/wiki/Configuration).
1. Run the binary with `llmsnap --config path/to/config.yaml --listen localhost:8080`.
   Available flags:
   - `--config`: Path to the configuration file (default: `config.yaml`).
   - `--listen`: Address and port to listen on (default: `:8080`).
   - `--version`: Show version information and exit.
   - `--watch-config`: Automatically reload the configuration file when it changes. This will wait for in-flight requests to complete then stop all running models (default: `false`).

## Documentation

`brew help`, `man brew` or check [Homebrew's documentation](https://docs.brew.sh).

[llmsnap](https://github.com/napmany/llmsnap?tab=readme-ov-file) for more information on using `llmsnap`
