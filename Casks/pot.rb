cask "pot" do
  arch arm: "aarch64", intel: "x64"

  version "1.12.0"
  sha256 arm:   "d1abdaecf4cc2d34e1e453644ca95b3d44a1649d02ab9529b29e6e3eb1ca162f",
         intel: "8c6f1c23b35249489122060563834e3f0327ea194440c89abed958daa2146ac1"

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
