cask "pot" do
  arch arm: "aarch64", intel: "x64"

  version "2.3.0"
  sha256 arm:   "7139925dda2d3b98eea2b69a68deb849ae23fa0bb9f1c099e5112df35e3b2985",
         intel: "88ad3c97c9e4d586230bc29c35e911d210633c09350348e43ed56d1e052070d0"

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
