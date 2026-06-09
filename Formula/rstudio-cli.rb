class RstudioCli < Formula
  desc "AI-native CLI bridge to drive an RStudio Server/Desktop IDE from a terminal"
  homepage "https://github.com/aclemen1/rstudio-cli"
  version "0.19.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/aclemen1/rstudio-cli/releases/download/v0.19.3/rstudio-cli-v0.19.3-aarch64-apple-darwin.tar.gz"
      sha256 "89f84e7eb177d53753886ffea4755bee5fb356888f9c47fd6fc290f3cac83eee"
    end
    on_intel do
      url "https://github.com/aclemen1/rstudio-cli/releases/download/v0.19.3/rstudio-cli-v0.19.3-x86_64-apple-darwin.tar.gz"
      sha256 "d19b669de98844f6b797fbc327d5746d22637fab96994f74cd4071e3dc106b60"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/aclemen1/rstudio-cli/releases/download/v0.19.3/rstudio-cli-v0.19.3-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "21a0b223229f3bb3c1d7fe26dd75d9f607d911a5990a956a8004d841eb4c1be1"
    end
    on_intel do
      url "https://github.com/aclemen1/rstudio-cli/releases/download/v0.19.3/rstudio-cli-v0.19.3-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "9617923c1a36fa6f91364335a8f873596c4e60107fd226f31945de7615ae15c6"
    end
  end

  def install
    bin.install "rstudio"
  end

  test do
    assert_match "0.19.3", shell_output("#{bin}/rstudio version")
  end
end
