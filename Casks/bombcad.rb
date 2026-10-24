cask "bombcad" do
  version "0.7.1"
  sha256 "04e559940bdea92e170f0156479d7a4da6a20bc2604a1f9fb4de6a0ef5937e9d"

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
