class RstudioCli < Formula
  desc "AI-native CLI bridge to drive an RStudio Server/Desktop IDE from a terminal"
  homepage "https://github.com/aclemen1/rstudio-cli"
  version "0.10.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/aclemen1/rstudio-cli/releases/download/v0.10.0/rstudio-cli-v0.10.0-aarch64-apple-darwin.tar.gz"
      sha256 "36f4bd51fecdb427173c3e1b6c32373820090bc6427226cbf0b70bce8e8767c7"
    end
    on_intel do
      url "https://github.com/aclemen1/rstudio-cli/releases/download/v0.10.0/rstudio-cli-v0.10.0-x86_64-apple-darwin.tar.gz"
      sha256 "a6ac54851c208cbb65e5d543e6372e1e3dcf3f57ed6d08a6048a53604d2841ef"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/aclemen1/rstudio-cli/releases/download/v0.10.0/rstudio-cli-v0.10.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "46734bce8d47b6a05ffe33332b99c580d28f1a770ef1307f70b3a6db67f22917"
    end
    on_intel do
      url "https://github.com/aclemen1/rstudio-cli/releases/download/v0.10.0/rstudio-cli-v0.10.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "27e3596f7d7987683e22b3bd751c28eacba14875fadf13d081bd1cf934341098"
    end
  end

  def install
    bin.install "rstudio"
  end

  test do
    assert_match "0.10.0", shell_output("#{bin}/rstudio version")
  end
end
