cask "pot" do
  arch arm: "aarch64", intel: "x64"

  version "2.7.5"
  sha256 arm:   "c1b29f0b479792b811830fbabd7eaab9e4ab828e3a702e4129abe29049179844",
         intel: "c29ce939a36037c3c8959fd4867ffb7e7cd2279f28dbe599dfacca807eebd423"

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
