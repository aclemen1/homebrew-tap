class RstudioCli < Formula
  desc "AI-native CLI bridge to drive an RStudio Server/Desktop IDE from a terminal"
  homepage "https://github.com/aclemen1/rstudio-cli"
  version "0.5.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/aclemen1/rstudio-cli/releases/download/v0.5.4/rstudio-cli-v0.5.4-aarch64-apple-darwin.tar.gz"
      sha256 "dbd23a59c1c05c3753d6cffbb9235ccea214e0b1d181c6d353311fa8ec01dfbb"
    end
    on_intel do
      url "https://github.com/aclemen1/rstudio-cli/releases/download/v0.5.4/rstudio-cli-v0.5.4-x86_64-apple-darwin.tar.gz"
      sha256 "c130dbed1900afdd7ad9b2a58c9b7c7ddbffbe9752deac11a0400afed943ffba"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/aclemen1/rstudio-cli/releases/download/v0.5.4/rstudio-cli-v0.5.4-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "3be845c68248c715c9a6901d28b49660026d35571d3682fcf0c6ab7f0fc241d9"
    end
    on_intel do
      url "https://github.com/aclemen1/rstudio-cli/releases/download/v0.5.4/rstudio-cli-v0.5.4-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "452b43486ed8c26ba3e8f519d86c33f544caf32d86e32d39cbaf38337c1a6e6a"
    end
  end

  def install
    bin.install "rstudio"
  end

  test do
    assert_match "0.5.4", shell_output("#{bin}/rstudio version")
  end
end
