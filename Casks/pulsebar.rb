cask "pulsebar" do
  version "0.1.0"
  sha256 "aebb22f6211c5491560b89236d2aa03cc8f65e441eb5e903aec582b85d2c2e01"

  url "https://github.com/amer8/pulsebar/releases/download/v#{version}/PulseBar-#{version}.dmg"
  name "PulseBar"
  desc "Menu bar monitor for NVIDIA DGX Spark telemetry"
  homepage "https://github.com/amer8/pulsebar"

  livecheck do
    url :url
    strategy :github_latest
  end

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
