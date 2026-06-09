class RstudioCli < Formula
  desc "AI-native CLI bridge to drive an RStudio Server/Desktop IDE from a terminal"
  homepage "https://github.com/aclemen1/rstudio-cli"
  version "0.19.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/aclemen1/rstudio-cli/releases/download/v0.19.1/rstudio-cli-v0.19.1-aarch64-apple-darwin.tar.gz"
      sha256 "ab51f2436c274086ed489dfd90a9becfbef407715471312e8a96465c342eeb48"
    end
    on_intel do
      url "https://github.com/aclemen1/rstudio-cli/releases/download/v0.19.1/rstudio-cli-v0.19.1-x86_64-apple-darwin.tar.gz"
      sha256 "214b3b65f12cad585b7a2b52b174bad38fff04dddbde388da052e6ccbf962560"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/aclemen1/rstudio-cli/releases/download/v0.19.1/rstudio-cli-v0.19.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "ae6d684dbdd66dd01ad0fefed3d17cb183489436ef7f7e9fb6bead319e275076"
    end
    on_intel do
      url "https://github.com/aclemen1/rstudio-cli/releases/download/v0.19.1/rstudio-cli-v0.19.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "154b927711e89a23bfe4c416fa3dcf919d23191638216a7ac40ff0dd9d1eacb0"
    end
  end

  def install
    bin.install "rstudio"
  end

  test do
    assert_match "0.19.1", shell_output("#{bin}/rstudio version")
  end
end
