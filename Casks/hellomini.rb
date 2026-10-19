cask "hellomini" do
  version "0.14.0"
  sha256 "a7df2d73272b07efef95e5581a9ebf4c07a149b731ed964876124f488f705f58"

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
