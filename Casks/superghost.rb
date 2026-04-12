cask "superghost" do
  version "0.64.0"
  sha256 "fdee1faa123e0d3d6aa887f8484c2611f8ea14b03d843f5ee76c8b108cbcf41d"

  url "https://github.com/matt-ramotar/superghost/releases/download/v#{version}/superghost-macos.dmg"
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
