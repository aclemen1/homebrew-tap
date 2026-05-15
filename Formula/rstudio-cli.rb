class RstudioCli < Formula
  desc "AI-native CLI bridge to drive an RStudio Server/Desktop IDE from a terminal"
  homepage "https://github.com/aclemen1/rstudio-cli"
  version "0.15.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/aclemen1/rstudio-cli/releases/download/v0.15.1/rstudio-cli-v0.15.1-aarch64-apple-darwin.tar.gz"
      sha256 "102f89aa0c6cbd7dfa1fcae79bfbdcf67d6423132f2eb6334e559b1212d1ab6e"
    end
    on_intel do
      url "https://github.com/aclemen1/rstudio-cli/releases/download/v0.15.1/rstudio-cli-v0.15.1-x86_64-apple-darwin.tar.gz"
      sha256 "2388cf02e576a3d78e3b929f5a300fa2dbb87ba8843ecc8eb5ebd4930bfcab1c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/aclemen1/rstudio-cli/releases/download/v0.15.1/rstudio-cli-v0.15.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "e60f30efe019de504adf5e71eeb0e1b96b56599be7492cd257b7045a150c8fe5"
    end
    on_intel do
      url "https://github.com/aclemen1/rstudio-cli/releases/download/v0.15.1/rstudio-cli-v0.15.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "a25b6496a9f1ec922123a066c104d18767db6afcbc302e1006f6c70fa7246048"
    end
  end

  def install
    bin.install "rstudio"
  end

  test do
    assert_match "0.15.1", shell_output("#{bin}/rstudio version")
  end
end
