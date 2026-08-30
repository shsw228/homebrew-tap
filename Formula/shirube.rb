# typed: strict
# frozen_string_literal: true

# shsw228/shirube のリリース資産をそのまま張る。ビルドはしない。
# sha256 は各リリースが公開している .sha256 の中身と同じ。
class Shirube < Formula
  desc "Terminal directory jumper that keeps directories in named groups"
  homepage "https://github.com/shsw228/shirube"
  version "0.1.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/shsw228/shirube/releases/download/v#{version}/shirube-aarch64-apple-darwin.tar.gz"
      sha256 "b9c3e374db4ed9622fbdf3f7d9098e7f88590df154fa63f817c5cd7cb4b2c3b1"
    end
    on_intel do
      url "https://github.com/shsw228/shirube/releases/download/v#{version}/shirube-x86_64-apple-darwin.tar.gz"
      sha256 "ea3bb3d6063dda166b0b0cd732e9ef9c957aeb071b97dc849b3427b3d05f7328"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/shsw228/shirube/releases/download/v#{version}/shirube-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "489822944e385fbc1df67fe047878c4156ef92eb95f227c5c0f5fba293d10e5f"
    end
    on_intel do
      url "https://github.com/shsw228/shirube/releases/download/v#{version}/shirube-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "96e226365d49cdbe4096f14d15919949f9834859f6450e18cd4d7436a9b23e46"
    end
  end

  def install
    bin.install "shirube"
  end

  test do
    assert_match "shirube #{version}", shell_output("#{bin}/shirube --version")
  end
end
