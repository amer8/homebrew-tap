cask "pulsebar" do
  version "0.2.0"
  sha256 "887a41105b0ea17aad332d37575ac21f4bb0fec5a1ab7d03a94dd91d5f7784c7"

  url "https://github.com/amer8/pulsebar/releases/download/v#{version}/PulseBar-#{version}.dmg"
  name "PulseBar"
  desc "Menu bar monitor for NVIDIA DGX Spark telemetry"
  homepage "https://github.com/amer8/pulsebar"

  livecheck do
    url :url
    strategy :github_latest
  end

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
