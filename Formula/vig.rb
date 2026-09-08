class Vig < Formula
  desc "Read-only TUI cockpit for busy repositories - git, GitHub PRs/CI/projects, containers and processes at a glance"
  homepage "https://github.com/td72/vig"
  license "MIT"
  version "0.13.0"

  on_macos do
    on_arm do
      url "https://github.com/td72/vig/releases/download/v#{version}/vig-aarch64-apple-darwin.tar.gz"
      sha256 "b524126d8848a3b68cd113e8d969cb2a92188ae8c864bffd02ed227675ba764c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/td72/vig/releases/download/v#{version}/vig-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "30681678f8922275390fe4bbf3294cfd6b090a8cedf1a4329f7188c9f7125f1c"
    end
    on_intel do
      url "https://github.com/td72/vig/releases/download/v#{version}/vig-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "910c157a90d59bad833a12ef6253530fa5fa8c514802f430e7bcfb155643abc2"
    end
  end

  def install
    bin.install "vig"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/vig --version")
  end
end
