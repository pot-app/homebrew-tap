cask "pot" do
  arch arm: "aarch64", intel: "x64"

  version "1.7.1"
  sha256 arm:   "c79f9eb3518364f1b564e01123c21e3c8c551a7e616699d04d7376e8742c4617",
         intel: "f9304a9418dd2de4534590c2aa68615695f08d84f57b09a88a3ed1a9cfd3b185"

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
