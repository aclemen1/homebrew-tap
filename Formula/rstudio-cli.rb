class RstudioCli < Formula
  desc "AI-native CLI bridge to drive an RStudio Server/Desktop IDE from a terminal"
  homepage "https://github.com/aclemen1/rstudio-cli"
  version "0.8.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/aclemen1/rstudio-cli/releases/download/v0.8.0/rstudio-cli-v0.8.0-aarch64-apple-darwin.tar.gz"
      sha256 "28f467738c397738c35f5a7de70deae45965024b40ee0a4391fdf8bcbf4d6ce8"
    end
    on_intel do
      url "https://github.com/aclemen1/rstudio-cli/releases/download/v0.8.0/rstudio-cli-v0.8.0-x86_64-apple-darwin.tar.gz"
      sha256 "2d7f5aecbf33daa15c0e30727c426e9f3780cdd839f29b6da01283e752bd052a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/aclemen1/rstudio-cli/releases/download/v0.8.0/rstudio-cli-v0.8.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "59e7f6e9b701a3ce200e1bc2f341f0b0c1773e07ba942b629cfb112b4c549d5f"
    end
    on_intel do
      url "https://github.com/aclemen1/rstudio-cli/releases/download/v0.8.0/rstudio-cli-v0.8.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "10704fea2a57245e2a40e9c2467765731bfe40ae8c32f7884a45abf1f735a88d"
    end
  end

  def install
    bin.install "rstudio"
  end

  test do
    assert_match "0.8.0", shell_output("#{bin}/rstudio version")
  end
end
