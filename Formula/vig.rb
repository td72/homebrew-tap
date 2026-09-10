class Vig < Formula
  desc "Read-only TUI cockpit for busy repositories - git, GitHub PRs/CI/projects, containers and processes at a glance"
  homepage "https://github.com/td72/vig"
  license "MIT"
  version "0.15.0"

  on_macos do
    on_arm do
      url "https://github.com/td72/vig/releases/download/v#{version}/vig-aarch64-apple-darwin.tar.gz"
      sha256 "f554aa18b812afd46323d7ec42789019b5073eecd7c86cd318ef603e11ca7fba"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/td72/vig/releases/download/v#{version}/vig-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "d42133b8d5fab63de2eaf9db6ac9891e91ce123693fe8bfb0c1c611db49bed14"
    end
    on_intel do
      url "https://github.com/td72/vig/releases/download/v#{version}/vig-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "ed2d99f430ee2e792556819bda0aac21ed892772263ff788fcdeafa6c4b86d5a"
    end
  end

  def install
    bin.install "vig"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/vig --version")
  end
end
