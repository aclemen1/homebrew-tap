class RstudioCli < Formula
  desc "AI-native CLI bridge to drive an RStudio Server/Desktop IDE from a terminal"
  homepage "https://github.com/aclemen1/rstudio-cli"
  version "0.11.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/aclemen1/rstudio-cli/releases/download/v0.11.0/rstudio-cli-v0.11.0-aarch64-apple-darwin.tar.gz"
      sha256 "2dd152629725b617e7aac36385ba914367115cc30a3a63b7ad1952aedb37d6e4"
    end
    on_intel do
      url "https://github.com/aclemen1/rstudio-cli/releases/download/v0.11.0/rstudio-cli-v0.11.0-x86_64-apple-darwin.tar.gz"
      sha256 "62ac929c19d8fe12a9485a1811ae2a0f99704d6a61eb6edd95cedb816f0fb5cd"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/aclemen1/rstudio-cli/releases/download/v0.11.0/rstudio-cli-v0.11.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "e9e4ee86f92676225a98033eb92ddb04078080c211792442743b473c99f3f6c6"
    end
    on_intel do
      url "https://github.com/aclemen1/rstudio-cli/releases/download/v0.11.0/rstudio-cli-v0.11.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "947c3fd8fc9d290426ff492a0c230f0044c308381396fc3f9798c579e9a54dcd"
    end
  end

  def install
    bin.install "rstudio"
  end

  test do
    assert_match "0.11.0", shell_output("#{bin}/rstudio version")
  end
end
