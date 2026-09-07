class RstudioCli < Formula
  desc "AI-native CLI bridge to drive an RStudio Server/Desktop IDE from a terminal"
  homepage "https://github.com/aclemen1/rstudio-cli"
  version "0.20.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/aclemen1/rstudio-cli/releases/download/v0.20.2/rstudio-cli-v0.20.2-aarch64-apple-darwin.tar.gz"
      sha256 "062efd6856240ccb2ea039c08d4ea6bca2c0e22305fdff980ff15de09ccc83aa"
    end
    on_intel do
      url "https://github.com/aclemen1/rstudio-cli/releases/download/v0.20.2/rstudio-cli-v0.20.2-x86_64-apple-darwin.tar.gz"
      sha256 "6140f6b33975bade9dd2ef97fb58811b9e9bfc157f4e1154930f16e0db0f5407"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/aclemen1/rstudio-cli/releases/download/v0.20.2/rstudio-cli-v0.20.2-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "e73196fcae5322f7816769d75ad703295651f3929c7c57b51a496fa1b03856ec"
    end
    on_intel do
      url "https://github.com/aclemen1/rstudio-cli/releases/download/v0.20.2/rstudio-cli-v0.20.2-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "02a8ae7c8d5a6346848c62b3407e67f48f58ecc31498824211d96f7178f8c79a"
    end
  end

  def install
    bin.install "rstudio"
  end

  test do
    assert_match "0.20.2", shell_output("#{bin}/rstudio version")
  end
end
