cask "bombcad" do
  version "0.7.5"
  sha256 "97444b5c88abce68ac6aa9f2bd5df4224c87cf0d5cb5077bd61d99308f7111c2"

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
