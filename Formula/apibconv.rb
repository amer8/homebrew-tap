class Apibconv < Formula
  desc "Convert between API Blueprint, OpenAPI, and AsyncAPI specifications"
  homepage "https://github.com/amer8/apibconv"
  license "MIT"
  # The archive architecture suffix was previously inferred as version 64.
  version_scheme 1

  livecheck do
    url :stable
    strategy :github_latest
  end

  on_macos do
    depends_on macos: :ventura

    if Hardware::CPU.arm?
      url "https://github.com/amer8/apibconv/releases/download/v0.9.1/apibconv_0.9.1_Darwin_arm64.tar.gz"
      sha256 "99e68d0854003a57b42f6287c7e66c3818fe201b0fea4e8f0e3895ae4f89f0e3"
    else
      url "https://github.com/amer8/apibconv/releases/download/v0.9.1/apibconv_0.9.1_Darwin_x86_64.tar.gz"
      sha256 "4ea96aa23e8718d4a542b021f9cec8361685a752f0e92fc72d00d7d92a656a64"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/amer8/apibconv/releases/download/v0.9.1/apibconv_0.9.1_Linux_arm64.tar.gz"
      sha256 "cbd405ac26b47d8303bbfb68c102c28ba50311bc110cf29954b2821ab7e88efa"
    else
      url "https://github.com/amer8/apibconv/releases/download/v0.9.1/apibconv_0.9.1_Linux_x86_64.tar.gz"
      sha256 "529822ac27fe5fb94dc580e17749e90cbc0f497ff664808e9b01334e1d243b1e"
    end
  end

  # Older Homebrew versions mistake the architecture suffix for the version.
  version "0.9.1" if Version.detect(stable.url).to_s != "0.9.1"

  def install
    bin.install "apibconv"
  end

  test do
    assert_match "Usage:", shell_output("#{bin}/apibconv --help")
    assert_equal "apibconv v#{version}\n", shell_output("#{bin}/apibconv --version")
  end
end
