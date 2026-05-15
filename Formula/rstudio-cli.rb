class RstudioCli < Formula
  desc "AI-native CLI bridge to drive an RStudio Server/Desktop IDE from a terminal"
  homepage "https://github.com/aclemen1/rstudio-cli"
  version "0.15.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/aclemen1/rstudio-cli/releases/download/v0.15.0/rstudio-cli-v0.15.0-aarch64-apple-darwin.tar.gz"
      sha256 "9716b22bd0f012145deebce1c61570dae3c2d628b53fdcb11a6721c50f78bb05"
    end
    on_intel do
      url "https://github.com/aclemen1/rstudio-cli/releases/download/v0.15.0/rstudio-cli-v0.15.0-x86_64-apple-darwin.tar.gz"
      sha256 "6c4538284b2700c266603707f0287cbe9223e5c8eaa2061bc0c92e5bd5d2bff8"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/aclemen1/rstudio-cli/releases/download/v0.15.0/rstudio-cli-v0.15.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "3daa7a78ec86fb19fbfd0e7bddd9f86629898990d748c89a279ef8393994c2ab"
    end
    on_intel do
      url "https://github.com/aclemen1/rstudio-cli/releases/download/v0.15.0/rstudio-cli-v0.15.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "f58cd092b5856516009ff0e23cf5ec4dfce9acb361396944fbaf3a9355a44c7b"
    end
  end

  def install
    bin.install "rstudio"
  end

  test do
    assert_match "0.15.0", shell_output("#{bin}/rstudio version")
  end
end
