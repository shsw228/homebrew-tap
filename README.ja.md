# homebrew-tap

[English](README.md)

`shsw228` で公開しているものをまとめた個人用の tap です。

```bash
brew tap shsw228/tap
```

## Formula

| 名前 | 説明 |
| --- | --- |
| `shirube` | ディレクトリをグループで束ねる端末ディレクトリジャンパー |

```bash
brew install shsw228/tap/shirube
```

## Cask

| 名前 | 説明 |
| --- | --- |
| `vpn-mierukun` | VPN-Mierukun |
| `yashiki-fork` | typester/yashiki の fork ビルド |

```bash
brew install --cask shsw228/tap/vpn-mierukun
xattr -dr com.apple.quarantine /Applications/VPN-Mierukun.app
```

どちらの cask も Apple Development 証明書での署名で notarize していないため、
ダウンロードが quarantine されます。インストール後に一度解除してください。

## 管理対象

- `Formula/shirube.rb` — `shsw228/shirube` のリリースから更新する
- `Casks/vpn-mierukun.rb` — `shsw228/VPN-Mierukun` の release workflow から更新する
- `Casks/yashiki-fork.rb` — `shsw228/yashiki` の fork ビルドから更新する
