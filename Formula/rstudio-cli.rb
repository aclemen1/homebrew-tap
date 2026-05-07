class RstudioCli < Formula
  desc "AI-native CLI bridge to drive an RStudio Server/Desktop IDE from a terminal"
  homepage "https://github.com/aclemen1/rstudio-cli"
  version "0.11.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/aclemen1/rstudio-cli/releases/download/v0.11.2/rstudio-cli-v0.11.2-aarch64-apple-darwin.tar.gz"
      sha256 "e22f9120aca983a8d87c88f8a3ba268661d3200c985a3b532c730a468844af46"
    end
    on_intel do
      url "https://github.com/aclemen1/rstudio-cli/releases/download/v0.11.2/rstudio-cli-v0.11.2-x86_64-apple-darwin.tar.gz"
      sha256 "75002856c202220e44381492bc0112b43d0244e68f160c9c55ddc31794e19129"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/aclemen1/rstudio-cli/releases/download/v0.11.2/rstudio-cli-v0.11.2-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "b73701aeab81b8fb6f3c653d13a695e6fbd00a22f13139a4c589b885a8de3a28"
    end
    on_intel do
      url "https://github.com/aclemen1/rstudio-cli/releases/download/v0.11.2/rstudio-cli-v0.11.2-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "3420c1e722b104d1bbe7fb2d5137694bd50a84ae3fedf0817c75b1b6596c29ba"
    end
  end

  def install
    bin.install "rstudio"
  end

  test do
    assert_match "0.11.2", shell_output("#{bin}/rstudio version")
  end
end
