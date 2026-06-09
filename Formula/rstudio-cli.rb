class RstudioCli < Formula
  desc "AI-native CLI bridge to drive an RStudio Server/Desktop IDE from a terminal"
  homepage "https://github.com/aclemen1/rstudio-cli"
  version "0.18.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/aclemen1/rstudio-cli/releases/download/v0.18.2/rstudio-cli-v0.18.2-aarch64-apple-darwin.tar.gz"
      sha256 "9cac00585dd767e8977a68da5fcf3d74c6d6c4a38f31f94c9577ea6bb635f15a"
    end
    on_intel do
      url "https://github.com/aclemen1/rstudio-cli/releases/download/v0.18.2/rstudio-cli-v0.18.2-x86_64-apple-darwin.tar.gz"
      sha256 "36eb2fa03426df7e3818bae16017de6a4904c2a6c86176d926f846180d9e4f11"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/aclemen1/rstudio-cli/releases/download/v0.18.2/rstudio-cli-v0.18.2-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "7d894e949250a96ac89d71a13ca8c5dd6f049f61fab915614a1e791746232d2e"
    end
    on_intel do
      url "https://github.com/aclemen1/rstudio-cli/releases/download/v0.18.2/rstudio-cli-v0.18.2-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "da87dd3130466a01a316519bf1486c4e26f95a9945c20ab3a487436f096a0fb6"
    end
  end

  def install
    bin.install "rstudio"
  end

  test do
    assert_match "0.18.2", shell_output("#{bin}/rstudio version")
  end
end