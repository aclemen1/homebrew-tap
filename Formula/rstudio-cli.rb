class RstudioCli < Formula
  desc "AI-native CLI bridge to drive an RStudio Server/Desktop IDE from a terminal"
  homepage "https://github.com/aclemen1/rstudio-cli"
  version "0.6.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/aclemen1/rstudio-cli/releases/download/v0.6.3/rstudio-cli-v0.6.3-aarch64-apple-darwin.tar.gz"
      sha256 "f2cc73beedcd10752043f3487376bbc874d5ceff56dd09c60e0bcf45619717bb"
    end
    on_intel do
      url "https://github.com/aclemen1/rstudio-cli/releases/download/v0.6.3/rstudio-cli-v0.6.3-x86_64-apple-darwin.tar.gz"
      sha256 "db52bdc03fdb355d84b4f0995b75bd3b3b68333cce8a0bb088d55563a2c8f15e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/aclemen1/rstudio-cli/releases/download/v0.6.3/rstudio-cli-v0.6.3-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "f833ab2d8325769d460eb5b88ef73302428f9c0870e5ea3988d7db03cee8c5ee"
    end
    on_intel do
      url "https://github.com/aclemen1/rstudio-cli/releases/download/v0.6.3/rstudio-cli-v0.6.3-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "2322bcd47e678fc3fdccc392ea15a47c703776285b0b2d09601c6086594eeade"
    end
  end

  def install
    bin.install "rstudio"
  end

  test do
    assert_match "0.6.3", shell_output("#{bin}/rstudio version")
  end
end
