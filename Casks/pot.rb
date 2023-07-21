cask "pot" do
  arch arm: "aarch64", intel: "x64"

  version "1.10.0"
  sha256 arm:   "3cd7ef0908208259daca5cb8b0e0f9e82216a9014a8a2c90a91e362f976f23ac",
         intel: "3cc0dd33071c3fc931962fbd454e093c6bb5093418d87a4018f7da8cf07c5691"

  url "https://github.com/pot-app/pot-desktop/releases/download/#{version}/pot_#{version}_#{arch}.dmg"
  name "pot"
  desc "Cross-platform software for text translation"
  homepage "https://github.com/pot-app/pot-desktop"

  livecheck do
    url "https://github.com/pot-app/pot-desktop/releases/latest"
    strategy :page_match
    regex(/pot_(\d+(?:\.\d+)*_(aarch64|x64)).dmg/i)
  end

  auto_updates true

  app "pot.app"
  binary "#{appdir}/pot.app/Contents/MacOS/pot"
end
