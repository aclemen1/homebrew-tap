class RstudioCli < Formula
  desc "AI-native CLI bridge to drive an RStudio Server/Desktop IDE from a terminal"
  homepage "https://github.com/aclemen1/rstudio-cli"
  version "0.21.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/aclemen1/rstudio-cli/releases/download/v0.21.1/rstudio-cli-v0.21.1-aarch64-apple-darwin.tar.gz"
      sha256 "e96b2297d32f86ab347ebad6f7e0d0cd2f8750689905aeade60ca7e58978125a"
    end
    on_intel do
      url "https://github.com/aclemen1/rstudio-cli/releases/download/v0.21.1/rstudio-cli-v0.21.1-x86_64-apple-darwin.tar.gz"
      sha256 "2c30a29d235b82685bd18a1b236d7ce2b0cb6ae3677e3d7ee5b12c89d204019d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/aclemen1/rstudio-cli/releases/download/v0.21.1/rstudio-cli-v0.21.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "36c3e40b0189ad7a0b7b0c3b6ec8d29525d9fd4c326bddcbc01ee7651d374493"
    end
    on_intel do
      url "https://github.com/aclemen1/rstudio-cli/releases/download/v0.21.1/rstudio-cli-v0.21.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "30fd56d6c21064cb8d5b4ce49313469acafe14588836d925df0c2c5259524337"
    end
  end

  def install
    bin.install "rstudio"
  end

  test do
    assert_match "0.21.1", shell_output("#{bin}/rstudio version")
  end
end
