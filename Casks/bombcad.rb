cask "bombcad" do
  version "0.8.0"
  sha256 "981f32e8bf7124d2b8863272b3fa85e889bd16c1d9a69c288f7b7669d1ab4a18"

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
