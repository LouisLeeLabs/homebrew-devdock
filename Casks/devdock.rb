cask "devdock" do
  version "0.1.0"
  sha256 "0019dfc4b32d63c1392aa264aed2253c1e0c2fb09216f8e2cc269bbfb8bb49b5"

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
