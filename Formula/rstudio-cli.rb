class RstudioCli < Formula
  desc "AI-native CLI bridge to drive an RStudio Server/Desktop IDE from a terminal"
  homepage "https://github.com/aclemen1/rstudio-cli"
  version "0.12.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/aclemen1/rstudio-cli/releases/download/v0.12.1/rstudio-cli-v0.12.1-aarch64-apple-darwin.tar.gz"
      sha256 "c6f9fbd1cc8340773990d3a3440e3ca606f7a113c293bb4e389210c6e1af5f32"
    end
    on_intel do
      url "https://github.com/aclemen1/rstudio-cli/releases/download/v0.12.1/rstudio-cli-v0.12.1-x86_64-apple-darwin.tar.gz"
      sha256 "449b5fde53bb24db18887b6314dd5eef1f0d474f2166f7e8f05dc39fae652531"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/aclemen1/rstudio-cli/releases/download/v0.12.1/rstudio-cli-v0.12.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "67b68fdd93ecf9e16d3baa6159efa3d888eb1b414fd1ce2035196a855315b3d5"
    end
    on_intel do
      url "https://github.com/aclemen1/rstudio-cli/releases/download/v0.12.1/rstudio-cli-v0.12.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "cc33d2a2db8a162841d6dc439dc6335292cf41a2a16a749e4a6eaf9ed31206ed"
    end
  end

  def install
    bin.install "rstudio"
  end

  test do
    assert_match "0.12.1", shell_output("#{bin}/rstudio version")
  end
end
