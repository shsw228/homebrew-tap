# homebrew-tap

[日本語](README.ja.md)

A personal Homebrew tap for the things published under `shsw228`.

```bash
brew tap shsw228/tap
```

## Formulae

| Name | Description |
| --- | --- |
| `shirube` | Terminal directory jumper that keeps directories in named groups |

```bash
brew install shsw228/tap/shirube
```

## Casks

| Name | Description |
| --- | --- |
| `vpn-mierukun` | VPN-Mierukun |
| `yashiki-fork` | Fork build of typester/yashiki |

```bash
brew install --cask shsw228/tap/vpn-mierukun
xattr -dr com.apple.quarantine /Applications/VPN-Mierukun.app
```

Both casks are signed with an Apple Development certificate and are not
notarized, so the download is quarantined; clear it once after installing.

## Managed files

- `Formula/shirube.rb` — updated from a release of `shsw228/shirube`
- `Casks/vpn-mierukun.rb` — updated from the release workflow in `shsw228/VPN-Mierukun`
- `Casks/yashiki-fork.rb` — updated from a fork build of `shsw228/yashiki`
