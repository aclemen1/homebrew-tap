class RstudioCli < Formula
  desc "AI-native CLI bridge to drive an RStudio Server/Desktop IDE from a terminal"
  homepage "https://github.com/aclemen1/rstudio-cli"
  version "0.12.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/aclemen1/rstudio-cli/releases/download/v0.12.3/rstudio-cli-v0.12.3-aarch64-apple-darwin.tar.gz"
      sha256 "74536993115d594f6ecf5ea397e4931cff2d8501c6e932477a20726e7217f6ed"
    end
    on_intel do
      url "https://github.com/aclemen1/rstudio-cli/releases/download/v0.12.3/rstudio-cli-v0.12.3-x86_64-apple-darwin.tar.gz"
      sha256 "98914bc655117431c3f50eb301da0be1c405a4245e0dff86fe6021f9c2f4ec93"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/aclemen1/rstudio-cli/releases/download/v0.12.3/rstudio-cli-v0.12.3-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "0e8ee49f8aa144137da08a31df1a14ce17d5bbfcaf0af17c8470bf0b7beebea5"
    end
    on_intel do
      url "https://github.com/aclemen1/rstudio-cli/releases/download/v0.12.3/rstudio-cli-v0.12.3-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "51fb8e249953bd44cb8b90a0098be6002c1bd3715de502cc61beb3cefeab82d3"
    end
  end

  def install
    bin.install "rstudio"
  end

  test do
    assert_match "0.12.3", shell_output("#{bin}/rstudio version")
  end
end
