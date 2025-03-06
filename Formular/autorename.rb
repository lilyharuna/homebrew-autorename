class Autorename < Formula
  desc "Auto rename files in a watched directory based on given options"
  homepage "https://github.com/lilyharuna/autorename"
  url "https://github.com/lilyharuna/autorename/archive/v1.0.0.tar.gz"
  sha256 "PLACEHOLDER_SHA256"  # 上で計算した sha256 に置き換える
  version "1.0.0"

  def install
    bin.install "bin/autorename"
  end

  test do
    system "#{bin}/autorename", "--help"
  end
end
