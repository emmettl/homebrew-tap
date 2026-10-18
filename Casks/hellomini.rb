cask "hellomini" do
  version "0.10.0"
  sha256 "59f2281b8043617b54e60bf5c3f2983dfa831671b0760044ed0d7292ed4922f1"

  url "https://github.com/emmettl/hellomini/releases/download/v#{version}/Hello-Mini-#{version}-macos-arm64.zip"
  name "Hello Mini"
  desc "Macintosh-inspired desktop and desk accessories"
  homepage "https://hellomini.app/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on arch: :arm64
  depends_on macos: :tahoe

  app "Hello Mini.app"
end
