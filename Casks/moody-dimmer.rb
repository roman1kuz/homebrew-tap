cask "moody-dimmer" do
  version "1.1.0"
  sha256 "b3f88e30f5ba5fb301fe82a39c8622536df6ba5562634793a60b2d1296efdfd5"

  url "https://github.com/roman1kuz/MoodyDimmer/releases/download/v#{version}/MoodyDimmer-#{version}.dmg"
  name "Moody Dimmer"
  desc "Dims, blurs or adds film grain to everything except the active window"
  homepage "https://github.com/roman1kuz/MoodyDimmer"

  depends_on macos: :tahoe

  app "Moody Dimmer.app"

  uninstall quit: "io.github.roman1kuz.moodydimmer"

  zap trash: "~/Library/Preferences/io.github.roman1kuz.moodydimmer.plist"

  caveats <<~EOS
    Moody Dimmer isn't notarized by Apple, so macOS blocks its first launch, and the first launch
    after each update. To open it: System Settings → Privacy & Security → Open Anyway.
    The app also asks for Accessibility access, which it needs to follow the active window.
  EOS
end
