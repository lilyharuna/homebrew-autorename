class Autorename < Formula
  desc "Auto rename files in a watched directory based on given options"
  homepage "https://github.com/lilyharuna/autorename"
  url "https://github.com/lilyharuna/autorename/archive/refs/tags/v1.0.0.tar.gz"
  sha256 "7a5415509a068041d71dc742ba8266e357de4d1cd52c46599097a2da9085f521"
  version "1.0.0"
  license "BSD"

  def install
    bin.install "bin/autorename"
  end

  test do
    system "#{bin}/autorename", "--help"
  end
end
