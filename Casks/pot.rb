cask "pot" do
  arch arm: "aarch64", intel: "x64"

  version "2.6.0"
  sha256 arm:   "9f857b8db379a223df8b37764657fdb311096e96c2cf1e323aa5b749777dfe0b",
         intel: "fc3bc90edcaa2db2392b28ca0ad478db32ba1559086df19ed00e2388f0dd286b"

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
