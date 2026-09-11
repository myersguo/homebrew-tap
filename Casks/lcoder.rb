cask "lcoder" do
  version "0.1.3"
  sha256 "dabba6927761e49b219748763d1dd7cdfffb026c5adb18b55d4d709a790f15b2"

  url "https://github.com/myersguo/LCoder/releases/download/v#{version}/LCoder-#{version}-macos-arm64-unsigned.zip"
  name "LCoder"
  desc "Local code-reading and Git review workbench with embedded AI terminals"
  homepage "https://github.com/myersguo/LCoder"

  depends_on arch: :arm64
  depends_on macos: :ventura

  app "LCoder.app"

  zap trash: [
    "~/Library/Application Support/com.myersguo.lcoder",
    "~/Library/Caches/com.myersguo.lcoder",
    "~/Library/Preferences/com.myersguo.lcoder.plist",
    "~/Library/Saved Application State/com.myersguo.lcoder.savedState",
    "~/Library/WebKit/com.myersguo.lcoder",
  ]

  caveats <<~EOS
    LCoder #{version} is ad-hoc signed, but not Developer ID signed or notarized.
    If macOS blocks the first launch, clear the quarantine attribute for this app only:
      xattr -dr com.apple.quarantine "#{appdir}/LCoder.app"
  EOS
end
