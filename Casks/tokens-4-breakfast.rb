cask "tokens-4-breakfast" do
  version :latest
  sha256 :no_check

  url "https://www.tokens4breakfast.app/downloads/Tokens%204%20Breakfast.zip"
  name "Tokens 4 Breakfast"
  desc "Menu bar tracker for AI spend, token usage and rate limits"
  homepage "https://www.tokens4breakfast.app/"

  auto_updates true
  depends_on macos: :sonoma

  app "Tokens 4 Breakfast.app"

  uninstall quit: "com.kapisch.Tokens-4-Breakfast"

  zap trash: [
    "~/Library/Application Support/Tokens4Breakfast",
    "~/Library/Caches/com.kapisch.Tokens-4-Breakfast",
    "~/Library/HTTPStorages/com.kapisch.Tokens-4-Breakfast",
    "~/Library/HTTPStorages/com.kapisch.Tokens-4-Breakfast.binarycookies",
    "~/Library/Preferences/com.kapisch.Tokens-4-Breakfast.plist",
    "~/Library/WebKit/com.kapisch.Tokens-4-Breakfast",
  ]
end
