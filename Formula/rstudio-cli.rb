class RstudioCli < Formula
  desc "AI-native CLI bridge to drive an RStudio Server/Desktop IDE from a terminal"
  homepage "https://github.com/aclemen1/rstudio-cli"
  version "0.20.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/aclemen1/rstudio-cli/releases/download/v0.20.3/rstudio-cli-v0.20.3-aarch64-apple-darwin.tar.gz"
      sha256 "6c8f07354bb883ecd552d4933b7f68875daaef5a2a1d009596ed3bba4930d814"
    end
    on_intel do
      url "https://github.com/aclemen1/rstudio-cli/releases/download/v0.20.3/rstudio-cli-v0.20.3-x86_64-apple-darwin.tar.gz"
      sha256 "65878ef1777305693b4b24244d333e85244aaab4a42cd6bdaf317b42967ab3a5"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/aclemen1/rstudio-cli/releases/download/v0.20.3/rstudio-cli-v0.20.3-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "2a5ec7a39d7a898985001be8b31625b428bf2ac24f55b7f8a2735d8ac42c42be"
    end
    on_intel do
      url "https://github.com/aclemen1/rstudio-cli/releases/download/v0.20.3/rstudio-cli-v0.20.3-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "10a03161650fd93ce64ff46e1a640f8b4e45ec01fbf4db590d42a85ff05bb04c"
    end
  end

  def install
    bin.install "rstudio"
  end

  test do
    assert_match "0.20.3", shell_output("#{bin}/rstudio version")
  end
end
