cask "pot" do
  arch arm: "aarch64", intel: "x64"

  version "3.0.5"
  sha256 arm:   "c18ac2fa08e225ed3ab6364a6f7f137cc28133361ad66839ebaa0c244788c8fe",
         intel: "31b9eb67c2a0dfc6b0dc22afa197442ca205d38a0302313df456ff6ec541d4d3"

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
