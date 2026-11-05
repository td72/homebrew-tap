cask "viw" do
  version "0.3.0"
  sha256 "e31b9bf6309e1bab32b86dcd2960eb4b36000727488b43682272532fd9f43f9a"

  url "https://github.com/td72/viw/releases/download/v#{version}/viw-#{version}-macos.zip"
  name "viw"
  desc "Vim-keyed viewer for markdown, code, CSV / xlsx, PDF, images and draw.io"
  homepage "https://github.com/td72/viw"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on arch: :arm64
  depends_on macos: :sonoma

  app "viw.app"
  binary "#{appdir}/viw.app/Contents/MacOS/viw"

  zap trash: "~/.config/viw"

  caveats do
    <<~EOS
      viw.app is signed ad hoc and not notarized, so macOS blocks its first launch with
      a dialog whose buttons are "Move to Trash" and "Done" — choose Done (Move to Trash
      deletes the app), then allow it once in System Settings › Privacy & Security ›
      "Open Anyway". Or clear the quarantine flag before the first launch:

        xattr -d com.apple.quarantine "#{appdir}/viw.app"

      (or install with `--no-quarantine`). `viw --set-default` then makes viw the default
      app for its file types.
    EOS
  end
end
