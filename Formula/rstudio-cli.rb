class RstudioCli < Formula
  desc "AI-native CLI bridge to drive an RStudio Server/Desktop IDE from a terminal"
  homepage "https://github.com/aclemen1/rstudio-cli"
  version "0.9.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/aclemen1/rstudio-cli/releases/download/v0.9.0/rstudio-cli-v0.9.0-aarch64-apple-darwin.tar.gz"
      sha256 "d131c80fe7296496599d3bd6c6cb62e970c7e1df4941b9f142f926984261acf1"
    end
    on_intel do
      url "https://github.com/aclemen1/rstudio-cli/releases/download/v0.9.0/rstudio-cli-v0.9.0-x86_64-apple-darwin.tar.gz"
      sha256 "d11f5802a8b756817b93507ab21c13bf51f54c97f2451455279c6daf798df401"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/aclemen1/rstudio-cli/releases/download/v0.9.0/rstudio-cli-v0.9.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "04fb326d85730d076768c34cec36385bde2111120761ee0832272fd32d83fa67"
    end
    on_intel do
      url "https://github.com/aclemen1/rstudio-cli/releases/download/v0.9.0/rstudio-cli-v0.9.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "1716a2f2444cdcad2136e8185be331c3bd9d819eb71363f4a817a3a53200ef2e"
    end
  end

  def install
    bin.install "rstudio"
  end

  test do
    assert_match "0.9.0", shell_output("#{bin}/rstudio version")
  end
end
