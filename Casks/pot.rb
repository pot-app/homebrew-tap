cask "pot" do
  arch arm: "aarch64", intel: "x64"

  version "2.7.8"
  sha256 arm:   "192e84107f65e7a485279626ffc0bac4b169b3336a12c2d6389f2606e9f52918",
         intel: "30ad38c1eddeae4594b7b9d249e1ec8ac0bad3ebc3504a21ad163bcf29f34a12"

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
