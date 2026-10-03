# lra/tap

Homebrew formulae for my projects.

## Trust the tap

Homebrew only loads formulae from taps you trust. Trust this one first:

```sh
brew trust --tap lra/tap
```

Or in a `Brewfile`:

```ruby
tap "lra/tap", trusted: true
```

To trust a single formula instead of the whole tap: `brew trust --formula lra/tap/<formula>`.
Undo with `brew untrust --tap lra/tap`.

## Install

```sh
brew install lra/tap/<formula>
```

## Formulae

| Formula | Description |
| ------- | ----------- |
| [`sotb`](https://github.com/lra/sotb) | Shadow of the Blitz parallax scrolling demo |
