class Vig < Formula
  desc "Git TUI side-by-side diff viewer with vim-style keybindings"
  homepage "https://github.com/td72/vig"
  license "MIT"
  version "0.2.0"

  on_macos do
    on_arm do
      url "https://github.com/td72/vig/releases/download/v#{version}/vig-aarch64-apple-darwin.tar.gz"
      sha256 "444778f80f3b6de3a28df19a3e682bc83d593b940a8fb2ffac297b2da063e149"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/td72/vig/releases/download/v#{version}/vig-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "4dcb310191979687c365507a9a95a5650ca255c08102a1fb6dafcdde2812d6ba"
    end
    on_intel do
      url "https://github.com/td72/vig/releases/download/v#{version}/vig-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "26b17b6bcda50561b5065a04374791eeacbe854d54f34106c78832c6c7d9d3c1"
    end
  end

  def install
    bin.install "vig"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/vig --version")
  end
end
