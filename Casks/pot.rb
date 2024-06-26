cask "pot" do
  arch arm: "aarch64", intel: "x64"

  version "3.0.3"
  sha256 arm:   "055fe1d3583d39e922efe80dce2432bf12cdc4940178c53601b650ade1792815",
         intel: "0fa646fd236f40f891e57cb14080f7186e52a7a343dd0435124a5f47483838bd"

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
