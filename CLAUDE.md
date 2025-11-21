# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Repository Overview

This is a Homebrew tap for [llmsnap](https://github.com/napmany/llmsnap), a proxy server for swapping models on vllm, llama.cpp and any other OpenAI API-compatible server. The tap provides pre-built binaries for macOS (arm64/amd64) and Linux (arm64/amd64).

## Commands

### Test the formula locally
```bash
brew install --verbose --debug Formula/llmsnap.rb
brew test llmsnap
```

### Audit the formula
```bash
brew audit --strict Formula/llmsnap.rb
```

### Uninstall for re-testing
```bash
brew uninstall llmsnap
```

## Architecture

- `Formula/llmsnap.rb` - The Homebrew formula that defines download URLs, SHA256 checksums, and installation instructions for each platform/architecture combination
- `.github/workflows/update-formula.yml` - GitHub Actions workflow triggered by `repository_dispatch` events from the upstream llmsnap repo when new releases are published

## Formula Update Process

The formula is automatically updated when the upstream `napmany/llmsnap` repository publishes a new release:
1. Upstream repo triggers a `repository_dispatch` event with `new-release` type
2. Workflow downloads the checksums file from the release
3. Parses checksums for all platform/architecture combinations
4. Updates version and SHA256 values in `Formula/llmsnap.rb` using sed
5. Commits and pushes the changes

## Manual Formula Update

When manually updating the formula:
1. Update the `version` string
2. Download release tarballs and compute SHA256 checksums: `shasum -a 256 <file>`
3. Update all four `sha256` values (darwin_arm64, darwin_amd64, linux_arm64, linux_amd64)
