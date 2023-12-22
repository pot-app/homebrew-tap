cask "pot" do
  arch arm: "aarch64", intel: "x64"

  version "2.7.3"
  sha256 arm:   "091a5e7fd73a5bc97ce31151be36acf86a8bd2c793ce7eb6f9c71f69cdf0e5c5",
         intel: "709a631b746327a811229b1734f1ed6a6b341f25c9fb7afc0002b09c9ff55672"

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
