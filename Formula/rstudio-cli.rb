class RstudioCli < Formula
  desc "AI-native CLI bridge to drive an RStudio Server/Desktop IDE from a terminal"
  homepage "https://github.com/aclemen1/rstudio-cli"
  version "0.8.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/aclemen1/rstudio-cli/releases/download/v0.8.2/rstudio-cli-v0.8.2-aarch64-apple-darwin.tar.gz"
      sha256 "f5185d0c3017a2a0d7e0edeb15a5f8deba941f94097574ebc483239b01eb9b87"
    end
    on_intel do
      url "https://github.com/aclemen1/rstudio-cli/releases/download/v0.8.2/rstudio-cli-v0.8.2-x86_64-apple-darwin.tar.gz"
      sha256 "f7ad77b1b1ec3562f78dd61e9454cc5ea43a0d5354b2b1707a23ee196885f1bf"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/aclemen1/rstudio-cli/releases/download/v0.8.2/rstudio-cli-v0.8.2-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "4e5a7a207185da7ca590231b372bafedcc3f8f3611e4cb75884c2642fdff4468"
    end
    on_intel do
      url "https://github.com/aclemen1/rstudio-cli/releases/download/v0.8.2/rstudio-cli-v0.8.2-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "af692c1e3e2099e9c1ec4dc29d1e57436364cb1585ec3c4d76fe32c6f91f54f4"
    end
  end

  def install
    bin.install "rstudio"
  end

  test do
    assert_match "0.8.2", shell_output("#{bin}/rstudio version")
  end
end
