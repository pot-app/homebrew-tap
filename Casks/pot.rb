cask "pot" do
  arch arm: "aarch64", intel: "x64"

  version "2.7.10"
  sha256 arm:   "c4911e6e9272cd4f68cde9eca61351e09cad7a51bdbd0850c325c83914a1c635",
         intel: "5806e016fca777812b57c812f3b5814b180a7822860e1e6f5f8bd592365e4fc9"

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
