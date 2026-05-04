class RstudioCli < Formula
  desc "AI-native CLI bridge to drive an RStudio Server/Desktop IDE from a terminal"
  homepage "https://github.com/aclemen1/rstudio-cli"
  version "0.9.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/aclemen1/rstudio-cli/releases/download/v0.9.1/rstudio-cli-v0.9.1-aarch64-apple-darwin.tar.gz"
      sha256 "ad53a2606476660d457f01a3d34f7ee974caeaddb99391f9b45961679648a63c"
    end
    on_intel do
      url "https://github.com/aclemen1/rstudio-cli/releases/download/v0.9.1/rstudio-cli-v0.9.1-x86_64-apple-darwin.tar.gz"
      sha256 "f4dc6c1ec6aefd48a7ef1379b4332f67d4ace2b5ee892f52f7ac93515508f632"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/aclemen1/rstudio-cli/releases/download/v0.9.1/rstudio-cli-v0.9.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "48999199a0d8e1ebf22591cc3f15d0c194fccd254f1a7d62c7d1b64c5fb23333"
    end
    on_intel do
      url "https://github.com/aclemen1/rstudio-cli/releases/download/v0.9.1/rstudio-cli-v0.9.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "5053026af0cf5f87697bbdd0370ce5917df69feca74ea588628b5b57212e0aa2"
    end
  end

  def install
    bin.install "rstudio"
  end

  test do
    assert_match "0.9.1", shell_output("#{bin}/rstudio version")
  end
end
