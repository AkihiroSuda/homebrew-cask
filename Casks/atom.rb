cask "atom" do
  version "1.63.0"
  sha256 "293b91efab3cffbf358b3856a93246548a586b2ca2e1aff9e47008c132eb80e9"

  url "https://github.com/atom/atom/releases/download/v#{version}/atom-mac.zip",
      verified: "github.com/atom/atom/"
  name "Github Atom"
  desc "Text editor"
  homepage "https://atom.io/"

  auto_updates true

  app "Atom.app"
  binary "#{appdir}/Atom.app/Contents/Resources/app/apm/bin/apm"
  binary "#{appdir}/Atom.app/Contents/Resources/app/atom.sh", target: "atom"

  zap trash: [
    "~/.atom",
    "~/Library/Application Support/Atom",
    "~/Library/Application Support/ShipIt_stderr.log",
    "~/Library/Application Support/ShipIt_stdout.log",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.github.atom.sfl*",
    "~/Library/Application Support/com.github.atom.ShipIt",
    "~/Library/Caches/com.github.atom",
    "~/Library/Caches/com.github.atom.ShipIt",
    "~/Library/Logs/Atom",
    "~/Library/Preferences/ByHost/com.github.atom.ShipIt.*.plist",
    "~/Library/Preferences/com.github.atom.helper.plist",
    "~/Library/Preferences/com.github.atom.plist",
    "~/Library/Saved Application State/com.github.atom.savedState",
    "~/Library/WebKit/com.github.atom",
  ]
end
