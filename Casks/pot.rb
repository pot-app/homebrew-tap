cask "pot" do
  arch arm: "aarch64", intel: "x64"

  version "2.7.9"
  sha256 arm:   "dad2a46d98b368d1a1f97675fd2421f1765cdcb0c78942846796cd75befc471f",
         intel: "06b39e49d58da4b7169f2ca1528019e3414173267d2505612e4f6df6f8a1bd24"

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
