class RstudioCli < Formula
  desc "AI-native CLI bridge to drive an RStudio Server/Desktop IDE from a terminal"
  homepage "https://github.com/aclemen1/rstudio-cli"
  version "0.12.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/aclemen1/rstudio-cli/releases/download/v0.12.4/rstudio-cli-v0.12.4-aarch64-apple-darwin.tar.gz"
      sha256 "83233d85bd29d7c01d620f3d4726d27804d6989bc1044f415383dc5885010cc8"
    end
    on_intel do
      url "https://github.com/aclemen1/rstudio-cli/releases/download/v0.12.4/rstudio-cli-v0.12.4-x86_64-apple-darwin.tar.gz"
      sha256 "16b6c44fa5512337fc2c21abf40ac32584b48795b3182623ce8656243543ff0a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/aclemen1/rstudio-cli/releases/download/v0.12.4/rstudio-cli-v0.12.4-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "22c218f863084ed796d5316a3770da57055dca89de0399aeac1c268b5bfd1337"
    end
    on_intel do
      url "https://github.com/aclemen1/rstudio-cli/releases/download/v0.12.4/rstudio-cli-v0.12.4-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "cb4476eea899d17a4a9924b6c2617c323e92150d2ddd1e13afe0bd72f9da4506"
    end
  end

  def install
    bin.install "rstudio"
  end

  test do
    assert_match "0.12.4", shell_output("#{bin}/rstudio version")
  end
end
