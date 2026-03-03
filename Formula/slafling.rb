class Slafling < Formula
  desc "Fling messages to Slack"
  homepage "https://github.com/td72/slafling"
  license "MIT"
  version "1.0.0"

  on_macos do
    on_arm do
      url "https://github.com/td72/slafling/releases/download/v#{version}/slafling-aarch64-apple-darwin.tar.gz"
      sha256 "3be6b39de6567651de8fc1492ed63ad84668954ad6bd65c8b30dd52cf3aa387c"
    end
    on_intel do
      url "https://github.com/td72/slafling/releases/download/v#{version}/slafling-x86_64-apple-darwin.tar.gz"
      sha256 "e31f4be855f71b68f804c6e15798323fe913c2602351a1189be97b52c3db7ca8"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/td72/slafling/releases/download/v#{version}/slafling-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "e5f2e47f9a08c19ddcfdb4d940b515c24900c4eeaf239605c23e00c73fc0d2c9"
    end
    on_intel do
      url "https://github.com/td72/slafling/releases/download/v#{version}/slafling-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "e61fca6bd69d0aace22214b1f2695f505aacc859de231b852b3ec8cda7be6104"
    end
  end

  def install
    bin.install "slafling"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/slafling --version")
  end
end
