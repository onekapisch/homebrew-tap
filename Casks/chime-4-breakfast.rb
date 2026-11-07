cask "chime-4-breakfast" do
  version "1.2.6"
  sha256 "1112c6d64a83a4b93c1bfa1dcd5caa50c08e82de5a6c8d03450317fc0280de51"

  url "https://github.com/onekapisch/chime-4-breakfast/releases/download/v#{version}/Chime-4-Breakfast.dmg"
  name "Chime 4 Breakfast"
  desc "Sound, glow or banner when a Codex or Claude Desktop response finishes"
  homepage "https://www.onekapisch.com/products/chime-4-breakfast/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :sonoma

  app "Chime 4 Breakfast.app"

  uninstall quit: "app.chime4breakfast"

  zap trash: "~/Library/Preferences/app.chime4breakfast.plist"
end
