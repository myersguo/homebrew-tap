cask "local-recorder" do
  version "0.1.0"
  sha256 "2679b891d604b870d65733edb83c62c496e233c98806eb16ed467a7d008bd73a"

  url "https://github.com/myersguo/local-recorder/releases/download/preview-#{version}-macos-arm64/Local-Recorder-preview-#{version}-macos-arm64-unsigned.zip"
  name "Local Recorder"
  desc "Local-first desktop screen recorder with recoverable project storage"
  homepage "https://github.com/myersguo/local-recorder"

  depends_on arch: :arm64
  depends_on macos: ">= :ventura"

  # The archive wraps the bundle in a versioned preview folder.
  app "Local Recorder preview #{version}/Local Recorder.app"

  caveats <<~EOS
    Local Recorder #{version} is a technical preview: it is not signed or
    notarized. If macOS blocks the first launch, clear the quarantine
    attribute for this app only:
      xattr -dr com.apple.quarantine "#{appdir}/Local Recorder.app"

    Grant Screen Recording, Camera, or Microphone permission when prompted.
    Recordings are stored in ~/Library/Application Support/local-recorder and
    are deleted by `brew uninstall --zap`.
  EOS

  zap trash: [
    "~/Library/Application Support/local-recorder",
    "~/Library/Caches/local-recorder",
    "~/Library/Preferences/io.github.myersguo.localrecorder.plist",
    "~/Library/Saved Application State/io.github.myersguo.localrecorder.savedState",
  ]
end
