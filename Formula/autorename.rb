class Autorename < Formula
  desc "Auto rename files in a watched directory based on given options"
  homepage "https://github.com/lilyharuna/autorename"
  url "https://github.com/lilyharuna/autorename/archive/refs/tags/v1.0.1.tar.gz"
  sha256 "d8053ff38a7207dc8865e3e2c38624d74288eced2b3062e1d0d170eab3f9b3cf"
  version "1.0.0"
  license "BSD-3-Clause"

  def install
    bin.install "bin/autorename"
  end

  test do
    system "#{bin}/autorename", "--help"
  end
end
