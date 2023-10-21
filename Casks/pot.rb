cask "pot" do
  arch arm: "aarch64", intel: "x64"

  version "2.6.5"
  sha256 arm:   "0a0d76e1cd923ee46109ada13747c82d0d8930bec4ebe62b660ca5d3237ec9e8",
         intel: "4c1b09e517b5769ddd5785ab23cdbfda821204d0bff60bb7cf21ba3038fe963d"

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
