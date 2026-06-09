class RstudioCli < Formula
  desc "AI-native CLI bridge to drive an RStudio Server/Desktop IDE from a terminal"
  homepage "https://github.com/aclemen1/rstudio-cli"
  version "0.19.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/aclemen1/rstudio-cli/releases/download/v0.19.0/rstudio-cli-v0.19.0-aarch64-apple-darwin.tar.gz"
      sha256 "8af564aa6d8874eb28d9fd23753f4be0d5031b1b478a604e110927362ee27a99"
    end
    on_intel do
      url "https://github.com/aclemen1/rstudio-cli/releases/download/v0.19.0/rstudio-cli-v0.19.0-x86_64-apple-darwin.tar.gz"
      sha256 "5ec9b74333c7f8aad9cd9ab6fecbe9ec6a6db3a9942d632de5b346d3e11b1b47"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/aclemen1/rstudio-cli/releases/download/v0.19.0/rstudio-cli-v0.19.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "a8178fc1857bfa028175bc70a79a244f46566dffcc674dba2f810e244d1bc042"
    end
    on_intel do
      url "https://github.com/aclemen1/rstudio-cli/releases/download/v0.19.0/rstudio-cli-v0.19.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "0171ccd8c903b55e7aeb9b986185671cadf71f488a4f4090dc54a8553dd80706"
    end
  end

  def install
    bin.install "rstudio"
  end

  test do
    assert_match "0.19.0", shell_output("#{bin}/rstudio version")
  end
end
