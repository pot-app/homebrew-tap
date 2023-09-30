cask "pot" do
  arch arm: "aarch64", intel: "x64"

  version "2.6.0"
  sha256 arm:   "f0a60e7200c534b3d08f66bd045a616e943f3fcb1fda7e533769b84d8b895022",
         intel: "0e5e697febd18678b8639f78121d27d0a9b1d20cff97975f263acea32bfb8da3"

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
