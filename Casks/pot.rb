cask "pot" do
  arch arm: "aarch64", intel: "x64"

  version "1.8.3"
  sha256 arm:   "6b24c40d5533fc89a7ce19863867e1434b151da056bcfba9f0c632369e1c2d4b",
         intel: "0c4180e362a294eef5c65855fc570a75b52abdb3bad1d232ed2db293185b949b"

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
