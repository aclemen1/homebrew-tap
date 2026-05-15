class RstudioCli < Formula
  desc "AI-native CLI bridge to drive an RStudio Server/Desktop IDE from a terminal"
  homepage "https://github.com/aclemen1/rstudio-cli"
  version "0.17.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/aclemen1/rstudio-cli/releases/download/v0.17.0/rstudio-cli-v0.17.0-aarch64-apple-darwin.tar.gz"
      sha256 "52b5b22008994428c862e2b3e5cffde65b9f9867ca6a7bdec898f45ecf6ac8a3"
    end
    on_intel do
      url "https://github.com/aclemen1/rstudio-cli/releases/download/v0.17.0/rstudio-cli-v0.17.0-x86_64-apple-darwin.tar.gz"
      sha256 "929b53c75431b4b3941a0664704cf419a218307795922658e184965798b76be0"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/aclemen1/rstudio-cli/releases/download/v0.17.0/rstudio-cli-v0.17.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "faf09da39bf8bc0b412f13881ebeaa278ae508046ef018df2775cdd82fb24c90"
    end
    on_intel do
      url "https://github.com/aclemen1/rstudio-cli/releases/download/v0.17.0/rstudio-cli-v0.17.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "bafab5ad161c927bdafc963fc4c442305198dc5b53af995d522a4b413de89c1c"
    end
  end

  def install
    bin.install "rstudio"
  end

  test do
    assert_match "0.17.0", shell_output("#{bin}/rstudio version")
  end
end
