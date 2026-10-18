cask "hellomini" do
  version "0.11.0"
  sha256 "b664be8c18a9ca10f500da680f12d5f7df3e2667ce33ab34aac204d527a7915b"

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
