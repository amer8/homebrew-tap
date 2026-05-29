# Contributing

Thanks for helping improve this Homebrew tap.

## Updating Packages

For formula or cask updates, include:

- The package name.
- The new version.
- The upstream release URL.
- The new SHA-256 checksum.
- Any relevant audit or install output.

Prefer upstream GitHub release assets from the packaged project. Do not add
untrusted mirrors or repackaged binaries.

## Local Checks

Run these before opening a pull request:

```sh
ruby -c Formula/apibconv.rb
ruby -c Casks/pulsebar.rb
brew style Formula/apibconv.rb Casks/pulsebar.rb
```

After the tap has been registered locally, also run:

```sh
brew audit --formula --strict amer8/tap/apibconv
brew audit --cask --strict amer8/tap/pulsebar
brew fetch amer8/tap/apibconv
brew fetch --cask amer8/tap/pulsebar
```

## Packaging Guidelines

- Keep formulas and casks small and readable.
- Pin checksums for all release assets.
- Prefer versioned release URLs over moving targets.
- Add or update `livecheck` when possible.
- Avoid post-install scripts unless they are clearly necessary.
