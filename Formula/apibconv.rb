class Apibconv < Formula
  desc "Convert between API Blueprint, OpenAPI, and AsyncAPI specifications"
  homepage "https://github.com/amer8/apibconv"
  license "MIT"

  livecheck do
    url :stable
    strategy :github_latest
  end

  on_macos do
    depends_on macos: :ventura

    if Hardware::CPU.arm?
      url "https://github.com/amer8/apibconv/releases/download/v0.9.0/apibconv_0.9.0_Darwin_arm64.tar.gz"
      sha256 "b52cf61be800fb668389c636484aaf457c617a27c221c3f3d274296cfd4901ca"
    else
      url "https://github.com/amer8/apibconv/releases/download/v0.9.0/apibconv_0.9.0_Darwin_x86_64.tar.gz"
      sha256 "982e6143e6773e3d4aeb3414a97f17b801133ecba3b55f05491d7b1e6b1426a6"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/amer8/apibconv/releases/download/v0.9.0/apibconv_0.9.0_Linux_arm64.tar.gz"
      sha256 "12f3af9c7645f7fda483c73934f86361702b424ac16b29e2f6a094f7c31a9f4f"
    else
      url "https://github.com/amer8/apibconv/releases/download/v0.9.0/apibconv_0.9.0_Linux_x86_64.tar.gz"
      sha256 "4c73d1b13ab0518314d9ba29e1a747bbb475bf1c24a67aaa91b81da508a435f4"
    end
  end

  def install
    bin.install "apibconv"
  end

  test do
    assert_match "Usage:", shell_output("#{bin}/apibconv --help")
    assert_equal "apibconv v#{version}\n", shell_output("#{bin}/apibconv --version")
  end
end
