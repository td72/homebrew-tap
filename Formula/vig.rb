class Vig < Formula
  desc "Read-only TUI cockpit for busy repositories - git, GitHub PRs/CI/projects, containers and processes at a glance"
  homepage "https://github.com/td72/vig"
  license "MIT"
  version "0.10.0"

  on_macos do
    on_arm do
      url "https://github.com/td72/vig/releases/download/v#{version}/vig-aarch64-apple-darwin.tar.gz"
      sha256 "48db9ad2853b610ce9f6d01c273d6ad0c819ebb7dea9d5ae6fb2ce2ce37a2917"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/td72/vig/releases/download/v#{version}/vig-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "1a8134f01593147adff3f044564bdd706df98eca5c144f61df4204dfd62b74a5"
    end
    on_intel do
      url "https://github.com/td72/vig/releases/download/v#{version}/vig-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "513dc394cb2269ceda9cfc093915f60dfac7822c32323cb705d5a3d11c091de1"
    end
  end

  def install
    bin.install "vig"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/vig --version")
  end
end
