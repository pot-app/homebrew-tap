cask "pot" do
  arch arm: "aarch64", intel: "x64"

  version "2.6.2"
  sha256 arm:   "c54706cadb80b1e3eb868cf4aa3daa187ea5e7b0cbe32895927eb3e6cc5267b7",
         intel: "d9fc778a88f97a40f2c7de1b61f1aa5a1dbcf0ebbb5d6daab458e57f2a647100"

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
