cask "naev" do
  version "0.10.6"
  sha256 "a7b9c6f0a8e00347b5e26215686e69a0fde03b2e4d66884a46625689e77fdc36"

  url "https://github.com/naev/naev/releases/download/v#{version}/naev-#{version}-macos.dmg",
      verified: "github.com/naev/naev/"
  name "Naev"
  desc "Space exploration, trade, and combat game"
  homepage "https://naev.org/"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "Naev.app"

  zap trash: [
    "~/Library/Application Support/org.naev.Naev",
    "~/Library/Caches/org.naev.Naev",
    "~/Library/Preferences/org.naev.Naev",
    "~/Library/Saved Application State/org.naev.Naev.savedState",
  ]
end
