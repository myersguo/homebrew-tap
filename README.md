# myersguo/homebrew-tap

Homebrew tap for [AGM](https://github.com/myersguo/agm) and
[Local Recorder](https://github.com/myersguo/local-recorder).

```bash
brew install --cask myersguo/tap/agm
brew install --cask myersguo/tap/local-recorder
```

Both apps are unsigned for now; if Gatekeeper blocks the first launch, clear
the quarantine attribute for that app only, for example:

```bash
xattr -dr com.apple.quarantine "/Applications/Local Recorder.app"
```
