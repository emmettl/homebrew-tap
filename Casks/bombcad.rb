cask "bombcad" do
  version "0.5.1"
  sha256 "9f445554c5f793b0cc100932812b360848d7b518d411b1d25c5a0817b2005765"

  url "https://github.com/emmettl/bombcad/releases/download/v#{version}/BombCAD-#{version}-macos-arm64.zip"
  name "BombCAD"
  desc "Blast, structural response and hazard simulator"
  homepage "https://github.com/emmettl/bombcad"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on arch: :arm64
  depends_on macos: :sequoia

  app "BombCAD.app"
  binary "#{appdir}/BombCAD.app/Contents/MacOS/BombCAD", target: "bombcad"

  zap trash: [
    "~/Library/Caches/BombCAD",
    "~/Library/Preferences/dev.bombcad.BombCAD.plist",
  ]
end
