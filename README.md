# myersguo/homebrew-tap

Homebrew tap for [AGM](https://github.com/myersguo/agm) and other projects.

```bash
brew install --cask myersguo/tap/agm --no-quarantine
```

`--no-quarantine` is recommended while AGM releases are unsigned; without it
macOS Gatekeeper blocks the first launch (see the cask caveats for the manual
`xattr` alternative).
