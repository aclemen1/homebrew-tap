class RstudioCli < Formula
  desc "AI-native CLI bridge to drive an RStudio Server/Desktop IDE from a terminal"
  homepage "https://github.com/aclemen1/rstudio-cli"
  version "0.5.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/aclemen1/rstudio-cli/releases/download/v0.5.2/rstudio-cli-v0.5.2-aarch64-apple-darwin.tar.gz"
      sha256 "89af33ff6454145a01406ec49d22b4eb8f3eb7d9f7511ab5c361d35ea0c6e66b"
    end
    on_intel do
      url "https://github.com/aclemen1/rstudio-cli/releases/download/v0.5.2/rstudio-cli-v0.5.2-x86_64-apple-darwin.tar.gz"
      sha256 "a5ad0129972af1fd1548d6227c31c41375cbfd5fabd797aafee62d44a6991e5c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/aclemen1/rstudio-cli/releases/download/v0.5.2/rstudio-cli-v0.5.2-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "a3d07f40fda41c9537366bdcc3eb2ce4fb7cd3c9624884a3a63237a835571649"
    end
    on_intel do
      url "https://github.com/aclemen1/rstudio-cli/releases/download/v0.5.2/rstudio-cli-v0.5.2-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "2561f23881eaef2663386ee4732d9f099cf4a4c9ba74e186cd21ed6102500813"
    end
  end

  def install
    bin.install "rstudio"
  end

  test do
    assert_match "0.5.2", shell_output("#{bin}/rstudio version")
  end
end
