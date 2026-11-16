cask "pulsebar" do
  version "0.2.4"
  sha256 "ea04c49457c76153f0a0f1483100687f377dc30a2f7bc0d2ee11957f1288b1e9"

  url "https://github.com/amer8/pulsebar/releases/download/v#{version}/PulseBar-#{version}.dmg"
  name "PulseBar"
  desc "Menu bar monitor for NVIDIA DGX Spark telemetry"
  homepage "https://github.com/amer8/pulsebar"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: :ventura

  app "PulseBar.app"

  uninstall quit: "dev.pulsebar.PulseBar"

  zap trash: [
    "~/Library/Application Support/PulseBar",
    "~/Library/Caches/dev.pulsebar.PulseBar",
    "~/Library/HTTPStorages/dev.pulsebar.PulseBar",
    "~/Library/Preferences/dev.pulsebar.PulseBar.plist",
    "~/Library/Saved Application State/dev.pulsebar.PulseBar.savedState",
  ]
end
