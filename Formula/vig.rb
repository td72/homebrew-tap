class Vig < Formula
  desc "Read-only TUI cockpit for busy repositories - git, GitHub PRs/CI/projects, containers and processes at a glance"
  homepage "https://github.com/td72/vig"
  license "MIT"
  version "0.9.0"

  on_macos do
    on_arm do
      url "https://github.com/td72/vig/releases/download/v#{version}/vig-aarch64-apple-darwin.tar.gz"
      sha256 "1493b4b7c1de6c92eeb8279283292530fe396f1a97d74098031696824233bc72"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/td72/vig/releases/download/v#{version}/vig-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "8987341821e7fa1fcd7e6c88735c6b33533775556f611f47924142d6a943c4df"
    end
    on_intel do
      url "https://github.com/td72/vig/releases/download/v#{version}/vig-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "249e12d8800e1dfc15d912aca3f4af8b6c0e8de035c488ca6b633972d3939020"
    end
  end

  def install
    bin.install "vig"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/vig --version")
  end
end
