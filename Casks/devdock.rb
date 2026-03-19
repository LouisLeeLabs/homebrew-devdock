cask "devdock" do
  version "0.1.1"
  sha256 "f3ac924871d0170bb4e0555b6f42f4fee79b03465c7a34b7d1cf647896e19345"

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
