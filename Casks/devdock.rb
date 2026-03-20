cask "devdock" do
  version "0.1.2"
  sha256 "5e18b5e15c0e23bfa82165d4820755f9ac8165b36ee944c5e33f877dce35336d"

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
