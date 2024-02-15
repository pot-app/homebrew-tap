cask "pot" do
  arch arm: "aarch64", intel: "x64"

  version "2.7.6"
  sha256 arm:   "a7e3c80ac8fc46585c4d239f26b44f98c854e4a7f07c130dff6f101013b36bfe",
         intel: "3208cf71390cab15f2ae6310b30d056ff33228ef27bea2f20ce89a7c0af7c1c1"

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
