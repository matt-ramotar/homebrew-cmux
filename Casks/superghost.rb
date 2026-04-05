cask "superghost" do
  version "0.63.1"
  sha256 "b616c3ea0fab182bc0fa0d71438e5c4644601db38a38010e8b7da3ad88d6b01f"

  url "https://github.com/manaflow-ai/cmux/releases/download/v#{version}/superghost-macos.dmg"
  name "Superghost"
  desc "Lightweight native macOS terminal with vertical tabs for AI coding agents"
  homepage "https://superghost.bionic.sh"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :sonoma"

  app "Superghost.app"
  binary "#{appdir}/Superghost.app/Contents/Resources/bin/superghost"

  zap trash: [
    "~/Library/Application Support/Superghost",
    "~/Library/Caches/Superghost",
    "~/Library/Preferences/sh.bionic.superghost.plist",
  ]
end
