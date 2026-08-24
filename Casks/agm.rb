cask "agm" do
  version "0.7.0"
  sha256 "031e91c1cd7ade302415417c8dd8dae4fb1b12dd8bd2763401d29eb95accf05d"

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
