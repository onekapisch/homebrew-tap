cask "clip-4-breakfast" do
  version "1.5.2,12"
  sha256 "a51a7d21e1c43da40aaaca7f2a90f51c1b2fcc9c30438bdbf6ec1ddfe34b315d"

  url "https://updates.clip4breakfast.app/downloads/Clip-4-Breakfast-#{version.csv.first}-#{version.csv.second}.dmg"
  name "Clip 4 Breakfast"
  desc "Clipboard history with Keepers, paste stacks and framed screenshots"
  homepage "https://clip4breakfast.app/"

  livecheck do
    url "https://updates.clip4breakfast.app/appcast.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: :sonoma

  app "Clip 4 Breakfast.app"

  uninstall quit: "app.clip4breakfast"

  zap trash: [
    "~/Library/Application Support/Clip 4 Breakfast",
    "~/Library/Caches/app.clip4breakfast",
    "~/Library/Caches/app.clip4breakfast.capture-staging",
    "~/Library/HTTPStorages/app.clip4breakfast",
    "~/Library/Preferences/app.clip4breakfast.plist",
    "~/Library/WebKit/app.clip4breakfast",
  ]
end
