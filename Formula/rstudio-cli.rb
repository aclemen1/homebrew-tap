class RstudioCli < Formula
  desc "AI-native CLI bridge to drive an RStudio Server/Desktop IDE from a terminal"
  homepage "https://github.com/aclemen1/rstudio-cli"
  version "0.5.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/aclemen1/rstudio-cli/releases/download/v0.5.0/rstudio-cli-v0.5.0-aarch64-apple-darwin.tar.gz"
      sha256 "2d3abc19534d9fcc997aac8f9cbe1f13e238d1894ded1b6a069862bb4e8c9b96"
    end
    on_intel do
      url "https://github.com/aclemen1/rstudio-cli/releases/download/v0.5.0/rstudio-cli-v0.5.0-x86_64-apple-darwin.tar.gz"
      sha256 "edae67320e8b8f67e237fe4e5f4b0a6bc9d7fbfc83a7787be51df5dc54003281"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/aclemen1/rstudio-cli/releases/download/v0.5.0/rstudio-cli-v0.5.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "c9585e02fe1d691e099bb9addb9d22a9f7d5e6a7e01c58c61efaff5232f5119e"
    end
    on_intel do
      url "https://github.com/aclemen1/rstudio-cli/releases/download/v0.5.0/rstudio-cli-v0.5.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "2e839aa2da47377fb327a38d413884fa630675b1348c92df7dd012e3281c2424"
    end
  end

  def install
    bin.install "rstudio"
  end

  test do
    assert_match "0.5.0", shell_output("#{bin}/rstudio version")
  end
end
