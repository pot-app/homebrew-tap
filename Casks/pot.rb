cask "pot" do
  arch arm: "aarch64", intel: "x64"

  version "1.9.0"
  sha256 arm:   "ff310951b1310d4ebb0f34b19dceb3e9b86a246bd3df9c9d9048fcd11c396b5d",
         intel: "ff0a685416af97e423dbdf2c3cb1bcd87f65b584fea959e9f90831b4d45a7e94"

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
