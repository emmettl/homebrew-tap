cask "bombcad" do
  version "0.9.0"
  sha256 "7142181c6f2ecd7837453886d9378a00952a5bd5293f2a23be9f82526a2d9ae7"

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
