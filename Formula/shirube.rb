# typed: strict
# frozen_string_literal: true

# shsw228/shirube のリリース資産をそのまま張る。ビルドはしない。
# sha256 は各リリースが公開している .sha256 の中身と同じ。
class Shirube < Formula
  desc "Terminal directory jumper that keeps directories in named groups"
  homepage "https://github.com/shsw228/shirube"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/shsw228/shirube/releases/download/v#{version}/shirube-aarch64-apple-darwin.tar.gz"
      sha256 "5d18671833381d4d8e6ea543c86b6c8a6817d435c837f1bd5634445e44246147"
    end
    on_intel do
      url "https://github.com/shsw228/shirube/releases/download/v#{version}/shirube-x86_64-apple-darwin.tar.gz"
      sha256 "77e06ce84f662d3d13f40fe34f09344c090ac2a34fee9f3d28bb7d8f88b564fa"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/shsw228/shirube/releases/download/v#{version}/shirube-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "a9951e9de925ec294e0022fd0473363f86732d3f2d4ebbbbbd41bdcac8ae4cb6"
    end
    on_intel do
      url "https://github.com/shsw228/shirube/releases/download/v#{version}/shirube-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "77d965bc15dc05c8e35b7a7d4209ce144106f5695b01054efce4c49864bab714"
    end
  end

  def install
    bin.install "shirube"
  end

  test do
    assert_match "shirube #{version}", shell_output("#{bin}/shirube --version")
  end
end
