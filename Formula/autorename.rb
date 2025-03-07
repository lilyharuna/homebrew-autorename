class Autorename < Formula
  desc "Auto rename files in a watched directory based on given options"
  homepage "https://github.com/lilyharuna/autorename"
  url "https://github.com/lilyharuna/autorename/archive/refs/tags/v1.0.2.tar.gz"
  sha256 "89f6ae25408e95ee45027bbca9edfc27f03a82317a70142e61312584ed62dbe5"
  version "1.0.2"
  license "BSD-3-Clause"

  def install
    bin.install "bin/autorename"
  end

  test do
    system "#{bin}/autorename", "--help"
  end
end
