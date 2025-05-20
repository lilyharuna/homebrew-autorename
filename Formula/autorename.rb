class Autorename < Formula
  desc "Auto rename files in a watched directory based on given options"
  homepage "https://github.com/lilyharuna/autorename"
  url "https://github.com/lilyharuna/autorename/archive/refs/tags/v1.0.3.tar.gz"
  sha256 "256944b71fd54daa501bbeb496deb59eea60079630e8fa4838472158bb6f7aea"
  version "1.0.3"
  license "BSD-3-Clause"

  def install
    bin.install "bin/autorename"
  end

  test do
    system "#{bin}/autorename", "--help"
  end
end
