cask "pot" do
  arch arm: "aarch64", intel: "x64"

  version "2.4.3"
  sha256 arm:   "933160fb26095ddd0cf6993ffce9d054c4100f6b650ef07b48abac22e1ae707e",
         intel: "05adb1c71f4c336a3227b79482445bdbdc4065edfbc487eede3103c0ee8037cd"

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
