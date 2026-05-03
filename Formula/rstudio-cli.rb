class RstudioCli < Formula
  desc "AI-native CLI bridge to drive an RStudio Server/Desktop IDE from a terminal"
  homepage "https://github.com/aclemen1/rstudio-cli"
  version "0.6.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/aclemen1/rstudio-cli/releases/download/v0.6.2/rstudio-cli-v0.6.2-aarch64-apple-darwin.tar.gz"
      sha256 "c7e74068711201ff55394db1355a0b376d2cec0c481384e93e007c086dbc1690"
    end
    on_intel do
      url "https://github.com/aclemen1/rstudio-cli/releases/download/v0.6.2/rstudio-cli-v0.6.2-x86_64-apple-darwin.tar.gz"
      sha256 "b55da0175ebc0af35a3862ce0615fbe2175312c9e5cdd200b204ca952bf9435a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/aclemen1/rstudio-cli/releases/download/v0.6.2/rstudio-cli-v0.6.2-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "477158bf7d826eee79cea2e6fb46d66f94e10add30378bb19f44944d35c830e3"
    end
    on_intel do
      url "https://github.com/aclemen1/rstudio-cli/releases/download/v0.6.2/rstudio-cli-v0.6.2-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "551542efc8bb1df34f48b274aa7b937f35e0b0d3d0f7f0d924d7d01995bc3e1d"
    end
  end

  def install
    bin.install "rstudio"
  end

  test do
    assert_match "0.6.2", shell_output("#{bin}/rstudio version")
  end
end
