class Vig < Formula
  desc "Read-only TUI cockpit for busy repositories - git, GitHub PRs/CI/projects, containers and processes at a glance"
  homepage "https://github.com/td72/vig"
  license "MIT"
  version "0.16.1"

  on_macos do
    on_arm do
      url "https://github.com/td72/vig/releases/download/v#{version}/vig-aarch64-apple-darwin.tar.gz"
      sha256 "83fb626a279d51d4ddb4b0951ace6738a76f039f1f05c5d381758959a8044090"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/td72/vig/releases/download/v#{version}/vig-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "dd747db61ace4d7dece60ba4014a0b34b84593bbf8568c62d042078776f7fd87"
    end
    on_intel do
      url "https://github.com/td72/vig/releases/download/v#{version}/vig-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "f8b895de543bc92da21c32cb4fd1f7928588ae9558a22991f4b933257f7d509a"
    end
  end

  def install
    bin.install "vig"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/vig --version")
  end
end
