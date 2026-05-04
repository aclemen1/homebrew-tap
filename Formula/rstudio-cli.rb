class RstudioCli < Formula
  desc "AI-native CLI bridge to drive an RStudio Server/Desktop IDE from a terminal"
  homepage "https://github.com/aclemen1/rstudio-cli"
  version "0.8.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/aclemen1/rstudio-cli/releases/download/v0.8.1/rstudio-cli-v0.8.1-aarch64-apple-darwin.tar.gz"
      sha256 "ff8f6bf37f80da47054e221f87fea0e563fa7f2365b2b567a5edb66604787105"
    end
    on_intel do
      url "https://github.com/aclemen1/rstudio-cli/releases/download/v0.8.1/rstudio-cli-v0.8.1-x86_64-apple-darwin.tar.gz"
      sha256 "33d2172699faba282f6207924e13bacb4526067fbc473501bae369d50134d3ac"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/aclemen1/rstudio-cli/releases/download/v0.8.1/rstudio-cli-v0.8.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "bdad945fa6ec97d5c0cd1fff223652445fd06a90b8edea95f378f9bd521ceb69"
    end
    on_intel do
      url "https://github.com/aclemen1/rstudio-cli/releases/download/v0.8.1/rstudio-cli-v0.8.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "619bf86a1b2bd60b4a09d4911506890b26dde0a48e7bea86fa3e1f507f2dd031"
    end
  end

  def install
    bin.install "rstudio"
  end

  test do
    assert_match "0.8.1", shell_output("#{bin}/rstudio version")
  end
end
