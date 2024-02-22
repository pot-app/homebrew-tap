cask "pot" do
  arch arm: "aarch64", intel: "x64"

  version "2.7.7"
  sha256 arm:   "5a9f1b9076c885cf1195b4c3cec5d3d51326574a1d4d37e7bd11ab63ff92c13b",
         intel: "9e8221d626e89d2a395bfa02f256537bf32fb4e1e0154cfc933b70afa91bc085"

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
