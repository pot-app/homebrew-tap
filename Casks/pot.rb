cask "pot" do
  arch arm: "aarch64", intel: "x64"

  version "3.0.6"
  sha256 arm:   "7b66c51aadcf44201cc5eea9ecd1f1fefe11923488329f922fc5f3629be28276",
         intel: "4297c172b0bab10a9a5d62b2505aeaa1dfe7b3853522152b6fff6c766dba648f"

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
