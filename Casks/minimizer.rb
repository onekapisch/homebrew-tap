cask "minimizer" do
  version "1.0.0"
  sha256 "b805639ac93c7b1ba1aa8d0e7b54f6b0beb2f17747a9bdd9ba8006df4f18d0fe"

  url "https://github.com/onekapisch/macOS-Minimizer/releases/download/v#{version}/Minimizer-v#{version}.zip"
  name "Minimizer"
  desc "Minimize all normal windows with one hotkey and restore them later"
  homepage "https://www.onekapisch.com/products/minimizer/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :ventura

  app "Minimizer.app"

  uninstall quit: "com.equinox.Minimizer"

  zap trash: "~/Library/Preferences/com.equinox.Minimizer.plist"
end
