cask "pot" do
  arch arm: "aarch64", intel: "x64"

  version "2.6.6"
  sha256 arm:   "b9fea4c343a9f0850f8daa9daa6abd655d8e4582d2c192191833a7ff2d9a3ae8",
         intel: "6f2bf99ecfd3b3cf1de7c1ce88fdc32b25c43f810b0f2316a34b9f154b38b046"

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
