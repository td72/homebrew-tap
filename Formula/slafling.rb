class Slafling < Formula
  desc "Fling messages to Slack"
  homepage "https://github.com/td72/slafling"
  license "MIT"
  version "1.0.1"

  on_macos do
    on_arm do
      url "https://github.com/td72/slafling/releases/download/v#{version}/slafling-aarch64-apple-darwin.tar.gz"
      sha256 "2d039acc28dffca8d71f181e4f891212c4aed08a71cfb12aa3d2d2f3276de633"
    end
    on_intel do
      url "https://github.com/td72/slafling/releases/download/v#{version}/slafling-x86_64-apple-darwin.tar.gz"
      sha256 "3874f85a4122645b74c795e8a6c49f007fc0a109c6d00b736c94cf620a4e39ce"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/td72/slafling/releases/download/v#{version}/slafling-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "b75caf35d5b880eca0baf349467af8ba9130595b51f7bc49c217fd7e2beb5fa6"
    end
    on_intel do
      url "https://github.com/td72/slafling/releases/download/v#{version}/slafling-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "47d80f26cd1c98fa7cb856ab303d408be05bddc01015c1d527d512758dc72020"
    end
  end

  def install
    bin.install "slafling"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/slafling --version")
  end
end
