cask "easy-write" do
  version "2.0.2"
  sha256 "cc3a7dcd9e9327c536646ec2ed03b01962a5271180131d592286de1636288bd1"

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
