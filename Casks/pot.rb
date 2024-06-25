cask "pot" do
  arch arm: "aarch64", intel: "x64"

  version "3.0.2"
  sha256 arm:   "45df694c6283b0fe94177515f19edae270f17349a2283c3756f4f14834f52f5a",
         intel: "6ac57c7689975ff3e4d90b7af653fa8e12e675efe19c9755246d1270d3847c44"

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
