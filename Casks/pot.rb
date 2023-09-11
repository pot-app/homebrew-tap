cask "pot" do
  arch arm: "aarch64", intel: "x64"

  version "2.2.1"
  sha256 arm:   "3d237c4905bd19e552b8cd40c58e33926196bc96d67637b0da03345045a7b3f1",
         intel: "8912b9e51d5466a2e13a44aa99a71a2d29b66294290fc3604ecaa2d5f8cabab8"

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
