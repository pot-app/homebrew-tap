cask "pot" do
  arch arm: "aarch64", intel: "x64"

  version "2.4.2"
  sha256 arm:   "82e99b0fd7cf0134b8c43d1173d874d8c010abd950eba3b8e62bf48547873238",
         intel: "69044ba7fb001dd808708eff816e79dd117c0af75eb2ab2983ae7c3365bb81bd"

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
