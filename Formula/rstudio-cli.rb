class RstudioCli < Formula
  desc "AI-native CLI bridge to drive an RStudio Server/Desktop IDE from a terminal"
  homepage "https://github.com/aclemen1/rstudio-cli"
  version "0.16.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/aclemen1/rstudio-cli/releases/download/v0.16.1/rstudio-cli-v0.16.1-aarch64-apple-darwin.tar.gz"
      sha256 "c1cc3ca7eb3ee57d8c50191dfb23235faf90cbb8e9fd2ac0e164f969ad2ca4d1"
    end
    on_intel do
      url "https://github.com/aclemen1/rstudio-cli/releases/download/v0.16.1/rstudio-cli-v0.16.1-x86_64-apple-darwin.tar.gz"
      sha256 "cf7395fb558f157e7ef9a632ba8339d37be45fe33c7354c56beb2c963f19e268"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/aclemen1/rstudio-cli/releases/download/v0.16.1/rstudio-cli-v0.16.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "f5d9594e8ce8bbc8f8ba82766947df9e5217dd43b4286b709a80659483464194"
    end
    on_intel do
      url "https://github.com/aclemen1/rstudio-cli/releases/download/v0.16.1/rstudio-cli-v0.16.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "a9e4953a7c4cba9c57831337a6a30a8523bf34b3ca56cf718bd378148de1b4b1"
    end
  end

  def install
    bin.install "rstudio"
  end

  test do
    assert_match "0.16.1", shell_output("#{bin}/rstudio version")
  end
end
