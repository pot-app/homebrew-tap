cask "pot" do
  arch arm: "aarch64", intel: "x64"

  version "1.6.0"
  sha256 arm: "27496cf21cc0bb94edae99a32928bd9139ed0931f090b4515c61b2bbd071841a",
         intel: "558aabd6bb14c14ceee553f0d0a6f1715e1975b20f4ce0c9a8d93a0a8d40bc29"

  url "https://github.com/pot-app/pot-desktop/releases/download/#{version}/pot_#{version}_#{arch}.dmg"
  name "pot"
  desc "A cross-platform software for text translation."
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
