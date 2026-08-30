# typed: strict
# frozen_string_literal: true

# shsw228/shirube のリリース資産をそのまま張る。ビルドはしない。
# sha256 は各リリースが公開している .sha256 の中身と同じ。
class Shirube < Formula
  desc "Terminal directory jumper that keeps directories in named groups"
  homepage "https://github.com/shsw228/shirube"
  version "0.2.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/shsw228/shirube/releases/download/v#{version}/shirube-aarch64-apple-darwin.tar.gz"
      sha256 "772bffd31cbfdcf40a45e95334e0c2bcc082622616c3796b14d11896fe2352ad"
    end
    on_intel do
      url "https://github.com/shsw228/shirube/releases/download/v#{version}/shirube-x86_64-apple-darwin.tar.gz"
      sha256 "1e291f599b19572acb65b6fa546fb8ff2ec24e6f96e8cc76f3c4bf0beb61aa6c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/shsw228/shirube/releases/download/v#{version}/shirube-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "83668aef7eb2969917610e0adb5998e56eb677c8310ad1a2f76c3f6411ee6190"
    end
    on_intel do
      url "https://github.com/shsw228/shirube/releases/download/v#{version}/shirube-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "3d09c5d2b4c3070b664fe67edd83da79ec97bffd6ce88d2a45b84d2e28d19796"
    end
  end

  def install
    bin.install "shirube"
  end

  test do
    assert_match "shirube #{version}", shell_output("#{bin}/shirube --version")
  end
end
