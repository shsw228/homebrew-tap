# typed: strict
# frozen_string_literal: true

cask "vpn-mierukun" do
  version "0.1.0"
  sha256 "6e12a4ec081bab5079f33fba369b3c5c0199a2ed72ded57bb15d5fe660b24c9c"

  url "https://github.com/shsw228/VPN-Mierukun/releases/download/v0.1.0/VPN-Mierukun-#{version}.zip"
  name "VPN-Mierukun"
  desc "Visualize VPN connection status with a screen-edge overlay"
  homepage "https://github.com/shsw228/VPN-Mierukun"

  depends_on macos: ">= :sonoma"

  app "VPN-Mierukun.app"

  uninstall quit: "com.shsw228.vpn-mierukun"

  zap trash: "~/Library/Preferences/com.shsw228.vpn-mierukun.plist"
end
