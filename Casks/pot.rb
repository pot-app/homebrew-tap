cask "pot" do
  arch arm: "aarch64", intel: "x64"

  version "3.0.4"
  sha256 arm:   "b4ee762bae80c208b8ff413ee5f81d818da4e63b561618ad878df83d1cdae5e2",
         intel: "d9474707b0f235a220ed963475f8d618a07c30c515e6a4cc14a7bc4caeed9200"

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
