class RstudioCli < Formula
  desc "AI-native CLI bridge to drive an RStudio Server/Desktop IDE from a terminal"
  homepage "https://github.com/aclemen1/rstudio-cli"
  version "0.16.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/aclemen1/rstudio-cli/releases/download/v0.16.0/rstudio-cli-v0.16.0-aarch64-apple-darwin.tar.gz"
      sha256 "91f0b1ab2b6ed64536bda4a87c0b4825a8e9fd18e7c3044250209206d51006d9"
    end
    on_intel do
      url "https://github.com/aclemen1/rstudio-cli/releases/download/v0.16.0/rstudio-cli-v0.16.0-x86_64-apple-darwin.tar.gz"
      sha256 "3582801229a037ea9ff627d712331bd4eca4df0b45ef284d4c06cbda9388757c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/aclemen1/rstudio-cli/releases/download/v0.16.0/rstudio-cli-v0.16.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "680fc47302610074b3fa7e90318127e1af419b6ecb29304c8af8bfc6b285d5cd"
    end
    on_intel do
      url "https://github.com/aclemen1/rstudio-cli/releases/download/v0.16.0/rstudio-cli-v0.16.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "1a0141eeaecce35eb619f0baa081598c1de94b7937b92e44225ea6cdb01f8743"
    end
  end

  def install
    bin.install "rstudio"
  end

  test do
    assert_match "0.16.0", shell_output("#{bin}/rstudio version")
  end
end
