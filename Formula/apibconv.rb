class Apibconv < Formula
  desc "Convert between API Blueprint, OpenAPI, and AsyncAPI specifications"
  homepage "https://github.com/amer8/apibconv"
  version "0.8.0"
  license "MIT"

  livecheck do
    url :stable
    strategy :github_latest
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/amer8/apibconv/releases/download/v0.8.0/apibconv_0.8.0_Darwin_arm64.tar.gz"
      sha256 "0d128b4bb48af6cb4558aeddc9fbd6e32048c2e8be1347fe42b009e231a881fd"
    else
      url "https://github.com/amer8/apibconv/releases/download/v0.8.0/apibconv_0.8.0_Darwin_x86_64.tar.gz"
      sha256 "8cad35d17ac53fc4151d08fa4809eab05e8f75cabfe47699862d73507ac294df"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/amer8/apibconv/releases/download/v0.8.0/apibconv_0.8.0_Linux_arm64.tar.gz"
      sha256 "69145ebbcfb10de69123f5e24a2b76a8a875bfea31f11f9fb3f94c8b2f283db1"
    else
      url "https://github.com/amer8/apibconv/releases/download/v0.8.0/apibconv_0.8.0_Linux_x86_64.tar.gz"
      sha256 "634c11d5c62b197b5435d3778a54282d14a251ec7340d410d2d9ebb45473bb3e"
    end
  end

  def install
    bin.install "apibconv"
  end

  test do
    assert_match "Usage:", shell_output("#{bin}/apibconv --help")
    assert_match version.to_s, shell_output("#{bin}/apibconv --version")
  end
end
