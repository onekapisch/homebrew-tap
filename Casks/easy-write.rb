cask "easy-write" do
  version "2.1.0"
  sha256 "ad76d7f16d223966ac3132b0f026c44ac6dc2848b84038f624f1e492afa86209"

  url "https://github.com/onekapisch/easy-write/releases/download/v#{version}/EasyWrite-#{version}.dmg"
  name "Easy Write"
  desc "Translate and rewrite selected text with on-device Apple Intelligence"
  homepage "https://www.onekapisch.com/products/easy-write/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: :tahoe

  app "Easy Write.app"

  uninstall quit: "com.onekapisch.easywrite"

  zap trash: [
    "~/Library/Application Support/Easy Write",
    "~/Library/Caches/com.onekapisch.easywrite",
    "~/Library/HTTPStorages/com.onekapisch.easywrite",
    "~/Library/Preferences/com.onekapisch.easywrite.plist",
    "~/Library/WebKit/com.onekapisch.easywrite",
  ]
end
