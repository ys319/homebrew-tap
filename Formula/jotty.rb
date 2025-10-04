class Jotty < Formula
  desc "On-device transcription utility for audio files"
  homepage "https://github.com/ys319/jotty"
  version "0.1.2"
  url "https://github.com/ys319/jotty/releases/download/v#{version}/jotty-v#{version}-macos-arm64.tar.gz"
  sha256 "278016029ee9893834af8f3bbf0f10fda722ecd8f59f6a0af6631fdec17cd6ab"
  license "MIT"
  depends_on :macos
  depends_on macos: :tahoe

  def install
    bin.install "jotty"
  end
end
