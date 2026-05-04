class RstudioCli < Formula
  desc "AI-native CLI bridge to drive an RStudio Server/Desktop IDE from a terminal"
  homepage "https://github.com/aclemen1/rstudio-cli"
  version "0.7.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/aclemen1/rstudio-cli/releases/download/v0.7.1/rstudio-cli-v0.7.1-aarch64-apple-darwin.tar.gz"
      sha256 "ede949a63cb32f553f3a93e85a0c93727958ae26dc300b14b7fe0e8dca59aea5"
    end
    on_intel do
      url "https://github.com/aclemen1/rstudio-cli/releases/download/v0.7.1/rstudio-cli-v0.7.1-x86_64-apple-darwin.tar.gz"
      sha256 "064a6698cad905a5845f9fd40021fa2afac16618a9427307f7e985694e6c2764"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/aclemen1/rstudio-cli/releases/download/v0.7.1/rstudio-cli-v0.7.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "63e079d2c77e2e01a140bc5a784d82138f28a51eb8d679e27c6f518ff2aa2862"
    end
    on_intel do
      url "https://github.com/aclemen1/rstudio-cli/releases/download/v0.7.1/rstudio-cli-v0.7.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "1bd599d100d87c4757ae41620c9a7e3737bf6caa4e04182ec6b065451e181422"
    end
  end

  def install
    bin.install "rstudio"
  end

  test do
    assert_match "0.7.1", shell_output("#{bin}/rstudio version")
  end
end
