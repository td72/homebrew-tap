class Vig < Formula
  desc "Git TUI side-by-side diff viewer with vim-style keybindings"
  homepage "https://github.com/td72/vig"
  license "MIT"
  version "0.1.0"

  on_macos do
    on_arm do
      url "https://github.com/td72/vig/releases/download/v#{version}/vig-aarch64-apple-darwin.tar.gz"
      sha256 "fe64a4fa887cb56e3d66ccdd8512b108935a3428de9fbbbc71946c29a0100d7a"
    end
    on_intel do
      url "https://github.com/td72/vig/releases/download/v#{version}/vig-x86_64-apple-darwin.tar.gz"
      sha256 "c40d59f626086b80b2870f4026f60ccee1362c6581c08d89fc501e1067344f6f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/td72/vig/releases/download/v#{version}/vig-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "8bce1a9a03ec5a95dfd891d03c2420a3b03a1a32be00bcb822e0af9bc3d9a1ef"
    end
    on_intel do
      url "https://github.com/td72/vig/releases/download/v#{version}/vig-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "8a6bde1070b1f19d654bb46b26de0476e5b30776de1f2c9f8f8a45c90b4ebfdc"
    end
  end

  def install
    bin.install "vig"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/vig --version")
  end
end
