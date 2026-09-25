class RstudioCli < Formula
  desc "AI-native CLI bridge to drive an RStudio Server/Desktop IDE from a terminal"
  homepage "https://github.com/aclemen1/rstudio-cli"
  version "0.21.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/aclemen1/rstudio-cli/releases/download/v0.21.4/rstudio-cli-v0.21.4-aarch64-apple-darwin.tar.gz"
      sha256 "39cf600fa7e74a3daa20e931d00ff17881ddce793e6af5d4895c5849e32524e0"
    end
    on_intel do
      url "https://github.com/aclemen1/rstudio-cli/releases/download/v0.21.4/rstudio-cli-v0.21.4-x86_64-apple-darwin.tar.gz"
      sha256 "d59bde260b4b6f1332ddf9472a1656a1935d11f177f4047851506c2036192896"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/aclemen1/rstudio-cli/releases/download/v0.21.4/rstudio-cli-v0.21.4-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "1785205abedddd1aac2b3015e8331631f008bd79fe5735a5623eb612b8a492fe"
    end
    on_intel do
      url "https://github.com/aclemen1/rstudio-cli/releases/download/v0.21.4/rstudio-cli-v0.21.4-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "21b85bbf01d2472900f62ed8559c092b5c292bb8fbbf2179d0c5d13493b94c33"
    end
  end

  def install
    bin.install "rstudio"
  end

  test do
    assert_match "0.21.4", shell_output("#{bin}/rstudio version")
  end
end
