cask "pot" do
  arch arm: "aarch64", intel: "x64"

  version "2.7.0"
  sha256 arm:   "93a12da240a190aaee79ee9315db28cac2e96183d2c5b4ffe6c20eaf10f06094",
         intel: "a2da86edbf8b6e88f961f6992e4d42d8229698a445b525d262743207271d0930"

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
