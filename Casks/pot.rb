cask "pot" do
  arch arm: "aarch64", intel: "x64"

  version "2.7.4"
  sha256 arm:   "dd5c5b080561b376a2ef68d1e1d94ad09ae538ede80eca88057a15c7b7ba5817",
         intel: "7980e0cfa8b52154195ddde937c1c65e07ff9f11a581d89c4191bd06a2b473b9"

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
