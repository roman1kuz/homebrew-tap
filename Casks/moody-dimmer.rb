cask "moody-dimmer" do
  version "1.0.0"
  sha256 "fecc22b1b82fcef4b93957881df066f1f285fd7f0dd307db05d9fa148374f2f1"

  url "https://github.com/roman1kuz/MoodyDimmer/releases/download/v#{version}/MoodyDimmer-#{version}.dmg"
  name "Moody Dimmer"
  desc "Dims, blurs or adds film grain to everything except the active window"
  homepage "https://github.com/roman1kuz/MoodyDimmer"

  depends_on macos: ">= :sonoma"

  app "Moody Dimmer.app"

  uninstall quit: "io.github.roman1kuz.moodydimmer"

  zap trash: "~/Library/Preferences/io.github.roman1kuz.moodydimmer.plist"

  caveats <<~EOS
    Moody Dimmer isn't notarized by Apple, so macOS blocks its first launch, and the first launch
    after each update. To open it: System Settings → Privacy & Security → Open Anyway.
    The app also asks for Accessibility access, which it needs to follow the active window.
  EOS
end
