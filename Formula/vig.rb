class Vig < Formula
  desc "Git TUI side-by-side diff viewer with vim-style keybindings"
  homepage "https://github.com/td72/vig"
  license "MIT"
  version "0.1.0"

  on_macos do
    on_arm do
      url "https://github.com/td72/vig/releases/download/v#{version}/vig-aarch64-apple-darwin.tar.gz"
      sha256 "49d5b002b54ef72fdaa367c9fd7ee8c28019e2262bd942b2975d8a11e665502c"
    end
    on_intel do
      url "https://github.com/td72/vig/releases/download/v#{version}/vig-x86_64-apple-darwin.tar.gz"
      sha256 "196ed9c9a0a81758e290bb30c9a1fb5ac655148a36bc01a1b0c6222b70a076e1"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/td72/vig/releases/download/v#{version}/vig-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "cc4f40c5720771dd3ff837509ae1d0a276af2c5a5985d4e1e82792166eaddb64"
    end
    on_intel do
      url "https://github.com/td72/vig/releases/download/v#{version}/vig-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "5b95765890d7e549eb7d7a96e7afe1edcfb9a3139a7c0465843d92f0cc03caf1"
    end
  end

  def install
    bin.install "vig"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/vig --version")
  end
end
