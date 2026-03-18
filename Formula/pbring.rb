class Pbring < Formula
  desc "Secure macOS clipboard history daemon"
  homepage "https://github.com/td72/pbring"
  version "0.2.0"
  license "MIT"

  depends_on :macos

  on_arm do
    url "https://github.com/td72/pbring/releases/download/v0.2.0/pbring-aarch64-apple-darwin.tar.gz"
    sha256 "b77c1d746851b3e1edbcda1bb280323807655f5af4c513c0a232918093fe2034"
  end

  def install
    bin.install "pbring"
    bin.install "pbringd"
  end
end
