cask "hellomini" do
  version "0.13.0"
  sha256 "e291d09d49ec56152ed2df4790a8934304589aed2354454bf9d3ee6ea077e64f"

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
