cask "pot" do
  arch arm: "aarch64", intel: "x64"

  version "1.8.0"
  sha256 arm:   "a51ff07972485785053727b252a50fbb6e0d76577b7d3da07d690ec51302e15e",
         intel: "f99e94c8d9367b63cc48dfd9be62d8976cd9fd3555fd970deb1c5b1c54fb8955"

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
