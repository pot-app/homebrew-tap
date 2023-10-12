cask "pot" do
  arch arm: "aarch64", intel: "x64"

  version "2.6.3"
  sha256 arm:   "56d125ca1fa83d8f489313b93d8d7e3dfe2cb52f18a3660dbdd5bc4faf4602f1",
         intel: "a0e956a852513194f98836c5c5894b580c4179857ff12cb689a4ec22acb1ebaa"

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
