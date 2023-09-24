cask "pot" do
  arch arm: "aarch64", intel: "x64"

  version "2.5.1"
  sha256 arm:   "cae3b98260d4e37f30869ca75e608b946ed53dbe87d68c780227a844b813ce7e",
         intel: "0053f26edebeb3313ce094097da0ed5d0f9e119386818b46c18c828ba175ef0c"

  url "https://github.com/pot-app/pot-desktop/releases/download/#{version}/pot_#{version}_#{arch}.dmg"
  name "pot"
  desc "Cross-platform software for text translation and recognize"
  homepage "https://github.com/pot-app/pot-desktop"

  app "pot.app"
  binary "#{appdir}/pot.app/Contents/MacOS/pot"

  zap trash: [
    "~/Library/Application Support/com.pot-app.desktop",
    "~/Library/Caches/com.pot-app.desktop",
  ]
end
