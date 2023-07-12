cask "pot" do
  arch arm: "aarch64", intel: "x64"

  version "1.8.1"
  sha256 arm:   "1d83a4e31a6eedea7038e1a3f0527ff38965e18f04954fef4f92d9891dad62aa",
         intel: "391a85626f686157449cc488ea464861375d1a8dc5d69a41e03d73cf4c5d35aa"

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
