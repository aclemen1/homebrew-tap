class RstudioCli < Formula
  desc "AI-native CLI bridge to drive an RStudio Server/Desktop IDE from a terminal"
  homepage "https://github.com/aclemen1/rstudio-cli"
  version "0.12.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/aclemen1/rstudio-cli/releases/download/v0.12.0/rstudio-cli-v0.12.0-aarch64-apple-darwin.tar.gz"
      sha256 "d9fdc6ad5d416153ab21aee0588bce614782088746341bde02485eb39f8e29aa"
    end
    on_intel do
      url "https://github.com/aclemen1/rstudio-cli/releases/download/v0.12.0/rstudio-cli-v0.12.0-x86_64-apple-darwin.tar.gz"
      sha256 "17db888210cbe4c05396f9b5bbd83faf839a12f2bd8f7d336d5b1b850a227e6a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/aclemen1/rstudio-cli/releases/download/v0.12.0/rstudio-cli-v0.12.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "b4799354154a1f8b7e6e7cae2ab0fe0d8dd777b4aa7b9ead3d12514bae4c73da"
    end
    on_intel do
      url "https://github.com/aclemen1/rstudio-cli/releases/download/v0.12.0/rstudio-cli-v0.12.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "62373a214db1f751db799df71632ae2d106ad75dcb326b7cbd0a8c6ebf9b7f67"
    end
  end

  def install
    bin.install "rstudio"
  end

  test do
    assert_match "0.12.0", shell_output("#{bin}/rstudio version")
  end
end
