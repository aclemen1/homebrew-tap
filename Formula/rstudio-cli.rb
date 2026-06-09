class RstudioCli < Formula
  desc "AI-native CLI bridge to drive an RStudio Server/Desktop IDE from a terminal"
  homepage "https://github.com/aclemen1/rstudio-cli"
  version "0.19.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/aclemen1/rstudio-cli/releases/download/v0.19.2/rstudio-cli-v0.19.2-aarch64-apple-darwin.tar.gz"
      sha256 "18468bcf7f5635b5e52f197eeeb7dd0465a8510f616fc1253df31578fbadab9c"
    end
    on_intel do
      url "https://github.com/aclemen1/rstudio-cli/releases/download/v0.19.2/rstudio-cli-v0.19.2-x86_64-apple-darwin.tar.gz"
      sha256 "fe6e0832a5a2f7f0a248a010fd4fe9ff21eb499270ac8fd29477530f5f236739"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/aclemen1/rstudio-cli/releases/download/v0.19.2/rstudio-cli-v0.19.2-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "49fe4a668baed77a983d86765ba337a2c9e1ca016e03d7976a6e33cca0e660d2"
    end
    on_intel do
      url "https://github.com/aclemen1/rstudio-cli/releases/download/v0.19.2/rstudio-cli-v0.19.2-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "0d1c798cc0eb0b4647d80e0e286a27212738c694bde5994cfce41ff7bd79ca13"
    end
  end

  def install
    bin.install "rstudio"
  end

  test do
    assert_match "0.19.2", shell_output("#{bin}/rstudio version")
  end
end
