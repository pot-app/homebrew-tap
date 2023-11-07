cask "pot" do
  arch arm: "aarch64", intel: "x64"

  version "2.6.8"
  sha256 arm:   "57de7fcb44cb3607aad94098832a95de73dc4730417f6533a3fdfa67eb76b81b",
         intel: "dc63a2f70ff43ac0cab191e40789fce26dff576bcc139e073f1f038e1f50ad94"

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
