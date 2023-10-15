cask "pot" do
  arch arm: "aarch64", intel: "x64"

  version "2.6.4"
  sha256 arm:   "a2e40abc785ef6746dff41fd3abbbb5ad01d6b610e36cbd095e35b6bfafa86ab",
         intel: "7c1393af779624103b6e24ce851570d8a932e8928fdf2cfcb670c19c5bdd0d9a"

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
