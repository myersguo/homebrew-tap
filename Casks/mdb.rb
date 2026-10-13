cask "mdb" do
  version "0.1.1"
  sha256 "cc4b83019766a62f35a5f1cb4f806eb1beaf3f8003b79bb95c425b25cd112ee0"

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
