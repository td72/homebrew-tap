class Vig < Formula
  desc "Git TUI side-by-side diff viewer with vim-style keybindings"
  homepage "https://github.com/td72/vig"
  license "MIT"
  version "0.1.1"

  on_macos do
    on_arm do
      url "https://github.com/td72/vig/releases/download/v#{version}/vig-aarch64-apple-darwin.tar.gz"
      sha256 "3bbf71e45f86cc9fe2bb1bf3d2f5e8a5fad9ae423bcde4d58fb8e0c145dbd0c8"
    end
    on_intel do
      url "https://github.com/td72/vig/releases/download/v#{version}/vig-x86_64-apple-darwin.tar.gz"
      sha256 "9ca38715b705140caedcbbf8b1e66ced875e3524f52658b309c559d63b2eb33d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/td72/vig/releases/download/v#{version}/vig-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "76082271018c6a41953518e832a8ee89ef3170c536b93ffedc135e4fd6d52ff1"
    end
    on_intel do
      url "https://github.com/td72/vig/releases/download/v#{version}/vig-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "e1639374f86f652808ca5695996fdd8e1708f4965f26a3000de060b2d26fdd49"
    end
  end

  def install
    bin.install "vig"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/vig --version")
  end
end
