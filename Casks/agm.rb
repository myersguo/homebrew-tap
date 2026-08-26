cask "agm" do
  version "0.10.0"
  sha256 "30687d715034794817b129c85b47f9ac0959451a41f22aa3c2a34e7857efd53c"

  url "https://github.com/myersguo/agm/releases/download/v#{version}/AGM-#{version}-macos-arm64-unsigned.zip"
  name "AGM"
  desc "Local session browser for AI coding agents"
  homepage "https://github.com/myersguo/agm"

  depends_on arch: :arm64
  depends_on :macos

  app "AGM.app"

  zap trash: [
    "~/Library/Application Support/com.myersguo.agm",
    "~/Library/WebKit/com.myersguo.agm",
  ]

  caveats <<~EOS
    AGM #{version} is ad-hoc signed, but not Developer ID signed or notarized.
    If macOS blocks the first launch, clear the quarantine attribute for this app only:
      xattr -dr com.apple.quarantine "#{appdir}/AGM.app"
  EOS
end
