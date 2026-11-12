class Apibconv < Formula
  desc "Migrate API Blueprint and OpenAPI specifications to OpenAPI 3.1"
  homepage "https://github.com/amer8/apibconv"
  license "MIT"
  # Recover from archive names previously inferred as version 64 or 86.64.
  version_scheme 1

  livecheck do
    url :stable
    strategy :github_latest
  end

  on_macos do
    depends_on macos: :ventura

    on_arm do
      url "https://github.com/amer8/apibconv/releases/download/v0.10.0/apibconv_0.10.0_Darwin_arm64.tar.gz"
      sha256 "d0acc94bac4f2f24bea129c0d6f81fd0a81026369eaca5799d4476eee94793d8"
    end

    on_intel do
      url "https://github.com/amer8/apibconv/releases/download/v0.10.0/apibconv_0.10.0_Darwin_x86_64.tar.gz"
      sha256 "adc1325dd4fc1189f17e1b7291be72116861f2014843c99da978155d26fbf4eb"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/amer8/apibconv/releases/download/v0.10.0/apibconv_0.10.0_Linux_arm64.tar.gz"
      sha256 "cf7b3e01dd013d24706e568523c5b8fc716c5182966d4fb8af932568262a467d"
    end

    on_intel do
      url "https://github.com/amer8/apibconv/releases/download/v0.10.0/apibconv_0.10.0_Linux_x86_64.tar.gz"
      sha256 "a024797b25f1a0b52867a848453dfd51342b4d620e33b497cea5af6c04737d37"
    end
  end

  # Older Homebrew versions mistake the architecture suffix for the version.
  version "0.10.0" if Version.detect(stable.url).to_s != "0.10.0"

  def install
    bin.install "apibconv"
  end

  test do
    assert_match "Usage:", shell_output("#{bin}/apibconv --help")
    assert_equal "apibconv v#{version}\n", shell_output("#{bin}/apibconv --version")
  end
end
