cask "pot" do
  arch arm: "aarch64", intel: "x64"

  version "2.5.0"
  sha256 arm:   "4bc76dbc932f3e52a1c8e52a84ca88fa7f37d93911e4c3796442d4cfcf7a605d",
         intel: "769389bfd20b8dacd83b7158772ebc7fc75faa7664c39be6d1d4018eab0bda25"

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
