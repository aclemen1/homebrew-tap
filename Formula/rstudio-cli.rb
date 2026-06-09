class RstudioCli < Formula
  desc "AI-native CLI bridge to drive an RStudio Server/Desktop IDE from a terminal"
  homepage "https://github.com/aclemen1/rstudio-cli"
  version "0.18.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/aclemen1/rstudio-cli/releases/download/v0.18.1/rstudio-cli-v0.18.1-aarch64-apple-darwin.tar.gz"
      sha256 "7144e3e3f7278fe350f2ba6bba2a27da745a1067bd449319b71dfc9123796e0c"
    end
    on_intel do
      url "https://github.com/aclemen1/rstudio-cli/releases/download/v0.18.1/rstudio-cli-v0.18.1-x86_64-apple-darwin.tar.gz"
      sha256 "00b852bb000eae588387249d89978fe5697d686ce0d172efebdf52c66c999681"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/aclemen1/rstudio-cli/releases/download/v0.18.1/rstudio-cli-v0.18.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "932e2472d24a422c7b66e96ffd3d1b9142931ea35dcf30c665be121e7b907279"
    end
    on_intel do
      url "https://github.com/aclemen1/rstudio-cli/releases/download/v0.18.1/rstudio-cli-v0.18.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "414bad26c153993ff27d8911b482f1705d4c64f2cebbda4de009d32e419756b4"
    end
  end

  def install
    bin.install "rstudio"
  end

  test do
    assert_match "0.18.1", shell_output("#{bin}/rstudio version")
  end
end