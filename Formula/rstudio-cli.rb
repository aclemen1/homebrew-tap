class RstudioCli < Formula
  desc "AI-native CLI bridge to drive an RStudio Server/Desktop IDE from a terminal"
  homepage "https://github.com/aclemen1/rstudio-cli"
  version "0.19.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/aclemen1/rstudio-cli/releases/download/v0.19.4/rstudio-cli-v0.19.4-aarch64-apple-darwin.tar.gz"
      sha256 "78a756287eb0d264b68b83d6a700c74073a7353f27244bc0135c90964e6819c5"
    end
    on_intel do
      url "https://github.com/aclemen1/rstudio-cli/releases/download/v0.19.4/rstudio-cli-v0.19.4-x86_64-apple-darwin.tar.gz"
      sha256 "52e091044f8f2e660d2d70575d6bc7a9cd082b74d73a9211a94200862d1f2a96"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/aclemen1/rstudio-cli/releases/download/v0.19.4/rstudio-cli-v0.19.4-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "5d8d52f5023b5aea0435bc2f1a60e70387988ab8edc8b9829b1a3330682d9b6a"
    end
    on_intel do
      url "https://github.com/aclemen1/rstudio-cli/releases/download/v0.19.4/rstudio-cli-v0.19.4-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "c7e0eea08eadfbaaff134e4ca1a71a641931f70503f8cef10ae7ded17a872a44"
    end
  end

  def install
    bin.install "rstudio"
  end

  test do
    assert_match "0.19.4", shell_output("#{bin}/rstudio version")
  end
end
