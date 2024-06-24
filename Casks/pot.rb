cask "pot" do
  arch arm: "aarch64", intel: "x64"

  version "3.0.1"
  sha256 arm:   "b0cb0c3ed4f247df4396c61ae337797b7d2483effc69da4a00941447ad476b9c",
         intel: "ff8a9d48e51aefc9260d16f3dbe884db054db8163a36b42d83f0e4ea0937481e"

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
