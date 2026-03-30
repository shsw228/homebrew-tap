# homebrew-tap

[English](README.md)

`VPN-Mierukun` を Homebrew Cask で配布するための tap です。

## インストール

```bash
brew tap shsw228/tap
brew install --cask vpn-mierukun
xattr -dr com.apple.quarantine /Applications/VPN-Mierukun.app
```

または:

```bash
brew install --cask shsw228/tap/vpn-mierukun
xattr -dr com.apple.quarantine /Applications/VPN-Mierukun.app
```

## 管理対象

- `Casks/vpn-mierukun.rb`

この tap は `shsw228/VPN-Mierukun` 側の release workflow から更新する想定です。
