cask "pot" do
  arch arm: "aarch64", intel: "x64"

  version "2.7.1"
  sha256 arm:   "436caf3bf0ff075961992f9962e50b60ee5760b9ba07994f2bd7e46c7b87d5e9",
         intel: "3c623cf7dc89f4ec0cb30db1f2f231ebff48a1496dccadda207a78e86da620a8"

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
