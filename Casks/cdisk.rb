cask "cdisk" do
  version "0.6.0"
  sha256 "11adaf41e0d05aa99d632c919b814d43a1bf6477f8f1ed6c00b5d2a7b18eaab9"

  url "https://github.com/myersguo/cdisk/releases/download/v#{version}/CDisk-macos-arm64-unsigned.zip"
  name "CDisk"
  desc "Local-first disk analyzer and safe cleanup tool"
  homepage "https://github.com/myersguo/cdisk"

  depends_on arch: :arm64
  depends_on macos: :big_sur

  app "CDisk.app"

  zap trash: [
    "~/Library/Application Support/com.myersguo.cdisk",
    "~/Library/Caches/com.myersguo.cdisk",
    "~/Library/Preferences/com.myersguo.cdisk.plist",
    "~/Library/Saved Application State/com.myersguo.cdisk.savedState",
    "~/Library/WebKit/com.myersguo.cdisk",
  ]

  caveats <<~EOS
    CDisk #{version} is ad-hoc signed, but not Developer ID signed or notarized.
    If macOS blocks the first launch, right-click CDisk in Finder, choose Open,
    and confirm that you want to launch it.
  EOS
end
