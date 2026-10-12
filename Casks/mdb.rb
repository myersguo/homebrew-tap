cask "mdb" do
  version "0.1.0"
  sha256 "47f5ce8447b83e0dd700f5d3606510438940f0c66a90271e493ad8d4e5702d63"

  url "https://github.com/myersguo/mdb/releases/download/v#{version}/MDB-#{version}-macos-arm64.zip"
  name "MDB"
  desc "Desktop database client for MySQL and SQLite"
  homepage "https://github.com/myersguo/mdb"

  depends_on arch: :arm64
  depends_on macos: :big_sur

  app "MDB.app"

  zap trash: [
    "~/Library/Application Support/com.myersguo.mdb",
    "~/Library/Caches/com.myersguo.mdb",
    "~/Library/Preferences/com.myersguo.mdb.plist",
    "~/Library/WebKit/com.myersguo.mdb",
  ]

  caveats <<~EOS
    MDB is ad-hoc signed, but not Developer ID signed or notarized.
    macOS may require approval in Privacy & Security on first launch.
  EOS
end
