cask "pot" do
  arch arm: "aarch64", intel: "x64"

  version "1.11.1"
  sha256 arm:   "e33c69d1b365d469e5278db9395e44693432d3a6b7ee104ddc0d89850b8709a6",
         intel: "c32511fa7e492ebb749f6829f9c775c8955430b7207da2170afb2ccfec0c113a"

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
