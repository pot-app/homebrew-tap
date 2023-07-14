cask "pot" do
  arch arm: "aarch64", intel: "x64"

  version "1.8.2"
  sha256 arm:   "affeabaa07e238eb237d4a01c3b52b704e9c136e9b94f885e2c5966fae2ffb8e",
         intel: "e473e1997af0b35ec1ea34e2ea3bcfa993d23c211c03c58b3068981d9f198b4a"

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
