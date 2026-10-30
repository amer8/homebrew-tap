class Apibconv < Formula
  desc "Convert between API Blueprint, OpenAPI, and AsyncAPI specifications"
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
      url "https://github.com/amer8/apibconv/releases/download/v0.9.2/apibconv_0.9.2_Darwin_arm64.tar.gz"
      sha256 "dc6a7ca72539077899670d3518599ce8136e76d1d653fbb063e454acc27dcac1"
    end

    on_intel do
      url "https://github.com/amer8/apibconv/releases/download/v0.9.2/apibconv_0.9.2_Darwin_x86_64.tar.gz"
      sha256 "b9b05033f7f13801db76137ca256d5bcb2ba60c61f42b828184627f3b1e73c48"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/amer8/apibconv/releases/download/v0.9.2/apibconv_0.9.2_Linux_arm64.tar.gz"
      sha256 "986c917509ab1c175dd9f7667fcbed8eb630a1c8909eba15cc898abbd621e726"
    end

    on_intel do
      url "https://github.com/amer8/apibconv/releases/download/v0.9.2/apibconv_0.9.2_Linux_x86_64.tar.gz"
      sha256 "726845c1559ce30190e5887761e89d045230b24ddb7c698473ae5f6b97e0e9e4"
    end
  end

  # Older Homebrew versions mistake the architecture suffix for the version.
  version "0.9.2" if Version.detect(stable.url).to_s != "0.9.2"

  def install
    bin.install "apibconv"
  end

  test do
    assert_match "Usage:", shell_output("#{bin}/apibconv --help")
    assert_equal "apibconv v#{version}\n", shell_output("#{bin}/apibconv --version")
  end
end
