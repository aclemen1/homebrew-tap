class RstudioCli < Formula
  desc "AI-native CLI bridge to drive an RStudio Server/Desktop IDE from a terminal"
  homepage "https://github.com/aclemen1/rstudio-cli"
  version "0.6.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/aclemen1/rstudio-cli/releases/download/v0.6.1/rstudio-cli-v0.6.1-aarch64-apple-darwin.tar.gz"
      sha256 "e09e36319850210cbedff7a3b4f3bf84a4e5ec253fdd368246ebc94b2ce30026"
    end
    on_intel do
      url "https://github.com/aclemen1/rstudio-cli/releases/download/v0.6.1/rstudio-cli-v0.6.1-x86_64-apple-darwin.tar.gz"
      sha256 "74bafcf9f2f6c32dc4a9654edea8fd819460a97027e7dc115ae0efef620ffd60"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/aclemen1/rstudio-cli/releases/download/v0.6.1/rstudio-cli-v0.6.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "d90dbfaf021f144768fc2e79348bcd880a82e97d1227ce40d3c4adbcae4cbc24"
    end
    on_intel do
      url "https://github.com/aclemen1/rstudio-cli/releases/download/v0.6.1/rstudio-cli-v0.6.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "805cfd06d15052a0e14ef8aca42d502e1c4bd72a1d367031049c0c0ab1be478c"
    end
  end

  def install
    bin.install "rstudio"
  end

  test do
    assert_match "0.6.1", shell_output("#{bin}/rstudio version")
  end
end
