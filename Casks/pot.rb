cask "pot" do
  arch arm: "aarch64", intel: "x64"

  version "2.6.1"
  sha256 arm:   "fd76764219e0fd0d7624c7d136eafb8f420e531d4e697c8d03a8b050b6ba9d4e",
         intel: "ec28aad770922a1c0ba571d84263b5caaa4b97f9c10593bab87f9c0b46b07c25"

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
