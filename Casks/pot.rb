cask "pot" do
  arch arm: "aarch64", intel: "x64"

  version "2.6.7"
  sha256 arm:   "3edfc0c987e1e77f19253d0c233fb6a7a7e57abe97ba7a32499f7153f5180ed5",
         intel: "ca834f16d4746d9d8a137cb6c50db28f477e2eccfc7504f934292b696c0a8558"

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
