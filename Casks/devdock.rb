cask "devdock" do
  version "0.1.3"
  sha256 "1c013d9ae5cb5109ac83691a1b37445a9fd71a02ca94543a7bf9355bff480361"

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
