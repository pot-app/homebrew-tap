cask "pot" do
  arch arm: "aarch64", intel: "x64"

  version "1.8.1"
  sha256 arm:   "02098dfe64b6351b42193d82f46c9e20a6581155e6478210820c656d36b68491",
         intel: "b355078eec41b08cdef74b7460704508d63f443b04f50b077498f6fbfef4656d"

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
