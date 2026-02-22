class Slafling < Formula
  desc "Fling messages to Slack"
  homepage "https://github.com/td72/slafling"
  license "MIT"
  version "0.2.0"

  on_macos do
    on_arm do
      url "https://github.com/td72/slafling/releases/download/v#{version}/slafling-aarch64-apple-darwin.tar.gz"
      sha256 "ce45c655a875491e437c3c6b3786135347f6f1f8c1a7e5f6f03686f5b29a4041"
    end
    on_intel do
      url "https://github.com/td72/slafling/releases/download/v#{version}/slafling-x86_64-apple-darwin.tar.gz"
      sha256 "3c809ee851913238ef8b609c370487b3a05e4b4106271bf665157b3ace0cbf58"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/td72/slafling/releases/download/v#{version}/slafling-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "f43be9dd3c0994580459d5e5eee5f727209647e69324d0688bdafc75db888ef5"
    end
    on_intel do
      url "https://github.com/td72/slafling/releases/download/v#{version}/slafling-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "3d812505b5624b79103f0a4ec29dfa22df202944ea1713c61f03dac2a8f6cf84"
    end
  end

  def install
    bin.install "slafling"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/slafling --version")
  end
end
