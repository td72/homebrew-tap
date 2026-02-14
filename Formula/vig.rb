class Vig < Formula
  desc "Git TUI side-by-side diff viewer with vim-style keybindings"
  homepage "https://github.com/td72/vig"
  license "MIT"
  version "0.1.0"

  on_macos do
    on_arm do
      url "https://github.com/td72/vig/releases/download/v#{version}/vig-aarch64-apple-darwin.tar.gz"
      sha256 "458bcffbe4e19a4cc2e38d5aadc92290a7a6827cfcb234b1b0a0481274f9836a"
    end
    on_intel do
      url "https://github.com/td72/vig/releases/download/v#{version}/vig-x86_64-apple-darwin.tar.gz"
      sha256 "8f4067171ed6f3900720dfb779324d70909f883dc3829eb40fb67385f11b6add"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/td72/vig/releases/download/v#{version}/vig-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "ab9fe7859b8288b9eceef9fe113f9ba6062b7987d493164e6d6d579cd1a3deb4"
    end
    on_intel do
      url "https://github.com/td72/vig/releases/download/v#{version}/vig-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "308df5b483d7214d54f3df15b0562528877629f5f8ed64b66d60aed70c062051"
    end
  end

  def install
    bin.install "vig"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/vig --version")
  end
end
