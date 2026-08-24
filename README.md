# myersguo/homebrew-tap

Homebrew tap for [AGM](https://github.com/myersguo/agm) and other projects.

```bash
brew install --cask myersguo/tap/agm
```

AGM releases are unsigned for now; if Gatekeeper blocks the first launch,
clear the quarantine attribute for this app only:

```bash
xattr -dr com.apple.quarantine /Applications/AGM.app
```
