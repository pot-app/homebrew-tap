cask "pot" do
  arch arm: "aarch64", intel: "x64"

  version "2.4.0"
  sha256 arm:   "2c3961c81bfecf90b890cad0a45b65f524721e152edfdb5b0d7017a4eb8993a2",
         intel: "6f9eadbbc9fae88a0eddc5515aaf4b1f112db3d1b1bf73cb05059e9233cbdb69"

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
