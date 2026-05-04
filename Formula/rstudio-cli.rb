class RstudioCli < Formula
  desc "AI-native CLI bridge to drive an RStudio Server/Desktop IDE from a terminal"
  homepage "https://github.com/aclemen1/rstudio-cli"
  version "0.9.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/aclemen1/rstudio-cli/releases/download/v0.9.2/rstudio-cli-v0.9.2-aarch64-apple-darwin.tar.gz"
      sha256 "aa4b3a060a51dde4e01f0b0c93a64cf28dadc3dcdd2c28dcfd6278b8a61a8a7a"
    end
    on_intel do
      url "https://github.com/aclemen1/rstudio-cli/releases/download/v0.9.2/rstudio-cli-v0.9.2-x86_64-apple-darwin.tar.gz"
      sha256 "8110649fff91bc50c8785220a09b4ad0e5b37a939cc0ec5c229d5bdb701d966b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/aclemen1/rstudio-cli/releases/download/v0.9.2/rstudio-cli-v0.9.2-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "fcc561d5298ccce7ddefdba829f649d2e2e43dce980ef3dbbf8e977489afc4bc"
    end
    on_intel do
      url "https://github.com/aclemen1/rstudio-cli/releases/download/v0.9.2/rstudio-cli-v0.9.2-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "9839a4bb4d962a2ad9428784006f5fc05f43dcbb2b067beec94817e44ddcccd7"
    end
  end

  def install
    bin.install "rstudio"
  end

  test do
    assert_match "0.9.2", shell_output("#{bin}/rstudio version")
  end
end
