# typed: strict
# frozen_string_literal: true

cask "vpn-mierukun" do
  version "0.1.3"
  sha256 "fb6ca59a4e75d929a40eb8cc383242c4166505c410aff63a969fe45a69f40665"

  url "https://github.com/shsw228/VPN-Mierukun/releases/download/v0.1.3/VPN-Mierukun-#{version}.zip"
  name "VPN-Mierukun"
  desc "Visualize VPN connection status with a screen-edge overlay"
  homepage "https://github.com/shsw228/VPN-Mierukun"

  depends_on macos: ">= :sonoma"

  app "VPN-Mierukun.app"

  uninstall quit: "com.shsw228.vpn-mierukun"

  zap trash: "~/Library/Preferences/com.shsw228.vpn-mierukun.plist"
end
