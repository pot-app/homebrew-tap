cask "pot" do
  arch arm: "aarch64", intel: "x64"

  version "2.3.0"
  sha256 arm:   "8288675a8d9badd37bca45c9bd3dd04e36e605310112cc10f707aba99896d7fa",
         intel: "d07807067f278d73891b5fab9464415eceed08c1a5433b64d2b1be32e59fd403"

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
