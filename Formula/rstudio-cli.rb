class RstudioCli < Formula
  desc "AI-native CLI bridge to drive an RStudio Server/Desktop IDE from a terminal"
  homepage "https://github.com/aclemen1/rstudio-cli"
  version "0.7.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/aclemen1/rstudio-cli/releases/download/v0.7.0/rstudio-cli-v0.7.0-aarch64-apple-darwin.tar.gz"
      sha256 "a234c2894fe828c78d66ba155312f34c26786bf28910dc585153540efc8bd52f"
    end
    on_intel do
      url "https://github.com/aclemen1/rstudio-cli/releases/download/v0.7.0/rstudio-cli-v0.7.0-x86_64-apple-darwin.tar.gz"
      sha256 "371ffeb84ab487d5620eefac8fd9b5dd5b0feb6c1ac7c76296cb75b0e6e9bc59"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/aclemen1/rstudio-cli/releases/download/v0.7.0/rstudio-cli-v0.7.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "618f28326593be494ec912a21b997fd50da5248f273c4bded9c14f9098ac1d8f"
    end
    on_intel do
      url "https://github.com/aclemen1/rstudio-cli/releases/download/v0.7.0/rstudio-cli-v0.7.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "88f16c242134d18aa5b7800158c22a2dfe90f3989eb53e15ecbae8527201738f"
    end
  end

  def install
    bin.install "rstudio"
  end

  test do
    assert_match "0.7.0", shell_output("#{bin}/rstudio version")
  end
end
