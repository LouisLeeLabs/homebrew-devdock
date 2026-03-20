cask "devdock" do
  version "0.1.4"
  sha256 "56bfc35bec9f7d842338aba615ba36be266856b1af10b698476d59e7c0ad31bf"

  url "https://github.com/LouisLeeLabs/devdock/releases/download/v#{version}/DevDock_#{version}_aarch64.dmg"
  name "DevDock"
  desc "A unified developer workstation for managing services, servers, and credentials"
  homepage "https://github.com/LouisLeeLabs/devdock"

  depends_on arch: :arm64

  app "DevDock.app"

  zap trash: [
    "~/Library/Application Support/com.devdock.app",
    "~/Library/Caches/com.devdock.app",
    "~/Library/Preferences/com.devdock.app.plist",
  ]
end
