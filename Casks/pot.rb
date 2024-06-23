cask "pot" do
  arch arm: "aarch64", intel: "x64"

  version "3.0.0"
  sha256 arm:   "7c4a09e85741466164b27429a1b1d3543f7bc737df665a440c8f24c21f8c6fd0",
         intel: "fb5da9e082edddeaa82580d5e70513febc54e6e30cbcce6434bd7c91894f5521"

  url "https://github.com/pot-app/pot-desktop/releases/download/#{version}/pot_#{version}_#{arch}.dmg"
  name "pot"
  desc "Cross-platform software for text translation and recognize"
  homepage "https://github.com/pot-app/pot-desktop"

  app "pot.app"
  binary "#{appdir}/pot.app/Contents/MacOS/pot"

  zap trash: [
    "~/Library/Application Support/com.pot-app.desktop",
    "~/Library/Caches/com.pot-app.desktop",
  ]
end
