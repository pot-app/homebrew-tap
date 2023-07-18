cask "pot" do
  arch arm: "aarch64", intel: "x64"

  version "1.9.1"
  sha256 arm:   "63ab8213ef75fc83e5ab4896e433a8b9fde986f4482538ba084125a586867158",
         intel: "e2cef986bc2f9abc74ed26922dbca69711b2c39b1ff0f9a8da3a19ad7382df36"

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
