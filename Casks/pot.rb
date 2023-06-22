cask "pot" do
  arch arm: "aarch64", intel: "x64"

  version "1.7.0"
  sha256 arm:   "1d2c3faa8d12cc53c957d2efdc0f8a47ed5df2563af3f31baa55dd171ccdc25c",
         intel: "494a2495ee3bfb47148c2ebd9ff3d0f828aeb594bc6ba9c95d8d3dd129784174"

  url "https://github.com/pot-app/pot-desktop/releases/download/#{version}/pot_#{version}_#{arch}.dmg"
  name "pot"
  desc "Cross-platform software for text translation"
  homepage "https://github.com/pot-app/pot-desktop"

  livecheck do
    url "https://github.com/pot-app/pot-desktop/releases/latest"
    strategy :page_match
    regex(/pot_(\d+(?:\.\d+)*_(aarch64|x64)).dmg/i)
  end

  auto_updates true

  app "pot.app"
  binary "#{appdir}/pot.app/Contents/MacOS/pot"
end
