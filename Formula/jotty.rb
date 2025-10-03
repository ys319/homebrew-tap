class Jotty < Formula
  desc "On-device transcription utility for audio files"
  homepage "https://github.com/ys319/jotty"
  url "https://github.com/ys319/jotty.git",
      tag: "v0.1.0",
      revision: "5bb0f978a3c0046118d4f9b1748000e9b25a7423"
  version "0.1.0"
  license "MIT"

  head "https://github.com/ys319/jotty.git", branch: "main"

  livecheck do
    url :stable
    strategy :git
  end

  depends_on macos: :sequoia

  def install
    system "swift", "build", "-c", "release"
    bin.install ".build/release/jotty"
  end

  test do
    assert_match "On-device transcription", shell_output("#{bin}/jotty --help")
  end
end
