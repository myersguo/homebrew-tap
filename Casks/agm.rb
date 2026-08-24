cask "agm" do
  version "0.8.0"
  sha256 "76d7366b97f26f18487b02424fe7cb64ea2cd5e66b2c42db52fb494a5e1d7d46"

  url "https://github.com/myersguo/agm/releases/download/v#{version}/AGM-#{version}-macos-arm64-unsigned.zip"
  name "AGM"
  desc "Local session browser for AI coding agents"
  homepage "https://github.com/myersguo/agm"

  depends_on arch: :arm64

  app "AGM.app"

  caveats <<~EOS
    AGM #{version} is not signed or notarized yet. If macOS blocks the
    first launch, clear the quarantine attribute for this app only:
      xattr -dr com.apple.quarantine "#{appdir}/AGM.app"
  EOS

  zap trash: [
    "~/Library/Application Support/com.myersguo.agm",
    "~/Library/WebKit/com.myersguo.agm",
  ]
end
