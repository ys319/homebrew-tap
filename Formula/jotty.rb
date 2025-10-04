class Jotty < Formula
  desc "On-device transcription utility for audio files"
  homepage "https://github.com/ys319/jotty"
  version "0.1.0"
  url "https://github.com/ys319/jotty/releases/download/v0.1.0/jotty-v0.1.0-macos-arm64.zip"
  sha256 "bec56161e8817488037dbd563576849abf9cf93da6aa0729199e2940fc78faee"
  license "MIT"
  depends_on :macos
  depends_on macos: :tahoe

  def install
    bin.install "jotty"
  end
end
