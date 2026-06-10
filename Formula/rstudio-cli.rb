class RstudioCli < Formula
  desc "AI-native CLI bridge to drive an RStudio Server/Desktop IDE from a terminal"
  homepage "https://github.com/aclemen1/rstudio-cli"
  version "0.20.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/aclemen1/rstudio-cli/releases/download/v0.20.0/rstudio-cli-v0.20.0-aarch64-apple-darwin.tar.gz"
      sha256 "da4d53d8a3c4ecc61e54905c1d2994a7ed8839f31c959a0a17c8ba64690e63ce"
    end
    on_intel do
      url "https://github.com/aclemen1/rstudio-cli/releases/download/v0.20.0/rstudio-cli-v0.20.0-x86_64-apple-darwin.tar.gz"
      sha256 "26accff73feba4ee3d6248036f69c14a98c4aecc85ee4c49d9ffad57468ce4df"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/aclemen1/rstudio-cli/releases/download/v0.20.0/rstudio-cli-v0.20.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "f34948a8a7be2177561382eccfb0b5dc9ebadaef6df2b310b7ca0930215bca65"
    end
    on_intel do
      url "https://github.com/aclemen1/rstudio-cli/releases/download/v0.20.0/rstudio-cli-v0.20.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "87929837cd435fe03d2ecebb5cc99075ed8749cedadc2abdabd3524337b66cc4"
    end
  end

  def install
    bin.install "rstudio"
  end

  test do
    assert_match "0.20.0", shell_output("#{bin}/rstudio version")
  end
end
