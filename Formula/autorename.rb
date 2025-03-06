class Autorename < Formula
  desc "Auto rename files in a watched directory based on given options"
  homepage "https://github.com/lilyharuna/autorename"
  url "https://github.com/lilyharuna/autorename/archive/refs/tags/v1.0.0.tar.gz"
  sha256 "02d6dbe50e7f29a4f416419d4f57fc2c09e588909c1afb8bbe6c6dc74205a017"
  version "1.0.0"
  license "BSD"

  def install
    bin.install "bin/autorename"
  end

  test do
    system "#{bin}/autorename", "--help"
  end
end
