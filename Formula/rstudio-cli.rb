class RstudioCli < Formula
  desc "AI-native CLI bridge to drive an RStudio Server/Desktop IDE from a terminal"
  homepage "https://github.com/aclemen1/rstudio-cli"
  version "0.21.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/aclemen1/rstudio-cli/releases/download/v0.21.3/rstudio-cli-v0.21.3-aarch64-apple-darwin.tar.gz"
      sha256 "a3743b38b8b0e4a59b60190d4f1ef5bad622112169f81ada6151f760836e6794"
    end
    on_intel do
      url "https://github.com/aclemen1/rstudio-cli/releases/download/v0.21.3/rstudio-cli-v0.21.3-x86_64-apple-darwin.tar.gz"
      sha256 "21622e614e638c1429ba3d37765b63f2ff9814a797bc12f4b7047756671c0e14"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/aclemen1/rstudio-cli/releases/download/v0.21.3/rstudio-cli-v0.21.3-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "c36d8fc32cf480ea66b5f51b596b2e2e7578caab071de8f9a3146b7708f2b28b"
    end
    on_intel do
      url "https://github.com/aclemen1/rstudio-cli/releases/download/v0.21.3/rstudio-cli-v0.21.3-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "ceb2c87624dd350117f341ed363985a6883b47cdd878e428afd5e84d6c39727f"
    end
  end

  def install
    bin.install "rstudio"
  end

  test do
    assert_match "0.21.3", shell_output("#{bin}/rstudio version")
  end
end
