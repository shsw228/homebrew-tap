# typed: strict
# frozen_string_literal: true

# typester/yashiki の fork ビルド。upstream に出している PR 3 本
# (display イベント追従 / per-display の outer-gap / physical_*) を当てたもの。
#
# bundle ID を dev.typester.yashiki.fork にしてあるので、上流の cask とは別の
# アクセシビリティ許可として扱われる。並べて入れることはできるが、どちらも
# yashiki バイナリを張るため binary の衝突で共存はできない。
#
# version は <上流 version>.<ビルド番号>。同じ上流版を作り直しても単調増加する。
cask "yashiki-fork" do
  version "0.15.2.2"
  sha256 "f623f9b4f7a73b3bcabff4dadc9cf560d7a3f27b94dec8f21811f9c58a6bbd58"

  url "https://github.com/shsw228/yashiki/releases/download/fork-v#{version}/Yashiki-fork-arm64-#{version}.zip"
  name "Yashiki-fork"
  desc "Tiling window manager with display events and per-display gaps"
  homepage "https://github.com/shsw228/yashiki"

  # Apple Silicon 専用でビルドしている
  depends_on arch: :arm64
  depends_on macos: :sequoia

  app "Yashiki-fork.app"
  binary "#{appdir}/Yashiki-fork.app/Contents/MacOS/yashiki"
  binary "#{appdir}/Yashiki-fork.app/Contents/Resources/layouts/yashiki-layout-tatami"
  binary "#{appdir}/Yashiki-fork.app/Contents/Resources/layouts/yashiki-layout-byobu"
  zsh_completion "completions/zsh/_yashiki"

  # daemon は LaunchAgent (com.shsw228.yashiki) で上げている前提。
  # 入れ替え時に掴んだままにならないよう、両方止める。
  uninstall launchctl: "com.shsw228.yashiki",
            quit:      "dev.typester.yashiki.fork"

  zap trash: [
    "~/.cache/yashiki",
    "~/.config/yashiki",
    "~/Library/LaunchAgents/com.shsw228.yashiki.plist",
  ]

  caveats <<~EOS
    Signed with an Apple Development certificate but not notarized, so the
    download is quarantined. Clear it once after installing:

      xattr -dr com.apple.quarantine /Applications/Yashiki-fork.app

    The designated requirement is pinned to the team ID rather than the
    signing certificate, so replacing the app on a later release keeps the
    Accessibility grant.
  EOS
end
