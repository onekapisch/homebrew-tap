cask "mac-4-breakfast" do
  version :latest
  sha256 :no_check

  url "https://www.mac4breakfast.app/downloads/Mac%204%20Breakfast.zip"
  name "Mac 4 Breakfast"
  desc "Battery health monitor for your laptop, iPhone, iPad and AirPods"
  homepage "https://www.mac4breakfast.app/"

  auto_updates true
  depends_on macos: :sonoma

  app "Mac 4 Breakfast.app"

  uninstall quit: "app.mac4breakfast"

  zap trash: [
    "~/Library/Application Support/MacOmeter",
    "~/Library/Caches/app.mac4breakfast",
    "~/Library/Group Containers/UMSLY366R9.app.mac4breakfast",
    "~/Library/HTTPStorages/app.mac4breakfast",
    "~/Library/Preferences/app.mac4breakfast.plist",
  ]
end
