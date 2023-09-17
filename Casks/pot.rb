cask "pot" do
  arch arm: "aarch64", intel: "x64"

  version "2.4.1"
  sha256 arm:   "0754e07a9b2470119dd51ab12cc001864fbbacda4ba12575ce331ab2850d325f",
         intel: "e4453aef26a8193c049d95ebc1588151aa94600adaca1c801fb64cc7fa9115c5"

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
